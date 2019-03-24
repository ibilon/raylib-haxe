package raylib;

import cpp.Char;
import cpp.ConstCharStar;
import cpp.Function;
import cpp.Reference;
import cpp.Star;
import cpp.UInt8;
import cpp.VarArg;
import sys.FileSystem;

using StringTools;
using haxe.io.Path;

typedef ConstVoidStar = cpp.RawConstPointer<cpp.Void>;

/** Vector2 type **/
@:forward
@:unreflective
abstract Vector2 (Vector2Data)
{
	@:from static extern inline function fromAnonMixed1(a:{x:Int, y:Float}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed2(a:{x:Float, y:Int}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed3(a:{x:Int, y:Int}) return fromAnon(cast a);

	@:from static extern inline function fromAnon(a:{x:Float, y:Float}):Vector2
	{
		return untyped __cpp__("cpp::Struct<Vector2>(Vector2{{ float({0}), float({1}) }})", a.x, a.y);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Vector2>")
@:unreflective
private extern class Vector2Data
{
	public var x:Float;
	public var y:Float;
}

/** Vector3 type **/
@:forward
@:unreflective
abstract Vector3 (Vector3Data)
{
	@:from static extern inline function fromAnonMixed1(a:{x:Int, y:Float, z:Float}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed2(a:{x:Float, y:Int, z:Float}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed3(a:{x:Float, y:Float, z:Int}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed4(a:{x:Int, y:Int, z:Float}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed5(a:{x:Int, y:Float, z:Int}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed6(a:{x:Float, y:Int, z:Int}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed7(a:{x:Int, y:Int, z:Int}) return fromAnon(cast a);

	@:from static extern inline function fromAnon(a:{x:Float, y:Float, z:Float}):Vector3
	{
		return untyped __cpp__("cpp::Struct<Vector3>(Vector3{{ float({0}), float({1}), float({2}) }})", a.x, a.y, a.z);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Vector3>")
@:unreflective
private extern class Vector3Data
{
	public var x:Float;
	public var y:Float;
	public var z:Float;
}

/** Vector4 type **/
@:forward
@:unreflective
abstract Vector4 (Vector4Data)
{
	@:from static extern inline function fromAnonMixed1(a:{x:Int, y:Float, z:Float, w:Float}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed2(a:{x:Float, y:Int, z:Float, w:Float}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed3(a:{x:Float, y:Float, z:Int, w:Float}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed4(a:{x:Float, y:Float, z:Float, w:Int}) return fromAnon(cast a);

	@:from static extern inline function fromAnonMixed5(a:{x:Int, y:Int, z:Float, w:Float}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed6(a:{x:Int, y:Float, z:Int, w:Float}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed7(a:{x:Int, y:Float, z:Float, w:Int}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed8(a:{x:Float, y:Int, z:Int, w:Float}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed9(a:{x:Float, y:Int, z:Float, w:Int}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed10(a:{x:Float, y:Float, z:Int, w:Int}) return fromAnon(cast a);

	@:from static extern inline function fromAnonMixed11(a:{x:Float, y:Int, z:Int, w:Int}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed12(a:{x:Int, y:Float, z:Int, w:Int}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed13(a:{x:Int, y:Int, z:Float, w:Int}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed14(a:{x:Int, y:Int, z:Int, w:Float}) return fromAnon(cast a);

	@:from static extern inline function fromAnon(a:{x:Float, y:Float, z:Float, w:Float}):Vector4
	{
		return untyped __cpp__("cpp::Struct<Vector4>(Vector4{{ float({0}), float({1}), float({2}), float({3}) }})", a.x, a.y, a.z, a.w);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Vector4>")
@:unreflective
private extern class Vector4Data
{
	public var x:Float;
	public var y:Float;
	public var z:Float;
	public var w:Float;
}

/** Quaternion type, same as Vector4 **/
typedef Quaternion = Vector4;

/** Matrix type (OpenGL style 4x4 - right handed, column major) **/
@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Matrix>")
@:unreflective
extern class Matrix
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
@:forward
@:unreflective
abstract Color (ColorData)
{
	@:from static extern inline function fromAnonInt(a:{r:Int, g:Int, b:Int, a:Int}):Color return fromAnon(cast a);

	@:from static extern inline function fromAnon(a:{r:UInt8, g:UInt8, b:UInt8, a:UInt8}):Color
	{
		return untyped __cpp__("cpp::Struct<Color>(Color{{ {0}, {1}, {2}, {3} }})", a.r, a.g, a.b, a.a);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Color>")
@:unreflective
private extern class ColorData
{
	public var r:UInt8;
	public var g:UInt8;
	public var b:UInt8;
	public var a:UInt8;
}

/** Rectangle type **/
@:forward
@:unreflective
abstract Rectangle (RectangleData)
{
	@:from static extern inline function fromAnonInt(a:{x:Int, y:Int, width:Int, height:Int}) return fromAnon(cast a);

	@:from static extern inline function fromAnonMixed1(a:{x:Float, y:Int, width:Int, height:Int}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed2(a:{x:Int, y:Float, width:Int, height:Int}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed3(a:{x:Int, y:Int, width:Float, height:Int}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed4(a:{x:Int, y:Int, width:Int, height:Float}) return fromAnon(cast a);

	@:from static extern inline function fromAnonMixed5(a:{x:Float, y:Float, width:Int, height:Int}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed6(a:{x:Float, y:Int, width:Float, height:Int}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed7(a:{x:Float, y:Int, width:Int, height:Float}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed8(a:{x:Int, y:Float, width:Float, height:Int}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed9(a:{x:Int, y:Float, width:Int, height:Float}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed10(a:{x:Int, y:Int, width:Float, height:Float}) return fromAnon(cast a);

	@:from static extern inline function fromAnonMixed11(a:{x:Int, y:Float, width:Float, height:Float}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed12(a:{x:Float, y:Int, width:Float, height:Float}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed13(a:{x:Float, y:Float, width:Int, height:Float}) return fromAnon(cast a);
	@:from static extern inline function fromAnonMixed14(a:{x:Float, y:Float, width:Float, height:Int}) return fromAnon(cast a);

	@:from static extern inline function fromAnon(a:{x:Float, y:Float, width:Float, height:Float}):Rectangle
	{
		return untyped __cpp__("cpp::Struct<Rectangle>(Rectangle{{ float({0}), float({1}), float({2}), float({3}) }})", a.x, a.y, a.width, a.height);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Rectangle>")
@:unreflective
private extern class RectangleData
{
	public var x:Float;
	public var y:Float;
	public var width:Float;
	public var height:Float;
}

/** Image type, bpp always RGBA (32bit)
NOTE: Data stored in CPU memory (RAM) **/
@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Image>")
@:unreflective
extern class Image
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
	public var format:Int;
}

/** Texture2D type
NOTE: Data stored in GPU memory **/
@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Texture2D>")
@:unreflective
extern class Texture2D
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
	public var format:Int;
}

/** Texture type, same as Texture2D **/
typedef Texture = Texture2D;

/** TextureCubemap type, actually, same as Texture2D **/
typedef TextureCubemap = Texture2D;

/** RenderTexture2D type, for texture rendering **/
@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<RenderTexture2D>")
@:unreflective
extern class RenderTexture2D
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
@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<NPatchInfo>")
@:unreflective
extern class NPatchInfo
{
	/** Region in the texture **/
	public var sourceRec:Rectangle;

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
@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<CharInfo>")
@:unreflective
extern class CharInfo
{
	/** Character value (Unicode) **/
	public var value:Int;

	/** Character rectangle in sprite font **/
	public var rec:Rectangle;

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
@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Font>")
@:unreflective
extern class Font
{
	/** Font texture **/
	public var texture:Texture2D;

	/** Base size (default chars height) **/
	public var baseSize:Int;

	/** Number of characters **/
	public var charsCount:Int;

	/** Characters info data **/
	public var chars:Star<CharInfo>;
}

/** SpriteFont type fallback, defaults to Font **/
typedef SpriteFont = Font;

/** Camera type, defines a camera position/orientation in 3d space **/
@:forward
@:unreflective
abstract Camera3D (Camera3DData)
{
	@:from static extern inline function fromAnon(a:{position:Vector3, target:Vector3, up:Vector3, fovy:Float, type:CameraType}) return fromAnonInline(cast a);

	//TODO the mixed cases

	@:from static extern inline function fromAnonInline(a:{position:{x:Float, y:Float, z:Float}, target:{x:Float, y:Float, z:Float}, up:{x:Float, y:Float, z:Float}, fovy:Float, type:CameraType}):Camera3D
	{
		return untyped __cpp__("cpp::Struct<Camera3D>(Camera3D{{ Vector3{{ float({0}), float({1}), float({2}) }}, Vector3{{ float({3}), float({4}), float({5}) }}, Vector3{{ float({6}), float({7}), float({8}) }}, float({9}), {10} }})", a.position.x, a.position.y, a.position.z, a.target.x, a.target.y, a.target.z, a.up.x, a.up.y, a.up.z, a.fovy, a.type);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Camera3D>")
@:unreflective
private extern class Camera3DData
{
	/** Camera position **/
	public var position:Vector3;

	/** Camera target it looks-at **/
	public var target:Vector3;

	/** Camera up vector (rotation over its axis) **/
	public var up:Vector3;

	/** Camera field-of-view apperture in Y (degrees) in perspective, used as near plane width in orthographic **/
	public var fovy:Float;

	/** Camera type, defines projection type: CAMERA_PERSPECTIVE or CAMERA_ORTHOGRAPHIC **/
	public var type:CameraType;
}

/** Camera type fallback, defaults to Camera3D **/
typedef Camera = Camera3D;

/** Camera2D type, defines a 2d camera **/
@:forward
@:unreflective
abstract Camera2D (Camera2DData)
{
	@:from static extern inline function fromAnon(a:{offset:Vector2, target:Vector2, rotation:Float, zoom:Float}) return fromAnonInline(cast a);

	@:from static extern inline function fromAnonInlineMixed1(a:{offset:{x:Int, y:Int}, target:{x:Int, y:Int}, rotation:Float, zoom:Float}) return fromAnonInline(cast a);
	@:from static extern inline function fromAnonInlineMixed2(a:{offset:{x:Int, y:Int}, target:{x:Int, y:Float}, rotation:Float, zoom:Float}) return fromAnonInline(cast a);
	@:from static extern inline function fromAnonInlineMixed3(a:{offset:{x:Int, y:Int}, target:{x:Float, y:Int}, rotation:Float, zoom:Float}) return fromAnonInline(cast a);
	@:from static extern inline function fromAnonInlineMixed4(a:{offset:{x:Int, y:Int}, target:{x:Float, y:Float}, rotation:Float, zoom:Float}) return fromAnonInline(cast a);

	@:from static extern inline function fromAnonInlineMixed5(a:{offset:{x:Int, y:Float}, target:{x:Int, y:Int}, rotation:Float, zoom:Float}) return fromAnonInline(cast a);
	@:from static extern inline function fromAnonInlineMixed6(a:{offset:{x:Int, y:Float}, target:{x:Int, y:Float}, rotation:Float, zoom:Float}) return fromAnonInline(cast a);
	@:from static extern inline function fromAnonInlineMixed7(a:{offset:{x:Int, y:Float}, target:{x:Float, y:Int}, rotation:Float, zoom:Float}) return fromAnonInline(cast a);
	@:from static extern inline function fromAnonInlineMixed8(a:{offset:{x:Int, y:Float}, target:{x:Float, y:Float}, rotation:Float, zoom:Float}) return fromAnonInline(cast a);

	@:from static extern inline function fromAnonInlineMixed9(a:{offset:{x:Float, y:Int}, target:{x:Int, y:Int}, rotation:Float, zoom:Float}) return fromAnonInline(cast a);
	@:from static extern inline function fromAnonInlineMixed10(a:{offset:{x:Float, y:Int}, target:{x:Int, y:Float}, rotation:Float, zoom:Float}) return fromAnonInline(cast a);
	@:from static extern inline function fromAnonInlineMixed11(a:{offset:{x:Float, y:Int}, target:{x:Float, y:Int}, rotation:Float, zoom:Float}) return fromAnonInline(cast a);
	@:from static extern inline function fromAnonInlineMixed12(a:{offset:{x:Float, y:Int}, target:{x:Float, y:Float}, rotation:Float, zoom:Float}) return fromAnonInline(cast a);

	@:from static extern inline function fromAnonInlineMixed13(a:{offset:{x:Float, y:Float}, target:{x:Int, y:Int}, rotation:Float, zoom:Float}) return fromAnonInline(cast a);
	@:from static extern inline function fromAnonInlineMixed14(a:{offset:{x:Float, y:Float}, target:{x:Int, y:Float}, rotation:Float, zoom:Float}) return fromAnonInline(cast a);
	@:from static extern inline function fromAnonInlineMixed15(a:{offset:{x:Float, y:Float}, target:{x:Float, y:Int}, rotation:Float, zoom:Float}) return fromAnonInline(cast a);
	@:from static extern inline function fromAnonInlineMixed16(a:{offset:{x:Float, y:Float}, target:{x:Float, y:Float}, rotation:Float, zoom:Float}) return fromAnonInline(cast a);

	@:from static extern inline function fromAnonInline(a:{offset:{x:Float, y:Float}, target:{x:Float, y:Float}, rotation:Float, zoom:Float}):Camera2D
	{
		return untyped __cpp__("cpp::Struct<Camera2D>(Camera2D{{ Vector2{{ float({0}), float({1}) }}, Vector2{{ float({2}), float({3}) }}, float({4}), float({5}) }})", a.offset.x, a.offset.y, a.target.x, a.target.y, a.rotation, a.zoom);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Camera2D>")
@:unreflective
private extern class Camera2DData
{
	/** Camera offset (displacement from target) **/
	public var offset:Vector2;

	/** Camera target (rotation and zoom origin) **/
	public var target:Vector2;

	/** Camera rotation in degrees **/
	public var rotation:Float;

	/** Camera zoom (scaling), should be 1.0f by default **/
	public var zoom:Float;
}

/** Bounding box type **/
@:forward
@:unreflective
abstract BoundingBox (BoundingBoxData)
{
	@:from static extern inline function fromAnon(a:{min:{x:Float, y:Float, z:Float}, max:{x:Float, y:Float, z:Float}}):BoundingBox
	{
		return untyped __cpp__("cpp::Struct<BoundingBox>(BoundingBox{{ Vector3{{ float({0}), float({1}), float({2}) }}, Vector3{{ float({3}), float({4}), float({5}) }} }})", a.min.x, a.min.y, a.min.z, a.max.x, a.max.y, a.max.z);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<BoundingBox>")
@:unreflective
private extern class BoundingBoxData
{
	/** Minimum vertex box-corner **/
	public var min:Vector3;

	/** Maximum vertex box-corner **/
	public var max:Vector3;
}

/** Vertex data definning a mesh
NOTE: Data stored in CPU memory (and GPU) **/
@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Mesh>")
@:unreflective
extern class Mesh
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
@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Shader>")
@:unreflective
extern class Shader
{
	/** Shader program id **/
	public var id:UInt;

	/** Shader locations array **/
	public var locs:Array<Int>;
}

/** Material texture map **/
@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<MaterialMap>")
@:unreflective
extern class MaterialMap
{
	/** Material map texture **/
	public var texture:Texture2D;

	/** Material map color **/
	public var color:Color;

	/** Material map value **/
	public var value:Float;
}

/** Material type (generic) **/
@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Map>")
@:unreflective
extern class Material
{
	/** Material shader **/
	public var shader:Shader;

	/** Material maps **/
	public var maps:Array<MaterialMap>;

	/** Material generic parameters (if required) **/
	public var params:Star<Float>;
}

/** Model type **/
@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Model>")
@:unreflective
extern class Model
{
	/** Vertex data buffers (RAM and VRAM) **/
	public var mesh:Mesh;

	/** Local transform matrix **/
	public var transform:Matrix;

	/** Shader and textures data **/
	public var material:Material;
}

/** Ray type (useful for raycast) **/
@:forward
@:unreflective
abstract Ray (RayData)
{
	@:from static extern inline function fromAnon(a:{position:{x:Float, y:Float, z:Float}, direction:{x:Float, y:Float, z:Float}}):Ray
	{
		return untyped __cpp__("cpp::Struct<Ray>(Ray{{ Vector3{{ float({0}), float({1}), float({2}) }}, Vector3{{ float({3}), float({4}), float({5}) }} }})", a.position.x, a.position.y, a.position.z, a.direction.x, a.direction.y, a.direction.z);
	}
}

@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Ray>")
@:unreflective
private extern class RayData
{
	/** Ray position (origin) **/
	public var position:Vector3;

	/** Ray direction **/
	public var direction:Vector3;
}

/** Raycast hit information **/
@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<RayHitInfo>")
@:unreflective
extern class RayHitInfo
{
	/** Did the ray hit something? **/
	public var hit:Bool;

	/** Distance to nearest hit **/
	public var distance:Float;

	/** Position of nearest hit **/
	public var position:Vector3;

	/** Surface normal of hit **/
	public var normal:Vector3;
}

/** Wave type, defines audio wave data **/
@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Wave>")
@:unreflective
extern class Wave
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
@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<Sound>")
@:unreflective
extern class Sound
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
@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<AudioStream>")
@:unreflective
extern class AudioStream
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
@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<VrDeviceInfo>")
@:unreflective
extern class VrDeviceInfo
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
@:include("./../lib/src/raylib.h")
@:native("cpp::Struct<VrStereoConfig>")
@:unreflective
extern class VrStereoConfig
{
	/** VR stereo rendering framebuffer **/
	public var stereoFbo:RenderTexture2D;

	/** VR stereo rendering distortion shader **/
	public var distortionShader:Shader;

	/** VR stereo rendering eyes projection matrices **/
	public var eyesProjection:Array<Matrix>;

	/** VR stereo rendering eyes view offset matrices **/
	public var eyesViewOffset:Array<Matrix>;

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
	@:native("InitWindow")
	public static extern function InitWindow(width:Int, height:Int, title:ConstCharStar):Void;

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
	@:native("SetWindowIcon")
	public static extern function SetWindowIcon(image:Image):Void;

	/** Set title for window (only PLATFORM_DESKTOP) **/
	@:native("SetWindowTitle")
	public static extern function SetWindowTitle(title:ConstCharStar):Void;

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
	public static extern function GetMonitorName(monitor:Int):ConstCharStar ;

	/** Get clipboard text content **/
	@:native("GetClipboardText")
	public static extern function GetClipboardText():ConstCharStar ;

	/** Set clipboard text content **/
	@:native("SetClipboardText")
	public static extern function SetClipboardText(text:ConstCharStar):Void;

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
	@:native("ClearBackground")
	public static extern function ClearBackground(color:Color):Void;

	/** Setup canvas (framebuffer) to start drawing **/
	@:native("BeginDrawing")
	public static extern function BeginDrawing():Void;

	/** End canvas drawing and swap buffers (double buffering) **/
	@:native("EndDrawing")
	public static extern function EndDrawing():Void;

	/** Initialize 2D mode with custom camera (2D) **/
	@:native("BeginMode2D")
	public static extern function BeginMode2D(camera:Camera2D):Void;

	/** Ends 2D mode with custom camera **/
	@:native("EndMode2D")
	public static extern function EndMode2D():Void;

	/** Initializes 3D mode with custom camera (3D) **/
	@:native("BeginMode3D")
	public static extern function BeginMode3D(camera:Camera3D):Void;

	/** Ends 3D mode and returns to default 2D orthographic mode **/
	@:native("EndMode3D")
	public static extern function EndMode3D():Void;

	/** Initializes render texture for drawing **/
	@:native("BeginTextureMode")
	public static extern function BeginTextureMode(target:RenderTexture2D):Void;

	/** Ends drawing to render texture **/
	@:native("EndTextureMode")
	public static extern function EndTextureMode():Void;

	/** Returns a ray trace from mouse position **/
	@:native("GetMouseRay")
	public static extern function GetMouseRay(mousePosition:Vector2, camera:Camera):Ray;

	/** Returns the screen space position for a 3d world space position **/
	@:native("GetWorldToScreen")
	public static extern function GetWorldToScreen(position:Vector3, camera:Camera):Vector2;

	/** Returns camera transform matrix (view matrix) **/
	@:native("GetCameraMatrix")
	public static extern function GetCameraMatrix(camera:Camera):Matrix;

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
	@:native("ColorToInt")
	public static extern function ColorToInt(color:Color):Int;

	/** Returns color normalized as Float [0..1] **/
	@:native("ColorNormalize")
	public static extern function ColorNormalize(color:Color):Vector4;

	/** Returns HSV values for a Color **/
	@:native("ColorToHSV")
	public static extern function ColorToHSV(color:Color):Vector3;

	/** Returns a Color from HSV values **/
	@:native("ColorFromHSV")
	public static extern function ColorFromHSV(hsv:Vector3):Color;

	/** Returns a Color struct from hexadecimal value **/
	@:native("GetColor")
	public static extern function GetColor(hexValue:Int):Color;

	/** Color fade-in or fade-out, alpha goes from 0.0f to 1.0f **/
	@:native("Fade")
	public static extern function Fade(color:Color, alpha:Float):Color;

	/** Setup window configuration flags (view FLAGS) **/
	@:native("SetConfigFlags")
	public static extern function SetConfigFlags(flags:ConfigFlag):Void;

	/** Set the current threshold (minimum) log level **/
	@:native("SetTraceLogLevel")
	public static extern function SetTraceLogLevel(logType:Int):Void;

	/** Set the exit threshold (minimum) log level **/
	@:native("SetTraceLogExit")
	public static extern function SetTraceLogExit(logType:Int):Void;

	/** Set a trace log callback to enable custom logging **/
	public static extern inline function SetTraceLogCallback(callback:TraceLogCallback):Void
	{
		haxeTraceLogCallback = callback;
		untyped __cpp__("SetTraceLogCallback({0})", Function.fromStaticFunction(handle));
	}

	/** Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR) **/
	@:native("TraceLog")
	public static extern function TraceLog(logType:Int, text:ConstCharStar, rest:VarArg):Void;

	/** Takes a screenshot of current screen (saved a .png) **/
	@:native("TakeScreenshot")
	public static extern function TakeScreenshot(fileName:ConstCharStar):Void;

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
	@:native("GetFileModTime")
	public static extern function GetFileModTime(fileName:ConstCharStar):Int;

	/** Save integer value to storage file (to defined position) **/
	@:native("StorageSaveValue")
	public static extern function StorageSaveValue(position:Int, value:Int):Void;

	/** Load integer value from storage file (from defined position) **/
	@:native("StorageLoadValue")
	public static extern function StorageLoadValue(position:Int):Int;

	/** Open URL with default system browser (if available) **/
	@:native("OpenURL")
	public static extern function OpenURL(url:ConstCharStar):Void;

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
	@:native("IsGamepadName")
	public static extern function IsGamepadName(gamepad:GamepadNumber, name:ConstCharStar):Bool;

	/** Return gamepad internal name id **/
	@:native("GetGamepadName")
	public static extern function GetGamepadName(gamepad:GamepadNumber):ConstCharStar ;

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
	@:native("GetMousePosition")
	public static extern function GetMousePosition():Vector2;

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
	@:native("GetTouchPosition")
	public static extern function GetTouchPosition(index:Int):Vector2;

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
	@:native("GetGestureDragVector")
	public static extern function GetGestureDragVector():Vector2;

	/** Get gesture drag angle **/
	@:native("GetGestureDragAngle")
	public static extern function GetGestureDragAngle():Float;

	/** Get gesture pinch delta **/
	@:native("GetGesturePinchVector")
	public static extern function GetGesturePinchVector():Vector2;

	/** Get gesture pinch angle **/
	@:native("GetGesturePinchAngle")
	public static extern function GetGesturePinchAngle():Float;

	/** Set camera mode (multiple camera modes available) **/
	@:native("SetCameraMode")
	public static extern function SetCameraMode(camera:Camera, mode:CameraMode):Void;

	/** Update camera position for selected mode **/
	public static extern inline function UpdateCamera(camera:Reference<Camera>):Void
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
	@:native("DrawPixel")
	public static extern function DrawPixel(posX:Int, posY:Int, color:Color):Void;

	/** Draw a pixel (Vector version) **/
	@:native("DrawPixelV")
	public static extern function DrawPixelV(position:Vector2, color:Color):Void;

	/** Draw a line **/
	@:native("DrawLine")
	public static extern function DrawLine(startPosX:Int, startPosY:Int, endPosX:Int, endPosY:Int, color:Color):Void;

	/** Draw a line (Vector version) **/
	@:native("DrawLineV")
	public static extern function DrawLineV(startPos:Vector2, endPos:Vector2, color:Color):Void;

	/** Draw a line defining thickness **/
	@:native("DrawLineEx")
	public static extern function DrawLineEx(startPos:Vector2, endPos:Vector2, thick:Float, color:Color):Void;

	/** Draw a line using cubic-bezier curves in-out **/
	@:native("DrawLineBezier")
	public static extern function DrawLineBezier(startPos:Vector2, endPos:Vector2, thick:Float, color:Color):Void;

	/** Draw a color-filled circle **/
	@:native("DrawCircle")
	public static extern function DrawCircle(centerX:Int, centerY:Int, radius:Float, color:Color):Void;

	/** Draw a piece of a circle **/
	@:native("DrawCircleSector")
	public static extern function DrawCircleSector(center:Vector2, radius:Float, startAngle:Int, endAngle:Int, color:Color):Void;

	/** Draw a gradient-filled circle **/
	@:native("DrawCircleGradient")
	public static extern function DrawCircleGradient(centerX:Int, centerY:Int, radius:Float, color1:Color, color2:Color):Void;

	/** Draw a color-filled circle (Vector version) **/
	@:native("DrawCircleV")
	public static extern function DrawCircleV(center:Vector2, radius:Float, color:Color):Void;

	/** Draw circle outline **/
	@:native("DrawCircleLines")
	public static extern function DrawCircleLines(centerX:Int, centerY:Int, radius:Float, color:Color):Void;

	/** Draw a color-filled rectangle **/
	@:native("DrawRectangle")
	public static extern function DrawRectangle(posX:Int, posY:Int, width:Int, height:Int, color:Color):Void;

	/** Draw a color-filled rectangle (Vector version) **/
	@:native("DrawRectangleV")
	public static extern function DrawRectangleV(position:Vector2, size:Vector2, color:Color):Void;

	/** Draw a color-filled rectangle **/
	@:native("DrawRectangleRec")
	public static extern function DrawRectangleRec(rec:Rectangle, color:Color):Void;

	/** Draw a color-filled rectangle with pro parameters **/
	@:native("DrawRectanglePro")
	public static extern function DrawRectanglePro(rec:Rectangle, origin:Vector2, rotation:Float, color:Color):Void;

	/** Draw a vertical-gradient-filled rectangle **/
	@:native("DrawRectangleGradientV")
	public static extern function DrawRectangleGradientV(posX:Int, posY:Int, width:Int, height:Int, color1:Color, color2:Color):Void;

	/** Draw a horizontal-gradient-filled rectangle **/
	@:native("DrawRectangleGradientH")
	public static extern function DrawRectangleGradientH(posX:Int, posY:Int, width:Int, height:Int, color1:Color, color2:Color):Void;

	/** Draw a gradient-filled rectangle with custom vertex colors **/
	@:native("DrawRectangleGradientEx")
	public static extern function DrawRectangleGradientEx(rec:Rectangle, col1:Color, col2:Color, col3:Color, col4:Color):Void;

	/** Draw rectangle outline **/
	@:native("DrawRectangleLines")
	public static extern function DrawRectangleLines(posX:Int, posY:Int, width:Int, height:Int, color:Color):Void;

	/** Draw rectangle outline with extended parameters **/
	@:native("DrawRectangleLinesEx")
	public static extern function DrawRectangleLinesEx(rec:Rectangle, lineThick:Int, color:Color):Void;

	/** Draw a color-filled triangle **/
	@:native("DrawTriangle")
	public static extern function DrawTriangle(v1:Vector2, v2:Vector2, v3:Vector2, color:Color):Void;

	/** Draw triangle outline **/
	@:native("DrawTriangleLines")
	public static extern function DrawTriangleLines(v1:Vector2, v2:Vector2, v3:Vector2, color:Color):Void;

	/** Draw a regular polygon (Vector version) **/
	@:native("DrawPoly")
	public static extern function DrawPoly(center:Vector2, sides:Int, radius:Float, rotation:Float, color:Color):Void;

	/** Draw a closed polygon defined by points **/
	@:native("DrawPolyEx")
	public static extern function DrawPolyEx(points:Star<Vector2>, numPoints:Int, color:Color):Void; // TODO to Array

	/** Draw polygon lines **/
	@:native("DrawPolyExLines")
	public static extern function DrawPolyExLines(points:Star<Vector2>, numPoints:Int, color:Color):Void; // TODO to Array

	/** Define default texture used to draw shapes **/
	@:native("SetShapesTexture")
	public static extern function SetShapesTexture(texture:Texture2D, source:Rectangle):Void;

	/** Check collision between two rectangles **/
	@:native("CheckCollisionRecs")
	public static extern function CheckCollisionRecs(rec1:Rectangle, rec2:Rectangle):Bool;

	/** Check collision between two circles **/
	@:native("CheckCollisionCircles")
	public static extern function CheckCollisionCircles(center1:Vector2, radius1:Float, center2:Vector2, radius2:Float):Bool;

	/** Check collision between circle and rectangle **/
	@:native("CheckCollisionCircleRec")
	public static extern function CheckCollisionCircleRec(center:Vector2, radius:Float, rec:Rectangle):Bool;

	/** Get collision rectangle for two rectangles collision **/
	@:native("GetCollisionRec")
	public static extern function GetCollisionRec(rec1:Rectangle, rec2:Rectangle):Rectangle;

	/** Check if point is inside rectangle **/
	@:native("CheckCollisionPointRec")
	public static extern function CheckCollisionPointRec(point:Vector2, rec:Rectangle):Bool;

	/** Check if point is inside circle **/
	@:native("CheckCollisionPointCircle")
	public static extern function CheckCollisionPointCircle(point:Vector2, center:Vector2, radius:Float):Bool;

	/** Check if point is inside a triangle **/
	@:native("CheckCollisionPointTriangle")
	public static extern function CheckCollisionPointTriangle(point:Vector2, p1:Vector2, p2:Vector2, p3:Vector2):Bool;

	/** Load image from file into CPU memory (RAM) **/
	@:native("LoadImage")
	public static extern function LoadImage(fileName:ConstCharStar):Image;

	/** Load image from Color array data (RGBA - 32bit) **/
	@:native("LoadImageEx")
	public static extern function LoadImageEx(pixels:Star<Color>, width:Int, height:Int):Image; // TODO to Array

	/** Load image from raw data with parameters **/
	@:native("LoadImagePro")
	public static extern function LoadImagePro(data:Star<cpp.Void>, width:Int, height:Int, format:Int):Image; // TODO to Array

	/** Load image from RAW file data **/
	@:native("LoadImageRaw")
	public static extern function LoadImageRaw(fileName:ConstCharStar, width:Int, height:Int, format:Int, headerSize:Int):Image;

	/** Export image data to file **/
	@:native("ExportImage")
	public static extern function ExportImage(image:Image, fileName:ConstCharStar):Void;

	/** Export image as code file defining an array of bytes **/
	@:native("ExportImageAsCode")
	public static extern function ExportImageAsCode(image:Image, fileName:ConstCharStar):Void;

	/** Load texture from file into GPU memory (VRAM) **/
	@:native("LoadTexture")
	public static extern function LoadTexture(fileName:ConstCharStar):Texture2D;

	/** Load texture from image data **/
	@:native("LoadTextureFromImage")
	public static extern function LoadTextureFromImage(image:Image):Texture2D;

	/** Load cubemap from image, multiple image cubemap layouts supported **/
	@:native("LoadTextureCubemap")
	public static extern function LoadTextureCubemap(image:Image, layoutType:Int):TextureCubemap;

	/** Load texture for rendering (framebuffer) **/
	@:native("LoadRenderTexture")
	public static extern function LoadRenderTexture(width:Int, height:Int):RenderTexture2D;

	/** Unload image from CPU memory (RAM) **/
	@:native("UnloadImage")
	public static extern function UnloadImage(image:Image):Void;

	/** Unload texture from GPU memory (VRAM) **/
	@:native("UnloadTexture")
	public static extern function UnloadTexture(texture:Texture2D):Void;

	/** Unload render texture from GPU memory (VRAM) **/
	@:native("UnloadRenderTexture")
	public static extern function UnloadRenderTexture(target:RenderTexture2D):Void;

	/** Get pixel data from image as a Color struct array **/
	@:native("GetImageData")
	public static extern function GetImageData(image:Image):Star<Color>; // TODO to Array

	/** Get pixel data from image as Vector4 array (Float normalized) **/
	@:native("GetImageDataNormalized")
	public static extern function GetImageDataNormalized(image:Image):Star<Vector4>; // TODO to Array

	/** Get pixel data size in bytes (image or texture) **/
	@:native("GetPixelDataSize")
	public static extern function GetPixelDataSize(width:Int, height:Int, format:Int):Int;

	/** Get pixel data from GPU texture and return an Image **/
	@:native("GetTextureData")
	public static extern function GetTextureData(texture:Texture2D):Image;

	/** Get pixel data from screen buffer and return an Image (screenshot) **/
	@:native("GetScreenData")
	public static extern function GetScreenData():Image;

	/** Update GPU texture with new data **/
	@:native("UpdateTexture")
	public static extern function UpdateTexture(texture:Texture2D, pixels:ConstVoidStar):Void;

	/** Create an image duplicate (useful for transformations) **/
	@:native("ImageCopy")
	public static extern function ImageCopy(image:Image):Image;

	/** Convert image to POT (power-of-two) **/
	public static extern inline function ImageToPOT(image:Reference<Image>, fillColor:Color):Void
	{
		untyped __cpp__("ImageToPOT(&({0}.value), {1})", image, fillColor);
	}

	/** Convert image data to desired format **/
	public static extern inline function ImageFormat(image:Reference<Image>, newFormat:Int):Void
	{
		untyped __cpp__("ImageFormat(&({0}.value), {1})", image, newFormat);
	}

	/** Apply alpha mask to image **/
	public static extern inline function ImageAlphaMask(image:Reference<Image>, alphaMask:Image):Void
	{
		untyped __cpp__("ImageAlphaMask(&({0}.value), {1})", image, alphaMask);
	}

	/** Clear alpha channel to desired color **/
	public static extern inline function ImageAlphaClear(image:Reference<Image>, color:Color, threshold:Float):Void
	{
		untyped __cpp__("ImageAlphaClear(&({0}.value), {1}, float({2}))", image, color, threshold);
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
		untyped __cpp__("ImageCrop(&({0}.value), {1})", image, crop);
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
		untyped __cpp__("ImageResizeCanvas(&({0}.value), {1}, {2}, {3}, {4}, {5})", image, newWidth, newHeight, offsetX, offsetY, color);
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
	@:native("ImageText")
	public static extern function ImageText(text:ConstCharStar, fontSize:Int, color:Color):Image;

	/** Create an image from text (custom sprite font) **/
	@:native("ImageTextEx")
	public static extern function ImageTextEx(font:Font, text:ConstCharStar, fontSize:Float, spacing:Float, tint:Color):Image;

	/** Draw a source image within a destination image **/
	public static extern inline function ImageDraw(dst:Reference<Image>, src:Image, srcRec:Rectangle, dstRec:Rectangle):Void
	{
		untyped __cpp__("ImageDraw(&({0}.value), {1}, {2}, {3})", dst, src, srcRec, dstRec);
	}

	/** Draw rectangle within an image **/
	public static extern inline function ImageDrawRectangle(dst:Reference<Image>, rec:Rectangle, color:Color):Void
	{
		untyped __cpp__("ImageDrawRectangle(&({0}.value), {1}, {2})", dst, rec, color);
	}

	/** Draw rectangle lines within an image **/
	public static extern inline function ImageDrawRectangleLines(dst:Reference<Image>, rec:Rectangle, thick:Int, color:Color):Void
	{
		untyped __cpp__("ImageDrawRectangleLines(&({0}.value), {1}, {2}, {3})", dst, rec, thick, color);
	}

	/** Draw text (default font) within an image (destination) **/
	public static extern inline function ImageDrawText(dst:Reference<Image>, position:Vector2, text:ConstCharStar, fontSize:Int, color:Color):Void
	{
		untyped __cpp__("ImageDrawText(&({0}.value), {1}, {2}, {3}, {4})", dst, position, text, fontSize, color);
	}

	/** Draw text (custom sprite font) within an image (destination) **/
	public static extern inline function ImageDrawTextEx(dst:Reference<Image>, position:Vector2, font:Font, text:ConstCharStar, fontSize:Float, spacing:Float, color:Color):Void
	{
		untyped __cpp__("ImageDrawTextEx(&({0}.value), {1}, {2}, {3}, float({4}), float({5}), {6})", dst, position, font, text, fontSize, spacing, color);
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
		untyped __cpp__("ImageColorTint(&({0}.value), {1})", image, color);
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
		untyped __cpp__("ImageColorReplace(&({0}.value), {1}, {2})", image, color, replace);
	}

	/** Generate image: plain color **/
	@:native("GenImageColor")
	public static extern function GenImageColor(width:Int, height:Int, color:Color):Image;

	/** Generate image: vertical gradient **/
	@:native("GenImageGradientV")
	public static extern function GenImageGradientV(width:Int, height:Int, top:Color, bottom:Color):Image;

	/** Generate image: horizontal gradient **/
	@:native("GenImageGradientH")
	public static extern function GenImageGradientH(width:Int, height:Int, left:Color, right:Color):Image;

	/** Generate image: radial gradient **/
	@:native("GenImageGradientRadial")
	public static extern function GenImageGradientRadial(width:Int, height:Int, density:Float, inner:Color, outer:Color):Image;

	/** Generate image: checked **/
	@:native("GenImageChecked")
	public static extern function GenImageChecked(width:Int, height:Int, checksX:Int, checksY:Int, col1:Color, col2:Color):Image;

	/** Generate image: white noise **/
	@:native("GenImageWhiteNoise")
	public static extern function GenImageWhiteNoise(width:Int, height:Int, factor:Float):Image;

	/** Generate image: perlin noise **/
	@:native("GenImagePerlinNoise")
	public static extern function GenImagePerlinNoise(width:Int, height:Int, offsetX:Int, offsetY:Int, scale:Float):Image;

	/** Generate image: cellular algorithm. Bigger tileSize means bigger cells **/
	@:native("GenImageCellular")
	public static extern function GenImageCellular(width:Int, height:Int, tileSize:Int):Image;

	/** Generate GPU mipmaps for a texture **/
	public static extern inline function GenTextureMipmaps(texture:Reference<Texture2D>):Void
	{
		untyped __cpp__("GenTextureMipmaps(&({0}.value))", texture);
	}

	/** Set texture scaling filter mode **/
	@:native("SetTextureFilter")
	public static extern function SetTextureFilter(texture:Texture2D, filterMode:Int):Void;

	/** Set texture wrapping mode **/
	@:native("SetTextureWrap")
	public static extern function SetTextureWrap(texture:Texture2D, wrapMode:Int):Void;

	/** Draw a Texture2D **/
	@:native("DrawTexture")
	public static extern function DrawTexture(texture:Texture2D, posX:Int, posY:Int, tint:Color):Void;

	/** Draw a Texture2D with position defined as Vector2 **/
	@:native("DrawTextureV")
	public static extern function DrawTextureV(texture:Texture2D, position:Vector2, tint:Color):Void;

	/** Draw a Texture2D with extended parameters **/
	@:native("DrawTextureEx")
	public static extern function DrawTextureEx(texture:Texture2D, position:Vector2, rotation:Float, scale:Float, tint:Color):Void;

	/** Draw a part of a texture defined by a rectangle **/
	@:native("DrawTextureRec")
	public static extern function DrawTextureRec(texture:Texture2D, sourceRec:Rectangle, position:Vector2, tint:Color):Void;

	/** Draw texture quad with tiling and offset parameters **/
	@:native("DrawTextureQuad")
	public static extern function DrawTextureQuad(texture:Texture2D, tiling:Vector2, offset:Vector2, quad:Rectangle, tint:Color):Void;

	/** Draw a part of a texture defined by a rectangle with 'pro' parameters **/
	@:native("DrawTexturePro")
	public static extern function DrawTexturePro(texture:Texture2D, sourceRec:Rectangle, destRec:Rectangle, origin:Vector2, rotation:Float, tint:Color):Void;

	/** Draws a texture (or part of it) that stretches or shrinks nicely **/
	@:native("DrawTextureNPatch")
	public static extern function DrawTextureNPatch(texture:Texture2D, nPatchInfo:NPatchInfo, destRec:Rectangle, origin:Vector2, rotation:Float, tint:Color):Void;

	/** Get the default Font **/
	@:native("GetFontDefault")
	public static extern function GetFontDefault():Font;

	/** Load font from file into GPU memory (VRAM) **/
	@:native("LoadFont")
	public static extern function LoadFont(fileName:ConstCharStar):Font;

	/** Load font from file with extended parameters **/
	@:native("LoadFontEx")
	public static extern function LoadFontEx(fileName:ConstCharStar, fontSize:Int, fontChars:Star<Int>, charsCount:Int):Font; // TODO to Array

	/** Load font from Image (XNA style) **/
	@:native("LoadFontFromImage")
	public static extern function LoadFontFromImage(image:Image, key:Color, firstChar:Int):Font;

	/** Load font data for further use **/
	@:native("LoadFontData")
	public static extern function LoadFontData(fileName:ConstCharStar, fontSize:Int, fontChars:Star<Int>, charsCount:Int, type:Int):Star<CharInfo>; // TODO to Array

	/** Generate image font atlas using chars info **/
	public static extern inline function GenImageFontAtlas(chars:Reference<CharInfo>, charsCount:Int, fontSize:Int, padding:Int, packMethod:Int):Image
	{
		return untyped __cpp__("GenImageFontAtlas(&({0}.value), {1}, {2}, {3}, {4})", chars, charsCount, fontSize, padding, packMethod);
	}

	/** Unload Font from GPU memory (VRAM) **/
	@:native("UnloadFont")
	public static extern function UnloadFont(font:Font):Void;

	/** Shows current FPS **/
	@:native("DrawFPS")
	public static extern function DrawFPS(posX:Int, posY:Int):Void;

	/** Draw text (using default font) **/
	@:native("DrawText")
	public static extern function DrawText(text:ConstCharStar, posX:Int, posY:Int, fontSize:Int, color:Color):Void;

	/** Draw text using font and additional parameters **/
	@:native("DrawTextEx")
	public static extern function DrawTextEx(font:Font, text:ConstCharStar, position:Vector2, fontSize:Float, spacing:Float, tint:Color):Void;

	/** Draw text using font inside rectangle limits **/
	@:native("DrawTextRec")
	public static extern function DrawTextRec(font:Font, text:ConstCharStar, rec:Rectangle, fontSize:Float, spacing:Float, wordWrap:Bool, tint:Color):Void;

	/** Draw text using font inside rectangle limits with support for text selection **/
	@:native("DrawTextRecEx")
	public static extern function DrawTextRecEx(font:Font, text:ConstCharStar, rec:Rectangle, fontSize:Float, spacing:Float, wordWrap:Bool, tint:Color, selectStart:Int, selectLength:Int, selectText:Color, selectBack:Color):Void;

	/** Measure string width for default font **/
	@:native("MeasureText")
	public static extern function MeasureText(text:ConstCharStar, fontSize:Int):Int;

	/** Measure string size for Font **/
	@:native("MeasureTextEx")
	public static extern function MeasureTextEx(font:Font, text:ConstCharStar, fontSize:Float, spacing:Float):Vector2;

	/** Get index position for a unicode character on font **/
	@:native("GetGlyphIndex")
	public static extern function GetGlyphIndex(font:Font, character:Int):Int;

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
	@:native("DrawLine3D")
	public static extern function DrawLine3D(startPos:Vector3, endPos:Vector3, color:Color):Void;

	/** Draw a circle in 3D world space **/
	@:native("DrawCircle3D")
	public static extern function DrawCircle3D(center:Vector3, radius:Float, rotationAxis:Vector3, rotationAngle:Float, color:Color):Void;

	/** Draw cube **/
	@:native("DrawCube")
	public static extern function DrawCube(position:Vector3, width:Float, height:Float, length:Float, color:Color):Void;

	/** Draw cube (Vector version) **/
	@:native("DrawCubeV")
	public static extern function DrawCubeV(position:Vector3, size:Vector3, color:Color):Void;

	/** Draw cube wires **/
	@:native("DrawCubeWires")
	public static extern function DrawCubeWires(position:Vector3, width:Float, height:Float, length:Float, color:Color):Void;

	/** Draw cube wires (Vector version) **/
	@:native("DrawCubeWiresV")
	public static extern function DrawCubeWiresV(position:Vector3, size:Vector3, color:Color):Void;

	/** Draw cube textured **/
	@:native("DrawCubeTexture")
	public static extern function DrawCubeTexture(texture:Texture2D, position:Vector3, width:Float, height:Float, length:Float, color:Color):Void;

	/** Draw sphere **/
	@:native("DrawSphere")
	public static extern function DrawSphere(centerPos:Vector3, radius:Float, color:Color):Void;

	/** Draw sphere with extended parameters **/
	@:native("DrawSphereEx")
	public static extern function DrawSphereEx(centerPos:Vector3, radius:Float, rings:Int, slices:Int, color:Color):Void;

	/** Draw sphere wires **/
	@:native("DrawSphereWires")
	public static extern function DrawSphereWires(centerPos:Vector3, radius:Float, rings:Int, slices:Int, color:Color):Void;

	/** Draw a cylinder/cone **/
	@:native("DrawCylinder")
	public static extern function DrawCylinder(position:Vector3, radiusTop:Float, radiusBottom:Float, height:Float, slices:Int, color:Color):Void;

	/** Draw a cylinder/cone wires **/
	@:native("DrawCylinderWires")
	public static extern function DrawCylinderWires(position:Vector3, radiusTop:Float, radiusBottom:Float, height:Float, slices:Int, color:Color):Void;

	/** Draw a plane XZ **/
	@:native("DrawPlane")
	public static extern function DrawPlane(centerPos:Vector3, size:Vector2, color:Color):Void;

	/** Draw a ray line **/
	@:native("DrawRay")
	public static extern function DrawRay(ray:Ray, color:Color):Void;

	/** Draw a grid (centered at (0, 0, 0)) **/
	@:native("DrawGrid")
	public static extern function DrawGrid(slices:Int, spacing:Float):Void;

	/** Draw simple gizmo **/
	@:native("DrawGizmo")
	public static extern function DrawGizmo(position:Vector3):Void;

	/** Load model from files (mesh and material) **/
	@:native("LoadModel")
	public static extern function LoadModel(fileName:ConstCharStar):Model;

	/** Load model from generated mesh **/
	@:native("LoadModelFromMesh")
	public static extern function LoadModelFromMesh(mesh:Mesh):Model;

	/** Unload model from memory (RAM and/or VRAM) **/
	@:native("UnloadModel")
	public static extern function UnloadModel(model:Model):Void;

	/** Load mesh from file **/
	@:native("LoadMesh")
	public static extern function LoadMesh(fileName:ConstCharStar):Mesh;

	/** Unload mesh from memory (RAM and/or VRAM) **/
	public static extern inline function UnloadMesh(mesh:Reference<Mesh>):Void
	{
		untyped __cpp__("UnloadMesh(&({0}.value))", mesh);
	}

	/** Export mesh data to file **/
	@:native("ExportMesh")
	public static extern function ExportMesh(mesh:Mesh, fileName:ConstCharStar):Void;

	/** Compute mesh bounding box limits **/
	@:native("MeshBoundingBox")
	public static extern function MeshBoundingBox(mesh:Mesh):BoundingBox;

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
	@:native("GenMeshPoly")
	public static extern function GenMeshPoly(sides:Int, radius:Float):Mesh;

	/** Generate plane mesh (with subdivisions) **/
	@:native("GenMeshPlane")
	public static extern function GenMeshPlane(width:Float, length:Float, resX:Int, resZ:Int):Mesh;

	/** Generate cuboid mesh **/
	@:native("GenMeshCube")
	public static extern function GenMeshCube(width:Float, height:Float, length:Float):Mesh;

	/** Generate sphere mesh (standard sphere) **/
	@:native("GenMeshSphere")
	public static extern function GenMeshSphere(radius:Float, rings:Int, slices:Int):Mesh;

	/** Generate half-sphere mesh (no bottom cap) **/
	@:native("GenMeshHemiSphere")
	public static extern function GenMeshHemiSphere(radius:Float, rings:Int, slices:Int):Mesh;

	/** Generate cylinder mesh **/
	@:native("GenMeshCylinder")
	public static extern function GenMeshCylinder(radius:Float, height:Float, slices:Int):Mesh;

	/** Generate torus mesh **/
	@:native("GenMeshTorus")
	public static extern function GenMeshTorus(radius:Float, size:Float, radSeg:Int, sides:Int):Mesh;

	/** Generate trefoil knot mesh **/
	@:native("GenMeshKnot")
	public static extern function GenMeshKnot(radius:Float, size:Float, radSeg:Int, sides:Int):Mesh;

	/** Generate heightmap mesh from image data **/
	@:native("GenMeshHeightmap")
	public static extern function GenMeshHeightmap(heightmap:Image, size:Vector3):Mesh;

	/** Generate cubes-based map mesh from image data **/
	@:native("GenMeshCubicmap")
	public static extern function GenMeshCubicmap(cubicmap:Image, cubeSize:Vector3):Mesh;

	/** Load material from file **/
	@:native("LoadMaterial")
	public static extern function LoadMaterial(fileName:ConstCharStar):Material;

	/** Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps) **/
	@:native("LoadMaterialDefault")
	public static extern function LoadMaterialDefault():Material;

	/** Unload material from GPU memory (VRAM) **/
	@:native("UnloadMaterial")
	public static extern function UnloadMaterial(material:Material):Void;

	/** Draw a model (with texture if set) **/
	@:native("DrawModel")
	public static extern function DrawModel(model:Model, position:Vector3, scale:Float, tint:Color):Void;

	/** Draw a model with extended parameters **/
	@:native("DrawModelEx")
	public static extern function DrawModelEx(model:Model, position:Vector3, rotationAxis:Vector3, rotationAngle:Float, scale:Vector3, tint:Color):Void;

	/** Draw a model wires (with texture if set) **/
	@:native("DrawModelWires")
	public static extern function DrawModelWires(model:Model, position:Vector3, scale:Float, tint:Color):Void;

	/** Draw a model wires (with texture if set) with extended parameters **/
	@:native("DrawModelWiresEx")
	public static extern function DrawModelWiresEx(model:Model, position:Vector3, rotationAxis:Vector3, rotationAngle:Float, scale:Vector3, tint:Color):Void;

	/** Draw bounding box (wires) **/
	@:native("DrawBoundingBox")
	public static extern function DrawBoundingBox(box:BoundingBox, color:Color):Void;

	/** Draw a billboard texture **/
	@:native("DrawBillboard")
	public static extern function DrawBillboard(camera:Camera, texture:Texture2D, center:Vector3, size:Float, tint:Color):Void;

	/** Draw a billboard texture defined by sourceRec **/
	@:native("DrawBillboardRec")
	public static extern function DrawBillboardRec(camera:Camera, texture:Texture2D, sourceRec:Rectangle, center:Vector3, size:Float, tint:Color):Void;

	/** Detect collision between two spheres **/
	@:native("CheckCollisionSpheres")
	public static extern function CheckCollisionSpheres(centerA:Vector3, radiusA:Float, centerB:Vector3, radiusB:Float):Bool;

	/** Detect collision between two bounding boxes **/
	@:native("CheckCollisionBoxes")
	public static extern function CheckCollisionBoxes(box1:BoundingBox, box2:BoundingBox):Bool;

	/** Detect collision between box and sphere **/
	@:native("CheckCollisionBoxSphere")
	public static extern function CheckCollisionBoxSphere(box:BoundingBox, centerSphere:Vector3, radiusSphere:Float):Bool;

	/** Detect collision between ray and sphere **/
	@:native("CheckCollisionRaySphere")
	public static extern function CheckCollisionRaySphere(ray:Ray, spherePosition:Vector3, sphereRadius:Float):Bool;

	/** Detect collision between ray and sphere, returns collision point **/
	public static extern inline function CheckCollisionRaySphereEx(ray:Ray, spherePosition:Vector3, sphereRadius:Float, collisionPoint:Reference<Vector3>):Bool
	{
		return untyped __cpp__("CheckCollisionRaySphereEx({0}, {1}, float({2}), &({3}.value))", ray, spherePosition, sphereRadius, collisionPoint);
	}

	/** Detect collision between ray and box **/
	@:native("CheckCollisionRayBox")
	public static extern function CheckCollisionRayBox(ray:Ray, box:BoundingBox):Bool;

	/** Get collision info between ray and model **/
	public static extern inline function GetCollisionRayModel(ray:Ray, model:Reference<Model>):RayHitInfo
	{
		return untyped __cpp__("GetCollisionRayModel({0}, &({1}.value))", ray, model);
	}

	/** Get collision info between ray and triangle **/
	@:native("GetCollisionRayTriangle")
	public static extern function GetCollisionRayTriangle(ray:Ray, p1:Vector3, p2:Vector3, p3:Vector3):RayHitInfo;

	/** Get collision info between ray and ground plane (Y-normal plane) **/
	@:native("GetCollisionRayGround")
	public static extern function GetCollisionRayGround(ray:Ray, groundHeight:Float):RayHitInfo;

	/** Load chars array from text file **/
	@:native("LoadText")
	public static extern function LoadText(fileName:ConstCharStar):Star<Char>; // TODO use File API

	/** Load shader from files and bind default locations **/
	@:native("LoadShader")
	public static extern function LoadShader(vsFileName:ConstCharStar, fsFileName:ConstCharStar):Shader;

	/** Load shader from code strings and bind default locations **/
	@:native("LoadShaderCode")
	public static extern function LoadShaderCode(vsCode:Star<Char>, fsCode:Star<Char>):Shader;

	/** Unload shader from GPU memory (VRAM) **/
	@:native("UnloadShader")
	public static extern function UnloadShader(shader:Shader):Void;

	/** Get default shader **/
	@:native("GetShaderDefault")
	public static extern function GetShaderDefault():Shader;

	/** Get default texture **/
	@:native("GetTextureDefault")
	public static extern function GetTextureDefault():Texture2D;

	/** Get shader uniform location **/
	@:native("GetShaderLocation")
	public static extern function GetShaderLocation(shader:Shader, uniformName:ConstCharStar):Int;

	/** Set shader uniform value **/
	@:native("SetShaderValue")
	public static extern function SetShaderValue(shader:Shader, uniformLoc:Int, value:ConstVoidStar, uniformType:Int):Void;

	/** Set shader uniform value vector **/
	@:native("SetShaderValueV")
	public static extern function SetShaderValueV(shader:Shader, uniformLoc:Int, value:ConstVoidStar, uniformType:Int, count:Int):Void;

	/** Set shader uniform value (matrix 4x4) **/
	@:native("SetShaderValueMatrix")
	public static extern function SetShaderValueMatrix(shader:Shader, uniformLoc:Int, mat:Matrix):Void;

	/** Set a custom projection matrix (replaces internal projection matrix) **/
	@:native("SetMatrixProjection")
	public static extern function SetMatrixProjection(proj:Matrix):Void;

	/** Set a custom modelview matrix (replaces internal modelview matrix) **/
	@:native("SetMatrixModelview")
	public static extern function SetMatrixModelview(view:Matrix):Void;

	/** Get internal modelview matrix **/
	@:native("GetMatrixModelview")
	public static extern function GetMatrixModelview():Matrix;

	/** Generate cubemap texture from HDR texture **/
	@:native("GenTextureCubemap")
	public static extern function GenTextureCubemap(shader:Shader, skyHDR:Texture2D, size:Int):Texture2D;

	/** Generate irradiance texture using cubemap data **/
	@:native("GenTextureIrradiance")
	public static extern function GenTextureIrradiance(shader:Shader, cubemap:Texture2D, size:Int):Texture2D;

	/** Generate prefilter texture using cubemap data **/
	@:native("GenTexturePrefilter")
	public static extern function GenTexturePrefilter(shader:Shader, cubemap:Texture2D, size:Int):Texture2D;

	/** Generate BRDF texture using cubemap data **/
	@:native("GenTextureBRDF")
	public static extern function GenTextureBRDF(shader:Shader, size:Int):Texture2D;

	/** Begin custom shader drawing **/
	@:native("BeginShaderMode")
	public static extern function BeginShaderMode(shader:Shader):Void;

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
	@:native("GetVrDeviceInfo")
	public static extern function GetVrDeviceInfo(vrDeviceType:VrDeviceType):VrDeviceInfo;

	/** Init VR simulator for selected device parameters **/
	@:native("InitVrSimulator")
	public static extern function InitVrSimulator(info:VrDeviceInfo):Void;

	/** Update VR tracking (position and orientation) and camera **/
	public static extern inline function UpdateVrTracking(camera:Reference<Camera>):Void
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
	@:native("LoadWave")
	public static extern function LoadWave(fileName:ConstCharStar):Wave;

	/** Load wave data from raw array data **/
	@:native("LoadWaveEx")
	public static extern function LoadWaveEx(data:Star<cpp.Void>, sampleCount:Int, sampleRate:Int, sampleSize:Int, channels:Int):Wave; // TODO to Array

	/** Load sound from file **/
	@:native("LoadSound")
	public static extern function LoadSound(fileName:ConstCharStar):Sound;

	/** Load sound from wave data **/
	@:native("LoadSoundFromWave")
	public static extern function LoadSoundFromWave(wave:Wave):Sound;

	/** Update sound buffer with new data **/
	@:native("UpdateSound")
	public static extern function UpdateSound(sound:Sound, data:ConstVoidStar, samplesCount:Int):Void;

	/** Unload wave data **/
	@:native("UnloadWave")
	public static extern function UnloadWave(wave:Wave):Void;

	/** Unload sound **/
	@:native("UnloadSound")
	public static extern function UnloadSound(sound:Sound):Void;

	/** Export wave data to file **/
	@:native("ExportWave")
	public static extern function ExportWave(wave:Wave, fileName:ConstCharStar):Void;

	/** Export wave sample data to code (.h) **/
	@:native("ExportWaveAsCode")
	public static extern function ExportWaveAsCode(wave:Wave, fileName:ConstCharStar):Void;

	/** Play a sound **/
	@:native("PlaySound")
	public static extern function PlaySound(sound:Sound):Void;

	/** Pause a sound **/
	@:native("PauseSound")
	public static extern function PauseSound(sound:Sound):Void;

	/** Resume a paused sound **/
	@:native("ResumeSound")
	public static extern function ResumeSound(sound:Sound):Void;

	/** Stop playing a sound **/
	@:native("StopSound")
	public static extern function StopSound(sound:Sound):Void;

	/** Check if a sound is currently playing **/
	@:native("IsSoundPlaying")
	public static extern function IsSoundPlaying(sound:Sound):Bool;

	/** Set volume for a sound (1.0 is max level) **/
	@:native("SetSoundVolume")
	public static extern function SetSoundVolume(sound:Sound, volume:Float):Void;

	/** Set pitch for a sound (1.0 is base level) **/
	@:native("SetSoundPitch")
	public static extern function SetSoundPitch(sound:Sound, pitch:Float):Void;

	/** Convert wave data to desired format **/
	public static extern inline function WaveFormat(wave:Reference<Wave>, sampleRate:Int, sampleSize:Int, channels:Int):Void
	{
		untyped __cpp__("WaveFormat(&({0}.value), {1}, {2}, {3})", wave, sampleRate, sampleSize, channels);
	}

	/** Copy a wave to a new wave **/
	@:native("WaveCopy")
	public static extern function WaveCopy(wave:Wave):Wave;

	/** Crop a wave to defined samples range **/
	public static extern inline function WaveCrop(wave:Reference<Wave>, initSample:Int, finalSample:Int):Void
	{
		untyped __cpp__("WaveCrop(&({0}.value), {1}, {2})", wave, initSample, finalSample);
	}

	/** Get samples data from wave as a floats array **/
	@:native("GetWaveData")
	public static extern function GetWaveData(wave:Wave):Star<Float>; // TODO to Array

	/** Load music stream from file **/
	@:native("LoadMusicStream")
	public static extern function LoadMusicStream(fileName:ConstCharStar):Music;

	/** Unload music stream **/
	@:native("UnloadMusicStream")
	public static extern function UnloadMusicStream(music:Music):Void;

	/** Start music playing **/
	@:native("PlayMusicStream")
	public static extern function PlayMusicStream(music:Music):Void;

	/** Updates buffers for music streaming **/
	@:native("UpdateMusicStream")
	public static extern function UpdateMusicStream(music:Music):Void;

	/** Stop music playing **/
	@:native("StopMusicStream")
	public static extern function StopMusicStream(music:Music):Void;

	/** Pause music playing **/
	@:native("PauseMusicStream")
	public static extern function PauseMusicStream(music:Music):Void;

	/** Resume playing paused music **/
	@:native("ResumeMusicStream")
	public static extern function ResumeMusicStream(music:Music):Void;

	/** Check if music is playing **/
	@:native("IsMusicPlaying")
	public static extern function IsMusicPlaying(music:Music):Bool;

	/** Set volume for music (1.0 is max level) **/
	@:native("SetMusicVolume")
	public static extern function SetMusicVolume(music:Music, volume:Float):Void;

	/** Set pitch for a music (1.0 is base level) **/
	@:native("SetMusicPitch")
	public static extern function SetMusicPitch(music:Music, pitch:Float):Void;

	/** Set music loop count (loop repeats) **/
	@:native("SetMusicLoopCount")
	public static extern function SetMusicLoopCount(music:Music, count:Int):Void;

	/** Get music time length (in seconds) **/
	@:native("GetMusicTimeLength")
	public static extern function GetMusicTimeLength(music:Music):Float;

	/** Get current music time played (in seconds) **/
	@:native("GetMusicTimePlayed")
	public static extern function GetMusicTimePlayed(music:Music):Float;

	/** Init audio stream (to stream raw audio pcm data) **/
	@:native("InitAudioStream")
	public static extern function InitAudioStream(sampleRate:UInt, sampleSize:UInt, channels:UInt):AudioStream;

	/** Update audio stream buffers with data **/
	@:native("UpdateAudioStream")
	public static extern function UpdateAudioStream(stream:AudioStream, data:ConstVoidStar, samplesCount:Int):Void;

	/** Close audio stream and free memory **/
	@:native("CloseAudioStream")
	public static extern function CloseAudioStream(stream:AudioStream):Void;

	/** Check if any audio stream buffers requires refill **/
	@:native("IsAudioBufferProcessed")
	public static extern function IsAudioBufferProcessed(stream:AudioStream):Bool;

	/** Play audio stream **/
	@:native("PlayAudioStream")
	public static extern function PlayAudioStream(stream:AudioStream):Void;

	/** Pause audio stream **/
	@:native("PauseAudioStream")
	public static extern function PauseAudioStream(stream:AudioStream):Void;

	/** Resume audio stream **/
	@:native("ResumeAudioStream")
	public static extern function ResumeAudioStream(stream:AudioStream):Void;

	/** Check if audio stream is playing **/
	@:native("IsAudioStreamPlaying")
	public static extern function IsAudioStreamPlaying(stream:AudioStream):Bool;

	/** Stop audio stream **/
	@:native("StopAudioStream")
	public static extern function StopAudioStream(stream:AudioStream):Void;

	/** Set volume for audio stream (1.0 is max level) **/
	@:native("SetAudioStreamVolume")
	public static extern function SetAudioStreamVolume(stream:AudioStream, volume:Float):Void;

	/** Set pitch for audio stream (1.0 is base level) **/
	@:native("SetAudioStreamPitch")
	public static extern function SetAudioStreamPitch(stream:AudioStream, pitch:Float):Void;
}
