/*
* Copyright (c) 2018 Cassidy James Blaede (https://cassidyjames.com)
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License as published by the Free Software Foundation; either
* version 2 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
* Boston, MA 02110-1301 USA
*
* Authored by: Cassidy James Blaede <c@ssidyjam.es>
*/

public class MainWindow : Gtk.Window {
  public MainWindow (Gtk.Application application) {
    Object (
      application: application,
      border_width: 0,
      icon_name: "com.github.cassidyjames.pixels",
      resizable: false,
      title: _("Pixels"),
      window_position: Gtk.WindowPosition.CENTER
    );
  }

  construct {
    var header = new Gtk.HeaderBar ();
    header.show_close_button = true;
    var header_context = header.get_style_context ();
    header_context.add_class ("titlebar");
    header_context.add_class ("default-decoration");
    header_context.add_class (Gtk.STYLE_CLASS_FLAT);

    var main_layout = new Gtk.Grid ();
    main_layout.column_spacing = 6;
    main_layout.height_request = 258;
    main_layout.row_spacing = 6;
    main_layout.width_request = 710;
    main_layout.attach (new Gtk.Label ("Pixels"), 0, 0);

    get_style_context ().add_class ("pixels");
    get_style_context ().add_class ("rounded");
    set_titlebar (header);
    add (main_layout);
  }
}
