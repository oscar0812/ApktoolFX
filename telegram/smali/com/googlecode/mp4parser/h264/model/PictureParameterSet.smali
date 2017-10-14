.class public Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;
.super Lcom/googlecode/mp4parser/h264/model/BitstreamElement;
.source "PictureParameterSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;
    }
.end annotation


# instance fields
.field public bottom_field_pic_order_in_frame_present_flag:Z

.field public bottom_right:[I

.field public chroma_qp_index_offset:I

.field public constrained_intra_pred_flag:Z

.field public deblocking_filter_control_present_flag:Z

.field public entropy_coding_mode_flag:Z

.field public extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

.field public num_ref_idx_l0_active_minus1:I

.field public num_ref_idx_l1_active_minus1:I

.field public num_slice_groups_minus1:I

.field public pic_init_qp_minus26:I

.field public pic_init_qs_minus26:I

.field public pic_parameter_set_id:I

.field public redundant_pic_cnt_present_flag:Z

.field public run_length_minus1:[I

.field public seq_parameter_set_id:I

.field public slice_group_change_direction_flag:Z

.field public slice_group_change_rate_minus1:I

.field public slice_group_id:[I

.field public slice_group_map_type:I

.field public top_left:[I

.field public weighted_bipred_idc:I

.field public weighted_pred_flag:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/googlecode/mp4parser/h264/model/BitstreamElement;-><init>()V

    return-void
.end method

.method public static read(Ljava/io/InputStream;)Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;
    .locals 14
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x6

    const/4 v10, 0x4

    const/4 v11, 0x2

    .line 87
    new-instance v7, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;

    invoke-direct {v7, p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;-><init>(Ljava/io/InputStream;)V

    .line 88
    .local v7, "reader":Lcom/googlecode/mp4parser/h264/read/CAVLCReader;
    new-instance v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    invoke-direct {v6}, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;-><init>()V

    .line 90
    .local v6, "pps":Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;
    const-string/jumbo v8, "PPS: pic_parameter_set_id"

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->pic_parameter_set_id:I

    .line 91
    const-string/jumbo v8, "PPS: seq_parameter_set_id"

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->seq_parameter_set_id:I

    .line 93
    const-string/jumbo v8, "PPS: entropy_coding_mode_flag"

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v8

    .line 92
    iput-boolean v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->entropy_coding_mode_flag:Z

    .line 95
    const-string/jumbo v8, "PPS: pic_order_present_flag"

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v8

    .line 94
    iput-boolean v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->bottom_field_pic_order_in_frame_present_flag:Z

    .line 97
    const-string/jumbo v8, "PPS: num_slice_groups_minus1"

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v8

    .line 96
    iput v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_slice_groups_minus1:I

    .line 98
    iget v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_slice_groups_minus1:I

    if-lez v8, :cond_0

    .line 100
    const-string/jumbo v8, "PPS: slice_group_map_type"

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v8

    .line 99
    iput v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_map_type:I

    .line 101
    iget v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_slice_groups_minus1:I

    add-int/lit8 v8, v8, 0x1

    new-array v8, v8, [I

    iput-object v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->top_left:[I

    .line 102
    iget v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_slice_groups_minus1:I

    add-int/lit8 v8, v8, 0x1

    new-array v8, v8, [I

    iput-object v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->bottom_right:[I

    .line 103
    iget v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_slice_groups_minus1:I

    add-int/lit8 v8, v8, 0x1

    new-array v8, v8, [I

    iput-object v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->run_length_minus1:[I

    .line 104
    iget v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_map_type:I

    if-nez v8, :cond_4

    .line 105
    const/4 v2, 0x0

    .local v2, "iGroup":I
    :goto_0
    iget v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_slice_groups_minus1:I

    if-le v2, v8, :cond_3

    .line 140
    .end local v2    # "iGroup":I
    :cond_0
    :goto_1
    const-string/jumbo v8, "PPS: num_ref_idx_l0_active_minus1"

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v8

    .line 139
    iput v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_ref_idx_l0_active_minus1:I

    .line 142
    const-string/jumbo v8, "PPS: num_ref_idx_l1_active_minus1"

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v8

    .line 141
    iput v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_ref_idx_l1_active_minus1:I

    .line 143
    const-string/jumbo v8, "PPS: weighted_pred_flag"

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->weighted_pred_flag:Z

    .line 145
    const-string/jumbo v8, "PPS: weighted_bipred_idc"

    .line 144
    invoke-virtual {v7, v11, v8}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v8

    long-to-int v8, v8

    iput v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->weighted_bipred_idc:I

    .line 146
    const-string/jumbo v8, "PPS: pic_init_qp_minus26"

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readSE(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->pic_init_qp_minus26:I

    .line 147
    const-string/jumbo v8, "PPS: pic_init_qs_minus26"

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readSE(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->pic_init_qs_minus26:I

    .line 149
    const-string/jumbo v8, "PPS: chroma_qp_index_offset"

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readSE(Ljava/lang/String;)I

    move-result v8

    .line 148
    iput v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->chroma_qp_index_offset:I

    .line 151
    const-string/jumbo v8, "PPS: deblocking_filter_control_present_flag"

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v8

    .line 150
    iput-boolean v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->deblocking_filter_control_present_flag:Z

    .line 153
    const-string/jumbo v8, "PPS: constrained_intra_pred_flag"

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v8

    .line 152
    iput-boolean v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->constrained_intra_pred_flag:Z

    .line 155
    const-string/jumbo v8, "PPS: redundant_pic_cnt_present_flag"

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v8

    .line 154
    iput-boolean v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->redundant_pic_cnt_present_flag:Z

    .line 156
    invoke-virtual {v7}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->moreRBSPData()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 157
    new-instance v8, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    invoke-direct {v8}, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;-><init>()V

    iput-object v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    .line 158
    iget-object v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    .line 159
    const-string/jumbo v9, "PPS: transform_8x8_mode_flag"

    invoke-virtual {v7, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v9

    .line 158
    iput-boolean v9, v8, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;->transform_8x8_mode_flag:Z

    .line 161
    const-string/jumbo v8, "PPS: pic_scaling_matrix_present_flag"

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v4

    .line 162
    .local v4, "pic_scaling_matrix_present_flag":Z
    if-eqz v4, :cond_1

    .line 163
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    iget-boolean v8, v8, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;->transform_8x8_mode_flag:Z

    if-eqz v8, :cond_d

    const/4 v8, 0x1

    .line 164
    :goto_3
    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x6

    .line 163
    if-lt v1, v8, :cond_a

    .line 180
    .end local v1    # "i":I
    :cond_1
    iget-object v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    .line 181
    const-string/jumbo v9, "PPS: second_chroma_qp_index_offset"

    invoke-virtual {v7, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readSE(Ljava/lang/String;)I

    move-result v9

    .line 180
    iput v9, v8, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;->second_chroma_qp_index_offset:I

    .line 184
    .end local v4    # "pic_scaling_matrix_present_flag":Z
    :cond_2
    invoke-virtual {v7}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readTrailingBits()V

    .line 186
    return-object v6

    .line 106
    .restart local v2    # "iGroup":I
    :cond_3
    iget-object v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->run_length_minus1:[I

    .line 107
    const-string/jumbo v9, "PPS: run_length_minus1"

    invoke-virtual {v7, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v9

    .line 106
    aput v9, v8, v2

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 108
    .end local v2    # "iGroup":I
    :cond_4
    iget v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_map_type:I

    if-ne v8, v11, :cond_5

    .line 109
    const/4 v2, 0x0

    .restart local v2    # "iGroup":I
    :goto_4
    iget v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_slice_groups_minus1:I

    if-ge v2, v8, :cond_0

    .line 110
    iget-object v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->top_left:[I

    const-string/jumbo v9, "PPS: top_left"

    invoke-virtual {v7, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v2

    .line 111
    iget-object v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->bottom_right:[I

    .line 112
    const-string/jumbo v9, "PPS: bottom_right"

    invoke-virtual {v7, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v9

    .line 111
    aput v9, v8, v2

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 114
    .end local v2    # "iGroup":I
    :cond_5
    iget v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_map_type:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_6

    .line 115
    iget v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_map_type:I

    if-eq v8, v10, :cond_6

    .line 116
    iget v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_map_type:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_7

    .line 118
    :cond_6
    const-string/jumbo v8, "PPS: slice_group_change_direction_flag"

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v8

    .line 117
    iput-boolean v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_change_direction_flag:Z

    .line 120
    const-string/jumbo v8, "PPS: slice_group_change_rate_minus1"

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v8

    .line 119
    iput v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_change_rate_minus1:I

    goto/16 :goto_1

    .line 121
    :cond_7
    iget v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_map_type:I

    if-ne v8, v12, :cond_0

    .line 123
    iget v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_slice_groups_minus1:I

    add-int/lit8 v8, v8, 0x1

    if-le v8, v10, :cond_8

    .line 124
    const/4 v0, 0x3

    .line 130
    .local v0, "NumberBitsPerSliceGroupId":I
    :goto_5
    const-string/jumbo v8, "PPS: pic_size_in_map_units_minus1"

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v5

    .line 131
    .local v5, "pic_size_in_map_units_minus1":I
    add-int/lit8 v8, v5, 0x1

    new-array v8, v8, [I

    iput-object v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_id:[I

    .line 132
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-gt v1, v5, :cond_0

    .line 133
    iget-object v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_id:[I

    .line 134
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "PPS: slice_group_id ["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]f"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 133
    invoke-virtual {v7, v0, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v9

    aput v9, v8, v1

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 125
    .end local v0    # "NumberBitsPerSliceGroupId":I
    .end local v1    # "i":I
    .end local v5    # "pic_size_in_map_units_minus1":I
    :cond_8
    iget v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_slice_groups_minus1:I

    add-int/lit8 v8, v8, 0x1

    if-le v8, v11, :cond_9

    .line 126
    const/4 v0, 0x2

    .restart local v0    # "NumberBitsPerSliceGroupId":I
    goto :goto_5

    .line 128
    .end local v0    # "NumberBitsPerSliceGroupId":I
    :cond_9
    const/4 v0, 0x1

    .restart local v0    # "NumberBitsPerSliceGroupId":I
    goto :goto_5

    .line 166
    .end local v0    # "NumberBitsPerSliceGroupId":I
    .restart local v1    # "i":I
    .restart local v4    # "pic_scaling_matrix_present_flag":Z
    :cond_a
    const-string/jumbo v8, "PPS: pic_scaling_list_present_flag"

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v3

    .line 167
    .local v3, "pic_scaling_list_present_flag":Z
    if-eqz v3, :cond_b

    .line 168
    iget-object v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    iget-object v8, v8, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;->scalindMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    new-array v9, v13, [Lcom/googlecode/mp4parser/h264/model/ScalingList;

    iput-object v9, v8, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;->ScalingList4x4:[Lcom/googlecode/mp4parser/h264/model/ScalingList;

    .line 169
    iget-object v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    iget-object v8, v8, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;->scalindMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    new-array v9, v13, [Lcom/googlecode/mp4parser/h264/model/ScalingList;

    iput-object v9, v8, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;->ScalingList8x8:[Lcom/googlecode/mp4parser/h264/model/ScalingList;

    .line 170
    if-ge v1, v12, :cond_c

    .line 171
    iget-object v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    iget-object v8, v8, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;->scalindMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    iget-object v8, v8, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;->ScalingList4x4:[Lcom/googlecode/mp4parser/h264/model/ScalingList;

    .line 172
    const/16 v9, 0x10

    invoke-static {v7, v9}, Lcom/googlecode/mp4parser/h264/model/ScalingList;->read(Lcom/googlecode/mp4parser/h264/read/CAVLCReader;I)Lcom/googlecode/mp4parser/h264/model/ScalingList;

    move-result-object v9

    .line 171
    aput-object v9, v8, v1

    .line 164
    :cond_b
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 174
    :cond_c
    iget-object v8, v6, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    iget-object v8, v8, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;->scalindMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    iget-object v8, v8, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;->ScalingList8x8:[Lcom/googlecode/mp4parser/h264/model/ScalingList;

    add-int/lit8 v9, v1, -0x6

    .line 175
    const/16 v10, 0x40

    invoke-static {v7, v10}, Lcom/googlecode/mp4parser/h264/model/ScalingList;->read(Lcom/googlecode/mp4parser/h264/read/CAVLCReader;I)Lcom/googlecode/mp4parser/h264/model/ScalingList;

    move-result-object v10

    .line 174
    aput-object v10, v8, v9

    goto :goto_7

    .line 164
    .end local v3    # "pic_scaling_list_present_flag":Z
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_3
.end method

.method public static read([B)Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;
    .locals 1
    .param p0, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->read(Ljava/io/InputStream;)Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 319
    if-ne p0, p1, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v1

    .line 321
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 322
    goto :goto_0

    .line 323
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 324
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 325
    check-cast v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    .line 326
    .local v0, "other":Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;
    iget-object v3, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->bottom_right:[I

    iget-object v4, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->bottom_right:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 327
    goto :goto_0

    .line 328
    :cond_4
    iget v3, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->chroma_qp_index_offset:I

    iget v4, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->chroma_qp_index_offset:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 329
    goto :goto_0

    .line 330
    :cond_5
    iget-boolean v3, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->constrained_intra_pred_flag:Z

    iget-boolean v4, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->constrained_intra_pred_flag:Z

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 331
    goto :goto_0

    .line 332
    :cond_6
    iget-boolean v3, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->deblocking_filter_control_present_flag:Z

    iget-boolean v4, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->deblocking_filter_control_present_flag:Z

    if-eq v3, v4, :cond_7

    move v1, v2

    .line 333
    goto :goto_0

    .line 334
    :cond_7
    iget-boolean v3, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->entropy_coding_mode_flag:Z

    iget-boolean v4, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->entropy_coding_mode_flag:Z

    if-eq v3, v4, :cond_8

    move v1, v2

    .line 335
    goto :goto_0

    .line 336
    :cond_8
    iget-object v3, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    if-nez v3, :cond_9

    .line 337
    iget-object v3, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    if-eqz v3, :cond_a

    move v1, v2

    .line 338
    goto :goto_0

    .line 339
    :cond_9
    iget-object v3, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    iget-object v4, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    .line 340
    goto :goto_0

    .line 341
    :cond_a
    iget v3, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_ref_idx_l0_active_minus1:I

    iget v4, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_ref_idx_l0_active_minus1:I

    if-eq v3, v4, :cond_b

    move v1, v2

    .line 342
    goto :goto_0

    .line 343
    :cond_b
    iget v3, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_ref_idx_l1_active_minus1:I

    iget v4, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_ref_idx_l1_active_minus1:I

    if-eq v3, v4, :cond_c

    move v1, v2

    .line 344
    goto :goto_0

    .line 345
    :cond_c
    iget v3, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_slice_groups_minus1:I

    iget v4, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_slice_groups_minus1:I

    if-eq v3, v4, :cond_d

    move v1, v2

    .line 346
    goto :goto_0

    .line 347
    :cond_d
    iget v3, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->pic_init_qp_minus26:I

    iget v4, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->pic_init_qp_minus26:I

    if-eq v3, v4, :cond_e

    move v1, v2

    .line 348
    goto :goto_0

    .line 349
    :cond_e
    iget v3, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->pic_init_qs_minus26:I

    iget v4, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->pic_init_qs_minus26:I

    if-eq v3, v4, :cond_f

    move v1, v2

    .line 350
    goto :goto_0

    .line 351
    :cond_f
    iget-boolean v3, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->bottom_field_pic_order_in_frame_present_flag:Z

    iget-boolean v4, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->bottom_field_pic_order_in_frame_present_flag:Z

    if-eq v3, v4, :cond_10

    move v1, v2

    .line 352
    goto/16 :goto_0

    .line 353
    :cond_10
    iget v3, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->pic_parameter_set_id:I

    iget v4, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->pic_parameter_set_id:I

    if-eq v3, v4, :cond_11

    move v1, v2

    .line 354
    goto/16 :goto_0

    .line 355
    :cond_11
    iget-boolean v3, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->redundant_pic_cnt_present_flag:Z

    iget-boolean v4, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->redundant_pic_cnt_present_flag:Z

    if-eq v3, v4, :cond_12

    move v1, v2

    .line 356
    goto/16 :goto_0

    .line 357
    :cond_12
    iget-object v3, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->run_length_minus1:[I

    iget-object v4, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->run_length_minus1:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_13

    move v1, v2

    .line 358
    goto/16 :goto_0

    .line 359
    :cond_13
    iget v3, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->seq_parameter_set_id:I

    iget v4, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->seq_parameter_set_id:I

    if-eq v3, v4, :cond_14

    move v1, v2

    .line 360
    goto/16 :goto_0

    .line 361
    :cond_14
    iget-boolean v3, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_change_direction_flag:Z

    iget-boolean v4, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_change_direction_flag:Z

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 362
    goto/16 :goto_0

    .line 363
    :cond_15
    iget v3, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_change_rate_minus1:I

    iget v4, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_change_rate_minus1:I

    if-eq v3, v4, :cond_16

    move v1, v2

    .line 364
    goto/16 :goto_0

    .line 365
    :cond_16
    iget-object v3, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_id:[I

    iget-object v4, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_id:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_17

    move v1, v2

    .line 366
    goto/16 :goto_0

    .line 367
    :cond_17
    iget v3, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_map_type:I

    iget v4, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_map_type:I

    if-eq v3, v4, :cond_18

    move v1, v2

    .line 368
    goto/16 :goto_0

    .line 369
    :cond_18
    iget-object v3, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->top_left:[I

    iget-object v4, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->top_left:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_19

    move v1, v2

    .line 370
    goto/16 :goto_0

    .line 371
    :cond_19
    iget v3, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->weighted_bipred_idc:I

    iget v4, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->weighted_bipred_idc:I

    if-eq v3, v4, :cond_1a

    move v1, v2

    .line 372
    goto/16 :goto_0

    .line 373
    :cond_1a
    iget-boolean v3, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->weighted_pred_flag:Z

    iget-boolean v4, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->weighted_pred_flag:Z

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 374
    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    .line 285
    .line 286
    const/4 v0, 0x1

    .line 287
    .local v0, "result":I
    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->bottom_right:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1f

    .line 288
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->chroma_qp_index_offset:I

    add-int v0, v1, v4

    .line 289
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->constrained_intra_pred_flag:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v4, v1

    .line 290
    mul-int/lit8 v4, v0, 0x1f

    .line 291
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->deblocking_filter_control_present_flag:Z

    if-eqz v1, :cond_1

    move v1, v2

    .line 290
    :goto_1
    add-int v0, v4, v1

    .line 292
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->entropy_coding_mode_flag:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v4, v1

    .line 293
    mul-int/lit8 v4, v0, 0x1f

    .line 294
    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 293
    :goto_3
    add-int v0, v4, v1

    .line 295
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_ref_idx_l0_active_minus1:I

    add-int v0, v1, v4

    .line 296
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_ref_idx_l1_active_minus1:I

    add-int v0, v1, v4

    .line 297
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_slice_groups_minus1:I

    add-int v0, v1, v4

    .line 298
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->pic_init_qp_minus26:I

    add-int v0, v1, v4

    .line 299
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->pic_init_qs_minus26:I

    add-int v0, v1, v4

    .line 300
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->bottom_field_pic_order_in_frame_present_flag:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_4
    add-int v0, v4, v1

    .line 301
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->pic_parameter_set_id:I

    add-int v0, v1, v4

    .line 302
    mul-int/lit8 v4, v0, 0x1f

    .line 303
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->redundant_pic_cnt_present_flag:Z

    if-eqz v1, :cond_5

    move v1, v2

    .line 302
    :goto_5
    add-int v0, v4, v1

    .line 304
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->run_length_minus1:[I

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([I)I

    move-result v4

    add-int v0, v1, v4

    .line 305
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->seq_parameter_set_id:I

    add-int v0, v1, v4

    .line 306
    mul-int/lit8 v4, v0, 0x1f

    .line 307
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_change_direction_flag:Z

    if-eqz v1, :cond_6

    move v1, v2

    .line 306
    :goto_6
    add-int v0, v4, v1

    .line 308
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_change_rate_minus1:I

    add-int v0, v1, v4

    .line 309
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_id:[I

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([I)I

    move-result v4

    add-int v0, v1, v4

    .line 310
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_map_type:I

    add-int v0, v1, v4

    .line 311
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->top_left:[I

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([I)I

    move-result v4

    add-int v0, v1, v4

    .line 312
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->weighted_bipred_idc:I

    add-int v0, v1, v4

    .line 313
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->weighted_pred_flag:Z

    if-eqz v4, :cond_7

    :goto_7
    add-int v0, v1, v2

    .line 314
    return v0

    :cond_0
    move v1, v3

    .line 289
    goto/16 :goto_0

    :cond_1
    move v1, v3

    .line 291
    goto/16 :goto_1

    :cond_2
    move v1, v3

    .line 292
    goto/16 :goto_2

    .line 294
    :cond_3
    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto/16 :goto_3

    :cond_4
    move v1, v3

    .line 300
    goto :goto_4

    :cond_5
    move v1, v3

    .line 303
    goto :goto_5

    :cond_6
    move v1, v3

    .line 307
    goto :goto_6

    :cond_7
    move v2, v3

    .line 313
    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PictureParameterSet{\n       entropy_coding_mode_flag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->entropy_coding_mode_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 382
    const-string/jumbo v1, ",\n       num_ref_idx_l0_active_minus1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_ref_idx_l0_active_minus1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    const-string/jumbo v1, ",\n       num_ref_idx_l1_active_minus1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_ref_idx_l1_active_minus1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 384
    const-string/jumbo v1, ",\n       slice_group_change_rate_minus1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_change_rate_minus1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 385
    const-string/jumbo v1, ",\n       pic_parameter_set_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->pic_parameter_set_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 386
    const-string/jumbo v1, ",\n       seq_parameter_set_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->seq_parameter_set_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 387
    const-string/jumbo v1, ",\n       pic_order_present_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->bottom_field_pic_order_in_frame_present_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 388
    const-string/jumbo v1, ",\n       num_slice_groups_minus1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_slice_groups_minus1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 389
    const-string/jumbo v1, ",\n       slice_group_map_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_map_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 390
    const-string/jumbo v1, ",\n       weighted_pred_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->weighted_pred_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 391
    const-string/jumbo v1, ",\n       weighted_bipred_idc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->weighted_bipred_idc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 392
    const-string/jumbo v1, ",\n       pic_init_qp_minus26="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->pic_init_qp_minus26:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 393
    const-string/jumbo v1, ",\n       pic_init_qs_minus26="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->pic_init_qs_minus26:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 394
    const-string/jumbo v1, ",\n       chroma_qp_index_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->chroma_qp_index_offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 395
    const-string/jumbo v1, ",\n       deblocking_filter_control_present_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->deblocking_filter_control_present_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 396
    const-string/jumbo v1, ",\n       constrained_intra_pred_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->constrained_intra_pred_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 397
    const-string/jumbo v1, ",\n       redundant_pic_cnt_present_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->redundant_pic_cnt_present_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 398
    const-string/jumbo v1, ",\n       top_left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->top_left:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 399
    const-string/jumbo v1, ",\n       bottom_right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->bottom_right:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 400
    const-string/jumbo v1, ",\n       run_length_minus1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->run_length_minus1:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 401
    const-string/jumbo v1, ",\n       slice_group_change_direction_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_change_direction_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 402
    const-string/jumbo v1, ",\n       slice_group_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_id:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 403
    const-string/jumbo v1, ",\n       extended="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 404
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 14
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x6

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 190
    new-instance v6, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;

    invoke-direct {v6, p1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;-><init>(Ljava/io/OutputStream;)V

    .line 192
    .local v6, "writer":Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;
    iget v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->pic_parameter_set_id:I

    const-string/jumbo v10, "PPS: pic_parameter_set_id"

    invoke-virtual {v6, v7, v10}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 193
    iget v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->seq_parameter_set_id:I

    const-string/jumbo v10, "PPS: seq_parameter_set_id"

    invoke-virtual {v6, v7, v10}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 194
    iget-boolean v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->entropy_coding_mode_flag:Z

    .line 195
    const-string/jumbo v10, "PPS: entropy_coding_mode_flag"

    .line 194
    invoke-virtual {v6, v7, v10}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 196
    iget-boolean v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->bottom_field_pic_order_in_frame_present_flag:Z

    const-string/jumbo v10, "PPS: pic_order_present_flag"

    invoke-virtual {v6, v7, v10}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 197
    iget v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_slice_groups_minus1:I

    const-string/jumbo v10, "PPS: num_slice_groups_minus1"

    invoke-virtual {v6, v7, v10}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 198
    iget v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_slice_groups_minus1:I

    if-lez v7, :cond_0

    .line 199
    iget v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_map_type:I

    const-string/jumbo v10, "PPS: slice_group_map_type"

    invoke-virtual {v6, v7, v10}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 200
    new-array v5, v8, [I

    .line 201
    .local v5, "top_left":[I
    new-array v1, v8, [I

    .line 202
    .local v1, "bottom_right":[I
    new-array v4, v8, [I

    .line 203
    .local v4, "run_length_minus1":[I
    iget v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_map_type:I

    if-nez v7, :cond_4

    .line 204
    const/4 v3, 0x0

    .local v3, "iGroup":I
    :goto_0
    iget v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_slice_groups_minus1:I

    if-le v3, v7, :cond_3

    .line 232
    .end local v1    # "bottom_right":[I
    .end local v3    # "iGroup":I
    .end local v4    # "run_length_minus1":[I
    .end local v5    # "top_left":[I
    :cond_0
    :goto_1
    iget v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_ref_idx_l0_active_minus1:I

    .line 233
    const-string/jumbo v10, "PPS: num_ref_idx_l0_active_minus1"

    .line 232
    invoke-virtual {v6, v7, v10}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 234
    iget v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_ref_idx_l1_active_minus1:I

    .line 235
    const-string/jumbo v10, "PPS: num_ref_idx_l1_active_minus1"

    .line 234
    invoke-virtual {v6, v7, v10}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 236
    iget-boolean v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->weighted_pred_flag:Z

    const-string/jumbo v10, "PPS: weighted_pred_flag"

    invoke-virtual {v6, v7, v10}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 237
    iget v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->weighted_bipred_idc:I

    int-to-long v10, v7

    const-string/jumbo v7, "PPS: weighted_bipred_idc"

    invoke-virtual {v6, v10, v11, v12, v7}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 238
    iget v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->pic_init_qp_minus26:I

    const-string/jumbo v10, "PPS: pic_init_qp_minus26"

    invoke-virtual {v6, v7, v10}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeSE(ILjava/lang/String;)V

    .line 239
    iget v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->pic_init_qs_minus26:I

    const-string/jumbo v10, "PPS: pic_init_qs_minus26"

    invoke-virtual {v6, v7, v10}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeSE(ILjava/lang/String;)V

    .line 240
    iget v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->chroma_qp_index_offset:I

    const-string/jumbo v10, "PPS: chroma_qp_index_offset"

    invoke-virtual {v6, v7, v10}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeSE(ILjava/lang/String;)V

    .line 241
    iget-boolean v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->deblocking_filter_control_present_flag:Z

    .line 242
    const-string/jumbo v10, "PPS: deblocking_filter_control_present_flag"

    .line 241
    invoke-virtual {v6, v7, v10}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 243
    iget-boolean v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->constrained_intra_pred_flag:Z

    .line 244
    const-string/jumbo v10, "PPS: constrained_intra_pred_flag"

    .line 243
    invoke-virtual {v6, v7, v10}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 245
    iget-boolean v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->redundant_pic_cnt_present_flag:Z

    .line 246
    const-string/jumbo v10, "PPS: redundant_pic_cnt_present_flag"

    .line 245
    invoke-virtual {v6, v7, v10}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 247
    iget-object v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    if-eqz v7, :cond_2

    .line 248
    iget-object v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    iget-boolean v7, v7, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;->transform_8x8_mode_flag:Z

    .line 249
    const-string/jumbo v10, "PPS: transform_8x8_mode_flag"

    .line 248
    invoke-virtual {v6, v7, v10}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 250
    iget-object v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    iget-object v7, v7, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;->scalindMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    if-eqz v7, :cond_a

    move v7, v8

    .line 251
    :goto_2
    const-string/jumbo v10, "PPS: scalindMatrix"

    .line 250
    invoke-virtual {v6, v7, v10}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 252
    iget-object v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    iget-object v7, v7, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;->scalindMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    if-eqz v7, :cond_1

    .line 253
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    iget-boolean v7, v7, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;->transform_8x8_mode_flag:Z

    if-eqz v7, :cond_10

    move v7, v8

    .line 254
    :goto_4
    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x6

    .line 253
    if-lt v2, v7, :cond_b

    .line 277
    .end local v2    # "i":I
    :cond_1
    iget-object v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    iget v7, v7, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;->second_chroma_qp_index_offset:I

    const-string/jumbo v8, "PPS: "

    invoke-virtual {v6, v7, v8}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeSE(ILjava/lang/String;)V

    .line 280
    :cond_2
    invoke-virtual {v6}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeTrailingBits()V

    .line 281
    return-void

    .line 205
    .restart local v1    # "bottom_right":[I
    .restart local v3    # "iGroup":I
    .restart local v4    # "run_length_minus1":[I
    .restart local v5    # "top_left":[I
    :cond_3
    aget v7, v4, v3

    const-string/jumbo v10, "PPS: "

    invoke-virtual {v6, v7, v10}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 207
    .end local v3    # "iGroup":I
    :cond_4
    iget v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_map_type:I

    if-ne v7, v12, :cond_5

    .line 208
    const/4 v3, 0x0

    .restart local v3    # "iGroup":I
    :goto_5
    iget v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_slice_groups_minus1:I

    if-ge v3, v7, :cond_0

    .line 209
    aget v7, v5, v3

    const-string/jumbo v10, "PPS: "

    invoke-virtual {v6, v7, v10}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 210
    aget v7, v1, v3

    const-string/jumbo v10, "PPS: "

    invoke-virtual {v6, v7, v10}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 208
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 212
    .end local v3    # "iGroup":I
    :cond_5
    iget v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_map_type:I

    const/4 v10, 0x3

    if-eq v7, v10, :cond_6

    iget v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_map_type:I

    if-eq v7, v11, :cond_6

    .line 213
    iget v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_map_type:I

    const/4 v10, 0x5

    if-ne v7, v10, :cond_7

    .line 214
    :cond_6
    iget-boolean v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_change_direction_flag:Z

    .line 215
    const-string/jumbo v10, "PPS: slice_group_change_direction_flag"

    .line 214
    invoke-virtual {v6, v7, v10}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 216
    iget v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_change_rate_minus1:I

    .line 217
    const-string/jumbo v10, "PPS: slice_group_change_rate_minus1"

    .line 216
    invoke-virtual {v6, v7, v10}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 218
    :cond_7
    iget v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_map_type:I

    if-ne v7, v13, :cond_0

    .line 220
    iget v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_slice_groups_minus1:I

    add-int/lit8 v7, v7, 0x1

    if-le v7, v11, :cond_8

    .line 221
    const/4 v0, 0x3

    .line 226
    .local v0, "NumberBitsPerSliceGroupId":I
    :goto_6
    iget-object v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_id:[I

    array-length v7, v7

    const-string/jumbo v10, "PPS: "

    invoke-virtual {v6, v7, v10}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 227
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    iget-object v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_id:[I

    array-length v7, v7

    if-gt v2, v7, :cond_0

    .line 228
    iget-object v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->slice_group_id:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7, v0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeU(II)V

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 222
    .end local v0    # "NumberBitsPerSliceGroupId":I
    .end local v2    # "i":I
    :cond_8
    iget v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->num_slice_groups_minus1:I

    add-int/lit8 v7, v7, 0x1

    if-le v7, v12, :cond_9

    .line 223
    const/4 v0, 0x2

    .restart local v0    # "NumberBitsPerSliceGroupId":I
    goto :goto_6

    .line 225
    .end local v0    # "NumberBitsPerSliceGroupId":I
    :cond_9
    const/4 v0, 0x1

    .restart local v0    # "NumberBitsPerSliceGroupId":I
    goto :goto_6

    .end local v0    # "NumberBitsPerSliceGroupId":I
    .end local v1    # "bottom_right":[I
    .end local v4    # "run_length_minus1":[I
    .end local v5    # "top_left":[I
    :cond_a
    move v7, v9

    .line 250
    goto/16 :goto_2

    .line 255
    .restart local v2    # "i":I
    :cond_b
    if-ge v2, v13, :cond_e

    .line 258
    iget-object v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    iget-object v7, v7, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;->scalindMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    iget-object v7, v7, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;->ScalingList4x4:[Lcom/googlecode/mp4parser/h264/model/ScalingList;

    aget-object v7, v7, v2

    if-eqz v7, :cond_d

    move v7, v8

    .line 259
    :goto_8
    const-string/jumbo v10, "PPS: "

    .line 257
    invoke-virtual {v6, v7, v10}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 260
    iget-object v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    iget-object v7, v7, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;->scalindMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    iget-object v7, v7, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;->ScalingList4x4:[Lcom/googlecode/mp4parser/h264/model/ScalingList;

    aget-object v7, v7, v2

    if-eqz v7, :cond_c

    .line 261
    iget-object v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    iget-object v7, v7, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;->scalindMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    iget-object v7, v7, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;->ScalingList4x4:[Lcom/googlecode/mp4parser/h264/model/ScalingList;

    aget-object v7, v7, v2

    .line 262
    invoke-virtual {v7, v6}, Lcom/googlecode/mp4parser/h264/model/ScalingList;->write(Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;)V

    .line 254
    :cond_c
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_d
    move v7, v9

    .line 258
    goto :goto_8

    .line 268
    :cond_e
    iget-object v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    iget-object v7, v7, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;->scalindMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    iget-object v7, v7, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;->ScalingList8x8:[Lcom/googlecode/mp4parser/h264/model/ScalingList;

    add-int/lit8 v10, v2, -0x6

    aget-object v7, v7, v10

    if-eqz v7, :cond_f

    move v7, v8

    .line 269
    :goto_a
    const-string/jumbo v10, "PPS: "

    .line 267
    invoke-virtual {v6, v7, v10}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 270
    iget-object v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    iget-object v7, v7, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;->scalindMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    iget-object v7, v7, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;->ScalingList8x8:[Lcom/googlecode/mp4parser/h264/model/ScalingList;

    add-int/lit8 v10, v2, -0x6

    aget-object v7, v7, v10

    if-eqz v7, :cond_c

    .line 271
    iget-object v7, p0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->extended:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;

    iget-object v7, v7, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt;->scalindMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    iget-object v7, v7, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;->ScalingList8x8:[Lcom/googlecode/mp4parser/h264/model/ScalingList;

    add-int/lit8 v10, v2, -0x6

    aget-object v7, v7, v10

    .line 272
    invoke-virtual {v7, v6}, Lcom/googlecode/mp4parser/h264/model/ScalingList;->write(Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;)V

    goto :goto_9

    :cond_f
    move v7, v9

    .line 268
    goto :goto_a

    :cond_10
    move v7, v9

    .line 254
    goto/16 :goto_4
.end method
