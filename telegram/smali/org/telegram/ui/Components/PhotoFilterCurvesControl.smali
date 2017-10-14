.class public Lorg/telegram/ui/Components/PhotoFilterCurvesControl;
.super Landroid/view/View;
.source "PhotoFilterCurvesControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;
    }
.end annotation


# static fields
.field private static final CurvesSegmentBlacks:I = 0x1

.field private static final CurvesSegmentHighlights:I = 0x4

.field private static final CurvesSegmentMidtones:I = 0x3

.field private static final CurvesSegmentNone:I = 0x0

.field private static final CurvesSegmentShadows:I = 0x2

.field private static final CurvesSegmentWhites:I = 0x5

.field private static final GestureStateBegan:I = 0x1

.field private static final GestureStateCancelled:I = 0x4

.field private static final GestureStateChanged:I = 0x2

.field private static final GestureStateEnded:I = 0x3

.field private static final GestureStateFailed:I = 0x5


# instance fields
.field private activeSegment:I

.field private actualArea:Lorg/telegram/ui/Components/Rect;

.field private checkForMoving:Z

.field private curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

.field private delegate:Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;

.field private isMoving:Z

.field private lastX:F

.field private lastY:F

.field private paint:Landroid/graphics/Paint;

.field private paintCurve:Landroid/graphics/Paint;

.field private paintDash:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private textPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    .prologue
    const/4 v4, 0x0

    const v3, -0x66000001

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v1, 0x1

    .line 64
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    iput v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->activeSegment:I

    .line 46
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->checkForMoving:Z

    .line 51
    new-instance v0, Lorg/telegram/ui/Components/Rect;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paint:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintDash:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->textPaint:Landroid/text/TextPaint;

    .line 57
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->path:Landroid/graphics/Path;

    .line 65
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setWillNotDraw(Z)V

    .line 67
    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintDash:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintDash:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintDash:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->textPaint:Landroid/text/TextPaint;

    const v1, -0x404041

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->textPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 83
    return-void
.end method

.method private handlePan(ILandroid/view/MotionEvent;)V
    .locals 9
    .param p1, "state"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v8, 0x42c80000    # 100.0f

    const/4 v7, 0x0

    .line 148
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 149
    .local v2, "locationX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 151
    .local v3, "locationY":F
    packed-switch p1, :pswitch_data_0

    .line 228
    :goto_0
    return-void

    .line 153
    :pswitch_0
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->selectSegmentWithPoint(F)V

    goto :goto_0

    .line 158
    :pswitch_1
    const/high16 v4, 0x40000000    # 2.0f

    iget v5, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->lastY:F

    sub-float/2addr v5, v3

    const/high16 v6, 0x41000000    # 8.0f

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 160
    .local v1, "delta":F
    const/4 v0, 0x0

    .line 161
    .local v0, "curveValue":Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget v4, v4, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->activeType:I

    packed-switch v4, :pswitch_data_1

    .line 182
    :goto_1
    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->activeSegment:I

    packed-switch v4, :pswitch_data_2

    .line 207
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->invalidate()V

    .line 209
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->delegate:Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;

    if-eqz v4, :cond_0

    .line 210
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->delegate:Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;

    invoke-interface {v4}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;->valueChanged()V

    .line 213
    :cond_0
    iput v2, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->lastX:F

    .line 214
    iput v3, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->lastY:F

    goto :goto_0

    .line 163
    :pswitch_2
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v0, v4, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->luminanceCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    .line 164
    goto :goto_1

    .line 167
    :pswitch_3
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v0, v4, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->redCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    .line 168
    goto :goto_1

    .line 171
    :pswitch_4
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v0, v4, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->greenCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    .line 172
    goto :goto_1

    .line 175
    :pswitch_5
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v0, v4, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->blueCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    .line 176
    goto :goto_1

    .line 184
    :pswitch_6
    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    add-float/2addr v4, v1

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    goto :goto_2

    .line 188
    :pswitch_7
    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    add-float/2addr v4, v1

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    goto :goto_2

    .line 192
    :pswitch_8
    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    add-float/2addr v4, v1

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    goto :goto_2

    .line 196
    :pswitch_9
    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    add-float/2addr v4, v1

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    goto :goto_2

    .line 200
    :pswitch_a
    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    add-float/2addr v4, v1

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    goto :goto_2

    .line 221
    .end local v0    # "curveValue":Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;
    .end local v1    # "delta":F
    :pswitch_b
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->unselectSegments()V

    goto/16 :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    .line 161
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 182
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private selectSegmentWithPoint(F)V
    .locals 4
    .param p1, "pointx"    # F

    .prologue
    .line 231
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->activeSegment:I

    if-eqz v1, :cond_0

    .line 237
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v1, v1, Lorg/telegram/ui/Components/Rect;->width:F

    const/high16 v2, 0x40a00000    # 5.0f

    div-float v0, v1, v2

    .line 235
    .local v0, "segmentWidth":F
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v1, v1, Lorg/telegram/ui/Components/Rect;->x:F

    sub-float/2addr p1, v1

    .line 236
    div-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->activeSegment:I

    goto :goto_0
.end method

.method private unselectSegments()V
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->activeSegment:I

    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 243
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->activeSegment:I

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v0, v0, Lorg/telegram/ui/Components/Rect;->width:F

    const/high16 v1, 0x40a00000    # 5.0f

    div-float v10, v0, v1

    .line 251
    .local v10, "segmentWidth":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v0, 0x4

    if-ge v8, v0, :cond_0

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v0, v0, Lorg/telegram/ui/Components/Rect;->x:F

    add-float/2addr v0, v10

    int-to-float v1, v8

    mul-float/2addr v1, v10

    add-float/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v2, v0, Lorg/telegram/ui/Components/Rect;->y:F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v0, v0, Lorg/telegram/ui/Components/Rect;->x:F

    add-float/2addr v0, v10

    int-to-float v3, v8

    mul-float/2addr v3, v10

    add-float/2addr v3, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v0, v0, Lorg/telegram/ui/Components/Rect;->y:F

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v4, v4, Lorg/telegram/ui/Components/Rect;->height:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 251
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 255
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v1, v0, Lorg/telegram/ui/Components/Rect;->x:F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v0, v0, Lorg/telegram/ui/Components/Rect;->y:F

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v2, v2, Lorg/telegram/ui/Components/Rect;->height:F

    add-float/2addr v2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v0, v0, Lorg/telegram/ui/Components/Rect;->x:F

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v3, v3, Lorg/telegram/ui/Components/Rect;->width:F

    add-float/2addr v3, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v4, v0, Lorg/telegram/ui/Components/Rect;->y:F

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintDash:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 257
    const/4 v7, 0x0

    .line 258
    .local v7, "curvesValue":Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->activeType:I

    packed-switch v0, :pswitch_data_0

    .line 283
    :goto_1
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_2
    const/4 v0, 0x5

    if-ge v6, v0, :cond_1

    .line 285
    packed-switch v6, :pswitch_data_1

    .line 302
    const-string/jumbo v11, ""

    .line 305
    .local v11, "str":Ljava/lang/String;
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v12

    .line 306
    .local v12, "width":F
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v0, v0, Lorg/telegram/ui/Components/Rect;->x:F

    sub-float v1, v10, v12

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    int-to-float v1, v6

    mul-float/2addr v1, v10

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v1, v1, Lorg/telegram/ui/Components/Rect;->y:F

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v2, v2, Lorg/telegram/ui/Components/Rect;->height:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v11, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 283
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 260
    .end local v6    # "a":I
    .end local v11    # "str":Ljava/lang/String;
    .end local v12    # "width":F
    :pswitch_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->luminanceCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    .line 262
    goto :goto_1

    .line 265
    :pswitch_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    const v1, -0x12c2b4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->redCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    .line 267
    goto :goto_1

    .line 270
    :pswitch_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    const v1, -0xef1163

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->greenCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    .line 272
    goto :goto_1

    .line 275
    :pswitch_3
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    const v1, -0xcc8805

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->blueCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    .line 277
    goto :goto_1

    .line 287
    .restart local v6    # "a":I
    :pswitch_4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v7, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 288
    .restart local v11    # "str":Ljava/lang/String;
    goto :goto_3

    .line 290
    .end local v11    # "str":Ljava/lang/String;
    :pswitch_5
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v7, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 291
    .restart local v11    # "str":Ljava/lang/String;
    goto/16 :goto_3

    .line 293
    .end local v11    # "str":Ljava/lang/String;
    :pswitch_6
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v7, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 294
    .restart local v11    # "str":Ljava/lang/String;
    goto/16 :goto_3

    .line 296
    .end local v11    # "str":Ljava/lang/String;
    :pswitch_7
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v7, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 297
    .restart local v11    # "str":Ljava/lang/String;
    goto/16 :goto_3

    .line 299
    .end local v11    # "str":Ljava/lang/String;
    :pswitch_8
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v7, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 300
    .restart local v11    # "str":Ljava/lang/String;
    goto/16 :goto_3

    .line 309
    .end local v11    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {v7}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->interpolateCurve()[F

    move-result-object v9

    .line 310
    .local v9, "points":[F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->invalidate()V

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 312
    const/4 v6, 0x0

    :goto_4
    array-length v0, v9

    div-int/lit8 v0, v0, 0x2

    if-ge v6, v0, :cond_3

    .line 313
    if-nez v6, :cond_2

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v1, v1, Lorg/telegram/ui/Components/Rect;->x:F

    mul-int/lit8 v2, v6, 0x2

    aget v2, v9, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v3, v3, Lorg/telegram/ui/Components/Rect;->width:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v2, v2, Lorg/telegram/ui/Components/Rect;->y:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-int/lit8 v4, v6, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v4, v9, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v4, v4, Lorg/telegram/ui/Components/Rect;->height:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 312
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 316
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v1, v1, Lorg/telegram/ui/Components/Rect;->x:F

    mul-int/lit8 v2, v6, 0x2

    aget v2, v9, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v3, v3, Lorg/telegram/ui/Components/Rect;->width:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v2, v2, Lorg/telegram/ui/Components/Rect;->y:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-int/lit8 v4, v6, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v4, v9, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v4, v4, Lorg/telegram/ui/Components/Rect;->height:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_5

    .line 320
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 321
    return-void

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 285
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 100
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 144
    :cond_0
    :goto_0
    :pswitch_0
    return v5

    .line 103
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 104
    iget-boolean v3, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->checkForMoving:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->isMoving:Z

    if-nez v3, :cond_0

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 106
    .local v1, "locationX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 107
    .local v2, "locationY":F
    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->lastX:F

    .line 108
    iput v2, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->lastY:F

    .line 109
    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v3, v3, Lorg/telegram/ui/Components/Rect;->x:F

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v3, v3, Lorg/telegram/ui/Components/Rect;->x:F

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v4, v4, Lorg/telegram/ui/Components/Rect;->width:F

    add-float/2addr v3, v4

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v3, v3, Lorg/telegram/ui/Components/Rect;->y:F

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v3, v3, Lorg/telegram/ui/Components/Rect;->y:F

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v4, v4, Lorg/telegram/ui/Components/Rect;->height:F

    add-float/2addr v3, v4

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    .line 110
    iput-boolean v5, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->isMoving:Z

    .line 112
    :cond_1
    iput-boolean v6, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->checkForMoving:Z

    .line 113
    iget-boolean v3, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->isMoving:Z

    if-eqz v3, :cond_0

    .line 114
    invoke-direct {p0, v5, p1}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->handlePan(ILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 118
    .end local v1    # "locationX":F
    .end local v2    # "locationY":F
    :cond_2
    iget-boolean v3, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->isMoving:Z

    if-eqz v3, :cond_0

    .line 119
    invoke-direct {p0, v4, p1}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->handlePan(ILandroid/view/MotionEvent;)V

    .line 120
    iput-boolean v5, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->checkForMoving:Z

    .line 121
    iput-boolean v6, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->isMoving:Z

    goto :goto_0

    .line 130
    :pswitch_2
    iget-boolean v3, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->isMoving:Z

    if-eqz v3, :cond_3

    .line 131
    invoke-direct {p0, v4, p1}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->handlePan(ILandroid/view/MotionEvent;)V

    .line 132
    iput-boolean v6, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->isMoving:Z

    .line 134
    :cond_3
    iput-boolean v5, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->checkForMoving:Z

    goto :goto_0

    .line 139
    :pswitch_3
    iget-boolean v3, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->isMoving:Z

    if-eqz v3, :cond_0

    .line 140
    const/4 v3, 0x2

    invoke-direct {p0, v3, p1}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->handlePan(ILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setActualArea(FFFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iput p1, v0, Lorg/telegram/ui/Components/Rect;->x:F

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iput p2, v0, Lorg/telegram/ui/Components/Rect;->y:F

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iput p3, v0, Lorg/telegram/ui/Components/Rect;->width:F

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iput p4, v0, Lorg/telegram/ui/Components/Rect;->height:F

    .line 94
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;)V
    .locals 0
    .param p1, "photoFilterCurvesControlDelegate"    # Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->delegate:Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;

    .line 87
    return-void
.end method
