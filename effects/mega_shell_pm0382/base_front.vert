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
layout (location = 1) in vec4 sysNormalAttr;
layout (location = 2) in vec4 sysLocalPosAttr;
layout (location = 3) in vec4 sysLocalVecAttr;
layout (location = 4) in vec4 sysScaleAttr;
layout (location = 5) in vec4 sysRandomAttr;

layout (location = 0) out vec4 out_attr0;
layout (location = 1) out vec4 out_attr1;
layout (location = 2) out vec4 out_attr2;
layout (location = 3) out vec4 out_attr3;
layout (location = 4) out vec4 out_attr4;
layout (location = 5) out vec4 out_attr5;


void main() { do
{
    precise float temp_0;
    bool temp_1;
    precise float temp_2;
    int temp_3;
    int temp_4;
    precise float temp_5;
    bool temp_6;
    precise float temp_7;
    precise float temp_8;
    precise float temp_9;
    precise float temp_10;
    precise float temp_11;
    bool temp_12;
    precise float temp_13;
    precise float temp_14;
    precise float temp_15;
    precise float temp_16;
    bool temp_17;
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
    bool temp_28;
    precise float temp_29;
    bool temp_30;
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
    gl_Position.x = 0.0;
    gl_Position.y = 0.0;
    gl_Position.z = 0.0;
    gl_Position.w = 1.0;
    temp_0 = sysLocalVecAttr.w;
    temp_1 = temp_0 > _sysEmitterDynamicUniformBlock.data[2].x;
    if (temp_1)
    {
        out_attr4.x = 0.0;
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
    temp_6 = temp_5 >= float(int(trunc(sysLocalPosAttr.w)));
    if (temp_6)
    {
        out_attr4.x = 0.0;
    }
    temp_7 = intBitsToFloat(undef);
    if (temp_6)
    {
        temp_7 = _sysViewUniformBlock.data[18].y;
    }
    if (temp_6)
    {
        temp_4 = floatBitsToInt(temp_7 * 5.0);
    }
    if (temp_6)
    {
        gl_Position.x = 0.0;
        gl_Position.y = 0.0;
        gl_Position.z = intBitsToFloat(temp_4);
    }
    if (!(!temp_6))
    {
        break;
    }
    temp_8 = sysRandomAttr.x;
    temp_9 = sysLocalVecAttr.z;
    temp_10 = fma(_sysEmitterDynamicUniformBlock.data[8].z, _sysEmitterDynamicUniformBlock.data[8].z, fma(_sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].y, _sysEmitterDynamicUniformBlock.data[8].x * _sysEmitterDynamicUniformBlock.data[8].x));
    temp_11 = sysScaleAttr.w;
    temp_12 = _sysEmitterStaticUniformBlock.data[12].x == 1.0;
    temp_13 = sysScaleAttr.y * _sysEmitterStaticUniformBlock.data[96].y;
    temp_14 = fma(_sysEmitterDynamicUniformBlock.data[9].z, _sysEmitterDynamicUniformBlock.data[9].z, fma(_sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].y, _sysEmitterDynamicUniformBlock.data[9].x * _sysEmitterDynamicUniformBlock.data[9].x));
    temp_15 = fma(_sysEmitterDynamicUniformBlock.data[10].z, _sysEmitterDynamicUniformBlock.data[10].z, fma(_sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].y, _sysEmitterDynamicUniformBlock.data[10].x * _sysEmitterDynamicUniformBlock.data[10].x));
    temp_16 = fma(0.5, _sysEmitterStaticUniformBlock.data[13].x, sysPosAttr.x);
    temp_17 = sqrt(temp_10) > 0.0;
    temp_18 = temp_5 + _sysEmitterDynamicUniformBlock.data[2].w;
    temp_19 = sysScaleAttr.z * _sysEmitterStaticUniformBlock.data[96].z * _sysEmitterDynamicUniformBlock.data[3].w * sysPosAttr.z;
    temp_20 = temp_10;
    temp_21 = temp_14;
    temp_22 = temp_13;
    temp_23 = temp_16;
    temp_24 = temp_18;
    temp_25 = temp_15;
    temp_26 = _sysEmitterStaticUniformBlock.data[12].x;
    temp_27 = temp_9;
    if (temp_17)
    {
        temp_20 = inversesqrt(temp_10);
    }
    temp_28 = sqrt(temp_14) > 0.0;
    temp_29 = (clamp(min(0.0, temp_8) + -0.0, 0.0, 1.0) + sysScaleAttr.x) * _sysEmitterStaticUniformBlock.data[96].x;
    temp_30 = sqrt(temp_15) > 0.0;
    temp_31 = sysNormalAttr.x;
    temp_32 = sysNormalAttr.y;
    temp_33 = sysNormalAttr.z;
    temp_34 = intBitsToFloat(undef);
    temp_35 = temp_29;
    if (temp_12)
    {
        temp_34 = temp_18 * temp_18;
    }
    temp_36 = temp_13 * _sysEmitterDynamicUniformBlock.data[3].z * fma(0.5, _sysEmitterStaticUniformBlock.data[13].y, sysPosAttr.y);
    temp_37 = temp_29 * _sysEmitterDynamicUniformBlock.data[3].y;
    temp_38 = temp_34;
    temp_39 = temp_37;
    if (temp_28)
    {
        temp_21 = inversesqrt(temp_14);
    }
    temp_40 = temp_21;
    if (temp_12)
    {
        temp_22 = temp_34 * _sysEmitterStaticUniformBlock.data[11].w;
    }
    temp_41 = temp_37 * temp_16;
    temp_42 = temp_22;
    if (temp_12)
    {
        temp_38 = temp_22 * 0.5 * _sysEmitterStaticUniformBlock.data[11].y;
    }
    temp_43 = temp_38;
    if (temp_12)
    {
        temp_35 = temp_22 * 0.5 * _sysEmitterStaticUniformBlock.data[11].z;
    }
    temp_44 = temp_35;
    if (temp_12)
    {
        temp_23 = temp_22 * 0.5 * _sysEmitterStaticUniformBlock.data[11].x;
    }
    temp_45 = temp_23;
    if (!temp_12)
    {
        temp_46 = 1.0 / log2(_sysEmitterStaticUniformBlock.data[12].x);
        temp_47 = temp_46 * 1.44269502;
        temp_48 = (temp_18 + 0.0 - fma(temp_47, exp2(temp_18 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x))), 0.0 - temp_47)) * (1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0)) * _sysEmitterStaticUniformBlock.data[11].w;
        temp_43 = temp_48 * _sysEmitterStaticUniformBlock.data[11].y;
        temp_44 = temp_48 * _sysEmitterStaticUniformBlock.data[11].z;
        temp_45 = temp_48 * _sysEmitterStaticUniformBlock.data[11].x;
        temp_39 = temp_46;
        temp_42 = temp_48;
    }
    temp_49 = temp_39;
    temp_50 = temp_42;
    temp_51 = temp_43;
    if (!temp_12)
    {
        temp_52 = temp_18 * log2(abs(_sysEmitterStaticUniformBlock.data[12].x));
        temp_53 = 1.0 / (0.0 - _sysEmitterStaticUniformBlock.data[12].x + 1.0);
        temp_24 = fma(exp2(temp_52), 0.0 - temp_53, temp_53);
        temp_49 = temp_53;
        temp_50 = temp_52;
    }
    temp_54 = temp_49;
    temp_55 = temp_50;
    if (temp_17)
    {
        temp_54 = temp_20 * _sysEmitterDynamicUniformBlock.data[8].x;
    }
    temp_56 = temp_54;
    if (temp_30)
    {
        temp_25 = inversesqrt(temp_15);
    }
    temp_57 = temp_25;
    if (temp_17)
    {
        temp_26 = temp_20 * _sysEmitterDynamicUniformBlock.data[10].x;
    }
    temp_58 = temp_26;
    if (temp_17)
    {
        temp_55 = temp_20 * _sysEmitterDynamicUniformBlock.data[9].x;
    }
    temp_59 = temp_55;
    if (!temp_17)
    {
        temp_56 = 0.0;
    }
    if (!temp_17)
    {
        temp_58 = 0.0;
    }
    if (!temp_17)
    {
        temp_59 = 0.0;
    }
    if (temp_28)
    {
        temp_51 = temp_21 * _sysEmitterDynamicUniformBlock.data[8].y;
    }
    temp_60 = temp_51;
    if (temp_28)
    {
        temp_27 = temp_21 * _sysEmitterDynamicUniformBlock.data[9].y;
    }
    temp_61 = fma(fma(temp_24, sysLocalVecAttr.x, temp_45), temp_11, sysLocalPosAttr.x);
    temp_62 = temp_27;
    if (temp_28)
    {
        temp_40 = temp_21 * _sysEmitterDynamicUniformBlock.data[10].y;
    }
    temp_63 = temp_40;
    if (!temp_28)
    {
        temp_60 = 0.0;
    }
    if (!temp_28)
    {
        temp_63 = 0.0;
    }
    temp_64 = temp_59 * temp_31;
    temp_65 = temp_64;
    if (!temp_28)
    {
        temp_62 = 0.0;
    }
    temp_66 = fma(fma(temp_24, sysLocalVecAttr.y, temp_43), temp_11, sysLocalPosAttr.y);
    temp_67 = fma(fma(temp_24, temp_9, temp_44), temp_11, sysLocalPosAttr.z);
    temp_68 = temp_61 * _sysEmitterDynamicUniformBlock.data[4].x;
    temp_69 = temp_68;
    if (temp_30)
    {
        temp_65 = temp_25 * _sysEmitterDynamicUniformBlock.data[8].z;
    }
    temp_70 = temp_65;
    if (!temp_30)
    {
        temp_70 = 0.0;
    }
    if (temp_30)
    {
        temp_69 = temp_25 * _sysEmitterDynamicUniformBlock.data[10].z;
    }
    temp_71 = temp_69;
    if (temp_30)
    {
        temp_57 = temp_25 * _sysEmitterDynamicUniformBlock.data[9].z;
    }
    temp_72 = temp_57;
    if (!temp_30)
    {
        temp_71 = 0.0;
    }
    if (!temp_30)
    {
        temp_72 = 0.0;
    }
    temp_73 = fma(temp_67, _sysEmitterDynamicUniformBlock.data[4].z, fma(temp_66, _sysEmitterDynamicUniformBlock.data[4].y, temp_68)) + _sysEmitterDynamicUniformBlock.data[4].w;
    temp_74 = fma(temp_67, _sysEmitterDynamicUniformBlock.data[5].z, fma(temp_66, _sysEmitterDynamicUniformBlock.data[5].y, temp_61 * _sysEmitterDynamicUniformBlock.data[5].x)) + _sysEmitterDynamicUniformBlock.data[5].w;
    temp_75 = temp_73 + fma(temp_19, temp_70, fma(temp_36, temp_60, temp_41 * temp_56));
    temp_76 = fma(0.0, temp_73, fma(temp_70, temp_33, fma(temp_60, temp_32, temp_56 * temp_31)));
    temp_77 = fma(temp_67, _sysEmitterDynamicUniformBlock.data[6].z, fma(temp_66, _sysEmitterDynamicUniformBlock.data[6].y, temp_61 * _sysEmitterDynamicUniformBlock.data[6].x)) + _sysEmitterDynamicUniformBlock.data[6].w;
    temp_78 = fma(0.0, temp_74, fma(temp_72, temp_33, fma(temp_62, temp_32, temp_64)));
    temp_79 = temp_74 + fma(temp_19, temp_72, fma(temp_36, temp_62, temp_41 * temp_59));
    temp_80 = fma(0.0, temp_77, fma(temp_71, temp_33, fma(temp_63, temp_32, temp_58 * temp_31)));
    temp_81 = temp_77 + fma(temp_19, temp_71, fma(temp_36, temp_63, temp_41 * temp_58));
    temp_82 = fma(temp_81, _sysViewUniformBlock.data[0].z, fma(temp_79, _sysViewUniformBlock.data[0].y, temp_75 * _sysViewUniformBlock.data[0].x)) + _sysViewUniformBlock.data[0].w;
    temp_83 = fma(0.0, _sysViewUniformBlock.data[0].w, fma(temp_80, _sysViewUniformBlock.data[0].z, fma(temp_78, _sysViewUniformBlock.data[0].y, temp_76 * _sysViewUniformBlock.data[0].x)));
    temp_84 = fma(0.0, _sysViewUniformBlock.data[1].w, fma(temp_80, _sysViewUniformBlock.data[1].z, fma(temp_78, _sysViewUniformBlock.data[1].y, temp_76 * _sysViewUniformBlock.data[1].x)));
    temp_85 = fma(temp_81, _sysViewUniformBlock.data[1].z, fma(temp_79, _sysViewUniformBlock.data[1].y, temp_75 * _sysViewUniformBlock.data[1].x)) + _sysViewUniformBlock.data[1].w;
    temp_86 = fma(0.0, _sysViewUniformBlock.data[2].w, fma(temp_80, _sysViewUniformBlock.data[2].z, fma(temp_78, _sysViewUniformBlock.data[2].y, temp_76 * _sysViewUniformBlock.data[2].x)));
    temp_87 = fma(temp_81, _sysViewUniformBlock.data[2].z, fma(temp_79, _sysViewUniformBlock.data[2].y, temp_75 * _sysViewUniformBlock.data[2].x)) + _sysViewUniformBlock.data[2].w;
    out_attr4.x = _sysEmitterDynamicUniformBlock.data[3].x;
    temp_88 = inversesqrt(fma(temp_87, temp_87, fma(temp_85, temp_85, temp_82 * temp_82)));
    temp_89 = inversesqrt(fma(temp_86, temp_86, fma(temp_84, temp_84, temp_83 * temp_83)));
    temp_90 = temp_82 * temp_88;
    temp_91 = temp_85 * temp_88;
    temp_92 = temp_83 * temp_89;
    temp_93 = temp_84 * temp_89;
    temp_94 = temp_87 * temp_88;
    temp_95 = clamp(max(temp_86 * temp_89, 0.2) + -0.0, 0.0, 1.0);
    temp_96 = fma(temp_94, temp_95, fma(temp_93, temp_91, temp_92 * temp_90));
    temp_97 = fma(temp_92 * temp_96, -2.0, temp_90);
    temp_98 = fma(temp_93 * temp_96, -2.0, temp_91);
    temp_99 = 1.0 / (sqrt(fma(fma(temp_95 * temp_96, -2.0, temp_94) + 1.0, fma(temp_95 * temp_96, -2.0, temp_94) + 1.0, fma(0.0 + temp_98, 0.0 + temp_98, (0.0 + temp_97) * (0.0 + temp_97)))) * 2.0);
    temp_100 = fma(temp_97, temp_99, 0.5);
    temp_101 = fma(temp_81, _sysViewUniformBlock.data[9].z, fma(temp_79, _sysViewUniformBlock.data[9].y, temp_75 * _sysViewUniformBlock.data[9].x)) + _sysViewUniformBlock.data[9].w;
    temp_102 = fma(temp_98, 0.0 - temp_99, 0.5);
    temp_103 = fma(temp_81, _sysViewUniformBlock.data[8].z, fma(temp_79, _sysViewUniformBlock.data[8].y, temp_75 * _sysViewUniformBlock.data[8].x)) + _sysViewUniformBlock.data[8].w;
    temp_104 = temp_100;
    temp_105 = temp_102;
    if (!(((!((0x80000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(7.34684E-40)) || !(temp_8 > 0.5) ? -1 : 0)) != 0))
    {
        temp_104 = 0.0 - temp_100 + 1.0;
    }
    if (!(((!((0x100000 & floatBitsToInt(_sysEmitterStaticUniformBlock.data[5].x)) == floatBitsToInt(1.469368E-39)) || !(sysRandomAttr.y > 0.5) ? -1 : 0)) != 0))
    {
        temp_105 = 0.0 - temp_102 + 1.0;
    }
    temp_106 = fma(temp_81, _sysViewUniformBlock.data[10].z, fma(temp_79, _sysViewUniformBlock.data[10].y, temp_75 * _sysViewUniformBlock.data[10].x)) + _sysViewUniformBlock.data[10].w;
    temp_107 = fma(0.0, temp_103, 0.0 * temp_101);
    out_attr0.x = _sysEmitterStaticUniformBlock.data[60].x * _sysEmitterDynamicUniformBlock.data[0].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.y = _sysEmitterStaticUniformBlock.data[60].y * _sysEmitterDynamicUniformBlock.data[0].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.z = _sysEmitterStaticUniformBlock.data[60].z * _sysEmitterDynamicUniformBlock.data[0].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr0.w = _sysEmitterStaticUniformBlock.data[68].x * _sysEmitterDynamicUniformBlock.data[0].w;
    temp_108 = fma(temp_81, _sysViewUniformBlock.data[11].z, fma(temp_79, _sysViewUniformBlock.data[11].y, temp_75 * _sysViewUniformBlock.data[11].x)) + _sysViewUniformBlock.data[11].w;
    gl_Position.x = temp_103;
    gl_Position.y = temp_101;
    gl_Position.z = temp_106;
    gl_Position.w = temp_108;
    out_attr1.x = _sysEmitterStaticUniformBlock.data[76].x * _sysEmitterDynamicUniformBlock.data[1].x * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.y = _sysEmitterStaticUniformBlock.data[76].y * _sysEmitterDynamicUniformBlock.data[1].y * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr1.z = _sysEmitterStaticUniformBlock.data[76].z * _sysEmitterDynamicUniformBlock.data[1].z * _sysEmitterStaticUniformBlock.data[59].x;
    out_attr5.x = 1.0;
    out_attr5.y = 1.0;
    out_attr5.z = 1.0;
    out_attr3.z = fma(0.0, temp_108, temp_107 + temp_106);
    out_attr3.w = temp_108 + fma(0.0, temp_106, temp_107);
    out_attr2.x = temp_104 * _sysEmitterStaticUniformBlock.data[48].x * (1.0 / _sysEmitterStaticUniformBlock.data[48].z);
    out_attr2.y = temp_105 * _sysEmitterStaticUniformBlock.data[48].y * (1.0 / _sysEmitterStaticUniformBlock.data[48].w);
    break;
} while (false);
}
