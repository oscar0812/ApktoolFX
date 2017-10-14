.class public Lorg/telegram/ui/Components/SeekBarWaveform;
.super Ljava/lang/Object;
.source "SeekBarWaveform.java"


# static fields
.field private static paintInner:Landroid/graphics/Paint;

.field private static paintOuter:Landroid/graphics/Paint;


# instance fields
.field private delegate:Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

.field private height:I

.field private innerColor:I

.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field private outerColor:I

.field private parentView:Landroid/view/View;

.field private pressed:Z

.field private selected:Z

.field private selectedColor:I

.field private startDraging:Z

.field private startX:F

.field private thumbDX:I

.field private thumbX:I

.field private waveformBytes:[B

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    .line 25
    iput v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbDX:I

    .line 27
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startDraging:Z

    .line 28
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->pressed:Z

    .line 42
    sget-object v0, Lorg/telegram/ui/Components/SeekBarWaveform;->paintInner:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/SeekBarWaveform;->paintInner:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/SeekBarWaveform;->paintOuter:Landroid/graphics/Paint;

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->waveformBytes:[B

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    if-nez v2, :cond_1

    .line 194
    :cond_0
    return-void

    .line 140
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    div-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v22, v0

    .line 141
    .local v22, "totalBarsCount":F
    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v2, v22, v2

    if-lez v2, :cond_0

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->waveformBytes:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x8

    div-int/lit8 v20, v2, 0x5

    .line 146
    .local v20, "samplesCount":I
    move/from16 v0, v20

    int-to-float v2, v0

    div-float v21, v2, v22

    .line 147
    .local v21, "samplesPerBar":F
    const/4 v10, 0x0

    .line 148
    .local v10, "barCounter":F
    const/16 v18, 0x0

    .line 150
    .local v18, "nextBarNum":I
    sget-object v3, Lorg/telegram/ui/Components/SeekBarWaveform;->paintInner:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->outerColor:I

    :goto_0
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    sget-object v2, Lorg/telegram/ui/Components/SeekBarWaveform;->paintOuter:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->outerColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->height:I

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v25, v2, 0x2

    .line 154
    .local v25, "y":I
    const/4 v11, 0x0

    .line 158
    .local v11, "barNum":I
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_1
    move/from16 v0, v20

    if-ge v8, v0, :cond_0

    .line 159
    move/from16 v0, v18

    if-eq v8, v0, :cond_5

    .line 158
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 150
    .end local v8    # "a":I
    .end local v11    # "barNum":I
    .end local v25    # "y":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->selected:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->selectedColor:I

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->innerColor:I

    goto :goto_0

    .line 162
    .restart local v8    # "a":I
    .restart local v11    # "barNum":I
    .restart local v25    # "y":I
    :cond_5
    const/16 v16, 0x0

    .line 163
    .local v16, "drawBarCount":I
    move/from16 v17, v18

    .line 164
    .local v17, "lastBarNum":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 165
    add-float v10, v10, v21

    .line 166
    float-to-int v0, v10

    move/from16 v18, v0

    .line 167
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 170
    :cond_6
    mul-int/lit8 v12, v8, 0x5

    .line 171
    .local v12, "bitPointer":I
    div-int/lit8 v14, v12, 0x8

    .line 172
    .local v14, "byteNum":I
    mul-int/lit8 v2, v14, 0x8

    sub-int v13, v12, v2

    .line 173
    .local v13, "byteBitOffset":I
    rsub-int/lit8 v15, v13, 0x8

    .line 174
    .local v15, "currentByteCount":I
    rsub-int/lit8 v19, v15, 0x5

    .line 175
    .local v19, "nextByteRest":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->waveformBytes:[B

    aget-byte v2, v2, v14

    shr-int/2addr v2, v13

    const/4 v3, 0x2

    const/4 v4, 0x5

    invoke-static {v4, v15}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    shl-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    int-to-byte v0, v2

    move/from16 v23, v0

    .line 176
    .local v23, "value":B
    if-lez v19, :cond_7

    .line 177
    shl-int v2, v23, v19

    int-to-byte v0, v2

    move/from16 v23, v0

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->waveformBytes:[B

    add-int/lit8 v3, v14, 0x1

    aget-byte v2, v2, v3

    const/4 v3, 0x2

    add-int/lit8 v4, v19, -0x1

    shl-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    or-int v2, v2, v23

    int-to-byte v0, v2

    move/from16 v23, v0

    .line 181
    :cond_7
    const/4 v9, 0x0

    .local v9, "b":I
    :goto_3
    move/from16 v0, v16

    if-ge v9, v0, :cond_2

    .line 182
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int v24, v11, v2

    .line 183
    .local v24, "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    move/from16 v0, v24

    if-ge v0, v2, :cond_9

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v2, v2, v24

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    if-ge v2, v3, :cond_9

    .line 184
    move/from16 v0, v24

    int-to-float v3, v0

    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x41600000    # 14.0f

    move/from16 v0, v23

    int-to-float v6, v0

    mul-float/2addr v5, v6

    const/high16 v6, 0x41f80000    # 31.0f

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float/2addr v2, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v2, v2, v25

    int-to-float v4, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v2, v2, v24

    int-to-float v5, v2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v2, v2, v25

    int-to-float v6, v2

    sget-object v7, Lorg/telegram/ui/Components/SeekBarWaveform;->paintOuter:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 191
    :cond_8
    :goto_4
    add-int/lit8 v11, v11, 0x1

    .line 181
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 186
    :cond_9
    move/from16 v0, v24

    int-to-float v3, v0

    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x41600000    # 14.0f

    move/from16 v0, v23

    int-to-float v6, v0

    mul-float/2addr v5, v6

    const/high16 v6, 0x41f80000    # 31.0f

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float/2addr v2, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v2, v2, v25

    int-to-float v4, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v2, v2, v24

    int-to-float v5, v2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v2, v2, v25

    int-to-float v6, v2

    sget-object v7, Lorg/telegram/ui/Components/SeekBarWaveform;->paintInner:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 187
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    move/from16 v0, v24

    if-ge v0, v2, :cond_8

    .line 188
    move/from16 v0, v24

    int-to-float v3, v0

    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x41600000    # 14.0f

    move/from16 v0, v23

    int-to-float v6, v0

    mul-float/2addr v5, v6

    const/high16 v6, 0x41f80000    # 31.0f

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float/2addr v2, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v2, v2, v25

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    int-to-float v5, v2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v2, v2, v25

    int-to-float v6, v2

    sget-object v7, Lorg/telegram/ui/Components/SeekBarWaveform;->paintOuter:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->pressed:Z

    return v0
.end method

.method public isStartDraging()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startDraging:Z

    return v0
.end method

.method public onTouch(IFF)Z
    .locals 5
    .param p1, "action"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v4, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 79
    if-nez p1, :cond_1

    .line 80
    cmpg-float v2, v4, p2

    if-gtz v2, :cond_8

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_8

    cmpl-float v2, p3, v4

    if-ltz v2, :cond_8

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->height:I

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-gtz v2, :cond_8

    .line 81
    iput p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startX:F

    .line 82
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->pressed:Z

    .line 83
    iget v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    float-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbDX:I

    .line 84
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startDraging:Z

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    if-eq p1, v0, :cond_2

    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 88
    :cond_2
    iget-boolean v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->pressed:Z

    if-eqz v2, :cond_8

    .line 89
    if-ne p1, v0, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->delegate:Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

    if-eqz v2, :cond_3

    .line 90
    iget-object v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->delegate:Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

    iget v3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;->onSeekBarDrag(F)V

    .line 92
    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->pressed:Z

    goto :goto_0

    .line 95
    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_8

    .line 96
    iget-boolean v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->pressed:Z

    if-eqz v2, :cond_8

    .line 97
    iget-boolean v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startDraging:Z

    if-eqz v2, :cond_5

    .line 98
    iget v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbDX:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    float-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    .line 99
    iget v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    if-gez v2, :cond_7

    .line 100
    iput v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    .line 105
    :cond_5
    :goto_1
    iget v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startX:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startX:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3e4ccccd    # 0.2f

    invoke-static {v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 106
    iget-object v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->parentView:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->parentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 107
    iget-object v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->parentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 109
    :cond_6
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startDraging:Z

    .line 110
    iput v3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startX:F

    goto :goto_0

    .line 101
    :cond_7
    iget v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    if-le v1, v2, :cond_5

    .line 102
    iget v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    iput v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    goto :goto_1

    :cond_8
    move v0, v1

    .line 115
    goto :goto_0
.end method

.method public setColors(III)V
    .locals 0
    .param p1, "inner"    # I
    .param p2, "outer"    # I
    .param p3, "selected"    # I

    .prologue
    .line 53
    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->innerColor:I

    .line 54
    iput p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->outerColor:I

    .line 55
    iput p3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->selectedColor:I

    .line 56
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;)V
    .locals 0
    .param p1, "seekBarDelegate"    # Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

    .prologue
    .line 49
    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->delegate:Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

    .line 50
    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 0
    .param p1, "object"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 67
    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 68
    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 71
    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->parentView:Landroid/view/View;

    .line 72
    return-void
.end method

.method public setProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    .line 120
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    if-gez v0, :cond_1

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    iget v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    if-le v0, v1, :cond_0

    .line 123
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->selected:Z

    .line 64
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 132
    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    .line 133
    iput p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->height:I

    .line 134
    return-void
.end method

.method public setWaveform([B)V
    .locals 0
    .param p1, "waveform"    # [B

    .prologue
    .line 59
    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->waveformBytes:[B

    .line 60
    return-void
.end method
