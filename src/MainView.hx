package;

import haxe.ui.containers.VBox;
import haxe.ui.events.MouseEvent;
import haxe.ui.HaxeUIApp;
import sys.thread.Thread;

@:build(haxe.ui.ComponentBuilder.build("assets/main-view.xml"))
class MainView extends VBox {
	public function new(app:HaxeUIApp) {
		super();
		bInstall.onClick = function(e) {
			tabs.pageIndex = 6;

			if (firefox.selected)
				Packages.add("firefox");
			if (chromium.selected)
				Packages.add("chromium");
			if (vivaldi.selected)
				Packages.add("vivaldi");
			if (opera.selected)
				Packages.add("opera");

			if (libreoffice.selected)
				Packages.add("libreoffice-still");
			if (wpsoffice.selected)
				Packages.add("! sudo escam aur wps-office");

			if (vlc.selected)
				Packages.add("vlc");

			if (discord.selected)
				Packages.add("discord");
			if (prismchat.selected)
				Packages.add("! sudo escam si prismchat");
			if (element.selected)
				Packages.add("element");

			if (prismshare.selected)
				Packages.add("! sudo escam si prismshare");
			if (kdeconnect.selected)
				Packages.add("kdeconnect");

			Packages.install(installProgress, installStatus);
		}
	}
}