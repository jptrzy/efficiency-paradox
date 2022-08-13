using Gtk;

using GLFW;
using GL;


int main (string[] argv) {
	// Create a new application
	var app = new Gtk.Application ("com.example.GtkApplication", GLib.ApplicationFlags.FLAGS_NONE);
	app.activate.connect (() => {
		var window = new Gtk.ApplicationWindow (app);
		var button = new Gtk.Button.with_label ("Hello, World!");
		var glarea = new GLArea();

		glarea.render.connect ((area, context) => {
			glClearColor (0, 0, 0, 1);
			glClear (GL_COLOR_BUFFER_BIT);


			return false;
		});

		button.clicked.connect (() => {
			window.close ();
		});

		window.set_child (glarea);
		window.set_child (button);

		window.present ();
	});
	return app.run (argv);
}