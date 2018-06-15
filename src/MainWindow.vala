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
    private const string CSS = """
        .pixels {

        }
    """;

    public MainWindow (Gtk.Application application) {
        Object (
            application: application,
            border_width: 0,
            decorated: false,
            height_request: 64,
            icon_name: "com.github.cassidyjames.pixels",
            resizable: false,
            title: _("Pixels"),
            width_request: 512,
            window_position: Gtk.WindowPosition.CENTER
        );
    }

    construct {
        var main_layout = new Gtk.Grid ();
        main_layout.column_spacing = 6;
        main_layout.row_spacing = 6;
        main_layout.attach (new Gtk.Label ("Pixels"), 0, 0);

        get_style_context ().add_class ("pixels");
        get_style_context ().add_class ("rounded");

        var provider = new Gtk.CssProvider ();
        try {
            provider.load_from_data (CSS, CSS.length);

            Gtk.StyleContext.add_provider_for_screen (
            Gdk.Screen.get_default (),
            provider,
            Gtk.STYLE_PROVIDER_PRIORITY_APPLICATION
            );
        } catch (GLib.Error e) {
            return;
        }

        add (main_layout);
    }
}

