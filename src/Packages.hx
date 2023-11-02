using StringTools;

class Packages {
	private static final list:Array<String> = [];
	public static var pcount = 0;
	public static var installed = 0;
	public static var failed = 0;

	public static function add(p:String) {
		list.push(p);
		pcount++;
	}

	public static function install(installProgress:haxe.ui.components.HorizontalProgress, installStatus:haxe.ui.components.Label,
			bFinish:haxe.ui.components.Button) {
		Sys.command("gksu -p -m Enter\\ password\\ to\\ continue | sudo -S echo Password obtained");
		for (pkg in list) {
			var cmd = 'sudo pacman -Sy $pkg --noconfirm';
			if (pkg.startsWith("! ")) {
				cmd = pkg.substr(2);
			}
			installStatus.text = 'Installing $pkg';
			var r = Sys.command(cmd);
			if (r == 0)
				installed++;
			else
				failed++;
			installProgress.pos = 100 * (installed / pcount);
		}
		installProgress.pos = 100;
		installStatus.text = 'Complete!';
		bFinish.disabled = false;
	}
}
