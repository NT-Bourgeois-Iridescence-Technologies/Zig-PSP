usingnamespace @import("psptypes.zig");
usingnamespace @import("pspge.zig");

pub const GuSwapBuffersCallback = ?fn ([*c]?*c_void, [*c]?*c_void) callconv(.C) void;
pub extern fn sceGuDepthBuffer(zbp: ?*c_void, zbw: c_int) void;
pub extern fn sceGuDispBuffer(width: c_int, height: c_int, dispbp: ?*c_void, dispbw: c_int) void;
pub extern fn sceGuDrawBuffer(psm: c_int, fbp: ?*c_void, fbw: c_int) void;
pub extern fn sceGuDrawBufferList(psm: c_int, fbp: ?*c_void, fbw: c_int) void;
pub extern fn sceGuDisplay(state: c_int) c_int;
pub extern fn sceGuDepthFunc(function: c_int) void;
pub extern fn sceGuDepthMask(mask: c_int) void;
pub extern fn sceGuDepthOffset(offset: c_uint) void;
pub extern fn sceGuDepthRange(near: c_int, far: c_int) void;
pub extern fn sceGuFog(near: f32, far: f32, color: c_uint) void;
pub extern fn sceGuInit() void;
pub extern fn sceGuTerm() void;
pub extern fn sceGuBreak(a0: c_int) void;
pub extern fn sceGuContinue() void;
pub extern fn sceGuSetCallback(signal: c_int, callback: ?fn (c_int) callconv(.C) void) ?*c_void;
pub extern fn sceGuSignal(signal: c_int, behavior: c_int) void;
pub extern fn sceGuSendCommandf(cmd: c_int, argument: f32) void;
pub extern fn sceGuSendCommandi(cmd: c_int, argument: c_int) void;
pub extern fn sceGuGetMemory(size: c_int) ?*c_void;
pub extern fn sceGuStart(cid: c_int, list: ?*c_void) void;
pub extern fn sceGuFinish() c_int;
pub extern fn sceGuFinishId(id: c_uint) c_int;
pub extern fn sceGuCallList(list: ?*const c_void) void;
pub extern fn sceGuCallMode(mode: c_int) void;
pub extern fn sceGuCheckList() c_int;
pub extern fn sceGuSendList(mode: c_int, list: ?*const c_void, context: [*c]PspGeContext) void;
pub extern fn sceGuSwapBuffers() ?*c_void;
pub extern fn sceGuSync(mode: c_int, what: c_int) c_int;
pub extern fn sceGuDrawArray(prim: c_int, vtype: c_int, count: c_int, indices: ?*const c_void, vertices: ?*const c_void) void;
pub extern fn sceGuBeginObject(vtype: c_int, count: c_int, indices: ?*const c_void, vertices: ?*const c_void) void;
pub extern fn sceGuEndObject() void;
pub extern fn sceGuSetStatus(state: c_int, status: c_int) void;
pub extern fn sceGuGetStatus(state: c_int) c_int;
pub extern fn sceGuSetAllStatus(status: c_int) void;
pub extern fn sceGuGetAllStatus() c_int;
pub extern fn sceGuEnable(state: c_int) void;
pub extern fn sceGuDisable(state: c_int) void;
pub extern fn sceGuLight(light: c_int, type: c_int, components: c_int, position: [*c]const ScePspFVector3) void;
pub extern fn sceGuLightAtt(light: c_int, atten0: f32, atten1: f32, atten2: f32) void;
pub extern fn sceGuLightColor(light: c_int, component: c_int, color: c_uint) void;
pub extern fn sceGuLightMode(mode: c_int) void;
pub extern fn sceGuLightSpot(light: c_int, direction: [*c]const ScePspFVector3, exponent: f32, cutoff: f32) void;
pub extern fn sceGuClear(flags: c_int) void;
pub extern fn sceGuClearColor(color: c_uint) void;
pub extern fn sceGuClearDepth(depth: c_uint) void;
pub extern fn sceGuClearStencil(stencil: c_uint) void;
pub extern fn sceGuPixelMask(mask: c_uint) void;
pub extern fn sceGuColor(color: c_uint) void;
pub extern fn sceGuColorFunc(func: c_int, color: c_uint, mask: c_uint) void;
pub extern fn sceGuColorMaterial(components: c_int) void;
pub extern fn sceGuAlphaFunc(func: c_int, value: c_int, mask: c_int) void;
pub extern fn sceGuAmbient(color: c_uint) void;
pub extern fn sceGuAmbientColor(color: c_uint) void;
pub extern fn sceGuBlendFunc(op: c_int, src: c_int, dest: c_int, srcfix: c_uint, destfix: c_uint) void;
pub extern fn sceGuMaterial(mode: c_int, color: c_int) void;
pub extern fn sceGuModelColor(emissive: c_uint, ambient: c_uint, diffuse: c_uint, specular: c_uint) void;
pub extern fn sceGuStencilFunc(func: c_int, ref: c_int, mask: c_int) void;
pub extern fn sceGuStencilOp(fail: c_int, zfail: c_int, zpass: c_int) void;
pub extern fn sceGuSpecular(power: f32) void;
pub extern fn sceGuFrontFace(order: c_int) void;
pub extern fn sceGuLogicalOp(op: c_int) void;
pub extern fn sceGuSetDither(matrix: [*c]const ScePspIMatrix4) void;
pub extern fn sceGuShadeModel(mode: c_int) void;
pub extern fn sceGuCopyImage(psm: c_int, sx: c_int, sy: c_int, width: c_int, height: c_int, srcw: c_int, src: ?*c_void, dx: c_int, dy: c_int, destw: c_int, dest: ?*c_void) void;
pub extern fn sceGuTexEnvColor(color: c_uint) void;
pub extern fn sceGuTexFilter(min: c_int, mag: c_int) void;
pub extern fn sceGuTexFlush() void;
pub extern fn sceGuTexFunc(tfx: c_int, tcc: c_int) void;
pub extern fn sceGuTexImage(mipmap: c_int, width: c_int, height: c_int, tbw: c_int, tbp: ?*const c_void) void;
pub extern fn sceGuTexLevelMode(mode: c_uint, bias: f32) void;
pub extern fn sceGuTexMapMode(mode: c_int, a1: c_uint, a2: c_uint) void;
pub extern fn sceGuTexMode(tpsm: c_int, maxmips: c_int, a2: c_int, swizzle: c_int) void;
pub extern fn sceGuTexOffset(u: f32, v: f32) void;
pub extern fn sceGuTexProjMapMode(mode: c_int) void;
pub extern fn sceGuTexScale(u: f32, v: f32) void;
pub extern fn sceGuTexSlope(slope: f32) void;
pub extern fn sceGuTexSync(...) void;
pub extern fn sceGuTexWrap(u: c_int, v: c_int) void;
pub extern fn sceGuClutLoad(num_blocks: c_int, cbp: ?*const c_void) void;
pub extern fn sceGuClutMode(cpsm: c_uint, shift: c_uint, mask: c_uint, a3: c_uint) void;
pub extern fn sceGuOffset(x: c_uint, y: c_uint) void;
pub extern fn sceGuScissor(x: c_int, y: c_int, w: c_int, h: c_int) void;
pub extern fn sceGuViewport(cx: c_int, cy: c_int, width: c_int, height: c_int) void;
pub extern fn sceGuDrawBezier(vtype: c_int, ucount: c_int, vcount: c_int, indices: ?*const c_void, vertices: ?*const c_void) void;
pub extern fn sceGuPatchDivide(ulevel: c_uint, vlevel: c_uint) void;
pub extern fn sceGuPatchFrontFace(a0: c_uint) void;
pub extern fn sceGuPatchPrim(prim: c_int) void;
pub extern fn sceGuDrawSpline(vtype: c_int, ucount: c_int, vcount: c_int, uedge: c_int, vedge: c_int, indices: ?*const c_void, vertices: ?*const c_void) void;
pub extern fn sceGuSetMatrix(type: c_int, matrix: [*c]const ScePspFMatrix4) void;
pub extern fn sceGuBoneMatrix(index: c_uint, matrix: [*c]const ScePspFMatrix4) void;
pub extern fn sceGuMorphWeight(index: c_int, weight: f32) void;
pub extern fn sceGuDrawArrayN(primitive_type: c_int, vertex_type: c_int, count: c_int, a3: c_int, indices: ?*const c_void, vertices: ?*const c_void) void;
pub extern fn guSwapBuffersBehaviour(behaviour: c_int) void;
pub extern fn guSwapBuffersCallback(callback: GuSwapBuffersCallback) void;

pub const GuPixelMode = extern enum(c_int){
    Psm5650 = 0,
    Psm5551 = 1,
    Psm4444 = 2,
    Psm8888 = 3,
    PsmT4 = 4,
    PsmT8 = 5,
    PsmT16 = 6,
    PsmT32 = 7,
    PsmDXT1 = 8,
    PsmDXT3 = 9,
    PsmDXT5 = 10,
};

pub const GU_FILL_OPEN = 2;
pub const GU_FALSE = 0;
pub const GU_NOOP = 5;
pub const GU_COLOR_5551 = GU_COLOR_SHIFT(5);
pub const GU_TRIANGLE_STRIP = 4;
pub const GU_NAND = 14;
pub const GU_REPEAT = 0;
pub const GU_AMBIENT_AND_DIFFUSE = GU_AMBIENT | GU_DIFFUSE;
pub const GU_SINGLE_COLOR = 0;
pub const GU_SYNC_WHAT_STALL = 3;
pub const GU_NOTEQUAL = 3;
pub const GU_OR_INVERTED = 13;
pub const GU_SEPARATE_SPECULAR_COLOR = 1;
pub const GU_PROJECTION = 0;
pub const GU_INVERT = 3;
pub const GU_DIRECTIONAL = 0;
pub const GU_REPLACE = 2;
pub const GU_NORMALIZED_NORMAL = 2;
pub const GU_TRIANGLE_FAN = 5;
pub const GU_CLAMP = 1;
pub const GU_SYNC_FINISH = 0;
pub const GU_TRANSFORM_3D = GU_TRANSFORM_SHIFT(0);
pub const GU_COPY_INVERTED = 12;
pub const GU_VERTEX_BITS = GU_VERTEX_SHIFT(3);
pub const GU_FIX = 10;
pub const GU_NEAREST_MIPMAP_NEAREST = 4;
pub const GU_NORMAL_BITS = GU_NORMAL_SHIFT(3);
pub const GU_TCC_RGBA = 1;
pub const GU_SEND = 2;
pub const GU_STENCIL_TEST = 3;
pub const GU_GEQUAL = 7;
pub const GU_DIFFUSE = 2;
pub const GU_TRANSFORM_2D = GU_TRANSFORM_SHIFT(1);
pub const GU_TEXTURE = 3;
pub const GU_TEXTURE_32BITF = GU_TEXTURE_SHIFT(3);
pub const GU_INDEX_8BIT = GU_INDEX_SHIFT(1);
pub const GU_COLOR_8888 = GU_COLOR_SHIFT(7);
pub const GU_TEXTURE_16BIT = GU_TEXTURE_SHIFT(2);
pub const GU_COLOR_LOGIC_OP = 18;
pub const GU_LINES = 1;
pub const GU_SPECULAR = 4;
pub const GU_LIGHTING = 10;
pub inline fn GU_COLOR_SHIFT(n: var) @TypeOf(n << 2) {
    return n << 2;
}
pub const GU_FOG = 7;
pub const GU_TEXTURE_AUTO = 0;
pub const GU_BLEND = 4;
pub const GU_LIGHT3 = 14;
pub const GU_LIGHT2 = 13;
pub const GU_TFX_MODULATE = 0;
pub const GU_SYNC_WHAT_DONE = 0;
pub const GU_FRAGMENT_2X = 21;
pub inline fn GU_TRANSFORM_SHIFT(n: var) @TypeOf(n << 23) {
    return n << 23;
}
pub inline fn GU_VERTICES(n: var) @TypeOf(((n - 1) & 7) << 18) {
    return ((n - 1) & 7) << 18;
}
pub const GU_SCISSOR_TEST = 2;

pub const GU_OR = 7;
pub const GU_ENVIRONMENT_MAP = 2;
pub const GU_SPOTLIGHT = 2;
pub const GU_INDEX_BITS = GU_INDEX_SHIFT(3);
pub const GU_VERTEX_16BIT = GU_VERTEX_SHIFT(2);
pub const GU_SYNC_NOWAIT = 1;
pub const GU_DST_ALPHA = 4;
pub const GU_NORMAL_32BITF = GU_NORMAL_SHIFT(3);
pub inline fn GU_NORMAL_SHIFT(n: var) @TypeOf(n << 5) {
    return n << 5;
}
pub const GU_MODEL = 2;
pub inline fn GU_COLOR(r: var, g: var, b: var, a: var) @TypeOf(GU_RGBA((if (@typeInfo(@TypeOf(r * @as(f32, 255.0))) == .Pointer) @ptrCast(u32, @alignCast(@alignOf(u32.Child), r * @as(f32, 255.0))) else if (@typeInfo(@TypeOf(r * @as(f32, 255.0))) == .Int and @typeInfo(u32) == .Pointer) @intToPtr(u32, r * @as(f32, 255.0)) else @as(u32, r * @as(f32, 255.0))), (if (@typeInfo(@TypeOf(g * @as(f32, 255.0))) == .Pointer) @ptrCast(u32, @alignCast(@alignOf(u32.Child), g * @as(f32, 255.0))) else if (@typeInfo(@TypeOf(g * @as(f32, 255.0))) == .Int and @typeInfo(u32) == .Pointer) @intToPtr(u32, g * @as(f32, 255.0)) else @as(u32, g * @as(f32, 255.0))), (if (@typeInfo(@TypeOf(b * @as(f32, 255.0))) == .Pointer) @ptrCast(u32, @alignCast(@alignOf(u32.Child), b * @as(f32, 255.0))) else if (@typeInfo(@TypeOf(b * @as(f32, 255.0))) == .Int and @typeInfo(u32) == .Pointer) @intToPtr(u32, b * @as(f32, 255.0)) else @as(u32, b * @as(f32, 255.0))), (if (@typeInfo(@TypeOf(a * @as(f32, 255.0))) == .Pointer) @ptrCast(u32, @alignCast(@alignOf(u32.Child), a * @as(f32, 255.0))) else if (@typeInfo(@TypeOf(a * @as(f32, 255.0))) == .Int and @typeInfo(u32) == .Pointer) @intToPtr(u32, a * @as(f32, 255.0)) else @as(u32, a * @as(f32, 255.0))))) {
    return GU_RGBA((if (@typeInfo(@TypeOf(r * @as(f32, 255.0))) == .Pointer) @ptrCast(u32, @alignCast(@alignOf(u32.Child), r * @as(f32, 255.0))) else if (@typeInfo(@TypeOf(r * @as(f32, 255.0))) == .Int and @typeInfo(u32) == .Pointer) @intToPtr(u32, r * @as(f32, 255.0)) else @as(u32, r * @as(f32, 255.0))), (if (@typeInfo(@TypeOf(g * @as(f32, 255.0))) == .Pointer) @ptrCast(u32, @alignCast(@alignOf(u32.Child), g * @as(f32, 255.0))) else if (@typeInfo(@TypeOf(g * @as(f32, 255.0))) == .Int and @typeInfo(u32) == .Pointer) @intToPtr(u32, g * @as(f32, 255.0)) else @as(u32, g * @as(f32, 255.0))), (if (@typeInfo(@TypeOf(b * @as(f32, 255.0))) == .Pointer) @ptrCast(u32, @alignCast(@alignOf(u32.Child), b * @as(f32, 255.0))) else if (@typeInfo(@TypeOf(b * @as(f32, 255.0))) == .Int and @typeInfo(u32) == .Pointer) @intToPtr(u32, b * @as(f32, 255.0)) else @as(u32, b * @as(f32, 255.0))), (if (@typeInfo(@TypeOf(a * @as(f32, 255.0))) == .Pointer) @ptrCast(u32, @alignCast(@alignOf(u32.Child), a * @as(f32, 255.0))) else if (@typeInfo(@TypeOf(a * @as(f32, 255.0))) == .Int and @typeInfo(u32) == .Pointer) @intToPtr(u32, a * @as(f32, 255.0)) else @as(u32, a * @as(f32, 255.0))));
}
pub const GU_ONE_MINUS_DST_COLOR = 1;
pub const GU_DIFFUSE_AND_SPECULAR = GU_DIFFUSE | GU_SPECULAR;
pub const GU_TFX_REPLACE = 3;
pub const GU_UNKNOWN_LIGHT_COMPONENT = 8;
pub const GU_VERTEX_32BITF = GU_VERTEX_SHIFT(3);
pub const GU_OPEN_OPEN = 3;
pub const GU_SET = 15;
pub inline fn GU_ARGB(a: var, r: var, g: var, b: var) @TypeOf(GU_ABGR(a, b, g, r)) {
    return GU_ABGR(a, b, g, r);
}
pub const GU_FILL_FILL = 0;
pub const GU_SMOOTH = 1;
pub const GU_BEHAVIOR_CONTINUE = 2;
pub const GU_KEEP = 0;
pub const GU_BEHAVIOR_SUSPEND = 1;
pub const GU_CLIP_PLANES = 8;
pub const GU_TEXTURE_8BIT = GU_TEXTURE_SHIFT(1);
pub const GU_DIRECT = 0;
pub const GU_ONE_MINUS_SRC_ALPHA = 3;
pub const GU_DECR = 5;
pub const GU_ONE_MINUS_DST_ALPHA = 5;
pub const GU_TCC_RGB = 0;
pub const GU_FACE_NORMAL_REVERSE = 19;
pub const GU_WEIGHTS_BITS = GU_WEIGHTS(8);
pub const GU_SYNC_LIST = 3;
pub const GU_VERTICES_BITS = GU_VERTICES(8);
pub const GU_SPRITES = 6;
pub const GU_TAIL = 0;
pub const GU_DST_COLOR = 0;
pub const GU_CW = 0;
pub const GU_TEXTURE_BITS = GU_TEXTURE_SHIFT(3);
pub const GU_HEAD = 1;
pub const GU_PATCH_FACE = 20;
pub const GU_DEPTH_TEST = 1;
pub const GU_TEXTURE_2D = 9;
pub const GU_LINEAR = 1;
pub const GU_SYNC_SIGNAL = 1;
pub const GU_SYNC_WHAT_DRAW = 2;
pub const GU_LEQUAL = 5;
pub const GU_LINEAR_MIPMAP_NEAREST = 5;
pub const GU_LINE_STRIP = 2;
pub const UINT_FAST64_MAX = __UINT_FAST64_MAX__;
pub const GU_INVERTED = 10;
pub const GU_WEIGHT_8BIT = GU_WEIGHT_SHIFT(1);
pub inline fn GU_TEXTURE_SHIFT(n: var) @TypeOf(n << 0) {
    return n << 0;
}
pub const GU_SRC_COLOR = 0;
pub const GU_SUBTRACT = 1;
pub const GU_CALLBACK_FINISH = 4;
pub const GU_LIGHT1 = 12;
pub const GU_TFX_BLEND = 2;
pub const GU_VIEW = 1;
pub const GU_NOR = 8;
pub const GU_AND_INVERTED = 4;
pub const GU_SYNC_WHAT_CANCEL = 4;
pub inline fn GU_RGBA(r: var, g: var, b: var, a: var) @TypeOf(GU_ARGB(a, r, g, b)) {
    return GU_ARGB(a, r, g, b);
}
pub const GU_EQUAL = 2;
pub const GU_POSITION = 0;
pub const GU_WEIGHT_BITS = GU_WEIGHT_SHIFT(3);
pub const GU_LINEAR_MIPMAP_LINEAR = 7;
pub const GU_POINTLIGHT = 1;
pub const GU_PATCH_CULL_FACE = 16;
pub const GU_WEIGHT_16BIT = GU_WEIGHT_SHIFT(2);
pub const GU_GREATER = 6;
pub inline fn GU_WEIGHT_SHIFT(n: var) @TypeOf(n << 9) {
    return n << 9;
}
pub const GU_FLAT = 0;
pub const GU_TEXTURE_CONST = 1;
pub const GU_ABS = 5;
pub const GU_REVERSE_SUBTRACT = 2;
pub const GU_AND_REVERSE = 2;
pub const GU_LESS = 4;
pub const GU_CULL_FACE = 5;
pub const GU_TFX_DECAL = 1;
pub const GU_WEIGHT_32BITF = GU_WEIGHT_SHIFT(3);
pub const GU_SYNC_SEND = 4;
pub const GU_TEXTURE_COORDS = 0;
pub const GU_TRIANGLES = 3;
pub const GU_COLOR_BITS = GU_COLOR_SHIFT(7);
pub const GU_AMBIENT = 1;
pub const GU_VERTEX_8BIT = GU_VERTEX_SHIFT(1);
pub const GU_ALPHA_TEST = 0;
pub const GU_OR_REVERSE = 11;
pub const GU_TRANSFORM_BITS = GU_TRANSFORM_SHIFT(1);
pub const GU_NORMAL_8BIT = GU_NORMAL_SHIFT(1);
pub const GU_COLOR_5650 = GU_COLOR_SHIFT(4);
pub const GU_SYNC_WAIT = 0;
pub const GU_TEXTURE_SLOPE = 2;
pub const GU_TFX_ADD = 4;
pub const GU_DITHER = 6;
pub const GU_UV = 1;
pub inline fn GU_INDEX_SHIFT(n: var) @TypeOf(n << 11) {
    return n << 11;
}
pub const GU_SYNC_DONE = 2;
pub const GU_MIN = 3;
pub const GU_OPEN_FILL = 1;
pub inline fn GU_ABGR(a: var, b: var, g: var, r: var) @TypeOf((a << 24) | ((b << 16) | ((g << 8) | r))) {
    return (a << 24) | ((b << 16) | ((g << 8) | r));
}
pub const GU_EQUIV = 9;
pub const GU_CALLBACK_SIGNAL = 1;
pub const GU_ALWAYS = 1;
pub const GU_CLEAR = 0;
pub const GU_INDEX_16BIT = GU_INDEX_SHIFT(2);
pub const GU_COLOR_4444 = GU_COLOR_SHIFT(6);
pub const GU_POINTS = 0;
pub const GU_COLOR_TEST = 17;
pub const GU_NEAREST = 0;
pub const GU_NORMAL = 3;
pub const GU_CCW = 1;
pub const GU_MAX = 4;
pub const GU_LINE_SMOOTH = 15;
pub const GU_STENCIL_BUFFER_BIT = 2;
pub const GU_SRC_ALPHA = 2;
pub const GU_LIGHT0 = 11;
pub inline fn GU_WEIGHTS(n: var) @TypeOf(((n - 1) & 7) << 14) {
    return ((n - 1) & 7) << 14;
}
pub const GU_ZERO = 1;
pub const GU_AND = 1;
pub const GU_TRUE = 1;
pub const GU_SYNC_WHAT_QUEUED = 1;
pub const GU_NEVER = 0;
pub const GU_FAST_CLEAR_BIT = 16;
pub const GU_INCR = 4;
pub const GU_NEAREST_MIPMAP_LINEAR = 6;
pub const GU_COLOR_BUFFER_BIT = 1;
pub const GU_ADD = 0;
pub const GU_TEXTURE_MATRIX = 1;
pub const GU_XOR = 6;
pub inline fn GU_VERTEX_SHIFT(n: var) @TypeOf(n << 7) {
    return n << 7;
}
pub const GU_DEPTH_BUFFER_BIT = 4;
pub const GU_NORMAL_16BIT = GU_NORMAL_SHIFT(2);
pub const GU_CALL = 1;
pub const GU_COPY = 3;
pub const GU_ONE_MINUS_SRC_COLOR = 1;
pub const GU_PI = @as(f32, 3.141593);