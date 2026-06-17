#version 450 core
#extension GL_ARB_gpu_shader_int64 : enable
#extension GL_ARB_shader_ballot : enable
#extension GL_ARB_shader_group_vote : enable
#extension GL_EXT_shader_image_load_formatted : enable
#extension GL_EXT_texture_shadow_lod : enable
#extension GL_ARB_fragment_shader_interlock : enable
#extension GL_NV_viewport_array2 : enable
#pragma optionNV(fastmath off)

const int undef = 0;

layout (binding = 0, std140) uniform _support_buffer
{
    uint alpha_test;
    uint is_bgra[8];
    precise vec4 viewport_inverse;
    precise vec4 viewport_size;
    int frag_scale_count;
    precise float render_scale[73];
    ivec4 tfe_offset;
    int tfe_vertex_count;
} support_buffer;

layout (binding = 0, std140) uniform worldViewProjConstant
{
    precise vec4 data[4096];
} _worldViewProjConstant;


layout (binding = 2, std140) uniform floatConstant
{
    precise vec4 data[4096];
} _floatConstant;

layout (binding = 3, std140) uniform vector3Constant
{
    precise vec4 data[4096];
} _vector3Constant;

layout (binding = 1, std140) uniform boolConstant
{
    precise vec4 data[4096];
} _boolConstant;

// layout (binding = 3) uniform sampler2D MaskTex;
// layout (binding = 2) uniform sampler2D Blend1Tex;
// layout (binding = 1) uniform sampler2D Blend0Tex;
// layout (binding = 0) uniform sampler2D LerpTex;
layout (binding = 0) uniform sampler2D Col0Tex;
layout (location = 1) in vec4 in_attr1;
layout (location = 2) in vec4 in_attr2;
layout (location = 3) in vec4 in_attr3;
layout (location = 4) in vec4 in_attr4;
layout (location = 5) in vec4 in_attr5;
layout (location = 6) in vec4 in_attr6;
layout (location = 7) in vec4 in_attr7;
layout (location = 8) in vec4 in_attr8;
layout (location = 9) in vec4 in_attr9;

layout (location = 0) out vec4 OUT_Color0;
layout (location = 1) out vec4 OUT_Color1;
layout (location = 2) out vec4 OUT_Color2;
void main() { do
{
    precise vec2 temp_1;
    precise float temp_2;
    precise float temp_3;
    precise float temp_4;
    precise float temp_5;
    precise float temp_6;
    precise float temp_7;
    precise float temp_8;
    precise float temp_9;
    precise float temp_10;
    precise float temp_11;
    precise float temp_12;
    precise vec2 temp_13;
    precise float temp_14;
    precise float temp_15;
    precise float temp_16;
    precise float temp_17;
    precise float temp_18;
    precise float temp_19;
    precise float temp_20;
    precise float temp_21;
    precise float temp_22;
    precise float temp_23;
    precise float temp_24;
    precise float temp_25;
    precise float temp_26;
    precise float temp_27;
    precise float temp_28;
    precise float temp_29;
    precise float temp_30;
    precise float temp_31;
    precise float temp_32;
    precise float temp_33;
    precise float temp_34;
    precise float temp_35;
    precise float temp_36;
    precise float temp_37;
    precise float temp_38;
    precise float temp_39;
    precise float temp_40;
    // temp_1 = texelFetch(MaskTex, ivec2(TexelFetchScale(int(trunc(gl_FragCoord.x / support_buffer.render_scale[0])), 0, 0), TexelFetchScale(int(trunc(gl_FragCoord.y / support_buffer.render_scale[0])), 0, 1)), 0).xy;
    temp_1 = vec2(1.0, 1.0);
    temp_2 = 0.0 - in_attr6.x + _worldViewProjConstant.data[19].x;
    temp_3 = in_attr4.z;
    temp_4 = 0.0 - in_attr6.y + _worldViewProjConstant.data[19].y;
    // temp_5 = (abs(fma(_floatConstant.data[3].w, 0.0 - 0.00024420026, temp_1.y)) < 0.0001 ? 1.0 : 0.0) * temp_1.x * _floatConstant.data[4].y;
    temp_5 = 1.0 * temp_1.x * 1.0;
    // if (temp_5 <= _floatConstant.data[4].z)
    // {
    //     discard;
    // }
    temp_6 = 0.0 - in_attr6.z + _worldViewProjConstant.data[19].z;
    temp_7 = inversesqrt(fma(temp_6, temp_6, fma(temp_4, temp_4, temp_2 * temp_2)));
    temp_8 = in_attr4.x;
    temp_9 = in_attr4.y;
    temp_10 = inversesqrt(fma(temp_3, temp_3, fma(temp_9, temp_9, temp_8 * temp_8)));
    temp_11 = in_attr9.x;
    temp_12 = in_attr9.y;
    // temp_13 = texture(LerpTex, vec2(temp_11, 0.0 - temp_12 + 1.0)).xw;
    temp_13 = vec2(1.0 - temp_12, temp_12);
    temp_14 = min(exp2(log2(abs(0.0 - max(0.0, fma(temp_6 * temp_7, temp_3 * temp_10, fma(temp_4 * temp_7, temp_9 * temp_10, temp_2 * temp_7 * temp_8 * temp_10))) + 1.0)) * _floatConstant.data[0].z) * _floatConstant.data[0].w, 1.0);
    temp_15 = fma(temp_14, _floatConstant.data[0].y, fma(0.0 - _vector3Constant.data[0].x + _vector3Constant.data[1].x, _floatConstant.data[0].x, _vector3Constant.data[0].x));
    temp_16 = fma(temp_14, _floatConstant.data[0].y, fma(0.0 - _vector3Constant.data[0].y + _vector3Constant.data[1].y, _floatConstant.data[0].x, _vector3Constant.data[0].y));
    temp_17 = fma(temp_14, _floatConstant.data[0].y, fma(0.0 - _vector3Constant.data[0].z + _vector3Constant.data[1].z, _floatConstant.data[0].x, _vector3Constant.data[0].z));
    // temp_18 = min(temp_13.x + fma(texture(Blend1Tex, vec2(fma(temp_11, _floatConstant.data[2].y, 0.0 - _floatConstant.data[2].y * _floatConstant.data[2].z), 0.0 - fma(temp_12, _floatConstant.data[2].w, 0.0 - _floatConstant.data[2].w * _floatConstant.data[3].x) + 1.0)).x + texture(Blend0Tex, vec2(fma(temp_11, _floatConstant.data[1].y, 0.0 - _floatConstant.data[1].y * _floatConstant.data[1].z), 0.0 - fma(temp_12, _floatConstant.data[1].w, 0.0 - _floatConstant.data[1].w * _floatConstant.data[2].x) + 1.0)).x, 0.0 - temp_13.y, texture(Blend1Tex, vec2(fma(temp_11, _floatConstant.data[2].y, 0.0 - _floatConstant.data[2].y * _floatConstant.data[2].z), 0.0 - fma(temp_12, _floatConstant.data[2].w, 0.0 - _floatConstant.data[2].w * _floatConstant.data[3].x) + 1.0)).x + texture(Blend0Tex, vec2(fma(temp_11, _floatConstant.data[1].y, 0.0 - _floatConstant.data[1].y * _floatConstant.data[1].z), 0.0 - fma(temp_12, _floatConstant.data[1].w, 0.0 - _floatConstant.data[1].w * _floatConstant.data[2].x) + 1.0)).x), 1.0);
    temp_18 = 1.0;

    temp_19 = fma(fma(temp_14, _floatConstant.data[1].x, fma(0.0 - _vector3Constant.data[2].x + _vector3Constant.data[3].x, _floatConstant.data[0].x, _vector3Constant.data[2].x)) + 0.0 - temp_15, temp_18, temp_15);
    temp_20 = fma(fma(temp_14, _floatConstant.data[1].x, fma(0.0 - _vector3Constant.data[2].y + _vector3Constant.data[3].y, _floatConstant.data[0].x, _vector3Constant.data[2].y)) + 0.0 - temp_16, temp_18, temp_16);
    temp_21 = fma(in_attr8.y, 2.0, -1.0);
    temp_22 = fma(in_attr8.x, 2.0, -1.0);
    temp_23 = fma(in_attr8.z, 2.0, -1.0);
    temp_24 = fma(temp_23, in_attr3.y, fma(temp_22, in_attr1.y, temp_21 * in_attr2.y));
    temp_25 = fma(temp_23, in_attr3.z, fma(temp_22, in_attr1.z, temp_21 * in_attr2.z));
    temp_26 = fma(temp_23, in_attr3.x, fma(temp_22, in_attr1.x, temp_21 * in_attr2.x));
    temp_27 = fma(fma(temp_14, _floatConstant.data[1].x, fma(0.0 - _vector3Constant.data[2].z + _vector3Constant.data[3].z, _floatConstant.data[0].x, _vector3Constant.data[2].z)) + 0.0 - temp_17, temp_18, temp_17);
    temp_28 = fma(fma(temp_19, _vector3Constant.data[4].x, 0.0 - temp_19), _floatConstant.data[3].y, temp_19) * _floatConstant.data[3].z;
    temp_29 = fma(fma(temp_20, _vector3Constant.data[4].y, 0.0 - temp_20), _floatConstant.data[3].y, temp_20) * _floatConstant.data[3].z;
    temp_30 = float(uint(0 - (0 != floatBitsToInt(_boolConstant.data[0].z) ? -1 : 0)));
    temp_31 = fma(fma(temp_28, _vector3Constant.data[5].x, 0.0 - temp_28), _floatConstant.data[4].x, temp_28);
    temp_32 = fma(fma(temp_29, _vector3Constant.data[5].y, 0.0 - temp_29), _floatConstant.data[4].x, temp_29);
    temp_33 = fma(fma(temp_27, _vector3Constant.data[4].z, 0.0 - temp_27), _floatConstant.data[3].y, temp_27) * _floatConstant.data[3].z;
    temp_34 = fma(fma(temp_33, _vector3Constant.data[5].z, 0.0 - temp_33), _floatConstant.data[4].x, temp_33);
    temp_35 = in_attr5.z * (1.0 / in_attr5.w);
    temp_36 = float(uint(0 - (0 != floatBitsToInt(_boolConstant.data[0].x) ? -1 : 0)));
    temp_37 = fma(temp_25, _worldViewProjConstant.data[14].x, fma(temp_26, _worldViewProjConstant.data[12].x, temp_24 * _worldViewProjConstant.data[13].x)) * temp_36;
    temp_38 = fma(temp_25, _worldViewProjConstant.data[14].y, fma(temp_26, _worldViewProjConstant.data[12].y, temp_24 * _worldViewProjConstant.data[13].y)) * temp_36;
    temp_39 = fma(fma(temp_25, _worldViewProjConstant.data[14].z, fma(temp_26, _worldViewProjConstant.data[12].z, temp_24 * _worldViewProjConstant.data[13].z)) + 1.0, temp_36, -1);
    temp_40 = inversesqrt(fma(temp_39, temp_39, fma(temp_38, temp_38, temp_37 * temp_37)));
    // OUT_Color0.x = temp_31;
    // OUT_Color0.y = temp_32;
    // OUT_Color0.z = temp_34;
    OUT_Color0.rgb = texture(Col0Tex, vec2(in_attr9.x, 1.0 - in_attr9.y)).rgb;
    OUT_Color0.w = temp_13.y;
    OUT_Color1.x = uintBitsToFloat(uint(max(trunc(floor(min(floor(fma(temp_37 * temp_40, 0.49995, 0.5) * 255.0), 255.0) * 256.0) + min(floor(fma(temp_38 * temp_40, 0.49995, 0.5) * 255.0), 255.0)), 0.0)));
    OUT_Color1.y = uintBitsToFloat(uint(max(trunc(floor(min(floor(fma(temp_39 * temp_40, 0.49995, 0.5) * 255.0), 255.0) * 256.0) + min(floor(in_attr7.x * 255.0), 255.0)), 0.0)));
    OUT_Color1.z = uintBitsToFloat(uint(max(trunc(min(floor(_floatConstant.data[5].x), 255.0) + floor(min(floor(float(uint(0 - (0 != floatBitsToInt(_boolConstant.data[0].y) ? -1 : 0))) * _floatConstant.data[4].w), 255.0) * 256.0)), 0.0)));
    OUT_Color1.w = uintBitsToFloat(uint(max(trunc(min(floor(in_attr7.y * 255.0), 255.0) + floor(min(floor(fma(temp_35 + abs(dFdx(temp_35)) + abs(1.0 * dFdy(temp_35)), 0.5, 0.5) * 253.000015), 255.0) * 256.0)), 0.0)));
    OUT_Color2.x = fma(fma(temp_31, 0.0 - _vector3Constant.data[6].x, _vector3Constant.data[6].x), temp_30, temp_31 * _vector3Constant.data[6].x);
    OUT_Color2.y = fma(fma(temp_32, 0.0 - _vector3Constant.data[6].y, _vector3Constant.data[6].y), temp_30, temp_32 * _vector3Constant.data[6].y);
    OUT_Color2.z = fma(fma(temp_34, 0.0 - _vector3Constant.data[6].z, _vector3Constant.data[6].z), temp_30, temp_34 * _vector3Constant.data[6].z);
    OUT_Color2.w = in_attr7.w;
    break;
} while (false);
}
