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
 * (C) Copyright 2008, by EADS France
 */

package org.jcae.netbeans.viewer3d.actions;

import javax.swing.Action;
import javax.swing.ImageIcon;
import org.jcae.vtk.View;

public class DefaultModeAction extends ViewAction
{

	private static ImageIcon icon = new ImageIcon(DefaultModeAction.class.getResource("stock_draw-selection.png"));

	/**
	 * 
	 */
	public DefaultModeAction()
	{
		putValue(Action.NAME, "Restore default viewer mode");
		putValue(Action.SHORT_DESCRIPTION, "Restore default viewer mode");
		putValue(Action.SMALL_ICON, icon);
		setIcon(icon);
	}

	@Override
	public void actionPerformed(View view)
	{
		view.setMouseMode(View.MouseMode.POINT_SELECTION);
	}
}