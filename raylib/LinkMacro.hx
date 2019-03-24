package raylib;

#if macro
import haxe.io.Path;
import haxe.macro.Context;
import haxe.macro.Expr;
import sys.FileSystem;
#end

@:noCompletion
class LinkMacro
{
	macro static function build():Array<Field>
	{
		for (classPath in Context.getClassPath())
		{
			if (FileSystem.exists(Path.join([classPath, "raylib", "LinkMacro.hx"])))
			{
				var ldir = Path.join([FileSystem.absolutePath(classPath), "lib", "build", "release"]);

				var buildXml = {
					expr: EConst(CString('<target id="haxe" tool="linker" toolid="exe">
						<lib name="$ldir/libraylib.a" />
						<lib name="$ldir/external/glfw/src/libglfw3.a" />
						<lib name="-lrt" />
						<lib name="-lm" />
						<lib name="-ldl" />
						<lib name="-lX11" />
						<lib name="-lpthread" />
						<lib name="-lm" />
						<lib name="-lpthread" />
						<lib name="-lGL" />
						<lib name="-lGLU" />
					</target>')),
					pos: Context.currentPos()
				};

				Context.getLocalClass().get().meta.add(":buildXml", [buildXml], Context.currentPos());
				return Context.getBuildFields();
			}
		}

		throw "can't find the raylib.LinkMacro file";
	}
}
