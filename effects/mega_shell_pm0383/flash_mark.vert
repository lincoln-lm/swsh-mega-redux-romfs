#version 450 core
#extension GL_ARB_gpu_shader_int64 : enable
#extension GL_ARB_shader_ballot : enable
#extension GL_ARB_shader_group_vote : enable
#extension GL_EXT_shader_image_load_formatted : enable
#extension GL_EXT_texture_shadow_lod : enable
#extension GL_ARB_shader_draw_parameters : enable
#extension GL_ARB_shader_viewport_layer_array : enable
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

layout (binding = 7, std140) uniform sysEmitterDynamicUniformBlock
{
    precise vec4 data[4096];
} _sysEmitterDynamicUniformBlock;

layout (binding = 5, std140) uniform sysViewUniformBlock
{
    precise vec4 data[4096];
} _sysViewUniformBlock;

layout (binding = 6, std140) uniform sysEmitterStaticUniformBlock
{
    precise vec4 data[4096];
} _sysEmitterStaticUniformBlock;


layout (location = 0) in vec4 sysPosAttr;
layout (location = 1) in vec4 sysTexCoordAttr;
layout (location = 3) in vec4 sysLocalPosAttr;
layout (location = 4) in vec4 sysLocalVecAttr;
layout (location = 5) in vec4 sysScaleAttr;
layout (location = 6) in vec4 sysRandomAttr;
layout (location = 7) in vec4 sysInitRotateAttr;

layout (location = 0) out vec4 out_attr0;
layout (location = 1) out vec4 out_attr1;
layout (location = 2) out vec4 out_attr2;
layout (location = 3) out vec4 out_attr3;
layout (location = 4) out vec4 out_attr4;


void main() { do
{
    precise float temp_0;
    bool temp_1;
    precise float temp_2;
    int temp_3;
    int temp_4;
    precise float temp_5;
    precise float temp_6;
    bool temp_7;
    precise float temp_8;
    precise float temp_9;
    precise float temp_10;
    precise float temp_11;
    precise float temp_12;
    precise float temp_13;
    int temp_14;
    precise float temp_15;
    int temp_16;
    precise float temp_17;
    precise float temp_18;
    precise float temp_19;
    int temp_20;
    precise float temp_21;
    precise float temp_22;
    bool temp_23;
    precise float temp_24;
    precise float temp_25;
    precise float temp_26;
    precise float temp_27;
    precise float temp_28;
    precise float temp_29;
    precise float temp_30;
    precise float temp_31;
    bool temp_32;
    precise float temp_33;
    precise float temp_34;
    precise float temp_35;
    precise float temp_36;
    precise float temp_37;
    precise float temp_38;
    precise float temp_39;
    precise float temp_40;
    precise float temp_41;
    precise float temp_42;
    precise float temp_43;
    precise float temp_44;
    precise float temp_45;
    precise float temp_46;
    precise float temp_47;
    precise float temp_48;
    precise float temp_49;
    precise float temp_50;
    precise float temp_51;
    precise float temp_52;
    precise float temp_53;
    precise float temp_54;
    precise float temp_55;
    precise float temp_56;
    precise float temp_57;
    precise float temp_58;
    precise float temp_59;
    precise float temp_60;
    precise float temp_61;
    precise float temp_62;
    precise float temp_63;
    precise float temp_64;
    precise float temp_65;
    precise float temp_66;
    precise float temp_67;
    precise float temp_68;
    precise float temp_69;
    precise float temp_70;
    precise float temp_71;
    precise float temp_72;
    precise float temp_73;
    precise float temp_74;
    precise float temp_75;
    precise float temp_76;
    precise float temp_77;
    precise float temp_78;
    precise float temp_79;
    precise float temp_80;
    precise float temp_81;
    precise float temp_82;
    precise float temp_83;
    precise float temp_84;
    precise float temp_85;
    precise float temp_86;
    precise float temp_87;
    precise float temp_88;
    precise float temp_89;
    precise float temp_90;
    precise float temp_91;
    precise float temp_92;
    precise float temp_93;
    precise float temp_94;
    precise float temp_95;
    precise float temp_96;
    precise float temp_97;
    precise float temp_98;
    precise float temp_99;
    precise float temp_100;
    precise float temp_101;
    precise float temp_102;
    precise float temp_103;
    precise float temp_104;
    precise float temp_105;
    precise float temp_106;
    precise float temp_107;
    precise float temp_108;
    precise float temp_109;
    gl_Position.x = 0.0;
    gl_Position.y = 0.0;
    gl_Position.z = 0.0;
    gl_Position.w = 1.0;
    temp_0 = sysLocalVecAttr.w;
    temp_1 = temp_0 > _sysEmitterDynamicUniformBlock.data[2].x;
    if (temp_1)
    {
        out_attr3.x = 0.0;
    }
    temp_2 = intBitsToFloat(undef);
    if (temp_1)
    {
        temp_2 = _sysViewUniformBlock.data[18].y;
    }
    temp_3 = undef;
    if (temp_1)
    {
        temp_3 = floatBitsToInt(temp_2 * 5.0);
    }
    temp_4 = temp_3;
    if (temp_1)
    {
        gl_Position.x = 0.0;
        gl_Position.y = 0.0;
        gl_Position.z = intBitsToFloat(temp_3);
    }
    if (!(!temp_1))
    {
        break;
    }
    temp_5 = 0.0 - temp_0 + _sysEmitterDynamicUniformBlock.data[2].x;
    temp_6 = float(int(trunc(sysLocalPosAttr.w)));
    temp_7 = temp_5 >= temp_6;
    if (temp_7)
    {
        out_attr3.x = 0.0;
    }
    temp_8 = intBitsToFloat(undef);
    if (temp_7)
    {
        temp_8 = _sysViewUniformBlock.data[18].y;
    }
    if (temp_7)
    {
        temp_4 = floatBitsToInt(temp_8 * 5.0);
    }
    if (temp_7)
    {
        gl_Position.x = 0.0;
        gl_Position.y = 0.0;
        gl_Position.z = intBitsToFloat(temp_4);
    }
    if (!(!temp_7))
    {
        break;
    }
    temp_9 = sysRandomAttr.x;
    if (0.0 < _sysEmitterStaticUniformBlock.data[9].x)
    {
        temp_10 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[10].y, _sysEmitterStaticUniformBlock.data[9].x, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[9].x);
        temp_11 = temp_10 + 0.0 - floor(temp_10);
    }
    else
    {
        temp_11 = temp_5 * (1.0 / temp_6);
    }
    temp_12 = sysRandomAttr.y;
    temp_13 = sysRandomAttr.z;
    temp_14 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x20000;
    temp_15 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_16 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x10000;
    temp_17 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[96].w + _sysEmitterStaticUniformBlock.data[97].w);
    temp_18 = floor(temp_9 * 2.0);
    temp_19 = 1.0 / (_sysEmitterStaticUniformBlock.data[98].w + 0.0 - _sysEmitterStaticUniformBlock.data[97].w);
    temp_20 = floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x) & 0x40000;
    temp_21 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[98].w + _sysEmitterStaticUniformBlock.data[99].w);
    temp_22 = temp_11 + 0.0 - _sysEmitterStaticUniformBlock.data[96].w;
    temp_23 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_24 = floor(temp_12 * 2.0);
    temp_25 = floor(temp_13 * 2.0);
    temp_26 = sysScaleAttr.w;
    temp_27 = intBitsToFloat(undef);
    temp_28 = temp_15;
    temp_29 = _sysEmitterStaticUniformBlock.data[114].w;
    if (temp_23)
    {
        temp_27 = temp_15 * temp_15;
    }
    temp_30 = temp_11 + 0.0 - _sysEmitterStaticUniformBlock.data[97].w;
    temp_31 = temp_11 + 0.0 - _sysEmitterStaticUniformBlock.data[98].w;
    temp_32 = _sysEmitterStaticUniformBlock.data[114].w == 1.0;
    temp_33 = temp_27;
    if (temp_23)
    {
        temp_33 = temp_27 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_34 = intBitsToFloat(undef);
    temp_35 = temp_33;
    if (temp_23)
    {
        temp_34 = temp_33 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_36 = intBitsToFloat(undef);
    temp_37 = temp_34;
    if (temp_23)
    {
        temp_36 = temp_33 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_38 = temp_11 >= _sysEmitterStaticUniformBlock.data[96].w ? 1.0 : 0.0;
    temp_39 = temp_36;
    if (temp_23)
    {
        temp_35 = temp_33 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_40 = temp_35;
    if (!temp_23)
    {
        temp_41 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x) * 1.44269502;
        temp_42 = (temp_15 + 0.0 - fma(temp_41, exp2(temp_15 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_41)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_37 = temp_42 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_39 = temp_42 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_40 = temp_42 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_43 = temp_39;
    if (!temp_23)
    {
        temp_44 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_28 = fma(exp2(temp_15 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_44, temp_44);
    }
    temp_45 = temp_11 >= _sysEmitterStaticUniformBlock.data[97].w ? 1.0 : 0.0;
    temp_46 = temp_5 * log2(abs(_sysEmitterStaticUniformBlock.data[114].w));
    temp_47 = fma(temp_38, 0.0 - temp_45, temp_38);
    temp_48 = temp_46;
    if (!temp_32)
    {
        temp_29 = 0.0 - _sysEmitterStaticUniformBlock.data[114].w + 1.0;
    }
    if (!temp_32)
    {
        temp_48 = 1.0 / temp_29;
    }
    temp_49 = (0.0 - temp_25 < 0.0 ? 1.0 : 0.0 + (temp_25 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_14 > 0 ? -1 : 0) + 0 - temp_14 >= 0 ? 0 : 1));
    temp_50 = temp_11 >= _sysEmitterStaticUniformBlock.data[98].w ? 1.0 : 0.0;
    temp_51 = (0.0 - temp_24 < 0.0 ? 1.0 : 0.0 + (temp_24 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_16 > 0 ? -1 : 0) + 0 - temp_16 >= 0 ? 0 : 1));
    temp_52 = temp_11 >= _sysEmitterStaticUniformBlock.data[99].w ? 1.0 : 0.0;
    temp_53 = fma(fma(temp_28, sysLocalVecAttr.x, temp_37), temp_26, sysLocalPosAttr.x);
    temp_54 = fma(fma(temp_28, sysLocalVecAttr.y, temp_39), temp_26, sysLocalPosAttr.y);
    temp_55 = fma(fma(temp_28, sysLocalVecAttr.z, temp_40), temp_26, sysLocalPosAttr.z);
    if (!temp_32)
    {
        temp_43 = fma(exp2(temp_46), 0.0 - temp_48, temp_48);
    }
    temp_56 = sysInitRotateAttr.x;
    temp_57 = sysInitRotateAttr.y;
    temp_58 = sysInitRotateAttr.z;
    temp_59 = fma(temp_45, 0.0 - temp_50, temp_45);
    temp_60 = fma(temp_50, 0.0 - temp_52, temp_50);
    temp_61 = (0.0 - temp_18 < 0.0 ? 1.0 : 0.0 + (temp_18 > 0.0 ? 1.0 : 0.0)) * float(abs(0 - (temp_20 > 0 ? -1 : 0) + 0 - temp_20 >= 0 ? 0 : 1));
    temp_62 = fma(fma(temp_9 + temp_13, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].z, 2.0, _sysEmitterStaticUniformBlock.data[114].z);
    temp_63 = fma(temp_55, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_54, _sysEmitterDynamicUniformBlock.data[4].y, temp_53 * _sysEmitterDynamicUniformBlock.data[4].x)) + _sysEmitterDynamicUniformBlock.data[4].w;
    temp_64 = fma(temp_55, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_54, _sysEmitterDynamicUniformBlock.data[5].y, temp_53 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w;
    temp_65 = fma(temp_55, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_54, _sysEmitterDynamicUniformBlock.data[6].y, temp_53 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w;
    temp_66 = 0.0 - temp_63 + _sysViewUniformBlock.data[17].x;
    temp_67 = 0.0 - temp_64 + _sysViewUniformBlock.data[17].y;
    temp_68 = 0.0 - temp_65 + _sysViewUniformBlock.data[17].z;
    temp_69 = fma(fma(temp_9 + temp_12, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].x, 2.0, _sysEmitterStaticUniformBlock.data[114].x);
    temp_70 = fma(fma(temp_12 + temp_13, 0.5, -0.5) * _sysEmitterStaticUniformBlock.data[115].y, 2.0, _sysEmitterStaticUniformBlock.data[114].y);
    temp_71 = temp_43;
    if (temp_32)
    {
        temp_71 = temp_5;
    }
    temp_72 = inversesqrt(fma(temp_68, temp_68, fma(temp_67, temp_67, temp_66 * temp_66)));
    temp_73 = fma(fma(temp_62 * temp_61, -2.0, temp_62), temp_71, fma(temp_13 + -0.5, _sysEmitterStaticUniformBlock.data[113].z, fma(temp_61 * temp_58, -2.0, temp_58)));
    temp_74 = temp_68 * temp_72;
    temp_75 = temp_66 * temp_72;
    temp_76 = temp_67 * temp_72;
    temp_77 = fma(fma(temp_70 * temp_49, -2.0, temp_70), temp_71, fma(temp_12 + -0.5, _sysEmitterStaticUniformBlock.data[113].y, fma(temp_49 * temp_57, -2.0, temp_57)));
    temp_78 = fma(fma(temp_69 * temp_51, -2.0, temp_69), temp_71, fma(temp_9 + -0.5, _sysEmitterStaticUniformBlock.data[113].x, fma(temp_51 * temp_56, -2.0, temp_56)));
    temp_79 = fma(temp_76, 0.0 - _sysViewUniformBlock.data[1].z, 0.0 - temp_74 * 0.0 - _sysViewUniformBlock.data[1].y);
    temp_80 = fma(temp_74, 0.0 - _sysViewUniformBlock.data[1].x, 0.0 - temp_75 * 0.0 - _sysViewUniformBlock.data[1].z);
    temp_81 = fma(temp_75, 0.0 - _sysViewUniformBlock.data[1].y, 0.0 - temp_76 * 0.0 - _sysViewUniformBlock.data[1].x);
    temp_82 = fma(temp_52, _sysEmitterStaticUniformBlock.data[99].y, fma(fma(temp_31, (0.0 - _sysEmitterStaticUniformBlock.data[98].y + _sysEmitterStaticUniformBlock.data[99].y) * temp_21, _sysEmitterStaticUniformBlock.data[98].y), temp_60, fma(fma((_sysEmitterStaticUniformBlock.data[98].y + 0.0 - _sysEmitterStaticUniformBlock.data[97].y) * temp_19, temp_30, _sysEmitterStaticUniformBlock.data[97].y), temp_59, fma(fma(temp_22, (_sysEmitterStaticUniformBlock.data[97].y + 0.0 - _sysEmitterStaticUniformBlock.data[96].y) * temp_17, _sysEmitterStaticUniformBlock.data[96].y), temp_47, fma(temp_38, 0.0 - _sysEmitterStaticUniformBlock.data[96].y, _sysEmitterStaticUniformBlock.data[96].y))))) * sysScaleAttr.y * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_83 = (clamp(min(0.0, temp_9) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * fma(temp_52, _sysEmitterStaticUniformBlock.data[99].x, fma(fma(temp_31, (0.0 - _sysEmitterStaticUniformBlock.data[98].x + _sysEmitterStaticUniformBlock.data[99].x) * temp_21, _sysEmitterStaticUniformBlock.data[98].x), temp_60, fma(fma((_sysEmitterStaticUniformBlock.data[98].x + 0.0 - _sysEmitterStaticUniformBlock.data[97].x) * temp_19, temp_30, _sysEmitterStaticUniformBlock.data[97].x), temp_59, fma(fma(temp_22, (_sysEmitterStaticUniformBlock.data[97].x + 0.0 - _sysEmitterStaticUniformBlock.data[96].x) * temp_17, _sysEmitterStaticUniformBlock.data[96].x), temp_47, fma(temp_38, 0.0 - _sysEmitterStaticUniformBlock.data[96].x, _sysEmitterStaticUniformBlock.data[96].x))))) * _sysEmitterDynamicUniformBlock.data[3].y * fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_84 = fma(temp_52, _sysEmitterStaticUniformBlock.data[99].z, fma(fma(temp_31, (0.0 - _sysEmitterStaticUniformBlock.data[98].z + _sysEmitterStaticUniformBlock.data[99].z) * temp_21, _sysEmitterStaticUniformBlock.data[98].z), temp_60, fma(fma((_sysEmitterStaticUniformBlock.data[98].z + 0.0 - _sysEmitterStaticUniformBlock.data[97].z) * temp_19, temp_30, _sysEmitterStaticUniformBlock.data[97].z), temp_59, fma(fma(temp_22, (_sysEmitterStaticUniformBlock.data[97].z + 0.0 - _sysEmitterStaticUniformBlock.data[96].z) * temp_17, _sysEmitterStaticUniformBlock.data[96].z), temp_47, fma(temp_38, 0.0 - _sysEmitterStaticUniformBlock.data[96].z, _sysEmitterStaticUniformBlock.data[96].z))))) * sysScaleAttr.z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_85 = cos(temp_78) * sin(temp_77);
    temp_86 = cos(temp_78) * cos(temp_77);
    temp_87 = inversesqrt(fma(temp_81, temp_81, fma(temp_80, temp_80, temp_79 * temp_79)));
    temp_88 = sin(temp_78) * cos(temp_77);
    temp_89 = sin(temp_78) * sin(temp_77);
    temp_90 = temp_80 * temp_87;
    temp_91 = temp_81 * temp_87;
    temp_92 = temp_79 * temp_87;
    temp_93 = fma(cos(temp_73) * sin(temp_77), temp_84, fma(temp_83, cos(temp_73) * cos(temp_77), temp_82 * 0.0 - sin(temp_73)));
    temp_94 = fma(fma(sin(temp_73), temp_85, 0.0 - temp_88), temp_84, fma(temp_83, fma(sin(temp_73), temp_86, temp_89), temp_82 * cos(temp_73) * cos(temp_78)));
    temp_95 = fma(fma(sin(temp_73), temp_89, temp_86), temp_84, fma(temp_83, fma(sin(temp_73), temp_88, 0.0 - temp_85), temp_82 * cos(temp_73) * sin(temp_78)));
    temp_96 = temp_63 + 0.0 + fma(temp_75, temp_95, fma(fma(temp_76, temp_91, 0.0 - temp_74 * temp_90), temp_94, temp_92 * temp_93));
    temp_97 = temp_64 + 0.0 + fma(temp_76, temp_95, fma(fma(temp_74, temp_92, 0.0 - temp_75 * temp_91), temp_94, temp_90 * temp_93));
    temp_98 = temp_65 + 0.0 + fma(temp_74, temp_95, fma(fma(temp_75, temp_90, 0.0 - temp_76 * temp_92), temp_94, temp_91 * temp_93));
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = _sysEmitterStaticUniformBlock.data[68].x * _sysEmitterDynamicUniformBlock.data[0].w;
    gl_Position.x = fma(temp_98, _sysViewUniformBlock.data[8].z, fma(temp_97, _sysViewUniformBlock.data[8].y, temp_96 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    gl_Position.y = fma(temp_98, _sysViewUniformBlock.data[9].z, fma(temp_97, _sysViewUniformBlock.data[9].y, temp_96 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    gl_Position.z = fma(temp_98, _sysViewUniformBlock.data[10].z, fma(temp_97, _sysViewUniformBlock.data[10].y, temp_96 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    gl_Position.w = fma(temp_98, _sysViewUniformBlock.data[11].z, fma(temp_97, _sysViewUniformBlock.data[11].y, temp_96 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    if (0.0 < _sysEmitterStaticUniformBlock.data[8].z)
    {
        temp_99 = fma(temp_9 * _sysEmitterStaticUniformBlock.data[9].w, _sysEmitterStaticUniformBlock.data[8].z, temp_5) * (1.0 / _sysEmitterStaticUniformBlock.data[8].z);
        temp_100 = temp_99 + 0.0 - floor(temp_99);
    }
    else
    {
        temp_100 = temp_5 * (1.0 / temp_6);
    }
    temp_101 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[76].w + _sysEmitterStaticUniformBlock.data[77].w);
    temp_102 = temp_100 >= _sysEmitterStaticUniformBlock.data[76].w ? 1.0 : 0.0;
    temp_103 = temp_100 >= _sysEmitterStaticUniformBlock.data[77].w ? 1.0 : 0.0;
    temp_104 = sysTexCoordAttr.x;
    temp_105 = sysTexCoordAttr.y;
    temp_106 = temp_100 + 0.0 - _sysEmitterStaticUniformBlock.data[76].w;
    temp_107 = fma(temp_102, 0.0 - temp_103, temp_102);
    temp_108 = temp_105;
    temp_109 = temp_104;
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(temp_12 > 0.5) ? -1 : 0)) != 0))
    {
        temp_108 = 0.0 - temp_105 + 1.0;
    }
    out_attr4.x = 1.0;
    out_attr4.y = 1.0;
    out_attr4.z = 1.0;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_9 > 0.5) ? -1 : 0)) != 0))
    {
        temp_109 = 0.0 - temp_104 + 1.0;
    }
    out_attr3.x = _sysEmitterDynamicUniformBlock.data[3].x;
    out_attr2.x = temp_109 * _sysEmitterStaticUniformBlock.data[48].x * (1.0 / _sysEmitterStaticUniformBlock.data[48].z);
    out_attr2.y = temp_108 * _sysEmitterStaticUniformBlock.data[48].y * (1.0 / _sysEmitterStaticUniformBlock.data[48].w);
    out_attr1.x = fma(temp_103, _sysEmitterStaticUniformBlock.data[77].x, fma(fma(temp_106, (_sysEmitterStaticUniformBlock.data[77].x + 0.0 - _sysEmitterStaticUniformBlock.data[76].x) * temp_101, _sysEmitterStaticUniformBlock.data[76].x), temp_107, fma(temp_102, 0.0 - _sysEmitterStaticUniformBlock.data[76].x, _sysEmitterStaticUniformBlock.data[76].x))) * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = fma(temp_103, _sysEmitterStaticUniformBlock.data[77].y, fma(fma(temp_106, (_sysEmitterStaticUniformBlock.data[77].y + 0.0 - _sysEmitterStaticUniformBlock.data[76].y) * temp_101, _sysEmitterStaticUniformBlock.data[76].y), temp_107, fma(temp_102, 0.0 - _sysEmitterStaticUniformBlock.data[76].y, _sysEmitterStaticUniformBlock.data[76].y))) * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = fma(temp_103, _sysEmitterStaticUniformBlock.data[77].z, fma(fma(temp_106, (_sysEmitterStaticUniformBlock.data[77].z + 0.0 - _sysEmitterStaticUniformBlock.data[76].z) * temp_101, _sysEmitterStaticUniformBlock.data[76].z), temp_107, fma(temp_102, 0.0 - _sysEmitterStaticUniformBlock.data[76].z, _sysEmitterStaticUniformBlock.data[76].z))) * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    break;
} while (false);
}
