.class public final Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;
.super Landroid/view/View;
.source "SubtitleView.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;


# static fields
.field private static final ABSOLUTE:I = 0x2

.field public static final DEFAULT_BOTTOM_PADDING_FRACTION:F = 0.08f

.field public static final DEFAULT_TEXT_SIZE_FRACTION:F = 0.0533f

.field private static final FRACTIONAL:I = 0x0

.field private static final FRACTIONAL_IGNORE_PADDING:I = 0x1


# instance fields
.field private applyEmbeddedFontSizes:Z

.field private applyEmbeddedStyles:Z

.field private bottomPaddingFraction:F

.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final painters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;",
            ">;"
        }
    .end annotation
.end field

.field private style:Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

.field private textSize:F

.field private textSizeType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->painters:Ljava/util/List;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSizeType:I

    .line 75
    const v0, 0x3d5a511a    # 0.0533f

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSize:F

    .line 76
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    .line 77
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    .line 78
    sget-object v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->style:Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

    .line 79
    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    .line 80
    return-void
.end method

.method private getUserCaptionFontScaleV19()F
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 273
    .line 274
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "captioning"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 275
    .local v0, "captioningManager":Landroid/view/accessibility/CaptioningManager;
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v1

    return v1
.end method

.method private getUserCaptionStyleV19()Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 280
    .line 281
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "captioning"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 282
    .local v0, "captioningManager":Landroid/view/accessibility/CaptioningManager;
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->createFromCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

    move-result-object v1

    return-object v1
.end method

.method private setTextSize(IF)V
    .locals 1
    .param p1, "textSizeType"    # I
    .param p2, "textSize"    # F

    .prologue
    .line 160
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSizeType:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSize:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 163
    :cond_0
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSizeType:I

    .line 164
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSize:F

    .line 166
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 244
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    if-nez v1, :cond_1

    const/4 v13, 0x0

    .line 245
    .local v13, "cueCount":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getTop()I

    move-result v16

    .line 246
    .local v16, "rawTop":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getBottom()I

    move-result v15

    .line 249
    .local v15, "rawBottom":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getPaddingLeft()I

    move-result v2

    add-int v9, v1, v2

    .line 250
    .local v9, "left":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getPaddingTop()I

    move-result v1

    add-int v10, v16, v1

    .line 251
    .local v10, "top":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getRight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getPaddingRight()I

    move-result v2

    add-int v11, v1, v2

    .line 252
    .local v11, "right":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getPaddingBottom()I

    move-result v1

    sub-int v12, v15, v1

    .line 253
    .local v12, "bottom":I
    if-le v12, v10, :cond_0

    if-gt v11, v9, :cond_2

    .line 269
    :cond_0
    return-void

    .line 244
    .end local v9    # "left":I
    .end local v10    # "top":I
    .end local v11    # "right":I
    .end local v12    # "bottom":I
    .end local v13    # "cueCount":I
    .end local v15    # "rawBottom":I
    .end local v16    # "rawTop":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    goto :goto_0

    .line 258
    .restart local v9    # "left":I
    .restart local v10    # "top":I
    .restart local v11    # "right":I
    .restart local v12    # "bottom":I
    .restart local v13    # "cueCount":I
    .restart local v15    # "rawBottom":I
    .restart local v16    # "rawTop":I
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSizeType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSize:F

    .line 260
    .local v6, "textSizePx":F
    :goto_1
    const/4 v1, 0x0

    cmpg-float v1, v6, v1

    if-lez v1, :cond_0

    .line 265
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v13, :cond_0

    .line 266
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->painters:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/text/Cue;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->style:Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v12}, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->draw(Lorg/telegram/messenger/exoplayer2/text/Cue;ZZLorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;FFLandroid/graphics/Canvas;IIII)V

    .line 265
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 258
    .end local v6    # "textSizePx":F
    .end local v14    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSize:F

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSizeType:I

    if-nez v1, :cond_4

    sub-int v1, v12, v10

    :goto_3
    int-to-float v1, v1

    mul-float v6, v2, v1

    goto :goto_1

    :cond_4
    sub-int v1, v15, v16

    goto :goto_3
.end method

.method public onCues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/text/Cue;>;"
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 85
    return-void
.end method

.method public setApplyEmbeddedFontSizes(Z)V
    .locals 1
    .param p1, "applyEmbeddedFontSizes"    # Z

    .prologue
    .line 193
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    if-ne v0, p1, :cond_0

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    .line 198
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->invalidate()V

    goto :goto_0
.end method

.method public setApplyEmbeddedStyles(Z)V
    .locals 1
    .param p1, "applyEmbeddedStyles"    # Z

    .prologue
    .line 176
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    if-ne v0, p1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 180
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    .line 181
    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    .line 183
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->invalidate()V

    goto :goto_0
.end method

.method public setBottomPaddingFraction(F)V
    .locals 1
    .param p1, "bottomPaddingFraction"    # F

    .prologue
    .line 234
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 237
    :cond_0
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    .line 239
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->invalidate()V

    goto :goto_0
.end method

.method public setCues(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/text/Cue;>;"
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    if-ne v1, p1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 96
    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    .line 98
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 99
    .local v0, "cueCount":I
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->painters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 100
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->painters:Ljava/util/List;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 98
    .end local v0    # "cueCount":I
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 103
    .restart local v0    # "cueCount":I
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->invalidate()V

    goto :goto_0
.end method

.method public setFixedTextSize(IF)V
    .locals 4
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 115
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 117
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 118
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 122
    .local v1, "resources":Landroid/content/res/Resources;
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {p1, p2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->setTextSize(IF)V

    .line 123
    return-void

    .line 120
    .end local v1    # "resources":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .restart local v1    # "resources":Landroid/content/res/Resources;
    goto :goto_0
.end method

.method public setFractionalTextSize(F)V
    .locals 1
    .param p1, "fractionOfHeight"    # F

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->setFractionalTextSize(FZ)V

    .line 144
    return-void
.end method

.method public setFractionalTextSize(FZ)V
    .locals 1
    .param p1, "fractionOfHeight"    # F
    .param p2, "ignorePadding"    # Z

    .prologue
    .line 156
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->setTextSize(IF)V

    .line 157
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStyle(Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;)V
    .locals 1
    .param p1, "style"    # Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

    .prologue
    .line 216
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->style:Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

    if-ne v0, p1, :cond_0

    .line 222
    :goto_0
    return-void

    .line 219
    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->style:Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

    .line 221
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->invalidate()V

    goto :goto_0
.end method

.method public setUserDefaultStyle()V
    .locals 2

    .prologue
    .line 206
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getUserCaptionStyleV19()Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

    move-result-object v0

    .line 206
    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->setStyle(Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;)V

    .line 208
    return-void

    .line 207
    :cond_0
    sget-object v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

    goto :goto_0
.end method

.method public setUserDefaultTextSize()V
    .locals 3

    .prologue
    .line 130
    sget v1, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getUserCaptionFontScaleV19()F

    move-result v0

    .line 131
    .local v0, "fontScale":F
    :goto_0
    const v1, 0x3d5a511a    # 0.0533f

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->setFractionalTextSize(F)V

    .line 132
    return-void

    .line 130
    .end local v0    # "fontScale":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method
