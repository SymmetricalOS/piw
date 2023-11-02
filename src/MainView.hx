package;

import haxe.ui.containers.VBox;
import haxe.ui.HaxeUIApp;

@:build(haxe.ui.ComponentBuilder.build("assets/main-view.xml"))
class MainView extends VBox {
	public function new(app:HaxeUIApp) {
		super();
		bInstall.onClick = function(e) {
			tabs.pageIndex = 10;

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
			if (audacity.selected)
				Packages.add("audacity");
			if (obs.selected)
				Packages.add("obs-studio");
			if (kdenlive.selected)
				Packages.add("kdenlive");
			if (mpv.selected)
				Packages.add("mpv");

			if (gimp.selected)
				Packages.add("gimp");
			if (blender.selected)
				Packages.add("blender");
			if (krita.selected)
				Packages.add("krita");
			if (pinta.selected)
				Packages.add("pinta");

			if (steam.selected)
				Packages.add("steam");
			if (gamehub.selected)
				Packages.add("! sudo escam aur gamehub");

			if (vscode.selected)
				Packages.add("! sudo escam aur visual-studio-code-bin");
			if (codeoss.selected)
				Packages.add("code");
			if (ideac.selected)
				Packages.add("! sudo escam aur intellij-idea-community-edition");
			if (nano.selected)
				Packages.add("nano");
			if (emacs.selected)
				Packages.add("emacs");
			if (vim.selected)
				Packages.add("vim");
			if (pcc.selected)
				Packages.add("pycharm-community-edition");

			if (java.selected)
				Packages.add("jdk17-openjdk");
			if (python.selected)
				Packages.add("python");
			if (haxe.selected)
				Packages.add("haxe");
			if (rust.selected)
				Packages.add("rust");
			if (nodejs.selected)
				Packages.add("npm");
			if (zig.selected)
				Packages.add("zig");
			if (c.selected) {
				Packages.add("gcc");
				Packages.add("make");
			}
			if (lua.selected)
				Packages.add("lua");
			if (php.selected)
				Packages.add("php");

			if (discord.selected)
				Packages.add("discord");
			if (prismchat.selected)
				Packages.add("! sudo escam si prismchat");
			if (element.selected)
				Packages.add("element");
			if (signal.selected)
				Packages.add("signal-desktop");

			if (prismshare.selected)
				Packages.add("! sudo escam si prismshare");
			if (kdeconnect.selected)
				Packages.add("kdeconnect");

			Packages.install(installProgress, installStatus, bFinish);
		}
	}
}
