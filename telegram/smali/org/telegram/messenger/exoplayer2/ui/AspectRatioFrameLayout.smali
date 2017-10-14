.class public Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AspectRatioFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout$ResizeMode;
    }
.end annotation


# static fields
.field private static final MAX_ASPECT_RATIO_DEFORMATION_FRACTION:F = 0.01f

.field public static final RESIZE_MODE_FILL:I = 0x3

.field public static final RESIZE_MODE_FIT:I = 0x0

.field public static final RESIZE_MODE_FIXED_HEIGHT:I = 0x2

.field public static final RESIZE_MODE_FIXED_WIDTH:I = 0x1


# instance fields
.field private drawingReady:Z

.field private matrix:Landroid/graphics/Matrix;

.field private resizeMode:I

.field private rotation:I

.field private videoAspectRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->matrix:Landroid/graphics/Matrix;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    .line 82
    return-void
.end method


# virtual methods
.method public getAspectRatio()F
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    return v0
.end method

.method public getVideoRotation()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->rotation:I

    return v0
.end method

.method public isDrawingReady()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->drawingReady:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 130
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 131
    iget v10, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    const/4 v11, 0x3

    if-eq v10, v11, :cond_0

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getMeasuredWidth()I

    move-result v9

    .line 137
    .local v9, "width":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getMeasuredHeight()I

    move-result v4

    .line 138
    .local v4, "height":I
    int-to-float v10, v9

    int-to-float v11, v4

    div-float v8, v10, v11

    .line 139
    .local v8, "viewAspectRatio":F
    iget v10, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v10, v8

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v1, v10, v11

    .line 140
    .local v1, "aspectDeformation":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const v11, 0x3c23d70a    # 0.01f

    cmpg-float v10, v10, v11

    if-lez v10, :cond_0

    .line 145
    iget v10, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    packed-switch v10, :pswitch_data_0

    .line 153
    const/4 v10, 0x0

    cmpl-float v10, v1, v10

    if-lez v10, :cond_4

    .line 154
    int-to-float v10, v9

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v10, v11

    float-to-int v4, v10

    .line 160
    :goto_1
    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-super {p0, v10, v11}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 161
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getChildCount()I

    move-result v3

    .line 162
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    if-ge v0, v3, :cond_0

    .line 163
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 164
    .local v2, "child":Landroid/view/View;
    instance-of v10, v2, Landroid/view/TextureView;

    if-eqz v10, :cond_5

    .line 165
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 166
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getWidth()I

    move-result v10

    div-int/lit8 v5, v10, 0x2

    .line 167
    .local v5, "px":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getHeight()I

    move-result v10

    div-int/lit8 v6, v10, 0x2

    .line 168
    .local v6, "py":I
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->matrix:Landroid/graphics/Matrix;

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->rotation:I

    int-to-float v11, v11

    int-to-float v12, v5

    int-to-float v13, v6

    invoke-virtual {v10, v11, v12, v13}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 169
    iget v10, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->rotation:I

    const/16 v11, 0x5a

    if-eq v10, v11, :cond_2

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->rotation:I

    const/16 v11, 0x10e

    if-ne v10, v11, :cond_3

    .line 170
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float v7, v10, v11

    .line 171
    .local v7, "ratio":F
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->matrix:Landroid/graphics/Matrix;

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v7

    int-to-float v12, v5

    int-to-float v13, v6

    invoke-virtual {v10, v11, v7, v12, v13}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 173
    .end local v7    # "ratio":F
    :cond_3
    check-cast v2, Landroid/view/TextureView;

    .end local v2    # "child":Landroid/view/View;
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v10}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    .line 147
    .end local v0    # "a":I
    .end local v3    # "count":I
    .end local v5    # "px":I
    .end local v6    # "py":I
    :pswitch_0
    int-to-float v10, v9

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v10, v11

    float-to-int v4, v10

    .line 148
    goto :goto_1

    .line 150
    :pswitch_1
    int-to-float v10, v4

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    mul-float/2addr v10, v11

    float-to-int v9, v10

    .line 151
    goto :goto_1

    .line 156
    :cond_4
    int-to-float v10, v4

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    mul-float/2addr v10, v11

    float-to-int v9, v10

    goto :goto_1

    .line 162
    .restart local v0    # "a":I
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "count":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAspectRatio(FI)V
    .locals 1
    .param p1, "widthHeightRatio"    # F
    .param p2, "rotation"    # I

    .prologue
    .line 101
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->rotation:I

    if-eq v0, p2, :cond_1

    .line 102
    :cond_0
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    .line 103
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->rotation:I

    .line 104
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->requestLayout()V

    .line 106
    :cond_1
    return-void
.end method

.method public setDrawingReady(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 85
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->drawingReady:Z

    if-ne v0, p1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->drawingReady:Z

    goto :goto_0
.end method

.method public setResizeMode(I)V
    .locals 1
    .param p1, "resizeMode"    # I

    .prologue
    .line 122
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    if-eq v0, p1, :cond_0

    .line 123
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    .line 124
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->requestLayout()V

    .line 126
    :cond_0
    return-void
.end method
