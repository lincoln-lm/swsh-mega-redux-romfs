#version 450 core
#extension GL_ARB_gpu_shader_int64 : enable
#extension GL_ARB_shader_ballot : enable
#extension GL_ARB_shader_group_vote : enable
#extension GL_EXT_shader_image_load_formatted : enable
#extension GL_EXT_texture_shadow_lod : enable
#extension GL_ARB_shader_draw_parameters : enable
#extension GL_ARB_shader_viewport_layer_array : enable
#pragma optionNV(fastmath off)

layout (binding = 0, std140) uniform worldViewProjConstant
{
    mat4 view_projection_mat;
    mat4 world_mat;
    mat4 world_view_projection_mat;
    mat4 view_mat;
};

layout (binding = 1, std140) uniform JointMatrixVS
{
    mat4 cBoneMatrices[150];
};

layout (location = 0) in vec4 IN_Position;
layout (location = 1) in vec4 IN_Normal;
layout (location = 3) in vec2 IN_map1;
layout (location = 7) in ivec4 IN_colorSet1;
layout (location = 8) in ivec4 IN_colorSet2;
layout (location = 11) in ivec4 IN_BoneIndices;
layout (location = 12) in vec4 IN_BoneWeights;

layout (location = 1) out vec4 OUT_MtxRow0;
layout (location = 2) out vec4 OUT_MtxRow1;
layout (location = 3) out vec4 OUT_MtxRow2;
layout (location = 4) out vec4 OUT_Normal;
layout (location = 5) out vec4 OUT_ClipPosition;
layout (location = 6) out vec4 OUT_WorldPosition;
layout (location = 7) out vec4 OUT_colorSet1;
layout (location = 8) out vec4 OUT_colorSet2;
layout (location = 9) out vec4 OUT_map1;

// TODO: find a better way than replacing constants
const float cYOffset = 0.0;
const float cScale = 1.0;

void main()
{
    gl_PointSize = 1.0;
    gl_Position = vec4(0.0, 0.0, 0.0, 1.0);
    OUT_MtxRow0 = vec4(0.0);
    OUT_MtxRow1 = vec4(0.0);
    OUT_MtxRow2 = vec4(0.0);
    OUT_Normal = vec4(0.0);
    OUT_ClipPosition = vec4(0.0, 0.0, 0.0, 1.0);
    OUT_WorldPosition = vec4(0.0, 0.0, 0.0, 0.0);
    OUT_colorSet1 = vec4(0.0, 0.0, 0.0, 1.0);
    OUT_colorSet2 = vec4(0.0);
    OUT_map1 = vec4(0.0);
    
    OUT_map1.xy = IN_map1.xy;

    vec3 norm = IN_Normal.xyz;

    vec3 skinned_norm = vec3(0.0);
    skinned_norm += mat3(cBoneMatrices[IN_BoneIndices.x]) * norm * IN_BoneWeights.x;
    skinned_norm += mat3(cBoneMatrices[IN_BoneIndices.y]) * norm * IN_BoneWeights.y;
    skinned_norm += mat3(cBoneMatrices[IN_BoneIndices.z]) * norm * IN_BoneWeights.z;
    skinned_norm += mat3(cBoneMatrices[IN_BoneIndices.w]) * norm * IN_BoneWeights.w;

    OUT_Normal.xyz = normalize(mat3(world_mat) * skinned_norm);
    OUT_Normal.w = 1.0;

    vec4 pos = vec4(IN_Position.xyz, 1.0);
    vec4 skinned_pos = vec4(0.0);
    skinned_pos += cBoneMatrices[IN_BoneIndices.x] * pos * IN_BoneWeights.x;
    skinned_pos += cBoneMatrices[IN_BoneIndices.y] * pos * IN_BoneWeights.y;
    skinned_pos += cBoneMatrices[IN_BoneIndices.z] * pos * IN_BoneWeights.z;
    skinned_pos += cBoneMatrices[IN_BoneIndices.w] * pos * IN_BoneWeights.w;
    skinned_pos.xyz *= cScale;
    skinned_pos.y += cYOffset;
    OUT_ClipPosition = world_view_projection_mat * skinned_pos;
    OUT_WorldPosition = world_mat * skinned_pos;
    gl_Position = OUT_ClipPosition;
}
