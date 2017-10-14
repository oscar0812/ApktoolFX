.class public Lorg/telegram/ui/Components/Paint/Views/ColorPicker;
.super Landroid/widget/FrameLayout;
.source "ColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;
    }
.end annotation


# static fields
.field private static final COLORS:[I

.field private static final LOCATIONS:[F


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field private changingWeight:Z

.field private delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

.field private dragging:Z

.field private draggingFactor:F

.field private gradientPaint:Landroid/graphics/Paint;

.field private interacting:Z

.field private interpolator:Landroid/view/animation/OvershootInterpolator;

.field private location:F

.field private rectF:Landroid/graphics/RectF;

.field private settingsButton:Landroid/widget/ImageView;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private swatchPaint:Landroid/graphics/Paint;

.field private swatchStrokePaint:Landroid/graphics/Paint;

.field private undoButton:Landroid/widget/ImageView;

.field private wasChangingWeight:Z

.field private weight:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 42
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->COLORS:[I

    .line 54
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->LOCATIONS:[F

    return-void

    .line 42
    nop

    :array_0
    .array-data 4
        -0x15d8c7
        -0x24c52e
        -0xcfae1d
        -0xb63a13
        -0x7f379c
        -0x3219b
        -0x369b3
        -0x1000000
        -0x1
    .end array-data

    .line 54
    :array_1
    .array-data 4
        0x0
        0x3e0f5c29    # 0.14f
        0x3e75c28f    # 0.24f
        0x3ec7ae14    # 0.39f
        0x3efae148    # 0.49f
        0x3f1eb852    # 0.62f
        0x3f3ae148    # 0.73f
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x3c

    const/4 v5, 0x0

    const/high16 v4, 0x42500000    # 52.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const v1, 0x3f828f5c    # 1.02f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->interpolator:Landroid/view/animation/OvershootInterpolator;

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->gradientPaint:Landroid/graphics/Paint;

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->backgroundPaint:Landroid/graphics/Paint;

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchPaint:Landroid/graphics/Paint;

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchStrokePaint:Landroid/graphics/Paint;

    .line 74
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    .line 76
    iput v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->location:F

    .line 77
    const v0, 0x3e8a3d71    # 0.27f

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->weight:F

    .line 83
    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setWillNotDraw(Z)V

    .line 84
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchStrokePaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    const v1, 0x7f02016a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    invoke-static {v6, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/ColorPicker$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker$1;-><init>(Lorg/telegram/ui/Components/Paint/Views/ColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->undoButton:Landroid/widget/ImageView;

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->undoButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->undoButton:Landroid/widget/ImageView;

    const v1, 0x7f020170

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->undoButton:Landroid/widget/ImageView;

    invoke-static {v6, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->undoButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/ColorPicker$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker$2;-><init>(Lorg/telegram/ui/Components/Paint/Views/ColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const-string/jumbo v0, "paint"

    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "last_color_location"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->location:F

    .line 116
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->location:F

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setLocation(F)V

    .line 117
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Paint/Views/ColorPicker;)Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    return-object v0
.end method

.method private interpolateColors(IIF)I
    .locals 12
    .param p1, "leftColor"    # I
    .param p2, "rightColor"    # I
    .param p3, "factor"    # F

    .prologue
    const/16 v11, 0xff

    .line 175
    const/4 v9, 0x0

    invoke-static {p3, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 177
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 178
    .local v7, "r1":I
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 180
    .local v8, "r2":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 181
    .local v4, "g1":I
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 183
    .local v5, "g2":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 184
    .local v1, "b1":I
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 186
    .local v2, "b2":I
    int-to-float v9, v7

    sub-int v10, v8, v7

    int-to-float v10, v10

    mul-float/2addr v10, p3

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 187
    .local v6, "r":I
    int-to-float v9, v4

    sub-int v10, v5, v4

    int-to-float v10, v10

    mul-float/2addr v10, p3

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 188
    .local v3, "g":I
    int-to-float v9, v1

    sub-int v10, v2, v1

    int-to-float v10, v10

    mul-float/2addr v10, p3

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 190
    .local v0, "b":I
    invoke-static {v11, v6, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    return v9
.end method

.method private setDragging(ZZ)V
    .locals 7
    .param p1, "value"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 310
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->dragging:Z

    if-ne v3, p1, :cond_0

    .line 327
    :goto_0
    return-void

    .line 313
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->dragging:Z

    .line 314
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->dragging:Z

    if-eqz v3, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 315
    .local v2, "target":F
    :goto_1
    if-eqz p2, :cond_3

    .line 316
    const-string/jumbo v3, "draggingFactor"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget v6, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->draggingFactor:F

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 317
    .local v0, "a":Landroid/animation/Animator;
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->interpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 318
    const/16 v1, 0x12c

    .line 319
    .local v1, "duration":I
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->wasChangingWeight:Z

    if-eqz v3, :cond_1

    .line 320
    int-to-float v3, v1

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->weight:F

    const/high16 v5, 0x42960000    # 75.0f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 322
    :cond_1
    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 323
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 314
    .end local v0    # "a":Landroid/animation/Animator;
    .end local v1    # "duration":I
    .end local v2    # "target":F
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 325
    .restart local v2    # "target":F
    :cond_3
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setDraggingFactor(F)V

    goto :goto_0
.end method

.method private setDraggingFactor(F)V
    .locals 0
    .param p1, "factor"    # F

    .prologue
    .line 301
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->draggingFactor:F

    .line 302
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->invalidate()V

    .line 303
    return-void
.end method


# virtual methods
.method public colorForLocation(F)I
    .locals 11
    .param p1, "location"    # F

    .prologue
    .line 146
    const/4 v9, 0x0

    cmpg-float v9, p1, v9

    if-gtz v9, :cond_0

    .line 147
    sget-object v9, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->COLORS:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    .line 171
    :goto_0
    return v9

    .line 148
    :cond_0
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, p1, v9

    if-ltz v9, :cond_1

    .line 149
    sget-object v9, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->COLORS:[I

    sget-object v10, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->COLORS:[I

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    goto :goto_0

    .line 152
    :cond_1
    const/4 v3, -0x1

    .line 153
    .local v3, "leftIndex":I
    const/4 v6, -0x1

    .line 155
    .local v6, "rightIndex":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    sget-object v9, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->LOCATIONS:[F

    array-length v9, v9

    if-ge v1, v9, :cond_2

    .line 156
    sget-object v9, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->LOCATIONS:[F

    aget v8, v9, v1

    .line 157
    .local v8, "value":F
    cmpl-float v9, v8, p1

    if-lez v9, :cond_3

    .line 158
    add-int/lit8 v3, v1, -0x1

    .line 159
    move v6, v1

    .line 164
    .end local v8    # "value":F
    :cond_2
    sget-object v9, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->LOCATIONS:[F

    aget v4, v9, v3

    .line 165
    .local v4, "leftLocation":F
    sget-object v9, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->COLORS:[I

    aget v2, v9, v3

    .line 167
    .local v2, "leftColor":I
    sget-object v9, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->LOCATIONS:[F

    aget v7, v9, v6

    .line 168
    .local v7, "rightLocation":F
    sget-object v9, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->COLORS:[I

    aget v5, v9, v6

    .line 170
    .local v5, "rightColor":I
    sub-float v9, p1, v4

    sub-float v10, v7, v4

    div-float v0, v9, v10

    .line 171
    .local v0, "factor":F
    invoke-direct {p0, v2, v5, v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->interpolateColors(IIF)I

    move-result v9

    goto :goto_0

    .line 155
    .end local v0    # "factor":F
    .end local v2    # "leftColor":I
    .end local v4    # "leftLocation":F
    .end local v5    # "rightColor":I
    .end local v7    # "rightLocation":F
    .restart local v8    # "value":F
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getDraggingFactor()F
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->draggingFactor:F

    return v0
.end method

.method public getSettingsButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;
    .locals 4

    .prologue
    .line 137
    new-instance v0, Lorg/telegram/ui/Components/Paint/Swatch;

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->location:F

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->colorForLocation(F)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->location:F

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->weight:F

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Paint/Swatch;-><init>(IFF)V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x40c00000    # 6.0f

    const/high16 v11, 0x40800000    # 4.0f

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 284
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 286
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->location:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 287
    .local v0, "cx":I
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->draggingFactor:F

    const/high16 v6, 0x428c0000    # 70.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    iget-boolean v4, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->changingWeight:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->weight:F

    const/high16 v6, 0x433e0000    # 190.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    :goto_0
    sub-float v4, v5, v4

    float-to-int v1, v4

    .line 289
    .local v1, "cy":I
    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->draggingFactor:F

    add-float/2addr v5, v9

    mul-float/2addr v5, v10

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 290
    .local v2, "side":I
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v5, v0, v2

    sub-int v6, v1, v2

    add-int v7, v0, v2

    add-int v8, v1, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 291
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 293
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41980000    # 19.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->weight:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->draggingFactor:F

    add-float/2addr v5, v9

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v3, v4, v5

    .line 295
    .local v3, "swatchRadius":F
    int-to-float v4, v0

    int-to-float v5, v1

    const/high16 v6, 0x41b00000    # 22.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->draggingFactor:F

    add-float/2addr v7, v9

    mul-float/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 296
    int-to-float v4, v0

    int-to-float v5, v1

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 297
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v3, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 298
    return-void

    .line 287
    .end local v1    # "cy":I
    .end local v2    # "side":I
    .end local v3    # "swatchRadius":F
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 271
    sub-int v9, p4, p2

    .line 272
    .local v9, "width":I
    sub-int v8, p5, p3

    .line 274
    .local v8, "height":I
    iget-object v11, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->gradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v9, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    sget-object v5, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->COLORS:[I

    sget-object v6, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->LOCATIONS:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 275
    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v10, v8, v0

    .line 276
    .local v10, "y":I
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v10

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v9, v3

    int-to-float v3, v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v10

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v9, v1

    const/high16 v2, 0x42500000    # 52.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v8, v2

    invoke-virtual {v0, v1, v2, v9, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 279
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->undoButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/high16 v2, 0x42500000    # 52.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v8, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 280
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/high16 v9, 0x41200000    # 10.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-le v7, v6, :cond_1

    .line 265
    :cond_0
    :goto_0
    return v5

    .line 222
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float v3, v7, v8

    .line 223
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float v4, v7, v8

    .line 225
    .local v4, "y":F
    iget-boolean v7, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->interacting:Z

    if-nez v7, :cond_2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    cmpg-float v7, v4, v7

    if-ltz v7, :cond_0

    .line 229
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 230
    .local v0, "action":I
    const/4 v7, 0x3

    if-eq v0, v7, :cond_3

    if-eq v0, v6, :cond_3

    const/4 v7, 0x6

    if-ne v0, v7, :cond_5

    .line 231
    :cond_3
    iget-boolean v7, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->interacting:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    if-eqz v7, :cond_4

    .line 232
    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    invoke-interface {v7}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;->onFinishedColorPicking()V

    .line 234
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "paint"

    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v8, "last_color_location"

    iget v9, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->location:F

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 236
    :cond_4
    iput-boolean v5, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->interacting:Z

    .line 237
    iget-boolean v7, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->changingWeight:Z

    iput-boolean v7, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->wasChangingWeight:Z

    .line 238
    iput-boolean v5, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->changingWeight:Z

    .line 239
    invoke-direct {p0, v5, v6}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setDragging(ZZ)V

    goto :goto_0

    .line 240
    :cond_5
    if-eqz v0, :cond_6

    const/4 v7, 0x2

    if-ne v0, v7, :cond_0

    .line 241
    :cond_6
    iget-boolean v5, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->interacting:Z

    if-nez v5, :cond_7

    .line 242
    iput-boolean v6, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->interacting:Z

    .line 243
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    if-eqz v5, :cond_7

    .line 244
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    invoke-interface {v5}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;->onBeganColorPicking()V

    .line 248
    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v5, v3, v5

    invoke-static {v11, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 249
    .local v1, "colorLocation":F
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setLocation(F)V

    .line 251
    invoke-direct {p0, v6, v6}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setDragging(ZZ)V

    .line 253
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gez v5, :cond_8

    .line 254
    iput-boolean v6, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->changingWeight:Z

    .line 255
    neg-float v5, v4

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v5, v7

    const/high16 v7, 0x433e0000    # 190.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    div-float v2, v5, v7

    .line 256
    .local v2, "weightLocation":F
    invoke-static {v11, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 257
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setWeight(F)V

    .line 260
    .end local v2    # "weightLocation":F
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    if-eqz v5, :cond_9

    .line 261
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    invoke-interface {v5}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;->onColorValueChanged()V

    :cond_9
    move v5, v6

    .line 263
    goto/16 :goto_0
.end method

.method public setDelegate(Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;)V
    .locals 0
    .param p1, "colorPickerDelegate"    # Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    .prologue
    .line 125
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    .line 126
    return-void
.end method

.method public setLocation(F)V
    .locals 10
    .param p1, "value"    # F

    .prologue
    const/4 v9, 0x2

    const v8, 0x3f6b851f    # 0.92f

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    .line 194
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->location:F

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->colorForLocation(F)I

    move-result v1

    .line 195
    .local v1, "color":I
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    const/4 v3, 0x3

    new-array v2, v3, [F

    .line 198
    .local v2, "hsv":[F
    invoke-static {v1, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 200
    const/4 v3, 0x0

    aget v3, v2, v3

    float-to-double v4, v3

    cmpg-double v3, v4, v6

    if-gez v3, :cond_0

    const/4 v3, 0x1

    aget v3, v2, v3

    float-to-double v4, v3

    cmpg-double v3, v4, v6

    if-gez v3, :cond_0

    aget v3, v2, v9

    cmpl-float v3, v3, v8

    if-lez v3, :cond_0

    .line 201
    const/high16 v3, 0x3f800000    # 1.0f

    aget v4, v2, v9

    sub-float/2addr v4, v8

    const v5, 0x3da3d70a    # 0.08f

    div-float/2addr v4, v5

    const v5, 0x3e6147ae    # 0.22f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 202
    .local v0, "c":I
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchStrokePaint:Landroid/graphics/Paint;

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    .end local v0    # "c":I
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->invalidate()V

    .line 209
    return-void

    .line 204
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public setSettingsButtonImage(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    return-void
.end method

.method public setSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V
    .locals 1
    .param p1, "swatch"    # Lorg/telegram/ui/Components/Paint/Swatch;

    .prologue
    .line 141
    iget v0, p1, Lorg/telegram/ui/Components/Paint/Swatch;->colorLocation:F

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setLocation(F)V

    .line 142
    iget v0, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setWeight(F)V

    .line 143
    return-void
.end method

.method public setUndoEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 120
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->undoButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->undoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 122
    return-void

    .line 120
    :cond_0
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0
.end method

.method public setWeight(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 212
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->weight:F

    .line 213
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->invalidate()V

    .line 214
    return-void
.end method
