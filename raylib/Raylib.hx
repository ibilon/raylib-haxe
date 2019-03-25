package raylib;

import cpp.Char;
import cpp.ConstCharStar;
import cpp.Function;
import cpp.Reference;
import cpp.Star;
import cpp.UInt8;
import cpp.VarArg;
import sys.FileSystem;
import sys.io.File;

using StringTools;
using haxe.io.Path;

typedef ConstVoidStar = cpp.RawConstPointer<cpp.Void>;

/** Vector2 type **/
abstract Vector2 (Vector2Struct)
{
	public inline function new(x:Float, y:Float)
	{
		this = untyped __cpp__("cpp::Struct<Vector2>(Vector2{{ float({0}), float({1}) }})", x, y);
	}

	public var x(get, set):Float;
	inline function get_x() return untyped __cpp__("{0}.value.x", this);
	inline function set_x(v:Float) return untyped __cpp__("{0}.value.x = {1}", this, v);

	public var y(get, set):Float;
	inline function get_y() return untyped __cpp__("{0}.value.y", this);
	inline function set_y(v:Float) return untyped __cpp__("{0}.value.y = {1}", this, v);

	@:to inline function toRaw():_Vector2
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Vector2>")
private extern class Vector2Struct
{
}

@:include("./../lib/src/raylib.h")
@:native("Vector2")
@:structAccess
@:unreflective
private extern class _Vector2
{
	public var x:Float;
	public var y:Float;
}

/** Vector3 type **/
abstract Vector3 (Vector3Struct)
{
	public inline function new(x:Float, y:Float, z:Float)
	{
		this = untyped __cpp__("cpp::Struct<Vector3>(Vector3{{ float({0}), float({1}), float({2}) }})", x, y, z);
	}

	public var x(get, set):Float;
	inline function get_x() return untyped __cpp__("{0}.value.x", this);
	inline function set_x(v:Float) return untyped __cpp__("{0}.value.x = {1}", this, v);

	public var y(get, set):Float;
	inline function get_y() return untyped __cpp__("{0}.value.y", this);
	inline function set_y(v:Float) return untyped __cpp__("{0}.value.y = {1}", this, v);

	public var z(get, set):Float;
	inline function get_z() return untyped __cpp__("{0}.value.z", this);
	inline function set_z(v:Float) return untyped __cpp__("{0}.value.z = {1}", this, v);

	@:to inline function toRaw():_Vector3
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Vector3>")
private extern class Vector3Struct
{
}

@:include("./../lib/src/raylib.h")
@:native("Vector3")
@:structAccess
@:unreflective
private extern class _Vector3
{
	public var x:Float;
	public var y:Float;
	public var z:Float;
}

/** Vector4 type **/
abstract Vector4 (Vector4Struct)
{
	public inline function new(x:Float, y:Float, z:Float, w:Float)
	{
		this = untyped __cpp__("cpp::Struct<Vector4>(Vector4{{ float({0}), float({1}), float({2}), float({3}) }})", x, y, z, w);
	}

	public var x(get, set):Float;
	inline function get_x() return untyped __cpp__("{0}.value.x", this);
	inline function set_x(v:Float) return untyped __cpp__("{0}.value.x = {1}", this, v);

	public var y(get, set):Float;
	inline function get_y() return untyped __cpp__("{0}.value.y", this);
	inline function set_y(v:Float) return untyped __cpp__("{0}.value.y = {1}", this, v);

	public var z(get, set):Float;
	inline function get_z() return untyped __cpp__("{0}.value.z", this);
	inline function set_z(v:Float) return untyped __cpp__("{0}.value.z = {1}", this, v);

	public var w(get, set):Float;
	inline function get_w() return untyped __cpp__("{0}.value.w", this);
	inline function set_w(v:Float) return untyped __cpp__("{0}.value.w = {1}", this, v);

	@:to inline function toRaw():_Vector4
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Vector4>")
private extern class Vector4Struct
{
}

@:include("./../lib/src/raylib.h")
@:native("Vector4")
@:structAccess
@:unreflective
private extern class _Vector4
{
	public var x:Float;
	public var y:Float;
	public var z:Float;
	public var w:Float;
}

/** Quaternion type, same as Vector4 **/
typedef Quaternion = Vector4;

/** Matrix type (OpenGL style 4x4 - right handed, column major) **/
abstract Matrix (MatrixStruct)
{
	@:to inline function toRaw():_Matrix
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Matrix>")
private extern class MatrixStruct
{
}

@:include("./../lib/src/raylib.h")
@:native("Matrix")
@:structAccess
@:unreflective
extern class _Matrix
{
	public var m0:Float;
	public var m1:Float;
	public var m2:Float;
	public var m3:Float;
	public var m4:Float;
	public var m5:Float;
	public var m6:Float;
	public var m7:Float;
	public var m8:Float;
	public var m9:Float;
	public var m10:Float;
	public var m11:Float;
	public var m12:Float;
	public var m13:Float;
	public var m14:Float;
	public var m15:Float;
}

/** Color type, RGBA (32bit) **/
abstract Color (ColorStruct)
{
	public inline function new(r:UInt8, g:UInt8, b:UInt8, a:UInt8)
	{
		this = untyped __cpp__("cpp::Struct<Color>(Color{{ {0}, {1}, {2}, {3} }})", r, g, b, a);
	}

	public var r(get, set):UInt8;
	inline function get_r() return untyped __cpp__("{0}.value.r", this);
	inline function set_r(v:UInt8) return untyped __cpp__("{0}.value.r = {1}", this, v);

	public var g(get, set):UInt8;
	inline function get_g() return untyped __cpp__("{0}.value.g", this);
	inline function set_g(v:UInt8) return untyped __cpp__("{0}.value.g = {1}", this, v);

	public var b(get, set):UInt8;
	inline function get_b() return untyped __cpp__("{0}.value.b", this);
	inline function set_b(v:UInt8) return untyped __cpp__("{0}.value.b = {1}", this, v);

	public var a(get, set):UInt8;
	inline function get_a() return untyped __cpp__("{0}.value.a", this);
	inline function set_a(v:UInt8) return untyped __cpp__("{0}.value.a = {1}", this, v);

	@:to inline function toRaw():_Color
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Color>")
private extern class ColorStruct
{
}

@:include("./../lib/src/raylib.h")
@:native("Color")
@:structAccess
@:unreflective
private extern class _Color
{
	public var r:UInt8;
	public var g:UInt8;
	public var b:UInt8;
	public var a:UInt8;
}

/** Rectangle type **/
abstract Rectangle (RectangleStruct)
{
	public inline function new(x:Float, y:Float, width:Float, height:Float):Rectangle
	{
		this = untyped __cpp__("cpp::Struct<Rectangle>(Rectangle{{ float({0}), float({1}), float({2}), float({3}) }})", x, y, width, height);
	}

	public var x(get, set):Float;
	inline function get_x() return untyped __cpp__("{0}.value.x", this);
	inline function set_x(v:Float) return untyped __cpp__("{0}.value.x = {1}", this, v);

	public var y(get, set):Float;
	inline function get_y() return untyped __cpp__("{0}.value.y", this);
	inline function set_y(v:Float) return untyped __cpp__("{0}.value.y = {1}", this, v);

	public var width(get, set):Float;
	inline function get_width() return untyped __cpp__("{0}.value.width", this);
	inline function set_width(v:Float) return untyped __cpp__("{0}.value.width = {1}", this, v);

	public var height(get, set):Float;
	inline function get_height() return untyped __cpp__("{0}.value.height", this);
	inline function set_height(v:Float) return untyped __cpp__("{0}.value.height = {1}", this, v);

	@:to inline function toRaw():_Rectangle
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Rectangle>")
private extern class RectangleStruct
{
}

@:include("./../lib/src/raylib.h")
@:native("Rectangle")
@:structAccess
@:unreflective
private extern class _Rectangle
{
	public var x:Float;
	public var y:Float;
	public var width:Float;
	public var height:Float;
}

/** Image type, bpp always RGBA (32bit)
NOTE: Data stored in CPU memory (RAM) **/
abstract Image (ImageStruct)
{
	@:to inline function toRaw():_Image
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Image>")
private extern class ImageStruct
{
}

@:include("./../lib/src/raylib.h")
@:native("Image")
@:structAccess
@:unreflective
extern class _Image
{
	/** Image raw data **/
	public var data:Star<cpp.Void>;

	/** Image base width **/
	public var width:Int;

	/** Image base height **/
	public var height:Int;

	/** Mipmap levels, 1 by default **/
	public var mipmaps:Int;

	/** Data format (PixelFormat type) **/
	public var format:PixelFormat;
}

/** Texture2D type
NOTE: Data stored in GPU memory **/
abstract Texture2D (Texture2DStruct)
{
	@:to inline function toRaw():_Texture2D
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Texture2D>")
private extern class Texture2DStruct
{
}

@:include("./../lib/src/raylib.h")
@:native("Texture2D")
@:structAccess
@:unreflective
extern class _Texture2D
{
	/** OpenGL texture id **/
	public var id:UInt;

	/** Texture base width **/
	public var width:Int;

	/** Texture base height **/
	public var height:Int;

	/** Mipmap levels, 1 by default **/
	public var mipmaps:Int;

	/** Data format (PixelFormat type) **/
	public var format:PixelFormat;
}

/** Texture type, same as Texture2D **/
typedef Texture = Texture2D;

/** TextureCubemap type, actually, same as Texture2D **/
typedef TextureCubemap = Texture2D;

/** RenderTexture2D type, for texture rendering **/
abstract RenderTexture2D (RenderTexture2DStruct)
{
	@:to inline function toRaw():_RenderTexture2D
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<RenderTexture2D>")
private extern class RenderTexture2DStruct
{
}

@:include("./../lib/src/raylib.h")
@:native("RenderTexture2D")
@:structAccess
@:unreflective
extern class _RenderTexture2D
{
	/** OpenGL Framebuffer Object (FBO) id **/
	public var id:UInt;

	/** Color buffer attachment texture **/
	public var texture:Texture2D;

	/** Depth buffer attachment texture **/
	public var depth:Texture2D;

	/** Track if depth attachment is a texture or renderbuffer **/
	public var depthTexture:Bool;
}

/** RenderTexture type, same as RenderTexture2D **/
typedef RenderTexture = RenderTexture2D;

/** N-Patch layout info **/
abstract NPatchInfo (NPatchInfoStruct)
{
	@:to inline function toRaw():_NPatchInfo
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<NPatchInfo>")
private extern class NPatchInfoStruct
{
}

@:include("./../lib/src/raylib.h")
@:native("NPatchInfo")
@:structAccess
@:unreflective
extern class _NPatchInfo
{
	/** Region in the texture **/
	public var sourceRec:_Rectangle;

	/** left border offset **/
	public var left:Int;

	/** top border offset **/
	public var top:Int;

	/** right border offset **/
	public var right:Int;

	/** bottom border offset **/
	public var bottom:Int;

	/** layout of the n-patch: 3x3, 1x3 or 3x1 **/
	public var type:Int;
}

/** Font character info **/
abstract CharInfo (CharInfoStruct)
{
	@:to inline function toRaw():_CharInfo
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<CharInfo>")
private extern class CharInfoStruct
{
}

@:include("./../lib/src/raylib.h")
@:native("CharInfo")
@:structAccess
@:unreflective
extern class _CharInfo
{
	/** Character value (Unicode) **/
	public var value:Int;

	/** Character rectangle in sprite font **/
	public var rec:_Rectangle;

	/** Character offset X when drawing **/
	public var offsetX:Int;

	/** Character offset Y when drawing **/
	public var offsetY:Int;

	/** Character advance position X **/
	public var advanceX:Int;

	/** Character pixel data (grayscale) **/
	public var data:Star<UInt8>;
}

/** Font type, includes texture and charSet array data **/
abstract Font (FontStruct)
{
	@:to inline function toRaw():_Font
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Font>")
private extern class FontStruct
{
}

@:include("./../lib/src/raylib.h")
@:native("Font")
@:structAccess
@:unreflective
extern class _Font
{
	/** Font texture **/
	public var texture:_Texture2D;

	/** Base size (default chars height) **/
	public var baseSize:Int;

	/** Number of characters **/
	public var charsCount:Int;

	/** Characters info data **/
	public var chars:Star<_CharInfo>;
}

/** SpriteFont type fallback, defaults to Font **/
typedef SpriteFont = Font;

/** Camera type, defines a camera position/orientation in 3d space **/
abstract Camera3D (Camera3DStruct)
{
	public inline function new(position:Vector3, target:Vector3, up:Vector3, fovy:Float, type:CameraType)
	{
		this = untyped __cpp__("cpp::Struct<Camera3D>(Camera3D{{ {0}, {1}, {2}, float({3}), {4} }})", position, target, up, fovy, type);
	}

	public var position(get, set):Vector3;
	inline function get_position() return untyped __cpp__("cpp::Struct<Vector3>({0}.value.position)", this);
	inline function set_position(v:Vector3) return untyped __cpp__("cpp::Struct<Vector3>({0}.value.position = {1}.value)", this, v);

	public var target(get, set):Vector3;
	inline function get_target() return untyped __cpp__("cpp::Struct<Vector3>({0}.value.target)", this);
	inline function set_target(v:Vector3) return untyped __cpp__("cpp::Struct<Vector3>({0}.value.target = {1}.value)", this, v);

	public var up(get, set):Vector3;
	inline function get_up() return untyped __cpp__("cpp::Struct<Vector3>({0}.value.up)", this);
	inline function set_up(v:Vector3) return untyped __cpp__("cpp::Struct<Vector3>({0}.value.up = {1}.value)", this, v);

	public var fovy(get, set):Float;
	inline function get_fovy() return untyped __cpp__("{0}.value.fovy", this);
	inline function set_fovy(v:Float) return untyped __cpp__("{0}.value.fovy = {1}", this, v);

	public var type(get, set):CameraType;
	inline function get_type() return untyped __cpp__("{0}.value.type", this);
	inline function set_type(v:CameraType) return untyped __cpp__("{0}.value.type = {1}", this, v);

	@:to inline function toRaw():_Camera3D
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Camera3D>")
private extern class Camera3DStruct
{
}

@:include("./../lib/src/raylib.h")
@:native("Camera3D")
@:structAccess
@:unreflective
private extern class _Camera3D
{
	/** Camera position **/
	public var position:_Vector3;

	/** Camera target it looks-at **/
	public var target:_Vector3;

	/** Camera up vector (rotation over its axis) **/
	public var up:_Vector3;

	/** Camera field-of-view apperture in Y (degrees) in perspective, used as near plane width in orthographic **/
	public var fovy:Float;

	/** Camera type, defines projection type: CAMERA_PERSPECTIVE or CAMERA_ORTHOGRAPHIC **/
	public var type:CameraType;
}

/** Camera type fallback, defaults to Camera3D **/
typedef Camera = Camera3D;

/** Camera2D type, defines a 2d camera **/
abstract Camera2D (Camera2DStruct)
{
	public inline function new(offset:Vector2, target:Vector2, rotation:Float, zoom:Float)
	{
		this = untyped __cpp__("cpp::Struct<Camera2D>(Camera2D{{ {0}, {1}, float({2}), float({3}) }})", offset, target, rotation, zoom);
	}

	public var offset(get, set):Vector2;
	inline function get_offset() return untyped __cpp__("cpp::Struct<Vector2>({0}.value.offset)", this);
	inline function set_offset(v:Vector2) return untyped __cpp__("cpp::Struct<Vector2>({0}.value.offset = {1}.value)", this, v);

	public var target(get, set):Vector2;
	inline function get_target() return untyped __cpp__("cpp::Struct<Vector2>({0}.value.target)", this);
	inline function set_target(v:Vector2) return untyped __cpp__("cpp::Struct<Vector2>({0}.value.target = {1}.value)", this, v);

	public var rotation(get, set):Float;
	inline function get_rotation() return untyped __cpp__("{0}.value.rotation", this);
	inline function set_rotation(v:Float) return untyped __cpp__("{0}.value.rotation = {1}", this, v);

	public var zoom(get, set):Float;
	inline function get_zoom() return untyped __cpp__("{0}.value.zoom", this);
	inline function set_zoom(v:Float) return untyped __cpp__("{0}.value.zoom = {1}", this, v);

	@:to inline function toRaw():_Camera2D
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Camera2D>")
private extern class Camera2DStruct
{
}

@:include("./../lib/src/raylib.h")
@:native("Camera2D")
@:structAccess
@:unreflective
private extern class _Camera2D
{
	/** Camera offset (displacement from target) **/
	public var offset:_Vector2;

	/** Camera target (rotation and zoom origin) **/
	public var target:_Vector2;

	/** Camera rotation in degrees **/
	public var rotation:Float;

	/** Camera zoom (scaling), should be 1.0f by default **/
	public var zoom:Float;
}

/** Bounding box type **/
abstract BoundingBox (BoundingBoxStruct)
{
	public inline function new(min:Vector3, max:Vector3)
	{
		this = untyped __cpp__("cpp::Struct<BoundingBox>(BoundingBox{{ {0}, {1} }})", min, max);
	}

	public var min(get, set):Vector3;
	inline function get_min() return untyped __cpp__("cpp::Struct<Vector3>({0}.value.min)", this);
	inline function set_min(v:Vector3) return untyped __cpp__("cpp::Struct<Vector3>({0}.value.min = {1}.value)", this, v);

	public var max(get, set):Vector3;
	inline function get_max() return untyped __cpp__("cpp::Struct<Vector3>({0}.value.max)", this);
	inline function set_max(v:Vector3) return untyped __cpp__("cpp::Struct<Vector3>({0}.value.max = {1}.value)", this, v);

	@:to inline function toRaw():_BoundingBox
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<BoundingBox>")
private extern class BoundingBoxStruct
{
}

@:include("./../lib/src/raylib.h")
@:native("BoundingBox")
@:structAccess
@:unreflective
private extern class _BoundingBox
{
	/** Minimum vertex box-corner **/
	public var min:_Vector3;

	/** Maximum vertex box-corner **/
	public var max:_Vector3;
}

/** Vertex data definning a mesh
NOTE: Data stored in CPU memory (and GPU) **/
abstract Mesh (MeshStruct)
{
	@:to inline function toRaw():_Mesh
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Mesh>")
private extern class MeshStruct
{
}

@:include("./../lib/src/raylib.h")
@:native("Mesh")
@:structAccess
@:unreflective
extern class _Mesh
{
	/** Number of vertices stored in arrays **/
	public var vertexCount:Int;

	/** Number of triangles stored (indexed or not) **/
	public var triangleCount:Int;

	/** Vertex position (XYZ - 3 components per vertex) (shader-location = 0) **/
	public var vertices:Star<Float>;

	/** Vertex texture coordinates (UV - 2 components per vertex) (shader-location = 1) **/
	public var texcoords:Star<Float>;

	/** Vertex second texture coordinates (useful for lightmaps) (shader-location = 5) **/
	public var texcoords2:Star<Float>;

	/** Vertex normals (XYZ - 3 components per vertex) (shader-location = 2) **/
	public var normals:Star<Float>;

	/** Vertex tangents (XYZW - 4 components per vertex) (shader-location = 4) **/
	public var tangents:Star<Float>;

	/** Vertex colors (RGBA - 4 components per vertex) (shader-location = 3) **/
	public var colors:Star<UInt8>;

	/** Vertex indices (in case vertex data comes indexed) **/
	public var indices:Star<UInt8>;

	/** Vertex base position (required to apply bones transformations) **/
	public var baseVertices:Star<Float>;

	/** Vertex base normals (required to apply bones transformations) **/
	public var baseNormals:Star<Float>;

	/** Vertex weight bias **/
	public var weightBias:Star<Float>;

	/** Vertex weight id **/
	public var weightId:Star<Int>;

	/** OpenGL Vertex Array Object id **/
	public var vaoId:UInt;

	/** OpenGL Vertex Buffer Objects id (default vertex data) **/
	public var vboId:Array<UInt>;
}

/** Shader type (generic) **/
abstract Shader (ShaderStruct)
{
	@:to inline function toRaw():_Shader
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Shader>")
private extern class ShaderStruct
{
}

@:include("./../lib/src/raylib.h")
@:native("Shader")
@:structAccess
@:unreflective
extern class _Shader
{
	/** Shader program id **/
	public var id:UInt;

	/** Shader locations array **/
	public var locs:Array<Int>;
}

/** Material texture map **/
abstract MaterialMap (MaterialMapStruct)
{
	@:to inline function toRaw():_MaterialMap
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<MaterialMap>")
private extern class MaterialMapStruct
{
}

@:include("./../lib/src/raylib.h")
@:native("MaterialMap")
@:structAccess
@:unreflective
extern class _MaterialMap
{
	/** Material map texture **/
	public var texture:_Texture2D;

	/** Material map color **/
	public var color:_Color;

	/** Material map value **/
	public var value:Float;
}

/** Material type (generic) **/
abstract Material (MaterialStruct)
{
	@:to inline function toRaw():_Material
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Material>")
private extern class MaterialStruct
{
}

@:include("./../lib/src/raylib.h")
@:native("Material")
@:structAccess
@:unreflective
extern class _Material
{
	/** Material shader **/
	public var shader:_Shader;

	/** Material maps **/
	public var maps:Array<_MaterialMap>;

	/** Material generic parameters (if required) **/
	public var params:Star<Float>;
}

/** Model type **/
abstract Model (ModelStruct)
{
	@:to inline function toRaw():_Model
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Model>")
private extern class ModelStruct
{
}

@:include("./../lib/src/raylib.h")
@:native("Model")
@:structAccess
@:unreflective
extern class _Model
{
	/** Vertex data buffers (RAM and VRAM) **/
	public var mesh:_Mesh;

	/** Local transform matrix **/
	public var transform:_Matrix;

	/** Shader and textures data **/
	public var material:_Material;
}

/** Ray type (useful for raycast) **/
abstract Ray (RayStruct)
{
	public inline function new(position:Vector3, direction:Vector3)
	{
		this = untyped __cpp__("cpp::Struct<Ray>(Ray{{ {0}, {1} }})", position, direction);
	}

	public var position(get, set):Vector3;
	inline function get_position() return untyped __cpp__("cpp::Struct<Vector3>({0}.value.position)", this);
	inline function set_position(v:Vector3) return untyped __cpp__("cpp::Struct<Vector3>({0}.value.position = {1}.value)", this, v);

	public var direction(get, set):Vector3;
	inline function get_direction() return untyped __cpp__("cpp::Struct<Vector3>({0}.value.direction)", this);
	inline function set_direction(v:Vector3) return untyped __cpp__("cpp::Struct<Vector3>({0}.value.direction = {1}.value)", this, v);

	@:to inline function toRaw():_Ray
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Ray>")
private extern class RayStruct
{
}

@:include("./../lib/src/raylib.h")
@:native("Ray")
@:structAccess
@:unreflective
private extern class _Ray
{
	/** Ray position (origin) **/
	public var position:_Vector3;

	/** Ray direction **/
	public var direction:_Vector3;
}

/** Raycast hit information **/
abstract RayHitInfo (RayHitInfoStruct)
{
	@:to inline function toRaw():_RayHitInfo
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<RayHitInfo>")
private extern class RayHitInfoStruct
{
}

@:include("./../lib/src/raylib.h")
@:native("RayHitInfo")
@:structAccess
@:unreflective
extern class _RayHitInfo
{
	/** Did the ray hit something? **/
	public var hit:Bool;

	/** Distance to nearest hit **/
	public var distance:Float;

	/** Position of nearest hit **/
	public var position:_Vector3;

	/** Surface normal of hit **/
	public var normal:_Vector3;
}

/** Wave type, defines audio wave data **/
abstract Wave (WaveStruct)
{
	@:to inline function toRaw():_Wave
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Wave>")
private extern class WaveStruct
{
}

@:include("./../lib/src/raylib.h")
@:native("Wave")
@:structAccess
@:unreflective
extern class _Wave
{
	/** Number of samples **/
	public var sampleCount:UInt;

	/** Frequency (samples per second) **/
	public var sampleRate:UInt;

	/** Bit depth (bits per sample): 8, 16, 32 (24 not supported) **/
	public var sampleSize:UInt;

	/** Number of channels (1-mono, 2-stereo) **/
	public var channels:UInt;

	/** Buffer data pointer **/
	public var data:Star<cpp.Void>;
}

/** Sound source type **/
abstract Sound (SoundStruct)
{
	@:to inline function toRaw():_Sound
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Sound>")
private extern class SoundStruct
{
}

@:include("./../lib/src/raylib.h")
@:native("Sound")
@:structAccess
@:unreflective
extern class _Sound
{
	/** Pointer to internal data used by the audio system **/
	public var audioBuffer:Star<cpp.Void>;

	/** Audio source id **/
	public var source:UInt;

	/** Audio buffer id **/
	public var buffer:UInt;

	/** Audio format specifier **/
	public var format:Int;
}

/** Music type (file streaming from memory)
NOTE: Anything longer than ~10 seconds should be streamed **/
typedef Music = Dynamic; //Star<MusicData>; // TODO raudio

/** Audio stream type
NOTE: Useful to create custom audio streams not bound to a specific file **/
abstract AudioStream (AudioStreamStruct)
{
	@:to inline function toRaw():_AudioStream
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<AudioStream>")
private extern class AudioStreamStruct
{
}

@:include("./../lib/src/raylib.h")
@:native("AudioStream")
@:structAccess
@:unreflective
extern class _AudioStream
{
	/** Frequency (samples per second) **/
	public var sampleRate:UInt;

	/** Bit depth (bits per sample): 8, 16, 32 (24 not supported) **/
	public var sampleSize:UInt;

	/** Number of channels (1-mono, 2-stereo) **/
	public var channels:UInt;

	/** Pointer to internal data used by the audio system. **/
	public var audioBuffer:Star<cpp.Void>;

	/** Audio format specifier **/
	public var format:Int;

	/** Audio source id **/
	public var source:UInt;

	/** Audio buffers (double buffering) **/
	public var buffers:Array<UInt>;
}

/** Head-Mounted-Display device parameters **/
abstract VrDeviceInfo (VrDeviceInfoStruct)
{
	@:to inline function toRaw():_VrDeviceInfo
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<VrDeviceInfo>")
private extern class VrDeviceInfoStruct
{
}

@:include("./../lib/src/raylib.h")
@:native("VrDeviceInfo")
@:structAccess
@:unreflective
extern class _VrDeviceInfo
{
	/** HMD horizontal resolution in pixels **/
	public var hResolution:Int;

	/** HMD vertical resolution in pixels **/
	public var vResolution:Int;

	/** HMD horizontal size in meters **/
	public var hScreenSize:Float;

	/** HMD vertical size in meters **/
	public var vScreenSize:Float;

	/** HMD screen center in meters **/
	public var vScreenCenter:Float;

	/** HMD distance between eye and display in meters **/
	public var eyeToScreenDistance:Float;

	/** HMD lens separation distance in meters **/
	public var lensSeparationDistance:Float;

	/** HMD IPD (distance between pupils) in meters **/
	public var interpupillaryDistance:Float;

	/** HMD lens distortion constant parameters **/
	public var lensDistortionValues:Array<Float>;

	/** HMD chromatic aberration correction parameters **/
	public var chromaAbCorrection:Array<Float>;
}

/** VR Stereo rendering configuration for simulator **/
abstract VrStereoConfig (VrStereoConfigStruct)
{
	@:to inline function toRaw():_VrStereoConfig
	{
		return untyped __cpp__("{0}.value", this);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<VrStereoConfig>")
private extern class VrStereoConfigStruct
{
}

@:include("./../lib/src/raylib.h")
@:native("VrStereoConfig")
@:structAccess
@:unreflective
extern class _VrStereoConfig
{
	/** VR stereo rendering framebuffer **/
	public var stereoFbo:_RenderTexture2D;

	/** VR stereo rendering distortion shader **/
	public var distortionShader:_Shader;

	/** VR stereo rendering eyes projection matrices **/
	public var eyesProjection:Array<_Matrix>;

	/** VR stereo rendering eyes view offset matrices **/
	public var eyesViewOffset:Array<_Matrix>;

	/** VR stereo rendering right eye viewport [x, y, w, h] **/
	public var eyeViewportRight:Array<Int>;

	/** VR stereo rendering left eye viewport [x, y, w, h] **/
	public var eyeViewportLeft:Array<Int>;
}

/** System config flags
NOTE: Used for bit masks **/
extern enum abstract ConfigFlag (UInt)
{
	/** Set to show raylib logo at startup **/
	@:native("FLAG_SHOW_LOGO")
	var FLAG_SHOW_LOGO;

	/** Set to run program in fullscreen **/
	@:native("FLAG_FULLSCREEN_MODE")
	var FLAG_FULLSCREEN_MODE;

	/** Set to allow resizable window **/
	@:native("FLAG_WINDOW_RESIZABLE")
	var FLAG_WINDOW_RESIZABLE;

	/** Set to disable window decoration (frame and buttons) **/
	@:native("FLAG_WINDOW_UNDECORATED")
	var FLAG_WINDOW_UNDECORATED;

	/** Set to allow transparent window **/
	@:native("FLAG_WINDOW_TRANSPARENT")
	var FLAG_WINDOW_TRANSPARENT;

	/** Set to create the window initially hidden **/
	@:native("FLAG_WINDOW_HIDDEN")
	var FLAG_WINDOW_HIDDEN;

	/** Set to try enabling MSAA 4X **/
	@:native("FLAG_MSAA_4X_HINT")
	var FLAG_MSAA_4X_HINT;

	/** Set to try enabling V-Sync on GPU **/
	@:native("FLAG_VSYNC_HINT")
	var FLAG_VSYNC_HINT;
}

/** Trace log type **/
extern enum abstract TraceLogType (UInt)
{
	/** Display all logs **/
	@:native("LOG_ALL")
	var LOG_ALL;

	@:native("LOG_TRACE")
	var LOG_TRACE;

	@:native("LOG_DEBUG")
	var LOG_DEBUG;

	@:native("LOG_INFO")
	var LOG_INFO;

	@:native("LOG_WARNING")
	var LOG_WARNING;

	@:native("LOG_ERROR")
	var LOG_ERROR;

	@:native("LOG_FATAL")
	var LOG_FATAL;

	/** Disable logging **/
	@:native("LOG_NONE")
	var LOG_NONE;
}

/** Keyboard keys **/
extern enum abstract KeyboardKey (UInt)
{
	@:native("KEY_APOSTROPHE")
	var KEY_APOSTROPHE;

	@:native("KEY_COMMA")
	var KEY_COMMA;

	@:native("KEY_MINUS")
	var KEY_MINUS;

	@:native("KEY_PERIOD")
	var KEY_PERIOD;

	@:native("KEY_SLASH")
	var KEY_SLASH;

	@:native("KEY_ZERO")
	var KEY_ZERO;

	@:native("KEY_ONE")
	var KEY_ONE;

	@:native("KEY_TWO")
	var KEY_TWO;

	@:native("KEY_THREE")
	var KEY_THREE;

	@:native("KEY_FOUR")
	var KEY_FOUR;

	@:native("KEY_FIVE")
	var KEY_FIVE;

	@:native("KEY_SIX")
	var KEY_SIX;

	@:native("KEY_SEVEN")
	var KEY_SEVEN;

	@:native("KEY_EIGHT")
	var KEY_EIGHT;

	@:native("KEY_NINE")
	var KEY_NINE;

	@:native("KEY_SEMICOLON")
	var KEY_SEMICOLON;

	@:native("KEY_EQUAL")
	var KEY_EQUAL;

	@:native("KEY_A")
	var KEY_A;

	@:native("KEY_B")
	var KEY_B;

	@:native("KEY_C")
	var KEY_C;

	@:native("KEY_D")
	var KEY_D;

	@:native("KEY_E")
	var KEY_E;

	@:native("KEY_F")
	var KEY_F;

	@:native("KEY_G")
	var KEY_G;

	@:native("KEY_H")
	var KEY_H;

	@:native("KEY_I")
	var KEY_I;

	@:native("KEY_J")
	var KEY_J;

	@:native("KEY_K")
	var KEY_K;

	@:native("KEY_L")
	var KEY_L;

	@:native("KEY_M")
	var KEY_M;

	@:native("KEY_N")
	var KEY_N;

	@:native("KEY_O")
	var KEY_O;

	@:native("KEY_P")
	var KEY_P;

	@:native("KEY_Q")
	var KEY_Q;

	@:native("KEY_R")
	var KEY_R;

	@:native("KEY_S")
	var KEY_S;

	@:native("KEY_T")
	var KEY_T;

	@:native("KEY_U")
	var KEY_U;

	@:native("KEY_V")
	var KEY_V;

	@:native("KEY_W")
	var KEY_W;

	@:native("KEY_X")
	var KEY_X;

	@:native("KEY_Y")
	var KEY_Y;

	@:native("KEY_Z")
	var KEY_Z;

	@:native("KEY_SPACE")
	var KEY_SPACE;

	@:native("KEY_ESCAPE")
	var KEY_ESCAPE;

	@:native("KEY_ENTER")
	var KEY_ENTER;

	@:native("KEY_TAB")
	var KEY_TAB;

	@:native("KEY_BACKSPACE")
	var KEY_BACKSPACE;

	@:native("KEY_INSERT")
	var KEY_INSERT;

	@:native("KEY_DELETE")
	var KEY_DELETE;

	@:native("KEY_RIGHT")
	var KEY_RIGHT;

	@:native("KEY_LEFT")
	var KEY_LEFT;

	@:native("KEY_DOWN")
	var KEY_DOWN;

	@:native("KEY_UP")
	var KEY_UP;

	@:native("KEY_PAGE_UP")
	var KEY_PAGE_UP;

	@:native("KEY_PAGE_DOWN")
	var KEY_PAGE_DOWN;

	@:native("KEY_HOME")
	var KEY_HOME;

	@:native("KEY_END")
	var KEY_END;

	@:native("KEY_CAPS_LOCK")
	var KEY_CAPS_LOCK;

	@:native("KEY_SCROLL_LOCK")
	var KEY_SCROLL_LOCK;

	@:native("KEY_NUM_LOCK")
	var KEY_NUM_LOCK;

	@:native("KEY_PRINT_SCREEN")
	var KEY_PRINT_SCREEN;

	@:native("KEY_PAUSE")
	var KEY_PAUSE;

	@:native("KEY_F1")
	var KEY_F1;

	@:native("KEY_F2")
	var KEY_F2;

	@:native("KEY_F3")
	var KEY_F3;

	@:native("KEY_F4")
	var KEY_F4;

	@:native("KEY_F5")
	var KEY_F5;

	@:native("KEY_F6")
	var KEY_F6;

	@:native("KEY_F7")
	var KEY_F7;

	@:native("KEY_F8")
	var KEY_F8;

	@:native("KEY_F9")
	var KEY_F9;

	@:native("KEY_F10")
	var KEY_F10;

	@:native("KEY_F11")
	var KEY_F11;

	@:native("KEY_F12")
	var KEY_F12;

	@:native("KEY_LEFT_SHIFT")
	var KEY_LEFT_SHIFT;

	@:native("KEY_LEFT_CONTROL")
	var KEY_LEFT_CONTROL;

	@:native("KEY_LEFT_ALT")
	var KEY_LEFT_ALT;

	@:native("KEY_LEFT_SUPER")
	var KEY_LEFT_SUPER;

	@:native("KEY_RIGHT_SHIFT")
	var KEY_RIGHT_SHIFT;

	@:native("KEY_RIGHT_CONTROL")
	var KEY_RIGHT_CONTROL;

	@:native("KEY_RIGHT_ALT")
	var KEY_RIGHT_ALT;

	@:native("KEY_RIGHT_SUPER")
	var KEY_RIGHT_SUPER;

	@:native("KEY_KB_MENU")
	var KEY_KB_MENU;

	@:native("KEY_LEFT_BRACKET")
	var KEY_LEFT_BRACKET;

	@:native("KEY_BACKSLASH")
	var KEY_BACKSLASH;

	@:native("KEY_RIGHT_BRACKET")
	var KEY_RIGHT_BRACKET;

	@:native("KEY_GRAVE")
	var KEY_GRAVE;

	@:native("KEY_KP_0")
	var KEY_KP_0;

	@:native("KEY_KP_1")
	var KEY_KP_1;

	@:native("KEY_KP_2")
	var KEY_KP_2;

	@:native("KEY_KP_3")
	var KEY_KP_3;

	@:native("KEY_KP_4")
	var KEY_KP_4;

	@:native("KEY_KP_5")
	var KEY_KP_5;

	@:native("KEY_KP_6")
	var KEY_KP_6;

	@:native("KEY_KP_7")
	var KEY_KP_7;

	@:native("KEY_KP_8")
	var KEY_KP_8;

	@:native("KEY_KP_9")
	var KEY_KP_9;

	@:native("KEY_KP_DECIMAL")
	var KEY_KP_DECIMAL;

	@:native("KEY_KP_DIVIDE")
	var KEY_KP_DIVIDE;

	@:native("KEY_KP_MULTIPLY")
	var KEY_KP_MULTIPLY;

	@:native("KEY_KP_SUBTRACT")
	var KEY_KP_SUBTRACT;

	@:native("KEY_KP_ADD")
	var KEY_KP_ADD;

	@:native("KEY_KP_ENTER")
	var KEY_KP_ENTER;

	@:native("KEY_KP_EQUAL")
	var KEY_KP_EQUAL;
}

/** Android buttons **/
extern enum abstract AndroidButton (UInt)
{
	@:native("KEY_BACK")
	var KEY_BACK;

	@:native("KEY_MENU")
	var KEY_MENU;

	@:native("KEY_VOLUME_UP")
	var KEY_VOLUME_UP;

	@:native("KEY_VOLUME_DOWN")
	var KEY_VOLUME_DOWN;
}

/** Mouse buttons **/
extern enum abstract MouseButton (UInt)
{
	@:native("MOUSE_LEFT_BUTTON")
	var MOUSE_LEFT_BUTTON;

	@:native("MOUSE_RIGHT_BUTTON")
	var MOUSE_RIGHT_BUTTON;

	@:native("MOUSE_MIDDLE_BUTTON")
	var MOUSE_MIDDLE_BUTTON;
}

/** Gamepad number **/
extern enum abstract GamepadNumber (UInt)
{
	@:native("GAMEPAD_PLAYER1")
	var GAMEPAD_PLAYER1;

	@:native("GAMEPAD_PLAYER2")
	var GAMEPAD_PLAYER2;

	@:native("GAMEPAD_PLAYER3")
	var GAMEPAD_PLAYER3;

	@:native("GAMEPAD_PLAYER4")
	var GAMEPAD_PLAYER4;
}

/** Root type for GamepadPS3Button and GamepadXbox360Button. **/
extern enum abstract GamepadButton (UInt)
{
}

/** Root type for GamepadPS3Axis and GamepadXbox360Axis. **/
extern enum abstract GamepadAxis (UInt)
{
}

/** PS3 USB Controller Buttons
TODO: Provide a generic way to list gamepad controls schemes,
defining specific controls schemes is not a good option **/
extern enum abstract GamepadPS3Button (GamepadButton) to GamepadButton
{
	@:native("GAMEPAD_PS3_BUTTON_TRIANGLE")
	var GAMEPAD_PS3_BUTTON_TRIANGLE;

	@:native("GAMEPAD_PS3_BUTTON_CIRCLE")
	var GAMEPAD_PS3_BUTTON_CIRCLE;

	@:native("GAMEPAD_PS3_BUTTON_CROSS")
	var GAMEPAD_PS3_BUTTON_CROSS;

	@:native("GAMEPAD_PS3_BUTTON_SQUARE")
	var GAMEPAD_PS3_BUTTON_SQUARE;

	@:native("GAMEPAD_PS3_BUTTON_L1")
	var GAMEPAD_PS3_BUTTON_L1;

	@:native("GAMEPAD_PS3_BUTTON_R1")
	var GAMEPAD_PS3_BUTTON_R1;

	@:native("GAMEPAD_PS3_BUTTON_L2")
	var GAMEPAD_PS3_BUTTON_L2;

	@:native("GAMEPAD_PS3_BUTTON_R2")
	var GAMEPAD_PS3_BUTTON_R2;

	@:native("GAMEPAD_PS3_BUTTON_START")
	var GAMEPAD_PS3_BUTTON_START;

	@:native("GAMEPAD_PS3_BUTTON_SELECT")
	var GAMEPAD_PS3_BUTTON_SELECT;

	@:native("GAMEPAD_PS3_BUTTON_PS")
	var GAMEPAD_PS3_BUTTON_PS;

	@:native("GAMEPAD_PS3_BUTTON_UP")
	var GAMEPAD_PS3_BUTTON_UP;

	@:native("GAMEPAD_PS3_BUTTON_RIGHT")
	var GAMEPAD_PS3_BUTTON_RIGHT;

	@:native("GAMEPAD_PS3_BUTTON_DOWN")
	var GAMEPAD_PS3_BUTTON_DOWN;

	@:native("GAMEPAD_PS3_BUTTON_LEFT")
	var GAMEPAD_PS3_BUTTON_LEFT;
}

/** PS3 USB Controller Axis **/
extern enum abstract GamepadPS3Axis (GamepadAxis) to GamepadAxis
{
	@:native("GAMEPAD_PS3_AXIS_LEFT_X")
	var GAMEPAD_PS3_AXIS_LEFT_X;

	@:native("GAMEPAD_PS3_AXIS_LEFT_Y")
	var GAMEPAD_PS3_AXIS_LEFT_Y;

	@:native("GAMEPAD_PS3_AXIS_RIGHT_X")
	var GAMEPAD_PS3_AXIS_RIGHT_X;

	@:native("GAMEPAD_PS3_AXIS_RIGHT_Y")
	var GAMEPAD_PS3_AXIS_RIGHT_Y;

	/** [1..-1] (pressure-level) **/
	@:native("GAMEPAD_PS3_AXIS_L2")
	var GAMEPAD_PS3_AXIS_L2;

	/** [1..-1] (pressure-level) **/
	@:native("GAMEPAD_PS3_AXIS_R2")
	var GAMEPAD_PS3_AXIS_R2;
}

/** Xbox360 USB Controller Buttons **/
extern enum abstract GamepadXbox360Button (GamepadButton) to GamepadButton
{
	@:native("GAMEPAD_XBOX_BUTTON_A")
	var GAMEPAD_XBOX_BUTTON_A;

	@:native("GAMEPAD_XBOX_BUTTON_B")
	var GAMEPAD_XBOX_BUTTON_B;

	@:native("GAMEPAD_XBOX_BUTTON_X")
	var GAMEPAD_XBOX_BUTTON_X;

	@:native("GAMEPAD_XBOX_BUTTON_Y")
	var GAMEPAD_XBOX_BUTTON_Y;

	@:native("GAMEPAD_XBOX_BUTTON_LB")
	var GAMEPAD_XBOX_BUTTON_LB;

	@:native("GAMEPAD_XBOX_BUTTON_RB")
	var GAMEPAD_XBOX_BUTTON_RB;

	@:native("GAMEPAD_XBOX_BUTTON_SELECT")
	var GAMEPAD_XBOX_BUTTON_SELECT;

	@:native("GAMEPAD_XBOX_BUTTON_START")
	var GAMEPAD_XBOX_BUTTON_START;

	@:native("GAMEPAD_XBOX_BUTTON_HOME")
	var GAMEPAD_XBOX_BUTTON_HOME;

	@:native("GAMEPAD_XBOX_BUTTON_UP")
	var GAMEPAD_XBOX_BUTTON_UP;

	@:native("GAMEPAD_XBOX_BUTTON_RIGHT")
	var GAMEPAD_XBOX_BUTTON_RIGHT;

	@:native("GAMEPAD_XBOX_BUTTON_DOWN")
	var GAMEPAD_XBOX_BUTTON_DOWN;

	@:native("GAMEPAD_XBOX_BUTTON_LEFT")
	var GAMEPAD_XBOX_BUTTON_LEFT;
}

/** Xbox360 USB Controller Axis,
NOTE: For Raspberry Pi, axis must be reconfigured **/
extern enum abstract GamepadXbox360Axis (GamepadAxis) to GamepadAxis
{
	/** [-1..1] (left->right) **/
	@:native("GAMEPAD_XBOX_AXIS_LEFT_X")
	var GAMEPAD_XBOX_AXIS_LEFT_X;

	/** [1..-1] (up->down) **/
	@:native("GAMEPAD_XBOX_AXIS_LEFT_Y")
	var GAMEPAD_XBOX_AXIS_LEFT_Y;

	/** [-1..1] (left->right) **/
	@:native("GAMEPAD_XBOX_AXIS_RIGHT_X")
	var GAMEPAD_XBOX_AXIS_RIGHT_X;

	/** [1..-1] (up->down) **/
	@:native("GAMEPAD_XBOX_AXIS_RIGHT_Y")
	var GAMEPAD_XBOX_AXIS_RIGHT_Y;

	/** [-1..1] (pressure-level) **/
	@:native("GAMEPAD_XBOX_AXIS_LT")
	var GAMEPAD_XBOX_AXIS_LT;

	/** [-1..1] (pressure-level) **/
	@:native("GAMEPAD_XBOX_AXIS_RT")
	var GAMEPAD_XBOX_AXIS_RT;
}

/** Android Gamepad Controller (SNES CLASSIC) **/
extern enum abstract GamepadAndroid (UInt)
{
	@:native("GAMEPAD_ANDROID_DPAD_UP")
	var GAMEPAD_ANDROID_DPAD_UP;

	@:native("GAMEPAD_ANDROID_DPAD_DOWN")
	var GAMEPAD_ANDROID_DPAD_DOWN;

	@:native("GAMEPAD_ANDROID_DPAD_LEFT")
	var GAMEPAD_ANDROID_DPAD_LEFT;

	@:native("GAMEPAD_ANDROID_DPAD_RIGHT")
	var GAMEPAD_ANDROID_DPAD_RIGHT;

	@:native("GAMEPAD_ANDROID_DPAD_CENTER")
	var GAMEPAD_ANDROID_DPAD_CENTER;

	@:native("GAMEPAD_ANDROID_BUTTON_A")
	var GAMEPAD_ANDROID_BUTTON_A;

	@:native("GAMEPAD_ANDROID_BUTTON_B")
	var GAMEPAD_ANDROID_BUTTON_B;

	@:native("GAMEPAD_ANDROID_BUTTON_C")
	var GAMEPAD_ANDROID_BUTTON_C;

	@:native("GAMEPAD_ANDROID_BUTTON_X")
	var GAMEPAD_ANDROID_BUTTON_X;

	@:native("GAMEPAD_ANDROID_BUTTON_Y")
	var GAMEPAD_ANDROID_BUTTON_Y;

	@:native("GAMEPAD_ANDROID_BUTTON_Z")
	var GAMEPAD_ANDROID_BUTTON_Z;

	@:native("GAMEPAD_ANDROID_BUTTON_L1")
	var GAMEPAD_ANDROID_BUTTON_L1;

	@:native("GAMEPAD_ANDROID_BUTTON_R1")
	var GAMEPAD_ANDROID_BUTTON_R1;

	@:native("GAMEPAD_ANDROID_BUTTON_L2")
	var GAMEPAD_ANDROID_BUTTON_L2;

	@:native("GAMEPAD_ANDROID_BUTTON_R2")
	var GAMEPAD_ANDROID_BUTTON_R2;
}

/** Shader location point type **/
extern enum abstract ShaderLocationIndex (UInt)
{
	@:native("LOC_VERTEX_POSITION")
	var LOC_VERTEX_POSITION;

	@:native("LOC_VERTEX_TEXCOORD01")
	var LOC_VERTEX_TEXCOORD01;

	@:native("LOC_VERTEX_TEXCOORD02")
	var LOC_VERTEX_TEXCOORD02;

	@:native("LOC_VERTEX_NORMAL")
	var LOC_VERTEX_NORMAL;

	@:native("LOC_VERTEX_TANGENT")
	var LOC_VERTEX_TANGENT;

	@:native("LOC_VERTEX_COLOR")
	var LOC_VERTEX_COLOR;

	@:native("LOC_MATRIX_MVP")
	var LOC_MATRIX_MVP;

	@:native("LOC_MATRIX_MODEL")
	var LOC_MATRIX_MODEL;

	@:native("LOC_MATRIX_VIEW")
	var LOC_MATRIX_VIEW;

	@:native("LOC_MATRIX_PROJECTION")
	var LOC_MATRIX_PROJECTION;

	@:native("LOC_VECTOR_VIEW")
	var LOC_VECTOR_VIEW;

	@:native("LOC_COLOR_DIFFUSE")
	var LOC_COLOR_DIFFUSE;

	@:native("LOC_COLOR_SPECULAR")
	var LOC_COLOR_SPECULAR;

	@:native("LOC_COLOR_AMBIENT")
	var LOC_COLOR_AMBIENT;

	/** LOC_MAP_DIFFUSE **/
	@:native("LOC_MAP_ALBEDO")
	var LOC_MAP_ALBEDO;

	/** LOC_MAP_SPECULAR **/
	@:native("LOC_MAP_METALNESS")
	var LOC_MAP_METALNESS;

	@:native("LOC_MAP_NORMAL")
	var LOC_MAP_NORMAL;

	@:native("LOC_MAP_ROUGHNESS")
	var LOC_MAP_ROUGHNESS;

	@:native("LOC_MAP_OCCLUSION")
	var LOC_MAP_OCCLUSION;

	@:native("LOC_MAP_EMISSION")
	var LOC_MAP_EMISSION;

	@:native("LOC_MAP_HEIGHT")
	var LOC_MAP_HEIGHT;

	@:native("LOC_MAP_CUBEMAP")
	var LOC_MAP_CUBEMAP;

	@:native("LOC_MAP_IRRADIANCE")
	var LOC_MAP_IRRADIANCE;

	@:native("LOC_MAP_PREFILTER")
	var LOC_MAP_PREFILTER;

	@:native("LOC_MAP_BRDF")
	var LOC_MAP_BRDF;
}

/** Shader uniform data types **/
extern enum abstract ShaderUniformDataType (UInt)
{
	@:native("UNIFORM_FLOAT")
	var UNIFORM_FLOAT;

	@:native("UNIFORM_VEC2")
	var UNIFORM_VEC2;

	@:native("UNIFORM_VEC3")
	var UNIFORM_VEC3;

	@:native("UNIFORM_VEC4")
	var UNIFORM_VEC4;

	@:native("UNIFORM_INT")
	var UNIFORM_INT;

	@:native("UNIFORM_IVEC2")
	var UNIFORM_IVEC2;

	@:native("UNIFORM_IVEC3")
	var UNIFORM_IVEC3;

	@:native("UNIFORM_IVEC4")
	var UNIFORM_IVEC4;

	@:native("UNIFORM_SAMPLER2D")
	var UNIFORM_SAMPLER2D;
}

/** Material map type **/
extern enum abstract TexmapIndex (UInt)
{
	/** MAP_DIFFUSE **/
	@:native("MAP_ALBEDO")
	var MAP_ALBEDO;

	/** MAP_SPECULAR **/
	@:native("MAP_METALNESS")
	var MAP_METALNESS;

	@:native("MAP_NORMAL")
	var MAP_NORMAL;

	@:native("MAP_ROUGHNESS")
	var MAP_ROUGHNESS;

	@:native("MAP_OCCLUSION")
	var MAP_OCCLUSION;

	@:native("MAP_EMISSION")
	var MAP_EMISSION;

	@:native("MAP_HEIGHT")
	var MAP_HEIGHT;

	/** NOTE: Uses GL_TEXTURE_CUBE_MAP **/
	@:native("MAP_CUBEMAP")
	var MAP_CUBEMAP;

	/** NOTE: Uses GL_TEXTURE_CUBE_MAP **/
	@:native("MAP_IRRADIANCE")
	var MAP_IRRADIANCE;

	/** NOTE: Uses GL_TEXTURE_CUBE_MAP **/
	@:native("MAP_PREFILTER")
	var MAP_PREFILTER;

	@:native("MAP_BRDF")
	var MAP_BRDF;
}

/** Pixel formats
NOTE: Support depends on OpenGL version and platform **/
extern enum abstract PixelFormat (UInt)
{
	/** 8 bit per pixel (no alpha) **/
	@:native("UNCOMPRESSED_GRAYSCALE")
	var UNCOMPRESSED_GRAYSCALE;

	/** 8*2 bpp (2 channels) **/
	@:native("UNCOMPRESSED_GRAY_ALPHA")
	var UNCOMPRESSED_GRAY_ALPHA;

	/** 16 bpp **/
	@:native("UNCOMPRESSED_R5G6B5")
	var UNCOMPRESSED_R5G6B5;

	/** 24 bpp **/
	@:native("UNCOMPRESSED_R8G8B8")
	var UNCOMPRESSED_R8G8B8;

	/** 16 bpp (1 bit alpha) **/
	@:native("UNCOMPRESSED_R5G5B5A1")
	var UNCOMPRESSED_R5G5B5A1;

	/** 16 bpp (4 bit alpha) **/
	@:native("UNCOMPRESSED_R4G4B4A4")
	var UNCOMPRESSED_R4G4B4A4;

	/** 32 bpp **/
	@:native("UNCOMPRESSED_R8G8B8A8")
	var UNCOMPRESSED_R8G8B8A8;

	/** 32 bpp (1 channel - Float) **/
	@:native("UNCOMPRESSED_R32")
	var UNCOMPRESSED_R32;

	/** 32*3 bpp (3 channels - Float) **/
	@:native("UNCOMPRESSED_R32G32B32")
	var UNCOMPRESSED_R32G32B32;

	/** 32*4 bpp (4 channels - Float) **/
	@:native("UNCOMPRESSED_R32G32B32A32")
	var UNCOMPRESSED_R32G32B32A32;

	/** 4 bpp (no alpha) **/
	@:native("COMPRESSED_DXT1_RGB")
	var COMPRESSED_DXT1_RGB;

	/** 4 bpp (1 bit alpha) **/
	@:native("COMPRESSED_DXT1_RGBA")
	var COMPRESSED_DXT1_RGBA;

	/** 8 bpp **/
	@:native("COMPRESSED_DXT3_RGBA")
	var COMPRESSED_DXT3_RGBA;

	/** 8 bpp **/
	@:native("COMPRESSED_DXT5_RGBA")
	var COMPRESSED_DXT5_RGBA;

	/** 4 bpp **/
	@:native("COMPRESSED_ETC1_RGB")
	var COMPRESSED_ETC1_RGB;

	/** 4 bpp **/
	@:native("COMPRESSED_ETC2_RGB")
	var COMPRESSED_ETC2_RGB;

	/** 8 bpp **/
	@:native("COMPRESSED_ETC2_EAC_RGBA")
	var COMPRESSED_ETC2_EAC_RGBA;

	/** 4 bpp **/
	@:native("COMPRESSED_PVRT_RGB")
	var COMPRESSED_PVRT_RGB;

	/** 4 bpp **/
	@:native("COMPRESSED_PVRT_RGBA")
	var COMPRESSED_PVRT_RGBA;

	/** 8 bpp **/
	@:native("COMPRESSED_ASTC_4x4_RGBA")
	var COMPRESSED_ASTC_4x4_RGBA;

	/** 2 bpp **/
	@:native("COMPRESSED_ASTC_8x8_RGB")
	var COMPRESSED_ASTC_8x8_RGB;
}

/** Texture parameters: filter mode
NOTE 1: Filtering considers mipmaps if available in the texture
NOTE 2: Filter is accordingly set for minification and magnification **/
extern enum abstract TextureFilterMode (UInt)
{
	/** No filter, just pixel aproximation **/
	@:native("FILTER_POINT")
	var FILTER_POINT;

	/** Linear filtering **/
	@:native("FILTER_BILINEAR")
	var FILTER_BILINEAR;

	/** Trilinear filtering (linear with mipmaps) **/
	@:native("FILTER_TRILINEAR")
	var FILTER_TRILINEAR;

	/** Anisotropic filtering 4x **/
	@:native("FILTER_ANISOTROPIC_4X")
	var FILTER_ANISOTROPIC_4X;

	/** Anisotropic filtering 8x **/
	@:native("FILTER_ANISOTROPIC_8X")
	var FILTER_ANISOTROPIC_8X;

	/** Anisotropic filtering 16x **/
	@:native("FILTER_ANISOTROPIC_16X")
	var FILTER_ANISOTROPIC_16X;
}

/** Cubemap layout type **/
extern enum abstract CubemapLayoutType (UInt)
{
	/** Automatically detect layout type **/
	@:native("CUBEMAP_AUTO_DETECT")
	var CUBEMAP_AUTO_DETECT;

	/** Layout is defined by a vertical line with faces **/
	@:native("CUBEMAP_LINE_VERTICAL")
	var CUBEMAP_LINE_VERTICAL;

	/** Layout is defined by an horizontal line with faces **/
	@:native("CUBEMAP_LINE_HORIZONTAL")
	var CUBEMAP_LINE_HORIZONTAL;

	/** Layout is defined by a 3x4 cross with cubemap faces **/
	@:native("CUBEMAP_CROSS_THREE_BY_FOUR")
	var CUBEMAP_CROSS_THREE_BY_FOUR;

	/** Layout is defined by a 4x3 cross with cubemap faces **/
	@:native("CUBEMAP_CROSS_FOUR_BY_THREE")
	var CUBEMAP_CROSS_FOUR_BY_THREE;

	/** Layout is defined by a panorama image (equirectangular map) **/
	@:native("CUBEMAP_PANORAMA")
	var CUBEMAP_PANORAMA;
}

/** Texture parameters: wrap mode **/
extern enum abstract TextureWrapMode (UInt)
{
	/** Repeats texture in tiled mode **/
	@:native("WRAP_REPEAT")
	var WRAP_REPEAT;

	/** Clamps texture to edge pixel in tiled mode **/
	@:native("WRAP_CLAMP")
	var WRAP_CLAMP;

	/** Mirrors and repeats the texture in tiled mode **/
	@:native("WRAP_MIRROR_REPEAT")
	var WRAP_MIRROR_REPEAT;

	/** Mirrors and clamps to border the texture in tiled mode **/
	@:native("WRAP_MIRROR_CLAMP")
	var WRAP_MIRROR_CLAMP;
}

/** Font type, defines generation method **/
extern enum abstract FontType (UInt)
{
	/** Default font generation, anti-aliased **/
	@:native("FONT_DEFAULT")
	var FONT_DEFAULT;

	/** Bitmap font generation, no anti-aliasing **/
	@:native("FONT_BITMAP")
	var FONT_BITMAP;

	/** SDF font generation, requires external shader **/
	@:native("FONT_SDF")
	var FONT_SDF;
}

/** Color blending modes (pre-defined) **/
extern enum abstract BlendMode (UInt)
{
	/** Blend textures considering alpha (default) **/
	@:native("BLEND_ALPHA")
	var BLEND_ALPHA;

	/** Blend textures adding colors **/
	@:native("BLEND_ADDITIVE")
	var BLEND_ADDITIVE;

	/** Blend textures multiplying colors **/
	@:native("BLEND_MULTIPLIED")
	var BLEND_MULTIPLIED;
}

/** Gestures type
NOTE: It could be used as flags to enable only some gestures **/
extern enum abstract GestureType (UInt)
{
	@:native("GESTURE_NONE")
	var GESTURE_NONE;

	@:native("GESTURE_TAP")
	var GESTURE_TAP;

	@:native("GESTURE_DOUBLETAP")
	var GESTURE_DOUBLETAP;

	@:native("GESTURE_HOLD")
	var GESTURE_HOLD;

	@:native("GESTURE_DRAG")
	var GESTURE_DRAG;

	@:native("GESTURE_SWIPE_RIGHT")
	var GESTURE_SWIPE_RIGHT;

	@:native("GESTURE_SWIPE_LEFT")
	var GESTURE_SWIPE_LEFT;

	@:native("GESTURE_SWIPE_UP")
	var GESTURE_SWIPE_UP;

	@:native("GESTURE_SWIPE_DOWN")
	var GESTURE_SWIPE_DOWN;

	@:native("GESTURE_PINCH_IN")
	var GESTURE_PINCH_IN;

	@:native("GESTURE_PINCH_OUT")
	var GESTURE_PINCH_OUT;
}

/** Camera system modes **/
extern enum abstract CameraMode (UInt)
{
	@:native("CAMERA_CUSTOM")
	var CAMERA_CUSTOM;

	@:native("CAMERA_FREE")
	var CAMERA_FREE;

	@:native("CAMERA_ORBITAL")
	var CAMERA_ORBITAL;

	@:native("CAMERA_FIRST_PERSON")
	var CAMERA_FIRST_PERSON;

	@:native("CAMERA_THIRD_PERSON")
	var CAMERA_THIRD_PERSON;
}

/** Camera projection modes **/
extern enum abstract CameraType (UInt)
{
	@:native("CAMERA_PERSPECTIVE")
	var CAMERA_PERSPECTIVE;

	@:native("CAMERA_ORTHOGRAPHIC")
	var CAMERA_ORTHOGRAPHIC;
}

/** Head Mounted Display devices **/
extern enum abstract VrDeviceType (UInt)
{
	@:native("HMD_DEFAULT_DEVICE")
	var HMD_DEFAULT_DEVICE;

	@:native("HMD_OCULUS_RIFT_DK2")
	var HMD_OCULUS_RIFT_DK2;

	@:native("HMD_OCULUS_RIFT_CV1")
	var HMD_OCULUS_RIFT_CV1;

	@:native("HMD_OCULUS_GO")
	var HMD_OCULUS_GO;

	@:native("HMD_VALVE_HTC_VIVE")
	var HMD_VALVE_HTC_VIVE;

	@:native("HMD_SONY_PSVR")
	var HMD_SONY_PSVR;
}

/** Type of n-patch **/
extern enum abstract NPatchType (UInt)
{
	/** Npatch defined by 3x3 tiles **/
	@:native("NPT_9PATCH")
	var NPT_9PATCH;

	/** Npatch defined by 1x3 tiles **/
	@:native("NPT_3PATCH_VERTICAL")
	var NPT_3PATCH_VERTICAL;

	/** Npatch defined by 3x1 tiles **/
	@:native("NPT_3PATCH_HORIZONTAL")
	var NPT_3PATCH_HORIZONTAL;
}

/** Callbacks to be implemented by users **/
typedef TraceLogCallback = (logType:TraceLogType, text:String)->Void;

@:native("va_list")
private extern class VaList
{
}

@:include("./../lib/src/raylib.h")
@:build(raylib.LinkMacro.build())
class Raylib
{
	@:noCompletion
	static var haxeTraceLogCallback:TraceLogCallback;

	@:noCompletion
	static function handle(logType:Int, text:ConstCharStar, args:VaList)
	{
		untyped __cpp__("
			FILE* pFile = tmpfile();
			vfprintf(pFile, {2}, args);
			rewind(pFile);
			char* buffer = NULL;
			size_t len;
			ssize_t bytes_read = getdelim(&buffer, &len, '\\0', pFile);
			{0}({1}, ::String(buffer));
			free(buffer);
			fclose(pFile);
		", haxeTraceLogCallback, logType, text);
	}

	//TODO find a way to get defines?

	public static var PLATFORM_DESKTOP(get, never):Bool;

	@:noCompletion
	static inline function get_PLATFORM_DESKTOP()
	{
		return true;
	}

	public static var PLATFORM_WEB(get, never):Bool;

	@:noCompletion
	static inline function get_PLATFORM_WEB()
	{
		return false;
	}

	public static var PLATFORM_ANDROID(get, never):Bool;

	@:noCompletion
	static inline function get_PLATFORM_ANDROID()
	{
		return false;
	}

	public static var PLATFORM_RPI(get, never):Bool;

	@:noCompletion
	static inline function get_PLATFORM_RPI()
	{
		return false;
	}

	public static var PLATFORM_UWP(get, never):Bool;

	@:noCompletion
	static inline function get_PLATFORM_UWP()
	{
		return false;
	}

	public static var GRAPHICS_API_OPENGL_33(get, never):Bool;

	@:noCompletion
	static inline function get_GRAPHICS_API_OPENGL_33()
	{
		return true;
	}

	public static var GRAPHICS_API_OPENGL_ES2(get, never):Bool;

	@:noCompletion
	static inline function get_GRAPHICS_API_OPENGL_ES2()
	{
		return false;
	}

	public static var GRAPHICS_API_OPENGL_11(get, never):Bool;

	@:noCompletion
	static inline function get_GRAPHICS_API_OPENGL_11()
	{
		return false;
	}

	public static var GRAPHICS_API_OPENGL_21(get, never):Bool;

	@:noCompletion
	static inline function get_GRAPHICS_API_OPENGL_21()
	{
		return false;
	}

	@:native("PI")
	public static extern var PI:Float;

	@:native("DEG2RAD")
	public static extern var DEG2RAD:Float;

	@:native("RAD2DEG")
	public static extern var RAD2DEG:Float;

	/** Maximum number of touch points supported **/
	@:native("MAX_TOUCH_POINTS")
	public static extern var MAX_TOUCH_POINTS:Int;

	/** Maximum number of predefined locations stored in shader struct **/
	@:native("MAX_SHADER_LOCATIONS")
	public static extern var MAX_SHADER_LOCATIONS:Int;

	/** Maximum number of texture maps stored in shader struct **/
	@:native("MAX_MATERIAL_MAPS")
	public static extern var MAX_MATERIAL_MAPS:Int;

	/** Light Gray **/
	@:native("cpp::Struct<Color>(LIGHTGRAY)")
	public static extern var LIGHTGRAY:Color;

	/** Gray **/
	@:native("cpp::Struct<Color>(GRAY)")
	public static extern var GRAY:Color;

	/** Dark Gray **/
	@:native("cpp::Struct<Color>(DARKGRAY)")
	public static extern var DARKGRAY:Color;

	/** Yellow **/
	@:native("cpp::Struct<Color>(YELLOW)")
	public static extern var YELLOW:Color;

	/** Gold **/
	@:native("cpp::Struct<Color>(GOLD)")
	public static extern var GOLD:Color;

	/** Orange **/
	@:native("cpp::Struct<Color>(ORANGE)")
	public static extern var ORANGE:Color;

	/** Pink **/
	@:native("cpp::Struct<Color>(PINK)")
	public static extern var PINK:Color;

	/** Red **/
	@:native("cpp::Struct<Color>(RED)")
	public static extern var RED:Color;

	/** Maroon **/
	@:native("cpp::Struct<Color>(MAROON)")
	public static extern var MAROON:Color;

	/** Green **/
	@:native("cpp::Struct<Color>(GREEN)")
	public static extern var GREEN:Color;

	/** Lime **/
	@:native("cpp::Struct<Color>(LIME)")
	public static extern var LIME:Color;

	/** Dark Green **/
	@:native("cpp::Struct<Color>(DARKGREEN)")
	public static extern var DARKGREEN:Color;

	/** Sky Blue **/
	@:native("cpp::Struct<Color>(SKYBLUE)")
	public static extern var SKYBLUE:Color;

	/** Blue **/
	@:native("cpp::Struct<Color>(BLUE)")
	public static extern var BLUE:Color;

	/** Dark Blue **/
	@:native("cpp::Struct<Color>(DARKBLUE)")
	public static extern var DARKBLUE:Color;

	/** Purple **/
	@:native("cpp::Struct<Color>(PURPLE)")
	public static extern var PURPLE:Color;

	/** Violet **/
	@:native("cpp::Struct<Color>(VIOLET)")
	public static extern var VIOLET:Color;

	/** Dark Purple **/
	@:native("cpp::Struct<Color>(DARKPURPLE)")
	public static extern var DARKPURPLE:Color;

	/** Beige **/
	@:native("cpp::Struct<Color>(BEIGE)")
	public static extern var BEIGE:Color;

	/** Brown **/
	@:native("cpp::Struct<Color>(BROWN)")
	public static extern var BROWN:Color;

	/** Dark Brown **/
	@:native("cpp::Struct<Color>(DARKBROWN)")
	public static extern var DARKBROWN:Color;

	/** White **/
	@:native("cpp::Struct<Color>(WHITE)")
	public static extern var WHITE:Color;

	/** Black **/
	@:native("cpp::Struct<Color>(BLACK)")
	public static extern var BLACK:Color;

	/** Blank (Transparent) **/
	@:native("cpp::Struct<Color>(BLANK)")
	public static extern var BLANK:Color;

	/** Magenta **/
	@:native("cpp::Struct<Color>(MAGENTA)")
	public static extern var MAGENTA:Color;

	/** My own White (raylib logo) **/
	@:native("cpp::Struct<Color>(RAYWHITE)")
	public static extern var RAYWHITE:Color;

	@:native("LOC_MAP_DIFFUSE")
	public static extern var LOC_MAP_DIFFUSE:UInt;

	@:native("LOC_MAP_SPECULAR")
	public static extern var LOC_MAP_SPECULAR:UInt;

	@:native("MAP_DIFFUSE")
	public static extern var MAP_DIFFUSE:UInt;

	@:native("MAP_SPECULAR")
	public static extern var MAP_SPECULAR:UInt;

	/** Initialize window and OpenGL context **/
	public static extern inline function InitWindow(width:Int, height:Int, title:String):Void
	{
		untyped __cpp__("InitWindow({0}, {1}, {2}.__s)", width, height, title);
	}

	/** Check if KEY_ESCAPE pressed or Close icon pressed **/
	@:native("WindowShouldClose")
	public static extern function WindowShouldClose():Bool;

	/** Close window and unload OpenGL context **/
	@:native("CloseWindow")
	public static extern function CloseWindow():Void;

	/** Check if window has been initialized successfully **/
	@:native("IsWindowReady")
	public static extern function IsWindowReady():Bool;

	/** Check if window has been minimized (or lost focus) **/
	@:native("IsWindowMinimized")
	public static extern function IsWindowMinimized():Bool;

	/** Check if window has been resized **/
	@:native("IsWindowResized")
	public static extern function IsWindowResized():Bool;

	/** Check if window is currently hidden **/
	@:native("IsWindowHidden")
	public static extern function IsWindowHidden():Bool;

	/** Toggle fullscreen mode (only PLATFORM_DESKTOP) **/
	@:native("ToggleFullscreen")
	public static extern function ToggleFullscreen():Void;

	/** Show the window **/
	@:native("UnhideWindow")
	public static extern function UnhideWindow():Void;

	/** Hide the window **/
	@:native("HideWindow")
	public static extern function HideWindow():Void;

	/** Set icon for window (only PLATFORM_DESKTOP) **/
	public static extern inline function SetWindowIcon(image:Image):Void
	{
		untyped __cpp__("SetWindowIcon({0}.value)", image);
	}

	/** Set title for window (only PLATFORM_DESKTOP) **/
	public static extern inline function SetWindowTitle(title:String):Void
	{
		untyped __cpp__("SetWindowTitle({0}.__s)", title);
	}

	/** Set window position on screen (only PLATFORM_DESKTOP) **/
	@:native("SetWindowPosition")
	public static extern function SetWindowPosition(x:Int, y:Int):Void;

	/** Set monitor for the current window (fullscreen mode) **/
	@:native("SetWindowMonitor")
	public static extern function SetWindowMonitor(monitor:Int):Void;

	/** Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE) **/
	@:native("SetWindowMinSize")
	public static extern function SetWindowMinSize(width:Int, height:Int):Void;

	/** Set window dimensions **/
	@:native("SetWindowSize")
	public static extern function SetWindowSize(width:Int, height:Int):Void;

	/** Get native window handle **/
	@:native("GetWindowHandle")
	public static extern function GetWindowHandle():Star<cpp.Void>;

	/** Get current screen width **/
	@:native("GetScreenWidth")
	public static extern function GetScreenWidth():Int;

	/** Get current screen height **/
	@:native("GetScreenHeight")
	public static extern function GetScreenHeight():Int;

	/** Get number of connected monitors **/
	@:native("GetMonitorCount")
	public static extern function GetMonitorCount():Int;

	/** Get primary monitor width **/
	@:native("GetMonitorWidth")
	public static extern function GetMonitorWidth(monitor:Int):Int;

	/** Get primary monitor height **/
	@:native("GetMonitorHeight")
	public static extern function GetMonitorHeight(monitor:Int):Int;

	/** Get primary monitor physical width in millimetres **/
	@:native("GetMonitorPhysicalWidth")
	public static extern function GetMonitorPhysicalWidth(monitor:Int):Int;

	/** Get primary monitor physical height in millimetres **/
	@:native("GetMonitorPhysicalHeight")
	public static extern function GetMonitorPhysicalHeight(monitor:Int):Int;

	/** Get the human-readable, UTF-8 encoded name of the primary monitor **/
	@:native("GetMonitorName")
	public static extern function GetMonitorName(monitor:Int):ConstCharStar; // TODO make string

	/** Get clipboard text content **/
	@:native("GetClipboardText")
	public static extern function GetClipboardText():ConstCharStar; // TODO make string

	/** Set clipboard text content **/
	public static extern inline function SetClipboardText(text:String):Void
	{
		untyped __cpp__("SetClipboardText({0}.__s)", text);
	}

	/** Shows cursor **/
	@:native("ShowCursor")
	public static extern function ShowCursor():Void;

	/** Hides cursor **/
	@:native("HideCursor")
	public static extern function HideCursor():Void;

	/** Check if cursor is not visible **/
	@:native("IsCursorHidden")
	public static extern function IsCursorHidden():Bool;

	/** Enables cursor (unlock cursor) **/
	@:native("EnableCursor")
	public static extern function EnableCursor():Void;

	/** Disables cursor (lock cursor) **/
	@:native("DisableCursor")
	public static extern function DisableCursor():Void;

	/** Set background color (framebuffer clear color) **/
	public static extern inline function ClearBackground(color:Color):Void
	{
		untyped __cpp__("ClearBackground({0}.value)", color);
	}

	/** Setup canvas (framebuffer) to start drawing **/
	@:native("BeginDrawing")
	public static extern function BeginDrawing():Void;

	/** End canvas drawing and swap buffers (double buffering) **/
	@:native("EndDrawing")
	public static extern function EndDrawing():Void;

	/** Initialize 2D mode with custom camera (2D) **/
	public static extern inline function BeginMode2D(camera:Camera2D):Void
	{
		untyped __cpp__("BeginMode2D({0}.value)", camera);
	}

	/** Ends 2D mode with custom camera **/
	@:native("EndMode2D")
	public static extern function EndMode2D():Void;

	/** Initializes 3D mode with custom camera (3D) **/
	public static extern inline function BeginMode3D(camera:Camera3D):Void
	{
		untyped __cpp__("BeginMode3D({0}.value)", camera);
	}

	/** Ends 3D mode and returns to default 2D orthographic mode **/
	@:native("EndMode3D")
	public static extern function EndMode3D():Void;

	/** Initializes render texture for drawing **/
	public static extern inline function BeginTextureMode(target:RenderTexture2D):Void
	{
		untyped __cpp__("BeginTextureMode({0}.value)", target);
	}

	/** Ends drawing to render texture **/
	@:native("EndTextureMode")
	public static extern function EndTextureMode():Void;

	/** Returns a ray trace from mouse position **/
	public static extern inline function GetMouseRay(mousePosition:Vector2, camera:Camera3D):Ray
	{
		return untyped __cpp__("cpp::Struct<Ray>(GetMouseRay({0}.value, {1}.value))", mousePosition, camera);
	}

	/** Returns the screen space position for a 3d world space position **/
	public static extern inline function GetWorldToScreen(position:Vector3, camera:Camera3D):Vector2
	{
		return untyped __cpp__("cpp::Struct<Vector2>(GetWorldToScreen({0}.value, {1}.value))", position, camera);
	}

	/** Returns camera transform matrix (view matrix) **/
	public static extern inline function GetCameraMatrix(camera:Camera3D):Matrix
	{
		return untyped __cpp__("cpp::Struct<Matrix>(GetCameraMatrix({0}.value))", camera);
	}

	/** Set target FPS (maximum) **/
	@:native("SetTargetFPS")
	public static extern function SetTargetFPS(fps:Int):Void;

	/** Returns current FPS **/
	@:native("GetFPS")
	public static extern function GetFPS():Int;

	/** Returns time in seconds for last frame drawn **/
	@:native("GetFrameTime")
	public static extern function GetFrameTime():Float;

	/** Returns elapsed time in seconds since InitWindow() **/
	@:native("GetTime")
	public static extern function GetTime():cpp.Float64;

	/** Returns hexadecimal value for a Color **/
	public static extern inline function ColorToInt(color:Color):Int
	{
		return untyped __cpp__("ColorToInt({0}.value)", color);
	}

	/** Returns color normalized as Float [0..1] **/
	public static extern inline function ColorNormalize(color:Color):Vector4
	{
		return untyped __cpp__("cpp::Struct<Vector4>(ColorNormalize({0}.value))", color);
	}

	/** Returns HSV values for a Color **/
	public static extern inline function ColorToHSV(color:Color):Vector3
	{
		return untyped __cpp__("cpp::Struct<Vector3>(ColorToHSV({0}.value))", color);
	}

	/** Returns a Color from HSV values **/
	public static extern inline function ColorFromHSV(hsv:Vector3):Color
	{
		return untyped __cpp__("cpp::Struct<Color>(ColorFromHSV({0}.value))", hsv);
	}

	/** Returns a Color struct from hexadecimal value **/
	public static extern inline function GetColor(hexValue:Int):Color
	{
		return untyped __cpp__("cpp::Struct<Color>(GetColor({0}))", hexValue);
	}

	/** Color fade-in or fade-out, alpha goes from 0.0f to 1.0f **/
	public static extern inline function Fade(color:Color, alpha:Float):Color
	{
		return untyped __cpp__("cpp::Struct<Color>(Fade({0}.value, float({1})))", color, alpha);
	}

	/** Setup window configuration flags (view FLAGS) **/
	@:native("SetConfigFlags")
	public static extern function SetConfigFlags(flags:ConfigFlag):Void;

	/** Set the current threshold (minimum) log level **/
	@:native("SetTraceLogLevel")
	public static extern function SetTraceLogLevel(logType:TraceLogType):Void;

	/** Set the exit threshold (minimum) log level **/
	@:native("SetTraceLogExit")
	public static extern function SetTraceLogExit(logType:TraceLogType):Void;

	/** Set a trace log callback to enable custom logging **/
	public static extern inline function SetTraceLogCallback(callback:TraceLogCallback):Void
	{
		haxeTraceLogCallback = callback;
		untyped __cpp__("SetTraceLogCallback({0})", Function.fromStaticFunction(handle));
	}

	/** Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR) **/
	public static extern inline function TraceLog(logType:TraceLogType, text:String, rest:VarArg):Void
	{
		untyped __cpp__("TraceLog({0}, {1}.__s, {2})", logType, text, rest);
	}

	/** Takes a screenshot of current screen (saved a .png) **/
	public static extern inline function TakeScreenshot(fileName:String):Void
	{
		untyped __cpp__("TakeScreenshot({0}.__s)", fileName);
	}

	/** Returns a random value between min and max (both included) **/
	@:native("GetRandomValue")
	public static extern function GetRandomValue(min:Int, max:Int):Int;

	/** Check if file exists
	NOTE: This is using the Haxe API. **/
	public static extern inline function FileExists(fileName:String):Bool
	{
		return FileSystem.exists(fileName);
	}

	/** Check file extension
	NOTE: This is using the Haxe API. **/
	public static extern inline function IsFileExtension(fileName:String, ext:String):Bool
	{
		return fileName.extension() == ext;
	}

	/** Get extension for a filename string
	NOTE: This is using the Haxe API. **/
	public static extern inline function GetExtension(fileName:String):String
	{
		return fileName.extension();
	}

	/** Get filename for a path string
	NOTE: This is using the Haxe API. **/
	public static extern inline function GetFileName(filePath:String):String
	{
		return filePath.withoutDirectory();
	}

	/** Get filename string without extension
	NOTE: This is using the Haxe API. **/
	public static extern inline function GetFileNameWithoutExt(filePath:String):String
	{
		return filePath.withoutDirectory().withoutExtension();
	}

	/** Get full path for a given fileName
	NOTE: This is using the Haxe API. **/
	public static extern inline function GetDirectoryPath(fileName:String):String
	{
		return fileName.directory();
	}

	/** Get current working directory
	NOTE: This is using the Haxe API. **/
	public static extern inline function GetWorkingDirectory():String
	{
		return Sys.getCwd();
	}

	/** Get filenames in a directory path
	NOTE: This is using the Haxe API. **/
	public static extern inline function GetDirectoryFiles(dirPath:String):Array<String>
	{
		return FileSystem.readDirectory(dirPath);
	}

	/** Do nothing, GetDirectoryFiles' strings don't need to be freed. **/
	public static extern inline function ClearDirectoryFiles():Void
	{
	}

	/** Change working directory, returns true if success
	NOTE: This is using the Haxe API. **/
	public static extern inline function ChangeDirectory(dir:String):Bool
	{
		try
		{
			Sys.setCwd(dir);
			return true;
		}
		catch (_:Any)
		{
			return false;
		}
	}

	/** Check if a file has been dropped into window **/
	@:native("IsFileDropped")
	public static extern function IsFileDropped():Bool;

	/** Get dropped files names **/
	public static extern inline function GetDroppedFiles():Array<String>
	{
		var a = [];

		untyped __cpp__("
			int count;
			char** files = GetDroppedFiles(&count);

			for (int i = 0; i < count; ++i)
			{
				a->push(::String(files[i]));
			}
		", a);

		return a;
	}

	/** Do nothing, GetDropFiles' string don't need to be freed. **/
	public static extern inline function ClearDroppedFiles():Void
	{
	}

	/** Get file modification time (last write time) **/
	public static extern inline function GetFileModTime(fileName:String):Int
	{
		return untyped __cpp__("GetFileModTime({0}.__s)", fileName);
	}

	/** Save integer value to storage file (to defined position) **/
	@:native("StorageSaveValue")
	public static extern function StorageSaveValue(position:Int, value:Int):Void;

	/** Load integer value from storage file (from defined position) **/
	@:native("StorageLoadValue")
	public static extern function StorageLoadValue(position:Int):Int;

	/** Open URL with default system browser (if available) **/
	public static extern inline function OpenURL(url:String):Void
	{
		untyped __cpp__("OpenURL({0}.__s)", url);
	}

	/** Detect if a key has been pressed once **/
	@:native("IsKeyPressed")
	public static extern function IsKeyPressed(key:KeyboardKey):Bool;

	/** Detect if a key is being pressed **/
	@:native("IsKeyDown")
	public static extern function IsKeyDown(key:KeyboardKey):Bool;

	/** Detect if a key has been released once **/
	@:native("IsKeyReleased")
	public static extern function IsKeyReleased(key:KeyboardKey):Bool;

	/** Detect if a key is NOT being pressed **/
	@:native("IsKeyUp")
	public static extern function IsKeyUp(key:KeyboardKey):Bool;

	/** Get latest key pressed **/
	@:native("GetKeyPressed")
	public static extern function GetKeyPressed():KeyboardKey;

	/** Set a custom key to exit program (default is ESC) **/
	@:native("SetExitKey")
	public static extern function SetExitKey(key:KeyboardKey):Void;

	/** Detect if a gamepad is available **/
	@:native("IsGamepadAvailable")
	public static extern function IsGamepadAvailable(gamepad:GamepadNumber):Bool;

	/** Check gamepad name (if available) **/
	public static extern inline function IsGamepadName(gamepad:GamepadNumber, name:String):Bool
	{
		return untyped __cpp__("IsGamepadName({0}, {1}.__s)", gamepad, name);
	}

	/** Return gamepad internal name id **/
	@:native("GetGamepadName")
	public static extern function GetGamepadName(gamepad:GamepadNumber):ConstCharStar; // TODO make string

	/** Detect if a gamepad button has been pressed once **/
	@:native("IsGamepadButtonPressed")
	public static extern function IsGamepadButtonPressed(gamepad:GamepadNumber, button:GamepadButton):Bool;

	/** Detect if a gamepad button is being pressed **/
	@:native("IsGamepadButtonDown")
	public static extern function IsGamepadButtonDown(gamepad:GamepadNumber, button:GamepadButton):Bool;

	/** Detect if a gamepad button has been released once **/
	@:native("IsGamepadButtonReleased")
	public static extern function IsGamepadButtonReleased(gamepad:GamepadNumber, button:GamepadButton):Bool;

	/** Detect if a gamepad button is NOT being pressed **/
	@:native("IsGamepadButtonUp")
	public static extern function IsGamepadButtonUp(gamepad:GamepadNumber, button:GamepadButton):Bool;

	/** Get the last gamepad button pressed **/
	@:native("GetGamepadButtonPressed")
	public static extern function GetGamepadButtonPressed():Int;

	/** Return gamepad axis count for a gamepad **/
	@:native("GetGamepadAxisCount")
	public static extern function GetGamepadAxisCount(gamepad:GamepadNumber):Int;

	/** Return axis movement value for a gamepad axis **/
	@:native("GetGamepadAxisMovement")
	public static extern function GetGamepadAxisMovement(gamepad:GamepadNumber, axis:GamepadAxis):Float;

	/** Detect if a mouse button has been pressed once **/
	@:native("IsMouseButtonPressed")
	public static extern function IsMouseButtonPressed(button:MouseButton):Bool;

	/** Detect if a mouse button is being pressed **/
	@:native("IsMouseButtonDown")
	public static extern function IsMouseButtonDown(button:MouseButton):Bool;

	/** Detect if a mouse button has been released once **/
	@:native("IsMouseButtonReleased")
	public static extern function IsMouseButtonReleased(button:MouseButton):Bool;

	/** Detect if a mouse button is NOT being pressed **/
	@:native("IsMouseButtonUp")
	public static extern function IsMouseButtonUp(button:MouseButton):Bool;

	/** Returns mouse position X **/
	@:native("GetMouseX")
	public static extern function GetMouseX():Int;

	/** Returns mouse position Y **/
	@:native("GetMouseY")
	public static extern function GetMouseY():Int;

	/** Returns mouse position XY **/
	public static extern inline function GetMousePosition():Vector2
	{
		return untyped __cpp__("cpp::Struct<Vector2>(GetMousePosition())");
	}

	/** Set mouse position XY **/
	@:native("SetMousePosition")
	public static extern function SetMousePosition(x:Int, y:Int):Void;

	/** Set mouse offset **/
	@:native("SetMouseOffset")
	public static extern function SetMouseOffset(offsetX:Int, offsetY:Int):Void;

	/** Set mouse scaling **/
	@:native("SetMouseScale")
	public static extern function SetMouseScale(scaleX:Float, scaleY:Float):Void;

	/** Returns mouse wheel movement Y **/
	@:native("GetMouseWheelMove")
	public static extern function GetMouseWheelMove():Int;

	/** Returns touch position X for touch point 0 (relative to screen size) **/
	@:native("GetTouchX")
	public static extern function GetTouchX():Int;

	/** Returns touch position Y for touch point 0 (relative to screen size) **/
	@:native("GetTouchY")
	public static extern function GetTouchY():Int;

	/** Returns touch position XY for a touch point index (relative to screen size) **/
	public static extern inline function GetTouchPosition(index:Int):Vector2
	{
		return untyped __cpp__("cpp::Struct<Vector2>(GetTouchPosition({0}))", index);
	}

	/** Enable a set of gestures using flags **/
	@:native("SetGesturesEnabled")
	public static extern function SetGesturesEnabled(gestureFlags:UInt):Void;

	/** Check if a gesture have been detected **/
	@:native("IsGestureDetected")
	public static extern function IsGestureDetected(gesture:Int):Bool;

	/** Get latest detected gesture **/
	@:native("GetGestureDetected")
	public static extern function GetGestureDetected():GestureType;

	/** Get touch points count **/
	@:native("GetTouchPointsCount")
	public static extern function GetTouchPointsCount():Int;

	/** Get gesture hold time in milliseconds **/
	@:native("GetGestureHoldDuration")
	public static extern function GetGestureHoldDuration():Float;

	/** Get gesture drag vector **/
	public static extern inline function GetGestureDragVector():Vector2
	{
		return untyped __cpp__("cpp::Struct<Vector2>(GetGestureDragVector())");
	}

	/** Get gesture drag angle **/
	@:native("GetGestureDragAngle")
	public static extern function GetGestureDragAngle():Float;

	/** Get gesture pinch delta **/
	public static extern inline function GetGesturePinchVector():Vector2
	{
		return untyped __cpp__("cpp::Struct<Vector2>(GetGesturePinchVector())");
	}

	/** Get gesture pinch angle **/
	@:native("GetGesturePinchAngle")
	public static extern function GetGesturePinchAngle():Float;

	/** Set camera mode (multiple camera modes available) **/
	public static extern inline function SetCameraMode(camera:Camera3D, mode:CameraMode):Void
	{
		untyped __cpp__("SetCameraMode({0}.value, {1})", camera, mode);
	}

	/** Update camera position for selected mode **/
	public static extern inline function UpdateCamera(camera:Reference<Camera3D>):Void
	{
		untyped __cpp__("UpdateCamera(&({0}.value))", camera);
	}

	/** Set camera pan key to combine with mouse movement (free camera) **/
	@:native("SetCameraPanControl")
	public static extern function SetCameraPanControl(panKey:KeyboardKey):Void;

	/** Set camera alt key to combine with mouse movement (free camera) **/
	@:native("SetCameraAltControl")
	public static extern function SetCameraAltControl(altKey:KeyboardKey):Void;

	/** Set camera smooth zoom key to combine with mouse (free camera) **/
	@:native("SetCameraSmoothZoomControl")
	public static extern function SetCameraSmoothZoomControl(szKey:KeyboardKey):Void;

	/** Set camera move controls (1st person and 3rd person cameras) **/
	@:native("SetCameraMoveControls")
	public static extern function SetCameraMoveControls(frontKey:KeyboardKey, backKey:KeyboardKey, rightKey:KeyboardKey, leftKey:KeyboardKey, upKey:KeyboardKey, downKey:KeyboardKey):Void;

	/** Draw a pixel **/
	public static extern inline function DrawPixel(posX:Int, posY:Int, color:Color):Void
	{
		untyped __cpp__("DrawPixel({0}, {1}, {2}.value)", posX, posY, color);
	}

	/** Draw a pixel (Vector version) **/
	public static extern inline function DrawPixelV(position:Vector2, color:Color):Void
	{
		untyped __cpp__("DrawPixelV({0}.value, {1}.value)", position, color);
	}

	/** Draw a line **/
	public static extern inline function DrawLine(startPosX:Int, startPosY:Int, endPosX:Int, endPosY:Int, color:Color):Void
	{
		untyped __cpp__("DrawLine({0}, {1}, {2}, {3}, {4}.value)", startPosX, startPosY, endPosX, endPosY, color);
	}

	/** Draw a line (Vector version) **/
	public static extern inline function DrawLineV(startPos:Vector2, endPos:Vector2, color:Color):Void
	{
		untyped __cpp__("DrawLineV({0}.value, {1}.value, {2}.value)", startPos, endPos, color);
	}

	/** Draw a line defining thickness **/
	public static extern inline function DrawLineEx(startPos:Vector2, endPos:Vector2, thick:Float, color:Color):Void
	{
		untyped __cpp__("DrawLineEx({0}.value, {1}.value, float({2}), {3}.value)", startPos, endPos, thick, color);
	}

	/** Draw a line using cubic-bezier curves in-out **/
	public static extern inline function DrawLineBezier(startPos:Vector2, endPos:Vector2, thick:Float, color:Color):Void
	{
		untyped __cpp__("DrawLineBezier({0}.value, {1}.value, float({2}), {3}.value)", startPos, endPos, thick, color);
	}

	/** Draw a color-filled circle **/
	public static extern inline function DrawCircle(centerX:Int, centerY:Int, radius:Float, color:Color):Void
	{
		untyped __cpp__("DrawCircle({0}, {1}, float({2}), {3}.value)", centerX, centerY, radius, color);
	}

	/** Draw a piece of a circle **/
	public static extern inline function DrawCircleSector(center:Vector2, radius:Float, startAngle:Int, endAngle:Int, color:Color):Void
	{
		untyped __cpp__("DrawCircleSector({0}.value, float({1}), {2}, {3}, {4}.value)", center, radius, startAngle, endAngle, color);
	}

	/** Draw a gradient-filled circle **/
	public static extern inline function DrawCircleGradient(centerX:Int, centerY:Int, radius:Float, color1:Color, color2:Color):Void
	{
		untyped __cpp__("DrawCircle({0}, {1}, float({2}), {3}.value)", centerX, centerY, radius, color);
	}

	/** Draw a color-filled circle (Vector version) **/
	public static extern inline function DrawCircleV(center:Vector2, radius:Float, color:Color):Void
	{
		untyped __cpp__("DrawCircleV({0}.value, float({1}), {2}.value)", center, radius, color);
	}

	/** Draw circle outline **/
	public static extern inline function DrawCircleLines(centerX:Int, centerY:Int, radius:Float, color:Color):Void
	{
		untyped __cpp__("DrawCircleLines({0}, {1}, float({2}), {3}.value)", centerX, centerY, radius, color);
	}

	/** Draw a color-filled rectangle **/
	public static extern inline function DrawRectangle(posX:Int, posY:Int, width:Int, height:Int, color:Color):Void
	{
		untyped __cpp__("DrawRectangle({0}, {1}, {2}, {3}, {4}.value)", posX, posY, width, height, color);
	}

	/** Draw a color-filled rectangle (Vector version) **/
	public static extern inline function DrawRectangleV(position:Vector2, size:Vector2, color:Color):Void
	{
		untyped __cpp__("DrawRectangleV({0}.value, {1}.value, {2}.value)", position, size, color);
	}

	/** Draw a color-filled rectangle **/
	public static extern inline function DrawRectangleRec(rec:Rectangle, color:Color):Void
	{
		untyped __cpp__("DrawRectangleRec({0}.value, {1}.value)", rec, color);
	}

	/** Draw a color-filled rectangle with pro parameters **/
	public static extern inline function DrawRectanglePro(rec:Rectangle, origin:Vector2, rotation:Float, color:Color):Void
	{
		untyped __cpp__("DrawRectanglePro({0}.value, {1}.value, float({2}), {3}.value)", rec, origin, rotation, color);
	}

	/** Draw a vertical-gradient-filled rectangle **/
	public static extern inline function DrawRectangleGradientV(posX:Int, posY:Int, width:Int, height:Int, color1:Color, color2:Color):Void
	{
		untyped __cpp__("DrawRectangleGradientV({0}, {1}, {2}, {3}, {4}.value, {5}.value)", posX, posY, width, height, color1, color2);
	}

	/** Draw a horizontal-gradient-filled rectangle **/
	public static extern inline function DrawRectangleGradientH(posX:Int, posY:Int, width:Int, height:Int, color1:Color, color2:Color):Void
	{
		untyped __cpp__("DrawRectangleGradientH({0}, {1}, {2}, {3}, {4}.value, {5}.value)", posX, posY, width, height, color1, color2);
	}

	/** Draw a gradient-filled rectangle with custom vertex colors **/
	public static extern inline function DrawRectangleGradientEx(rec:Rectangle, col1:Color, col2:Color, col3:Color, col4:Color):Void
	{
		untyped __cpp__("DrawRectangleGradientEx({0}.value, {1}.value, {2}.value, {3}.value, {4}.value)", rec, col1, col2, col3, col4);
	}

	/** Draw rectangle outline **/
	public static extern inline function DrawRectangleLines(posX:Int, posY:Int, width:Int, height:Int, color:Color):Void
	{
		untyped __cpp__("DrawRectangleLines({0}, {1}, {2}, {3}, {4}.value)", posX, posY, width, height, color);
	}

	/** Draw rectangle outline with extended parameters **/
	public static extern inline function DrawRectangleLinesEx(rec:Rectangle, lineThick:Int, color:Color):Void
	{
		untyped __cpp__("DrawRectangleLinesEx({0}.value, {1}, {2}.value)", rec, lineThick, color);
	}

	/** Draw a color-filled triangle **/
	public static extern inline function DrawTriangle(v1:Vector2, v2:Vector2, v3:Vector2, color:Color):Void
	{
		untyped __cpp__("DrawTriangle({0}.value, {1}.value, {2}.value, {3}.value)", v1, v2, v3, color);
	}

	/** Draw triangle outline **/
	public static extern inline function DrawTriangleLines(v1:Vector2, v2:Vector2, v3:Vector2, color:Color):Void
	{
		untyped __cpp__("DrawTriangleLines({0}.value, {1}.value, {2}.value, {3}.value)", v1, v2, v3, color);
	}

	/** Draw a regular polygon (Vector version) **/
	public static extern inline function DrawPoly(center:Vector2, sides:Int, radius:Float, rotation:Float, color:Color):Void
	{
		untyped __cpp__("DrawPoly({0}.value, {1}, float({2}), float({3}), {4}.value)", center, sides, radius, rotation, color);
	}

	/** Draw a closed polygon defined by points **/
	@:native("DrawPolyEx")
	public static extern function DrawPolyEx(points:Star<Vector2>, numPoints:Int, color:Color):Void; // TODO to Array

	/** Draw polygon lines **/
	@:native("DrawPolyExLines")
	public static extern function DrawPolyExLines(points:Star<Vector2>, numPoints:Int, color:Color):Void; // TODO to Array

	/** Define default texture used to draw shapes **/
	public static extern inline function SetShapesTexture(texture:Texture2D, source:Rectangle):Void
	{
		untyped __cpp__("SetShapesTexture({0}.value, {1}.value)", texture, source);
	}

	/** Check collision between two rectangles **/
	public static extern inline function CheckCollisionRecs(rec1:Rectangle, rec2:Rectangle):Bool
	{
		return untyped __cpp__("CheckCollisionRecs({0}.value, {1}.value)", rec1, rec2);
	}

	/** Check collision between two circles **/
	public static extern inline function CheckCollisionCircles(center1:Vector2, radius1:Float, center2:Vector2, radius2:Float):Bool
	{
		return untyped __cpp__("CheckCollisionCircles({0}.value, float({1}), {2}.value, float({3}))", center1, radius1, center2, radius2);
	}

	/** Check collision between circle and rectangle **/
	public static extern inline function CheckCollisionCircleRec(center:Vector2, radius:Float, rec:Rectangle):Bool
	{
		return untyped __cpp__("CheckCollisionCircleRec({0}.value, float({1}), {2}.value)", center, radius, rec);
	}

	/** Get collision rectangle for two rectangles collision **/
	public static extern inline function GetCollisionRec(rec1:Rectangle, rec2:Rectangle):Rectangle
	{
		return untyped __cpp__("cpp::Struct<Rectangle>(GetCollisionRec({0}.value, {1}.value))", rec1, rec2);
	}

	/** Check if point is inside rectangle **/
	public static extern inline function CheckCollisionPointRec(point:Vector2, rec:Rectangle):Bool
	{
		return untyped __cpp__("CheckCollisionPointRec({0}.value, {1}.value)", point, rec);
	}

	/** Check if point is inside circle **/
	public static extern inline function CheckCollisionPointCircle(point:Vector2, center:Vector2, radius:Float):Bool
	{
		return untyped __cpp__("CheckCollisionPointCircle({0}.value, {1}.value, float({2}))", point, center, radius);
	}

	/** Check if point is inside a triangle **/
	public static extern inline function CheckCollisionPointTriangle(point:Vector2, p1:Vector2, p2:Vector2, p3:Vector2):Bool
	{
		return untyped __cpp__("CheckCollisionPointTriangle({0}.value, {1}.value, {2}.value, {3}.value)", point, p1, p2, p3);
	}

	/** Load image from file into CPU memory (RAM) **/
	public static extern inline function LoadImage(fileName:String):Image
	{
		return untyped __cpp__("LoadImage({0}.__s)", fileName);
	}

	/** Load image from Color array data (RGBA - 32bit) **/
	@:native("LoadImageEx")
	public static extern function LoadImageEx(pixels:Star<Color>, width:Int, height:Int):Image; // TODO to Array

	/** Load image from raw data with parameters **/
	@:native("LoadImagePro")
	public static extern function LoadImagePro(data:Star<cpp.Void>, width:Int, height:Int, format:PixelFormat):Image; // TODO to Array

	/** Load image from RAW file data **/
	public static extern inline function LoadImageRaw(fileName:String, width:Int, height:Int, format:PixelFormat, headerSize:Int):Image
	{
		return untyped __cpp__("cpp::Struct<Image>(LoadImageRaw({0}.__s, {1}, {2}, {3}, {4}))", fileName, width, height, format, headerSize);
	}

	/** Export image data to file **/
	public static extern inline function ExportImage(image:Image, fileName:String):Void
	{
		untyped __cpp__("ExportImage({0}.value, {1}.__s)", image, fileName);
	}

	/** Export image as code file defining an array of bytes **/
	public static extern inline function ExportImageAsCode(image:Image, fileName:String):Void
	{
		untyped __cpp__("ExportImageAsCode({0}.value, {1}.__s)", image, fileName);
	}

	/** Load texture from file into GPU memory (VRAM) **/
	public static extern inline function LoadTexture(fileName:String):Texture2D
	{
		return untyped __cpp__("cpp::Struct<Texture2D>(LoadTexture({0}.__s))", fileName);
	}

	/** Load texture from image data **/
	public static extern inline function LoadTextureFromImage(image:Image):Texture2D
	{
		return untyped __cpp__("cpp::Struct<Texture2D>(LoadTextureFromImage({0}.value))", image);
	}

	/** Load cubemap from image, multiple image cubemap layouts supported **/
	public static extern inline function LoadTextureCubemap(image:Image, layoutType:CubemapLayoutType):Texture2D
	{
		return untyped __cpp__("cpp::Struct<Texture2D>(LoadTextureCubemap({0}.value, {1}))", image, layoutType);
	}

	/** Load texture for rendering (framebuffer) **/
	public static extern inline function LoadRenderTexture(width:Int, height:Int):RenderTexture2D
	{
		return untyped __cpp__("cpp::Struct<Texture2D>(LoadRenderTexture({0}, {1}))", width, height);
	}

	/** Unload image from CPU memory (RAM) **/
	public static extern inline function UnloadImage(image:Image):Void
	{
		untyped __cpp__("UnloadImage({0}.value)", image);
	}

	/** Unload texture from GPU memory (VRAM) **/
	public static extern inline function UnloadTexture(texture:Texture2D):Void
	{
		untyped __cpp__("UnloadTexture({0}.value)", texture);
	}

	/** Unload render texture from GPU memory (VRAM) **/
	public static extern inline function UnloadRenderTexture(target:RenderTexture2D):Void
	{
		untyped __cpp__("UnloadRenderTexture({0}.value)", target);
	}

	/** Get pixel data from image as a Color struct array **/
	@:native("GetImageData")
	public static extern function GetImageData(image:Image):Star<Color>; // TODO to Array

	/** Get pixel data from image as Vector4 array (Float normalized) **/
	@:native("GetImageDataNormalized")
	public static extern function GetImageDataNormalized(image:Image):Star<Vector4>; // TODO to Array

	/** Get pixel data size in bytes (image or texture) **/
	@:native("GetPixelDataSize")
	public static extern function GetPixelDataSize(width:Int, height:Int, format:PixelFormat):Int;

	/** Get pixel data from GPU texture and return an Image **/
	public static extern inline function GetTextureData(texture:Texture2D):Image
	{
		return untyped __cpp__("cpp::Struct<Image>(GetTextureData({0}.value))", texture);
	}

	/** Get pixel data from screen buffer and return an Image (screenshot) **/
	public static extern inline function GetScreenData():Image
	{
		return untyped __cpp__("cpp::Struct<Image>(GetScreenData())");
	}

	/** Update GPU texture with new data **/
	public static extern inline function UpdateTexture(texture:Texture2D, pixels:ConstVoidStar):Void // TODO array
	{
		untyped __cpp__("UpdateTexture({0}.value, {1})", texture, pixels);
	}

	/** Create an image duplicate (useful for transformations) **/
	public static extern inline function ImageCopy(image:Image):Image
	{
		return untyped __cpp__("cpp::Struct<Image>(ImageCopy({0}.value))", image);
	}

	/** Convert image to POT (power-of-two) **/
	public static extern inline function ImageToPOT(image:Reference<Image>, fillColor:Color):Void
	{
		untyped __cpp__("ImageToPOT(&({0}.value), {1}.value)", image, fillColor);
	}

	/** Convert image data to desired format **/
	public static extern inline function ImageFormat(image:Reference<Image>, newFormat:Int):Void
	{
		untyped __cpp__("ImageFormat(&({0}.value), {1})", image, newFormat);
	}

	/** Apply alpha mask to image **/
	public static extern inline function ImageAlphaMask(image:Reference<Image>, alphaMask:Image):Void
	{
		untyped __cpp__("ImageAlphaMask(&({0}.value), {1}.value)", image, alphaMask);
	}

	/** Clear alpha channel to desired color **/
	public static extern inline function ImageAlphaClear(image:Reference<Image>, color:Color, threshold:Float):Void
	{
		untyped __cpp__("ImageAlphaClear(&({0}.value), {1}.value, float({2}))", image, color, threshold);
	}

	/** Crop image depending on alpha value **/
	public static extern inline function ImageAlphaCrop(image:Reference<Image>, threshold:Float):Void
	{
		untyped __cpp__("ImageAlphaCrop(&({0}.value), float({1}))", image, threshold);
	}

	/** Premultiply alpha channel **/
	public static extern inline function ImageAlphaPremultiply(image:Reference<Image>):Void
	{
		untyped __cpp__("ImageAlphaPremultiply(&({0}.value))", image);
	}

	/** Crop an image to a defined rectangle **/
	public static extern inline function ImageCrop(image:Reference<Image>, crop:Rectangle):Void
	{
		untyped __cpp__("ImageCrop(&({0}.value), {1}.value)", image, crop);
	}

	/** Resize image (Bicubic scaling algorithm) **/
	public static extern inline function ImageResize(image:Reference<Image>, newWidth:Int, newHeight:Int):Void
	{
		untyped __cpp__("ImageResize(&({0}.value), {1}, {2})", image, newWidth, newHeight);
	}

	/** Resize image (Nearest-Neighbor scaling algorithm) **/
	public static extern inline function ImageResizeNN(image:Reference<Image>, newWidth:Int, newHeight:Int):Void
	{
		untyped __cpp__("ImageResizeNN(&({0}.value), {1}, {2})", image, newWidth, newHeight);
	}

	/** Resize canvas and fill with color **/
	public static extern inline function ImageResizeCanvas(image:Reference<Image>, newWidth:Int, newHeight:Int, offsetX:Int, offsetY:Int, color:Color):Void
	{
		untyped __cpp__("ImageResizeCanvas(&({0}.value), {1}, {2}, {3}, {4}, {5}.value)", image, newWidth, newHeight, offsetX, offsetY, color);
	}

	/** Generate all mipmap levels for a provided image **/
	public static extern inline function ImageMipmaps(image:Reference<Image>):Void
	{
		untyped __cpp__("ImageMipmaps(&({0}.value))", image);
	}

	/** Dither image data to 16bpp or lower (Floyd-Steinberg dithering) **/
	public static extern inline function ImageDither(image:Reference<Image>, rBpp:Int, gBpp:Int, bBpp:Int, aBpp:Int):Void
	{
		untyped __cpp__("ImageDither(&({0}.value), {1}, {2}, {3}, {4})", image, rBpp, gBpp, bBpp, aBpp);
	}

	/** Extract color palette from image to maximum size (memory should be freed) **/
	@:native("ImageExtractPalette")
	public static extern function ImageExtractPalette(image:Int, maxPaletteSize:Int, extractCount:Star<Int>):Star<Color>; // TODO to Array

	/** Create an image from text (default font) **/
	public static extern inline function ImageText(text:String, fontSize:Int, color:Color):Image
	{
		return untyped __cpp__("cpp::Struct<Image>(ImageText({0}.__s, {1}, {2}.value))", text, fontSize, color);
	}

	/** Create an image from text (custom sprite font) **/
	public static extern inline function ImageTextEx(font:Font, text:String, fontSize:Float, spacing:Float, tint:Color):Image
	{
		return untyped __cpp__("cpp::Struct<Image>(ImageTextEx({0}.value, {1}.__s, float({2}), float({3}), {4}.value))", font, text, fontSize, spacing, tint);
	}

	/** Draw a source image within a destination image **/
	public static extern inline function ImageDraw(dst:Reference<Image>, src:Image, srcRec:Rectangle, dstRec:Rectangle):Void
	{
		untyped __cpp__("ImageDraw(&({0}.value), {1}.value, {2}.value, {3}.value)", dst, src, srcRec, dstRec);
	}

	/** Draw rectangle within an image **/
	public static extern inline function ImageDrawRectangle(dst:Reference<Image>, rec:Rectangle, color:Color):Void
	{
		untyped __cpp__("ImageDrawRectangle(&({0}.value), {1}.value, {2}.value)", dst, rec, color);
	}

	/** Draw rectangle lines within an image **/
	public static extern inline function ImageDrawRectangleLines(dst:Reference<Image>, rec:Rectangle, thick:Int, color:Color):Void
	{
		untyped __cpp__("ImageDrawRectangleLines(&({0}.value), {1}.value, {2}, {3}.value)", dst, rec, thick, color);
	}

	/** Draw text (default font) within an image (destination) **/
	public static extern inline function ImageDrawText(dst:Reference<Image>, position:Vector2, text:String, fontSize:Int, color:Color):Void
	{
		untyped __cpp__("ImageDrawText(&({0}.value), {1}.value, {2}.__s, {3}, {4}.value)", dst, position, text, fontSize, color);
	}

	/** Draw text (custom sprite font) within an image (destination) **/
	public static extern inline function ImageDrawTextEx(dst:Reference<Image>, position:Vector2, font:Font, text:String, fontSize:Float, spacing:Float, color:Color):Void
	{
		untyped __cpp__("ImageDrawTextEx(&({0}.value), {1}.value, {2}.value, {3}.__s, float({4}), float({5}), {6}.value)", dst, position, font, text, fontSize, spacing, color);
	}

	/** Flip image vertically **/
	public static extern inline function ImageFlipVertical(image:Reference<Image>):Void
	{
		untyped __cpp__("ImageFlipVertical(&({0}.value))", image);
	}

	/** Flip image horizontally **/
	public static extern inline function ImageFlipHorizontal(image:Reference<Image>):Void
	{
		untyped __cpp__("ImageFlipHorizontal(&({0}.value))", image);
	}

	/** Rotate image clockwise 90deg **/
	public static extern inline function ImageRotateCW(image:Reference<Image>):Void
	{
		untyped __cpp__("ImageRotateCW(&({0}.value))", image);
	}

	/** Rotate image counter-clockwise 90deg **/
	public static extern inline function ImageRotateCCW(image:Reference<Image>):Void
	{
		untyped __cpp__("ImageRotateCCW(&({0}.value))", image);
	}

	/** Modify image color: tint **/
	public static extern inline function ImageColorTint(image:Reference<Image>, color:Color):Void
	{
		untyped __cpp__("ImageColorTint(&({0}.value), {1}.value)", image, color);
	}

	/** Modify image color: invert **/
	public static extern inline function ImageColorInvert(image:Reference<Image>):Void
	{
		untyped __cpp__("ImageColorInvert(&({0}.value))", image);
	}

	/** Modify image color: grayscale **/
	public static extern inline function ImageColorGrayscale(image:Reference<Image>):Void
	{
		untyped __cpp__("ImageColorGrayscale(&({0}.value))", image);
	}

	/** Modify image color: contrast (-100 to 100) **/
	public static extern inline function ImageColorContrast(image:Reference<Image>, contrast:Float):Void
	{
		untyped __cpp__("ImageColorContrast(&({0}.value), float({1}))", image, constrast);
	}

	/** Modify image color: brightness (-255 to 255) **/
	public static extern inline function ImageColorBrightness(image:Reference<Image>, brightness:Int):Void
	{
		untyped __cpp__("ImageColorBrightness(&({0}.value), {1})", image, brightness);
	}

	/** Modify image color: replace color **/
	public static extern inline function ImageColorReplace(image:Reference<Image>, color:Color, replace:Color):Void
	{
		untyped __cpp__("ImageColorReplace(&({0}.value), {1}.value, {2}.value)", image, color, replace);
	}

	/** Generate image: plain color **/
	public static extern inline function GenImageColor(width:Int, height:Int, color:Color):Image
	{
		return untyped __cpp__("cpp::Struct<Image>(GenImageColor(({0}.value), {1}, {2}.value))", width, height, color);
	}

	/** Generate image: vertical gradient **/
	public static extern inline function GenImageGradientV(width:Int, height:Int, top:Color, bottom:Color):Image
	{
		return untyped __cpp__("cpp::Struct<Image>(GenImageGradientV({0}, {1}, {2}.value, {3}.value))", width, height, top, bottom);
	}

	/** Generate image: horizontal gradient **/
	public static extern inline function GenImageGradientH(width:Int, height:Int, left:Color, right:Color):Image
	{
		return untyped __cpp__("cpp::Struct<Image>(GenImageGradientH({0}, {1}, {2}.value, {3}.value))", width, height, left, right);
	}

	/** Generate image: radial gradient **/
	public static extern inline function GenImageGradientRadial(width:Int, height:Int, density:Float, inner:Color, outer:Color):Image
	{
		return untyped __cpp__("cpp::Struct<Image>(GenImageGradientRadial({0}, {1}, float({2}), {3}.value, {4}.value))", width, height, density, inner, outer);
	}

	/** Generate image: checked **/
	public static extern inline function GenImageChecked(width:Int, height:Int, checksX:Int, checksY:Int, col1:Color, col2:Color):Image
	{
		return untyped __cpp__("cpp::Struct<Image>(GenImageChecked({0}, {1}, {2}, {3}, {4}.value, {5}.value))", width, height, checksX, checksY, col1, col2);
	}

	/** Generate image: white noise **/
	public static extern inline function GenImageWhiteNoise(width:Int, height:Int, factor:Float):Image
	{
		return untyped __cpp__("cpp::Struct<Image>(GenImageWhiteNoise({0}, {1}, float({2})))", width, height, factor);
	}

	/** Generate image: perlin noise **/
	public static extern inline function GenImagePerlinNoise(width:Int, height:Int, offsetX:Int, offsetY:Int, scale:Float):Image
	{
		return untyped __cpp__("cpp::Struct<Image>(GenImagePerlinNoise({0}, {1}, {2}, {3}, float({4})))", width, height, offsetX, offsetY, scale);
	}

	/** Generate image: cellular algorithm. Bigger tileSize means bigger cells **/
	public static extern inline function GenImageCellular(width:Int, height:Int, tileSize:Int):Image
	{
		return untyped __cpp__("cpp::Struct<Image>(GenImageCellular({0}, {1}, {2}))", width, height, tileSize);
	}

	/** Generate GPU mipmaps for a texture **/
	public static extern inline function GenTextureMipmaps(texture:Reference<Texture2D>):Void
	{
		untyped __cpp__("GenTextureMipmaps(&({0}.value))", texture);
	}

	/** Set texture scaling filter mode **/
	public static extern inline function SetTextureFilter(texture:Texture2D, filterMode:TextureFilterMode):Void
	{
		untyped __cpp__("SetTextureFilter({0}.value, {1})", texture, filterMode);
	}

	/** Set texture wrapping mode **/
	public static extern inline function SetTextureWrap(texture:Texture2D, wrapMode:TextureWrapMode):Void
	{
		untyped __cpp__("SetTextureWrap({0}.value, {1})", texture, wrapMode);
	}

	/** Draw a Texture2D **/
	public static extern inline function DrawTexture(texture:Texture2D, posX:Int, posY:Int, tint:Color):Void
	{
		untyped __cpp__("DrawTexture({0}.value, {1}, {2}, {3}.value)", texture, posX, posY, tint);
	}

	/** Draw a Texture2D with position defined as Vector2 **/
	public static extern inline function DrawTextureV(texture:Texture2D, position:Vector2, tint:Color):Void
	{
		untyped __cpp__("DrawTextureV({0}.value, {1}.value, {2}.value)", texture, position, tint);
	}

	/** Draw a Texture2D with extended parameters **/
	public static extern inline function DrawTextureEx(texture:Texture2D, position:Vector2, rotation:Float, scale:Float, tint:Color):Void
	{
		untyped __cpp__("DrawTextureEx({0}.value, {1}.value, float({2}), float({3}), {4}.value)", texture, position, rotation, scale, tint);
	}

	/** Draw a part of a texture defined by a rectangle **/
	public static extern inline function DrawTextureRec(texture:Texture2D, sourceRec:Rectangle, position:Vector2, tint:Color):Void
	{
		untyped __cpp__("DrawTextureRec({0}.value, {1}.value, {2}.value, {3}.value)", texture, sourceRec, position, tint);
	}

	/** Draw texture quad with tiling and offset parameters **/
	public static extern inline function DrawTextureQuad(texture:Texture2D, tiling:Vector2, offset:Vector2, quad:Rectangle, tint:Color):Void
	{
		untyped __cpp__("DrawTextureQuad({0}.value, {1}.value, {2}.value, {3}.value, {4}.value)", texture, tiling, offset, quad, tint);
	}

	/** Draw a part of a texture defined by a rectangle with 'pro' parameters **/
	public static extern inline function DrawTexturePro(texture:Texture2D, sourceRec:Rectangle, destRec:Rectangle, origin:Vector2, rotation:Float, tint:Color):Void
	{
		untyped __cpp__("DrawTexturePro({0}.value, {1}.value, {2}.value, {3}.value, float({4}), {5}.value)", texture, sourceRec, destRec, origin, rotation, tint);
	}

	/** Draws a texture (or part of it) that stretches or shrinks nicely **/
	public static extern inline function DrawTextureNPatch(texture:Texture2D, nPatchInfo:NPatchInfo, destRec:Rectangle, origin:Vector2, rotation:Float, tint:Color):Void
	{
		untyped __cpp__("DrawTextureNPatch({0}.value, {1}.value, {2}.value, {3}.value, float({4}), {5}.value)", texture, nPatchInfo, destRec, origin, rotation, tint);
	}

	/** Get the default Font **/
	public static extern inline function GetFontDefault():Font
	{
		return untyped __cpp__("cpp::Struct<Font>(GetFontDefault())");
	}

	/** Load font from file into GPU memory (VRAM) **/
	public static extern inline function LoadFont(fileName:String):Font
	{
		return untyped __cpp__("cpp::Struct<Font>(LoadFont({0}.__s))", fileName);
	}

	/** Load font from file with extended parameters **/
	@:native("LoadFontEx")
	public static extern function LoadFontEx(fileName:ConstCharStar, fontSize:Int, fontChars:Star<Int>, charsCount:Int):Font; // TODO to Array

	/** Load font from Image (XNA style) **/
	public static extern inline function LoadFontFromImage(image:Image, key:Color, firstChar:Int):Font
	{
		return untyped __cpp__("cpp::Struct<Font>(LoadFontFromImage({0}.value, {1}.value, {2}))", image, key, firstChar);
	}

	/** Load font data for further use **/
	@:native("LoadFontData")
	public static extern function LoadFontData(fileName:ConstCharStar, fontSize:Int, fontChars:Star<Int>, charsCount:Int, type:Int):Star<CharInfo>; // TODO to Array

	/** Generate image font atlas using chars info **/
	public static extern inline function GenImageFontAtlas(chars:Reference<CharInfo>, charsCount:Int, fontSize:Int, padding:Int, packMethod:Int):Image
	{
		return untyped __cpp__("cpp::Struct<Image>(GenImageFontAtlas(&({0}.value), {1}, {2}, {3}, {4}))", chars, charsCount, fontSize, padding, packMethod);
	}

	/** Unload Font from GPU memory (VRAM) **/
	public static extern inline function UnloadFont(font:Font):Void
	{
		untyped __cpp__("UnloadFont({0}.value)", font);
	}

	/** Shows current FPS **/
	@:native("DrawFPS")
	public static extern function DrawFPS(posX:Int, posY:Int):Void;

	/** Draw text (using default font) **/
	public static extern inline function DrawText(text:String, posX:Int, posY:Int, fontSize:Int, color:Color):Void
	{
		untyped __cpp__("DrawText({0}.__s, {1}, {2}, {3}, {4}.value)", text, posX, posY, fontSize, color);
	}

	/** Draw text using font and additional parameters **/
	public static extern inline function DrawTextEx(font:Font, text:String, position:Vector2, fontSize:Float, spacing:Float, tint:Color):Void
	{
		untyped __cpp__("DrawTextEx({0}.value, {1}.__s, {2}.value, float({3}), float({4}), {5}.value)", font, text, position, fontSize, spacing, tint);
	}

	/** Draw text using font inside rectangle limits **/
	public static extern inline function DrawTextRec(font:Font, text:String, rec:Rectangle, fontSize:Float, spacing:Float, wordWrap:Bool, tint:Color):Void
	{
		untyped __cpp__("DrawTextRec({0}.value, {1}.__s, {2}.value, float({3}), float({4}), {5}, {6}.value)", font, text, rec, fontSize, wordWrap, tint);
	}

	/** Draw text using font inside rectangle limits with support for text selection **/
	public static extern inline function DrawTextRecEx(font:Font, text:String, rec:Rectangle, fontSize:Float, spacing:Float, wordWrap:Bool, tint:Color, selectStart:Int, selectLength:Int, selectText:Color, selectBack:Color):Void
	{
		untyped __cpp__("DrawTextRecEx({0}.value, {1}.__s, {2}.value, float({3}), float({4}), {5}, {6}.value, {7}, {8}, {9}.value, {10}.value)", font, text, rec, fontSize, spacing, wordWrap, tint, selectStart, selectLength, selectText, selectBack);
	}

	/** Measure string width for default font **/
	public static extern inline function MeasureText(text:String, fontSize:Int):Int
	{
		return untyped __cpp__("MeasureText({0}.__s, {1})", text, fontSize);
	}

	/** Measure string size for Font **/
	public static extern inline function MeasureTextEx(font:Font, text:String, fontSize:Float, spacing:Float):Vector2
	{
		return untyped __cpp__("cpp::Struct<Vector2>(MeasureTextEx({0}.value, {1}.__s, float({2}), float({3})))", font, text, fontSize, spacing);
	}

	/** Get index position for a unicode character on font **/
	public static extern inline function GetGlyphIndex(font:Font, character:Int):Int
	{
		return untyped __cpp__("GetGlyphIndex({0}.value, {1})", font, character);
	}

	/** Check if two text string are equal
	NOTE: This is using the Haxe API. **/
	public static extern inline function TextIsEqual(text1:String, text2:String):Bool
	{
		return text1 == text2;
	}

	/** Get text length, checks for '\0' ending
	NOTE: This is using the Haxe API. **/
	public static extern inline function TextLength(text:String):UInt
	{
		var l:UInt = 0;

		for (i in 0...text.length)
		{
			if (text.charCodeAt(i) == 0)
			{
				return i;
			}
		}

		return text.length;
	}

	/** Text formatting with variables (sprintf style) **/
	@:native("TextFormat")
	public static extern function TextFormat(text:ConstCharStar, rest:VarArg):ConstCharStar; //TODO

	/** Get a piece of a text string
	NOTE: This is using the Haxe API. **/
	public static extern inline function TextSubtext(text:String, position:Int, length:Int):String
	{
		return text.substr(position, length);
	}

	/** Replace text string
	NOTE: This is using the Haxe API. **/
	public static extern inline function TextReplace(text:String, replace:String, by:String):String
	{
		return text.replace(replace, by);
	}

	/** Insert text in a position
	NOTE: This is using the Haxe API. **/
	public static extern inline function TextInsert(text:String, insert:String, position:Int):String
	{
		return text.substr(0, position) + insert + text.substr(position);
	}

	/** Join text strings with delimiter
	NOTE: This is using the Haxe API. **/
	public static extern inline function TextJoin(textList:Array<String>, delimiter:String):String
	{
		return textList.join(delimiter);
	}

	/** Split text into multiple strings
	NOTE: This is using the Haxe API. **/
	public static extern inline function TextSplit(text:String, delimiter:String):Array<String>
	{
		return text.split(delimiter);
	}

	/** Append text at specific position and move cursor! **/
	public static extern function TextAppend(text:Star<Char>, append:ConstCharStar, position:Star<Int>):Void; // TODO

	/** Find first text occurrence within a string
	NOTE: This is using the Haxe API. **/
	public static extern inline function TextFindIndex(text:String, find:String):Int
	{
		return text.indexOf(find);
	}

	/** Get upper case version of provided string
	NOTE: This is using the Haxe API. **/
	public static extern inline function TextToUpper(text:String):String
	{
		return text.toUpperCase();
	}

	/** Get lower case version of provided string
	NOTE: This is using the Haxe API. **/
	public static extern inline function TextToLower(text:String):String
	{
		return text.toLowerCase();
	}

	/** Get Pascal case notation version of provided string **/
	@:native("TextToPascal")
	public static extern function TextToPascal(text:ConstCharStar):ConstCharStar; // TODO

	/** Get integer value from text.
	NOTE: This is using the Haxe API. **/
	public static extern inline function TextToInteger(text:String):Int
	{
		return Std.parseInt(text);
	}

	/** Draw a line in 3D world space **/
	public static extern inline function DrawLine3D(startPos:Vector3, endPos:Vector3, color:Color):Void
	{
		untyped __cpp__("DrawLine3D({0}.value, {1}.value, {2}.value)", startPos, endPos, color);
	}

	/** Draw a circle in 3D world space **/
	public static extern inline function DrawCircle3D(center:Vector3, radius:Float, rotationAxis:Vector3, rotationAngle:Float, color:Color):Void
	{
		untyped __cpp__("DrawCircle3D({0}.value, float({1}), {2}.value, float({3}), {4}.value)", center, radius, rotationAxis, rotationAngle, color);
	}

	/** Draw cube **/
	public static extern inline function DrawCube(position:Vector3, width:Float, height:Float, length:Float, color:Color):Void
	{
		untyped __cpp__("DrawCube({0}.value, float({1}), float({2}), float({3}), {4}.value)", position, width, height, length, color);
	}

	/** Draw cube (Vector version) **/
	public static extern inline function DrawCubeV(position:Vector3, size:Vector3, color:Color):Void
	{
		untyped __cpp__("DrawCubeV({0}.value, {1}.value, {2}.value)", position, size, color);
	}

	/** Draw cube wires **/
	public static extern inline function DrawCubeWires(position:Vector3, width:Float, height:Float, length:Float, color:Color):Void
	{
		untyped __cpp__("DrawCubeWires({0}.value, float({1}), float({2}), float({3}), {4}.value)", position, width, height, length, color);
	}

	/** Draw cube wires (Vector version) **/
	public static extern inline function DrawCubeWiresV(position:Vector3, size:Vector3, color:Color):Void
	{
		untyped __cpp__("DrawCubeWiresV({0}.value, {1}.value, {2}.value)", position, size, color);
	}

	/** Draw cube textured **/
	public static extern inline function DrawCubeTexture(texture:Texture2D, position:Vector3, width:Float, height:Float, length:Float, color:Color):Void
	{
		untyped __cpp__("DrawCubeTexture({0}.value, {1}.value, float({2}), float({3}), float({4}), {5}.value)", texture, position, width, height, length, color);
	}

	/** Draw sphere **/
	public static extern inline function DrawSphere(centerPos:Vector3, radius:Float, color:Color):Void
	{
		untyped __cpp__("DrawSphere({0}.value, float({1}), {2}.value)", centerPos, radius, color);
	}

	/** Draw sphere with extended parameters **/
	public static extern inline function DrawSphereEx(centerPos:Vector3, radius:Float, rings:Int, slices:Int, color:Color):Void
	{
		untyped __cpp__("DrawSphereEx({0}.value, float({1}), {2}, {3}, {4}.value)", centerPos, radius, ring, slices, color);
	}

	/** Draw sphere wires **/
	public static extern inline function DrawSphereWires(centerPos:Vector3, radius:Float, rings:Int, slices:Int, color:Color):Void
	{
		untyped __cpp__("DrawSphereWires({0}.value, float({1}), {2}, {3}, {4}.value)", centerPos, radius, ring, slices, color);
	}

	/** Draw a cylinder/cone **/
	public static extern inline function DrawCylinder(position:Vector3, radiusTop:Float, radiusBottom:Float, height:Float, slices:Int, color:Color):Void
	{
		untyped __cpp__("DrawCylinder({0}.value, float({1}), float({2}), float({3}), {4}, {5}.value)", position, radiusTop, radiusBottom, height, slices, color);
	}

	/** Draw a cylinder/cone wires **/
	public static extern inline function DrawCylinderWires(position:Vector3, radiusTop:Float, radiusBottom:Float, height:Float, slices:Int, color:Color):Void
	{
		untyped __cpp__("DrawCylinderWires({0}.value, float({1}), float({2}), float({3}), {4}, {5}.value)", position, radiusTop, radiusBottom, height, slices, color);
	}

	/** Draw a plane XZ **/
	public static extern inline function DrawPlane(centerPos:Vector3, size:Vector2, color:Color):Void
	{
		untyped __cpp__("DrawPlane({0}.value, {1}.value, {2}.value)", centerPos, size, color);
	}

	/** Draw a ray line **/
	public static extern inline function DrawRay(ray:Ray, color:Color):Void
	{
		untyped __cpp__("DrawRay({0}.value, {1}.value)", ray, color);
	}

	/** Draw a grid (centered at (0, 0, 0)) **/
	@:native("DrawGrid")
	public static extern function DrawGrid(slices:Int, spacing:Float):Void;

	/** Draw simple gizmo **/
	public static extern inline function DrawGizmo(position:Vector3):Void
	{
		untyped __cpp__("DrawGizmo({0}.value)", position);
	}

	/** Load model from files (mesh and material) **/
	public static extern inline function LoadModel(fileName:String):Model
	{
		return untyped __cpp__("cpp::Struct<Model>(LoadModel({0}.__s))", fileName);
	}

	/** Load model from generated mesh **/
	public static extern inline function LoadModelFromMesh(mesh:Mesh):Model
	{
		return untyped __cpp__("cpp::Struct<Model>(LoadModelFromMesh({0}.value))", mesh);
	}

	/** Unload model from memory (RAM and/or VRAM) **/
	public static extern inline function UnloadModel(model:Model):Void
	{
		untyped __cpp__("UnloadModel({0}.value)", model);
	}

	/** Load mesh from file **/
	public static extern inline function LoadMesh(fileName:String):Mesh
	{
		return untyped __cpp__("cpp::Struct<Mesh>(LoadMesh({0}.__s))", fileName);
	}

	/** Unload mesh from memory (RAM and/or VRAM) **/
	public static extern inline function UnloadMesh(mesh:Reference<Mesh>):Void
	{
		untyped __cpp__("UnloadMesh(&({0}.value))", mesh);
	}

	/** Export mesh data to file **/
	public static extern inline function ExportMesh(mesh:Mesh, fileName:String):Void
	{
		untyped __cpp__("ExportMesh({0}.value, {1}.__s)", mesh, fileName);
	}

	/** Compute mesh bounding box limits **/
	public static extern inline function MeshBoundingBox(mesh:Mesh):BoundingBox
	{
		return untyped __cpp__("cpp::Struct<BoundingBox>(MeshBoundingBox({0}.value))", mesh);
	}

	/** Compute mesh tangents **/
	public static extern inline function MeshTangents(mesh:Reference<Mesh>):Void
	{
		untyped __cpp__("MeshTangents(&({0}.value))", mesh);
	}

	/** Compute mesh binormals **/
	public static extern inline function MeshBinormals(mesh:Reference<Mesh>):Void
	{
		untyped __cpp__("MeshBinormals(&({0}.value))", mesh);
	}

	/** Generate polygonal mesh **/
	public static extern inline function GenMeshPoly(sides:Int, radius:Float):Mesh
	{
		return untyped __cpp__("cpp::Struct<Mesh>(GenMeshPoly({0}, float({1})))", sides, radius);
	}

	/** Generate plane mesh (with subdivisions) **/
	public static extern inline function GenMeshPlane(width:Float, length:Float, resX:Int, resZ:Int):Mesh
	{
		return untyped __cpp__("cpp::Struct<Mesh>(GenMeshPlane(float({0}), float({1}), {2}, {3}))", width, length, resX, resZ);
	}

	/** Generate cuboid mesh **/
	public static extern inline function GenMeshCube(width:Float, height:Float, length:Float):Mesh
	{
		return untyped __cpp__("cpp::Struct<Mesh>(GenMeshCube(float({0}), float({1}), float({2})))", width, height, length);
	}

	/** Generate sphere mesh (standard sphere) **/
	public static extern inline function GenMeshSphere(radius:Float, rings:Int, slices:Int):Mesh
	{
		return untyped __cpp__("cpp::Struct<Mesh>(GenMeshSphere(float({0}), {1}, {2}))", radius, rings, slices);
	}

	/** Generate half-sphere mesh (no bottom cap) **/
	public static extern inline function GenMeshHemiSphere(radius:Float, rings:Int, slices:Int):Mesh
	{
		return untyped __cpp__("cpp::Struct<Mesh>(GenMeshHemiSphere(float({0}), {1}, {2}))", radius, rings, slices);
	}

	/** Generate cylinder mesh **/
	public static extern inline function GenMeshCylinder(radius:Float, height:Float, slices:Int):Mesh
	{
		return untyped __cpp__("cpp::Struct<Mesh>(GenMeshCylinder(float({0}), float({1}), {2}))", radius, height, slices);
	}

	/** Generate torus mesh **/
	public static extern inline function GenMeshTorus(radius:Float, size:Float, radSeg:Int, sides:Int):Mesh
	{
		return untyped __cpp__("cpp::Struct<Mesh>(GenMeshTorus(float({0}), float({1}), {2}, {3}))", radius, size, radSeg, sides);
	}

	/** Generate trefoil knot mesh **/
	public static extern inline function GenMeshKnot(radius:Float, size:Float, radSeg:Int, sides:Int):Mesh
	{
		return untyped __cpp__("cpp::Struct<Mesh>(GenMeshKnot(float({0}), float({1}), {2}, {3}))", radius, size, radSeg, sides);
	}

	/** Generate heightmap mesh from image data **/
	public static extern inline function GenMeshHeightmap(heightmap:Image, size:Vector3):Mesh
	{
		return untyped __cpp__("cpp::Struct<Mesh>(GenMeshHeightmap({0}.value, {1}.value))", heightmap, size);
	}

	/** Generate cubes-based map mesh from image data **/
	public static extern inline function GenMeshCubicmap(cubicmap:Image, cubeSize:Vector3):Mesh
	{
		return untyped __cpp__("cpp::Struct<Mesh>(GenMeshCubicmap({0}.value, {1}.value))", cubicmap, cubeSize);
	}

	/** Load material from file **/
	public static extern inline function LoadMaterial(fileName:String):Material
	{
		return untyped __cpp__("cpp::Struct<Material>(LoadMaterial({0}.__s))", fileName);
	}

	/** Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps) **/
	public static extern inline function LoadMaterialDefault():Material
	{
		return untyped __cpp__("cpp::Struct<Material>(LoadMaterialDefault())");
	}

	/** Unload material from GPU memory (VRAM) **/
	public static extern inline function UnloadMaterial(material:Material):Void
	{
		untyped __cpp__("UnloadMaterial({0}.value)");
	}

	/** Draw a model (with texture if set) **/
	public static extern inline function DrawModel(model:Model, position:Vector3, scale:Float, tint:Color):Void
	{
		untyped __cpp__("DrawModel({0}.value, {1}.value, float({2}), {3}.value)", model, position, scale, tint);
	}

	/** Draw a model with extended parameters **/
	public static extern inline function DrawModelEx(model:Model, position:Vector3, rotationAxis:Vector3, rotationAngle:Float, scale:Vector3, tint:Color):Void
	{
		untyped __cpp__("DrawModelEx({0}.value, {1}.value, {2}.value, float({3}), {4}.value, {5}.value)", model, position, rotationAxis, rotationAngle, scale, tint);
	}

	/** Draw a model wires (with texture if set) **/
	public static extern inline function DrawModelWires(model:Model, position:Vector3, scale:Float, tint:Color):Void
	{
		untyped __cpp__("DrawModelWires({0}.value, {1}.value, float({2}), {3}.value)", model, position, scale, tint);
	}

	/** Draw a model wires (with texture if set) with extended parameters **/
	public static extern inline function DrawModelWiresEx(model:Model, position:Vector3, rotationAxis:Vector3, rotationAngle:Float, scale:Vector3, tint:Color):Void
	{
		untyped __cpp__("DrawModelWiresEx({0}.value, {1}.value, {2}.value, float({3}), {4}.value, {5}.value)", model, position, rotationAxis, rotationAngle, scale, tint);
	}

	/** Draw bounding box (wires) **/
	public static extern inline function DrawBoundingBox(box:BoundingBox, color:Color):Void
	{
		untyped __cpp__("DrawBoundingBox({0}.value, {1}.value)", box, color);
	}

	/** Draw a billboard texture **/
	public static extern inline function DrawBillboard(camera:Camera3D, texture:Texture2D, center:Vector3, size:Float, tint:Color):Void
	{
		untyped __cpp__("DrawBillboard({0}.value, {1}.value, {2}.value, float({3}), {4}.value)", camera, texture, center, size, tint);
	}

	/** Draw a billboard texture defined by sourceRec **/
	public static extern inline function DrawBillboardRec(camera:Camera3D, texture:Texture2D, sourceRec:Rectangle, center:Vector3, size:Float, tint:Color):Void
	{
		untyped __cpp__("DrawBillboardRec({0}.value, {1}.value, {2}.value, {3}.value, float({4}), {5}.value)", camera, texture, sourceRec, center, size, tint);
	}

	/** Detect collision between two spheres **/
	public static extern inline function CheckCollisionSpheres(centerA:Vector3, radiusA:Float, centerB:Vector3, radiusB:Float):Bool
	{
		return untyped __cpp__("CheckCollisionSpheres({0}.value, float({1}), {2}.value, float({3}))", centerA, radiusA, centerB, radiusB);
	}

	/** Detect collision between two bounding boxes **/
	public static extern inline function CheckCollisionBoxes(box1:BoundingBox, box2:BoundingBox):Bool
	{
		return untyped __cpp__("CheckCollisionBoxes({0}.value, {1}.value)", box1, box2);
	}

	/** Detect collision between box and sphere **/
	public static extern inline function CheckCollisionBoxSphere(box:BoundingBox, centerSphere:Vector3, radiusSphere:Float):Bool
	{
		return untyped __cpp__("CheckCollisionBoxSphere({0}.value, {1}.value, float({2}))", box, centerSphere, radiusSphere);
	}

	/** Detect collision between ray and sphere **/
	public static extern inline function CheckCollisionRaySphere(ray:Ray, spherePosition:Vector3, sphereRadius:Float):Bool
	{
		return untyped __cpp__("CheckCollisionRaySphere({0}.value, {1}.value, float({2}))", ray, spherePosition, sphereRadius);
	}

	/** Detect collision between ray and sphere, returns collision point **/
	public static extern inline function CheckCollisionRaySphereEx(ray:Ray, spherePosition:Vector3, sphereRadius:Float, collisionPoint:Reference<Vector3>):Bool
	{
		return untyped __cpp__("CheckCollisionRaySphereEx({0}.value, {1}.value, float({2}), &({3}.value))", ray, spherePosition, sphereRadius, collisionPoint);
	}

	/** Detect collision between ray and box **/
	public static extern inline function CheckCollisionRayBox(ray:Ray, box:BoundingBox):Bool
	{
		return untyped __cpp__("CheckCollisionRayBox({0}.value, {1}.value)", ray, box);
	}

	/** Get collision info between ray and model **/
	public static extern inline function GetCollisionRayModel(ray:Ray, model:Reference<Model>):RayHitInfo
	{
		return untyped __cpp__("cpp::Struct<RayHitInfo>(GetCollisionRayModel({0}.value, &({1}.value)))", ray, model);
	}

	/** Get collision info between ray and triangle **/
	public static extern inline function GetCollisionRayTriangle(ray:Ray, p1:Vector3, p2:Vector3, p3:Vector3):RayHitInfo
	{
		return untyped __cpp__("cpp::Struct<RayHitInfo>(GetCollisionRayTriangle({0}.value, {1}.value, {2}.value, {3}.value))", ray, p1, p2, p3);
	}

	/** Get collision info between ray and ground plane (Y-normal plane) **/
	public static extern inline function GetCollisionRayGround(ray:Ray, groundHeight:Float):RayHitInfo
	{
		return untyped __cpp__("cpp::Struct<RayHitInfo>(GetCollisionRayGround({0}.value, float({1})))", ray, groundHeight);
	}

	/** Load chars array from text file
	NOTE: This is using the Haxe API. **/
	public static extern inline function LoadText(fileName:String):String
	{
		return File.getContent(fileName);
	}

	/** Load shader from files and bind default locations **/
	public static extern inline function LoadShader(vsFileName:String, fsFileName:String):Shader
	{
		return untyped __cpp__("cpp::Struct<Shader>(LoadShader({0}.__s, {1}.__s))", vsFileName, fsFileName);
	}

	/** Load shader from code strings and bind default locations **/
	public static extern inline function LoadShaderCode(vsCode:String, fsCode:String):Shader
	{
		return untyped __cpp__("cpp::Struct<Shader>(LoadShaderCode({0}.__s, {1}.__s))", vsCode, fsCode);
	}

	/** Unload shader from GPU memory (VRAM) **/
	public static extern inline function UnloadShader(shader:Shader):Void
	{
		untyped __cpp__("UnloadShader({0}.value)", shader);
	}

	/** Get default shader **/
	public static extern inline function GetShaderDefault():Shader
	{
		return untyped __cpp__("cpp::Struct<Shader>((GetShaderDefault())");
	}

	/** Get default texture **/
	public static extern inline function GetTextureDefault():Texture2D
	{
		return untyped __cpp__("cpp::Struct<Texture2D>(GetTextureDefault())");
	}

	/** Get shader uniform location **/
	public static inline extern function GetShaderLocation(shader:Shader, uniformName:String):Int
	{
		return untyped __cpp__("GetShaderLocation({0}.value, {1}.__s)", shader, uniformName);
	}

	/** Set shader uniform value **/
	public static extern inline function SetShaderValue(shader:Shader, uniformLoc:ShaderLocationIndex, value:ConstVoidStar, uniformType:ShaderUniformDataType):Void
	{
		untyped __cpp__("SetShaderValue({0}.value, {1}, {2}, {3})", shader, uniformLoc, value, uniformType);
	}

	/** Set shader uniform value vector **/
	public static extern inline function SetShaderValueV(shader:Shader, uniformLoc:ShaderLocationIndex, value:ConstVoidStar, uniformType:ShaderUniformDataType, count:Int):Void
	{
		untyped __cpp__("SetShaderValueV({0}.value, {1}, {2}, {3}, {4})", shader, uniformLoc, value, uniformType, count);
	}

	/** Set shader uniform value (matrix 4x4) **/
	public static extern inline function SetShaderValueMatrix(shader:Shader, uniformLoc:ShaderLocationIndex, mat:Matrix):Void
	{
		untyped __cpp__("SetShaderValueMatrix({0}.value, {1}, {2}.value)", shader, uniformLoc, mat);
	}

	/** Set a custom projection matrix (replaces internal projection matrix) **/
	public static extern inline function SetMatrixProjection(proj:Matrix):Void
	{
		untyped __cpp__("SetMatrixProjection({0}.value)", proj);
	}

	/** Set a custom modelview matrix (replaces internal modelview matrix) **/
	public static extern inline function SetMatrixModelview(view:Matrix):Void
	{
		untyped __cpp__("SetMatrixModelview({0}.value)", view);
	}

	/** Get internal modelview matrix **/
	public static extern inline function GetMatrixModelview():Matrix
	{
		return untyped __cpp__("cpp::Struct<Matrix>(GetMatrixModelview())");
	}

	/** Generate cubemap texture from HDR texture **/
	public static extern inline function GenTextureCubemap(shader:Shader, skyHDR:Texture2D, size:Int):Texture2D
	{
		return untyped __cpp__("cpp::Struct<Texture2D>(GenTextureCubemap({0}.value, {1}.value, {2}))", shader, skyHDR, size);
	}

	/** Generate irradiance texture using cubemap data **/
	public static extern inline function GenTextureIrradiance(shader:Shader, cubemap:Texture2D, size:Int):Texture2D
	{
		return untyped __cpp__("cpp::Struct<Texture2D>(GenTextureIrradiance({0}.value, {1}.value, {2}))", shader, cubemap, size);
	}

	/** Generate prefilter texture using cubemap data **/
	public static extern inline function GenTexturePrefilter(shader:Shader, cubemap:Texture2D, size:Int):Texture2D
	{
		return untyped __cpp__("cpp::Struct<Texture2D>(GenTexturePrefilter({0}.value, {1}.value, {2}))", shader, cubemap, size);
	}

	/** Generate BRDF texture using cubemap data **/
	public static extern inline function GenTextureBRDF(shader:Shader, size:Int):Texture2D
	{
		return untyped __cpp__("cpp::Struct<Texture2D>(GenTextureBRDF({0}.value, {1}))", shader, size);
	}

	/** Begin custom shader drawing **/
	public static extern inline function BeginShaderMode(shader:Shader):Void
	{
		untyped __cpp__("BeginShaderMode({0}.value)", shader);
	}

	/** End custom shader drawing (use default shader) **/
	@:native("EndShaderMode")
	public static extern function EndShaderMode():Void;

	/** Begin blending mode (alpha, additive, multiplied) **/
	@:native("BeginBlendMode")
	public static extern function BeginBlendMode(mode:Int):Void;

	/** End blending mode (reset to default: alpha blending) **/
	@:native("EndBlendMode")
	public static extern function EndBlendMode():Void;

	/** Begin scissor mode (define screen area for following drawing) **/
	@:native("BeginScissorMode")
	public static extern function BeginScissorMode(x:Int, y:Int, width:Int, height:Int):Void;

	/** End scissor mode **/
	@:native("EndScissorMode")
	public static extern function EndScissorMode():Void;

	/** Get VR device information for some standard devices **/
	public static extern inline function GetVrDeviceInfo(vrDeviceType:VrDeviceType):VrDeviceInfo
	{
		return untyped __cpp__("cpp::Struct<VrDeviceInfo>(GetVrDeviceInfo({0}))", vrDeviceType);
	}

	/** Init VR simulator for selected device parameters **/
	public static extern inline function InitVrSimulator(info:VrDeviceInfo):Void
	{
		untyped __cpp__("InitVrSimulator({0}.value)", info);
	}

	/** Update VR tracking (position and orientation) and camera **/
	public static extern inline function UpdateVrTracking(camera:Reference<Camera3D>):Void
	{
		untyped __cpp__("UpdateVrTracking(&({0}.value))", camera);
	}

	/** Close VR simulator for current device **/
	@:native("CloseVrSimulator")
	public static extern function CloseVrSimulator():Void;

	/** Detect if VR simulator is ready **/
	@:native("IsVrSimulatorReady")
	public static extern function IsVrSimulatorReady():Bool;

	/** Enable/Disable VR experience **/
	@:native("ToggleVrMode")
	public static extern function ToggleVrMode():Void;

	/** Begin VR simulator stereo rendering **/
	@:native("BeginVrDrawing")
	public static extern function BeginVrDrawing():Void;

	/** End VR simulator stereo rendering **/
	@:native("EndVrDrawing")
	public static extern function EndVrDrawing():Void;

	/** Initialize audio device and context **/
	@:native("InitAudioDevice")
	public static extern function InitAudioDevice():Void;

	/** Close the audio device and context **/
	@:native("CloseAudioDevice")
	public static extern function CloseAudioDevice():Void;

	/** Check if audio device has been initialized successfully **/
	@:native("IsAudioDeviceReady")
	public static extern function IsAudioDeviceReady():Bool;

	/** Set master volume (listener) **/
	@:native("SetMasterVolume")
	public static extern function SetMasterVolume(volume:Float):Void;

	/** Load wave data from file **/
	public static extern inline function LoadWave(fileName:String):Wave
	{
		return untyped __cpp__("cpp::Struct<Wave>(LoadWave({0}.__s))", fileName);
	}

	/** Load wave data from raw array data **/
	@:native("LoadWaveEx")
	public static extern function LoadWaveEx(data:Star<cpp.Void>, sampleCount:Int, sampleRate:Int, sampleSize:Int, channels:Int):Wave; // TODO to Array

	/** Load sound from file **/
	public static extern inline function LoadSound(fileName:String):Sound
	{
		return untyped __cpp__("cpp::Struct<Sound>(LoadSound({0}.__s))", fileName);
	}

	/** Load sound from wave data **/
	public static extern inline function LoadSoundFromWave(wave:Wave):Sound
	{
		return untyped __cpp__("cpp::Struct<Sound>(LoadSoundFromWave({0}.value))", wave);
	}

	/** Update sound buffer with new data **/
	public static extern inline function UpdateSound(sound:Sound, data:ConstVoidStar, samplesCount:Int):Void
	{
		untyped __cpp__("UpdateSound({0}.value, {1}, {2})", sound, data, samplesCount);
	}

	/** Unload wave data **/
	public static extern inline function UnloadWave(wave:Wave):Void
	{
		untyped __cpp__("UnloadWave({0}.value)", wave);
	}

	/** Unload sound **/
	public static extern inline function UnloadSound(sound:Sound):Void
	{
		untyped __cpp__("UnloadSound({0}.value)", sound);
	}

	/** Export wave data to file **/
	public static extern inline function ExportWave(wave:Wave, fileName:String):Void
	{
		untyped __cpp__("ExportWave({0}.value, {1}.__s)", wave, fileName);
	}

	/** Export wave sample data to code (.h) **/
	public static extern inline function ExportWaveAsCode(wave:Wave, fileName:String):Void
	{
		untyped __cpp__("ExportWaveAsCode({0}.value, {1}.__s)", wave, fileName);
	}

	/** Play a sound **/
	public static extern inline function PlaySound(sound:Sound):Void
	{
		untyped __cpp__("PlaySound({0}.value)", sound);
	}

	/** Pause a sound **/
	public static extern inline function PauseSound(sound:Sound):Void
	{
		untyped __cpp__("PauseSound({0}.value)", sound);
	}

	/** Resume a paused sound **/
	public static extern inline function ResumeSound(sound:Sound):Void
	{
		untyped __cpp__("ResumeSound({0}.value)", sound);
	}

	/** Stop playing a sound **/
	public static extern inline function StopSound(sound:Sound):Void
	{
		untyped __cpp__("StopSound({0}.value)", sound);
	}

	/** Check if a sound is currently playing **/
	public static extern inline function IsSoundPlaying(sound:Sound):Bool
	{
		return untyped __cpp__("IsSoundPlaying({0}.value)", sound);
	}

	/** Set volume for a sound (1.0 is max level) **/
	public static extern inline function SetSoundVolume(sound:Sound, volume:Float):Void
	{
		untyped __cpp__("SetSoundVolume({0}.value, float({1}))", sound, volume);
	}

	/** Set pitch for a sound (1.0 is base level) **/
	public static extern inline function SetSoundPitch(sound:Sound, pitch:Float):Void
	{
		untyped __cpp__("SetSoundPitch({0}.value, float({1}))", sound, pitch);
	}

	/** Convert wave data to desired format **/
	public static extern inline function WaveFormat(wave:Reference<Wave>, sampleRate:Int, sampleSize:Int, channels:Int):Void
	{
		untyped __cpp__("WaveFormat(&({0}.value), {1}, {2}, {3})", wave, sampleRate, sampleSize, channels);
	}

	/** Copy a wave to a new wave **/
	public static extern inline function WaveCopy(wave:Wave):Wave
	{
		return untyped __cpp__("cpp::Struct<Wave>(WaveCopy({0}.value))", wave);
	}

	/** Crop a wave to defined samples range **/
	public static extern inline function WaveCrop(wave:Reference<Wave>, initSample:Int, finalSample:Int):Void
	{
		untyped __cpp__("WaveCrop(&({0}.value), {1}, {2})", wave, initSample, finalSample);
	}

	/** Get samples data from wave as a floats array **/
	@:native("GetWaveData")
	public static extern function GetWaveData(wave:Wave):Star<Float>; // TODO to Array

	/** Load music stream from file **/
	public static extern inline function LoadMusicStream(fileName:String):Music
	{
		return untyped __cpp__("cpp::Struct<Music>(LoadMusicStream({0}.__s))", fileName);
	}

	/** Unload music stream **/
	public static extern inline function UnloadMusicStream(music:Music):Void
	{
		untyped __cpp__("UnloadMusicStream({0}.value)", music);
	}

	/** Start music playing **/
	public static extern inline function PlayMusicStream(music:Music):Void
	{
		untyped __cpp__("PlayMusicStream({0}.value)", music);
	}

	/** Updates buffers for music streaming **/
	public static extern inline function UpdateMusicStream(music:Music):Void
	{
		untyped __cpp__("UpdateMusicStream({0}.value)", music);
	}

	/** Stop music playing **/
	public static extern inline function StopMusicStream(music:Music):Void
	{
		untyped __cpp__("StopMusicStream({0}.value)", music);
	}

	/** Pause music playing **/
	public static extern inline function PauseMusicStream(music:Music):Void
	{
		untyped __cpp__("PauseMusicStream({0}.value)", music);
	}

	/** Resume playing paused music **/
	public static extern inline function ResumeMusicStream(music:Music):Void
	{
		untyped __cpp__("ResumeMusicStream({0}.value)", music);
	}

	/** Check if music is playing **/
	public static extern inline function IsMusicPlaying(music:Music):Bool
	{
		return untyped __cpp__("IsMusicPlaying({0}.value)", music);
	}

	/** Set volume for music (1.0 is max level) **/
	public static extern inline function SetMusicVolume(music:Music, volume:Float):Void
	{
		untyped __cpp__("SetMusicVolume({0}.value, float({1}))", music, volume);
	}

	/** Set pitch for a music (1.0 is base level) **/
	public static extern inline function SetMusicPitch(music:Music, pitch:Float):Void
	{
		untyped __cpp__("SetMusicPitch({0}.value, float({1}))", music, pitch);
	}

	/** Set music loop count (loop repeats) **/
	public static extern inline function SetMusicLoopCount(music:Music, count:Int):Void
	{
		untyped __cpp__("SetMusicLoopCount({0}.value, {1})", music, count);
	}

	/** Get music time length (in seconds) **/
	public static extern inline function GetMusicTimeLength(music:Music):Float
	{
		return untyped __cpp__("GetMusicTimeLength({0}.value)", music);
	}

	/** Get current music time played (in seconds) **/
	public static extern inline function GetMusicTimePlayed(music:Music):Float
	{
		return untyped __cpp__("GetMusicTimePlayed({0}.value)", music);
	}

	/** Init audio stream (to stream raw audio pcm data) **/
	public static extern inline function InitAudioStream(sampleRate:UInt, sampleSize:UInt, channels:UInt):AudioStream
	{
		return untyped __cpp__("cpp::Struct<AudioStream>(InitAudioStream({0}, {1}, {1}))", sampleRate, sampleSize, channels);
	}

	/** Update audio stream buffers with data **/
	public static extern inline function UpdateAudioStream(stream:AudioStream, data:ConstVoidStar, samplesCount:Int):Void
	{
		untyped __cpp__("UpdateAudioStream({0}.value, {1}, {2})", stream, data, samplesCount);
	}

	/** Close audio stream and free memory **/
	public static extern inline function CloseAudioStream(stream:AudioStream):Void
	{
		untyped __cpp__("CloseAudioStream({0}.value)", stream);
	}

	/** Check if any audio stream buffers requires refill **/
	public static extern inline function IsAudioBufferProcessed(stream:AudioStream):Bool
	{
		return untyped __cpp__("IsAudioBufferProcessed({0}.value)", stream);
	}

	/** Play audio stream **/
	public static extern inline function PlayAudioStream(stream:AudioStream):Void
	{
		untyped __cpp__("PlayAudioStream({0}.value)", stream);
	}

	/** Pause audio stream **/
	public static extern inline function PauseAudioStream(stream:AudioStream):Void
	{
		untyped __cpp__("PauseAudioStream({0}.value)", stream);
	}

	/** Resume audio stream **/
	public static extern inline function ResumeAudioStream(stream:AudioStream):Void
	{
		untyped __cpp__("ResumeAudioStream({0}.value)", stream);
	}

	/** Check if audio stream is playing **/
	public static extern inline function IsAudioStreamPlaying(stream:AudioStream):Bool
	{
		return untyped __cpp__("IsAudioStreamPlaying({0}.value)", stream);
	}

	/** Stop audio stream **/
	public static extern inline function StopAudioStream(stream:AudioStream):Void
	{
		untyped __cpp__("StopAudioStream({0}.value)", stream);
	}

	/** Set volume for audio stream (1.0 is max level) **/
	public static extern inline function SetAudioStreamVolume(stream:AudioStream, volume:Float):Void
	{
		untyped __cpp__("SetAudioStreamVolume({0}.value, float({1}))", stream, volume);
	}

	/** Set pitch for audio stream (1.0 is base level) **/
	public static extern inline function SetAudioStreamPitch(stream:AudioStream, pitch:Float):Void
	{
		untyped __cpp__("SetAudioStreamPitch({0}.value, float({1}))", stream, pitch);
	}
}
