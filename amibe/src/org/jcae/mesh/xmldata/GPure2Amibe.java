/*
 * Project Info:  http://jcae.sourceforge.net
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software Foundation, Inc.,
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307, USA.
 *
 * (C) Copyright 2010, by EADS France
 */
package org.jcae.mesh.xmldata;

import gnu.trove.TIntArrayList;
import java.util.logging.Level;

import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.StringTokenizer;
import java.util.logging.Logger;

/**
 *
 * Convert a GPure mesh to an Amibe mesh.
 * <ul>
 * <li>GPure file contains only one part information.</li>
 * <li>GPure file can contain multiple groups.</li>
 * <li>Only triangles, nodes and groups are imported.</li>
 * <li>One extra group containing all faces is added to Amibe.</li>
 * </ul>
 * @author Ganesh Patil
 */
public class GPure2Amibe {

	private final static Logger LOGGER = Logger.getLogger(GPure2Amibe.class.getName());
	/** Array to save Tesselation face data (GPure:faces) */
	private final TIntArrayList faceDataArray = new TIntArrayList();
	/** local array to save face information in a group. */
	private final TIntArrayList groupFaceArray = new TIntArrayList();
	/**  String to save group data set name (GPure:name) */
	private String groupDataName;
	/** Flag to check GPure:faces i.e. face information inside tesselation data */
	private boolean tessFaceLocation;
	/** Flag to check GPure:positions i.e. point coordinates inside tesselation */
	private boolean tessPosLocation;
	/** Flag to check GPure:Description with group data */
	private boolean groupDataSetActive;
	/** Flag to check GPure:faces i.e. faces information inside group data */
	private boolean groupFaceLocation;

	/**
	 *
	 * <li>Creates instance of XMLInputFactory</li>
	 * @param inFile
	 * @param outFile
	 * @throws java.io.IOException
	 */
	public void convert(String inFile, String outFile) throws IOException,
		XMLStreamException {
		XMLInputFactory factory = XMLInputFactory.newInstance();
		convert(factory, inFile, outFile);
	}

	/**
	 *
	 * <li>Creates instance of XMLStreamReader using inFile</li>
	 * @param factory
	 * @param inFile
	 * @param outDir
	 * @throws XMLStreamException
	 * @throws IOException
	 */
	private void convert(XMLInputFactory factory, String inFile, String outDir)
		throws XMLStreamException, IOException {
		LOGGER.log(Level.INFO, "Reading {0}", inFile);
		XMLStreamReader streamReader =
			factory.createXMLStreamReader(new FileReader(inFile));
		convert(streamReader, outDir);
	}

	/**
	 *
	 * <li>Reads the mesh data</li>
	 * <li>Writes Amibe mesh files</li>
	 * @param streamReader
	 * @param outDir
	 * @throws IOException
	 * @throws XMLStreamException
	 */
	private void convert(XMLStreamReader streamReader, String outDir) throws
		IOException, XMLStreamException
	{
		//Amibe writer
		AmibeWriter.Dim3 out = new AmibeWriter.Dim3(outDir);

		while (streamReader.hasNext()) {
			streamReader.next();
			String qName = streamReader.getLocalName();
			//Reading START_ELEMENT
			if (streamReader.getEventType() == XMLStreamReader.START_ELEMENT) {
				processStartElements(streamReader, qName, out);
			}

			//Reading END_ELEMENT
			if (streamReader.getEventType() == XMLStreamReader.END_ELEMENT) {
				processEndElements(qName, out);
			}
		}

		//Create a group with all faces and add to Amibe
		out.nextGroup("allFaces");
		for (int i = 0; i < faceDataArray.size(); i++) {
			out.addTriaToGroup(faceDataArray.get(i));
		}
		out.finish();
	}

	/**
	 * <li>Processes START_ELEMENT in GPure file.</li>
	 * @param streamReader
	 * @param qName
	 * @param out
	 * @throws XMLStreamException
	 * @throws IOException
	 */
	private void processStartElements(XMLStreamReader streamReader, String qName,
		AmibeWriter.Dim3 out) throws XMLStreamException, IOException {
		// if group data location is reached ; set flag  groupDataSetActive true.
		if (false == groupDataSetActive && qName.equalsIgnoreCase("dataType") && (streamReader.getElementText()).equalsIgnoreCase(
			"partition")) {
			groupDataSetActive = true;
		}

		// if tesselation face data location is reached ; set flag  tessFaceLocation true.
		if (false == groupDataSetActive && qName.equalsIgnoreCase("faces")) {
			tessFaceLocation = true;
		}

		// if tesselation positions data location is reached ; set flag  tessPosLocation true.
		if (false == groupDataSetActive && qName.equalsIgnoreCase("positions")) {
			tessPosLocation = true;
		}

		//if group face data location is reached ; set flag  groupFaceLocation true.
		if (true == groupDataSetActive && qName.equalsIgnoreCase("faces")) {
			groupFaceLocation = true;
		}

		//if group data name location is reached ; set flag  groupDataName true.
		if (true == groupDataSetActive && qName.equalsIgnoreCase("name")) {
			groupDataName = streamReader.getElementText();
		}

		//Read and convert tesselation face information
		if (!groupDataSetActive && tessFaceLocation) {
			convertTessFaceData(streamReader, out);
		}

		//Read and convert tesselation positions information
		if (false == groupDataSetActive && true == tessPosLocation) {
			convertTessPositionData(streamReader, out);
		}

		//Read and Convert group face information
		if (true == groupFaceLocation && true == groupDataSetActive) {
			convertPartitionData(streamReader, groupFaceArray);
		}
	}

	/**
	 *
	 * <li>Processes END_ELEMENT in GPure file.</li>
	 * @param qName
	 */
	private void processEndElements(String qName, AmibeWriter.Dim3 out) throws
		IOException {
		// if tesselation face data location is reached ; set flag  tessFaceLocation false.
		if (qName.equalsIgnoreCase("faces")) {
			tessFaceLocation = false;
		}

		// if tesselation positions data location is reached ; set flag  tessPosLocation false.
		if (qName.equalsIgnoreCase("positions")) {
			tessPosLocation = false;
		}

		// if group face data location is reached ; set flag  groupFaceLocation false.
		if (true == groupDataSetActive && qName.equalsIgnoreCase("faces")) {
			groupFaceLocation = false;

			// add the face information from current group data set to  groupFaceDataArray
			// groupFaceDataArray.add(new ArrayList<Integer>(groupFaceArray));
			// groupFaceArray.clear();
		}

		//if group data name is reached; set flag groupDataSetActive false.
		if (true == groupDataSetActive && qName.equalsIgnoreCase("name")) {
			groupDataSetActive = false;
			fillGroupFaceData(out);
		}

	}

	/**
	 *
	 * <li>Writes tesselation face data in AmibeWriter object.</li>
	 * @param streamReader
	 * @param out
	 * @throws IOException
	 * @throws XMLStreamException
	 */
	private void convertTessFaceData(XMLStreamReader streamReader,
		AmibeWriter.Dim3 out) throws IOException, XMLStreamException {
		StringTokenizer cellId = new StringTokenizer(
			streamReader.getElementText(), " \n");
		while (cellId.hasMoreTokens()) {
			String cellVal1 = cellId.nextToken();
			int iCellVal1 = Integer.parseInt(cellVal1);

			String cellVal2 = cellId.nextToken();
			int iCellVal2 = Integer.parseInt(cellVal2);

			String cellVal3 = cellId.nextToken();
			int iCellVal3 = Integer.parseInt(cellVal3);

			//Add triangle to AmibeWriter Object
			out.addTriangle(iCellVal1, iCellVal2, iCellVal3);
			faceDataArray.add(iCellVal1);
			faceDataArray.add(iCellVal2);
			faceDataArray.add(iCellVal3);
		}
	}

	/**
	 *
	 * <li>Writes tesselation positions data in AmibeWriter object.</li>
	 * @param streamReader
	 * @param out
	 * @throws IOException
	 * @throws XMLStreamException
	 */
	private void convertTessPositionData(XMLStreamReader streamReader,
		AmibeWriter.Dim3 out) throws IOException, XMLStreamException {
		StringTokenizer cordinatesAll = new StringTokenizer(
			streamReader.getElementText(), ", \n");
		while (cordinatesAll.hasMoreTokens()) {
			//X-Cordinate
			String cordVal1 = cordinatesAll.nextToken().trim();
			double dCordVal1 = Double.parseDouble(cordVal1);

			//Y-Cordinate
			String cordVal2 = cordinatesAll.nextToken().trim();
			double dCordVal2 = Double.parseDouble(cordVal2);

			//Z-Cordinate
			String cordVal3 = cordinatesAll.nextToken().trim();
			double dCordVal3 = Double.parseDouble(cordVal3);

			//add node to AmibeWriter Obejct
			out.addNode(dCordVal1, dCordVal2, dCordVal3);
		}
	}

	/**
	 *
	 * <li>Writes group data in AmibeWriter object.</li>
	 * @param streamReader
	 * @param groupFaceArray
	 * @throws XMLStreamException
	 */
	private void convertPartitionData(XMLStreamReader streamReader,
		TIntArrayList groupFaceArray) throws XMLStreamException {
		StringTokenizer groupFaceData = new StringTokenizer(
			streamReader.getElementText(), " \n");
		while (groupFaceData.hasMoreTokens()) {
			String faceVal = groupFaceData.nextToken().trim();
			if (!(faceVal.isEmpty())) {
				int faceValue = Integer.parseInt(faceVal);
				groupFaceArray.add(faceValue);
			}
		}
	}

	/**
	 * Reads the face information array for group data and pass it to AmibeWriter
	 * @param out
	 * @throws IOException
	 */
	private void fillGroupFaceData(AmibeWriter.Dim3 out) throws IOException {
		if (!groupDataName.isEmpty()) {
			out.nextGroup(groupDataName);
			for (int j = 0; j < groupFaceArray.size(); j++) {
				// Fill group information
				out.addTriaToGroup(groupFaceArray.get(j));
			}
			groupDataName = "";
			groupFaceArray.clear();
		}
	}

	/**
	 *
	 * @param args
	 * @throws IOException
	 */
	public static void main(String args[]) throws IOException {
		try {
			GPure2Amibe g = new GPure2Amibe();
			String inFile = "/tmp/zebra37931.tmp/zebra-out.gpure";
			String outDir = "/tmp/pouet.amibe";
			if (args.length > 0) {
				inFile = args[0];
			}
			if (args.length > 1) {
				outDir = args[1];
			}
			g.convert(inFile, outDir);
		} catch (Exception e) {
			LOGGER.log(Level.SEVERE, null, e);
		}
	}
}
