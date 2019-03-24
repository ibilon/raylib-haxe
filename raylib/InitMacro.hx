package raylib;

#if macro
import haxe.io.Path;
import haxe.macro.Context;
import haxe.macro.Expr;
import sys.FileSystem;
#end

@:noCompletion
class InitMacro
{
	macro static function init():Expr
	{
		switch (Context.getType("raylib.InitMacro"))
		{
			case TInst(_.get() => t, _):
				var pdir = Path.directory(Context.getPosInfos(t.pos).file);

				// Check if raylib is compiled.
				var bdir = Path.join([pdir, "..", "lib", "build"]);

				if (!FileSystem.exists(bdir))
				{
					Sys.println("Compiling raylib (this is done only once) ...");

					FileSystem.createDirectory(bdir);
					var cwd = Sys.getCwd();
					Sys.setCwd(bdir);

					Sys.command("cmake", ["-DBUILD_EXAMPLES=OFF", "-DBUILD_GAMES=OFF", ".."]);
					Sys.command("make");

					Sys.setCwd(cwd);
				}

			default:
				throw "can't find the raylib.InitMacro type";
		}

		return macro null;
	}
}
