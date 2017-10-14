.class Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;
.super Ljava/lang/Object;
.source "PhotoCropActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    .prologue
    .line 72
    iput-object p1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/high16 v8, 0x43200000    # 160.0f

    .line 75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 76
    .local v3, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 77
    .local v4, "y":F
    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 78
    .local v0, "cornerSide":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_7

    .line 79
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    cmpg-float v5, v5, v3

    if-gez v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    cmpl-float v5, v5, v3

    if-lez v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    cmpg-float v5, v5, v4

    if-gez v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    cmpl-float v5, v5, v4

    if-lez v5, :cond_2

    .line 80
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iput v9, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    .line 92
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    if-eqz v5, :cond_0

    .line 93
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    invoke-virtual {v5, v9}, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->requestDisallowInterceptTouchEvent(Z)V

    .line 95
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iput v3, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->oldX:F

    .line 96
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iput v4, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->oldY:F

    .line 224
    :cond_1
    :goto_1
    return v9

    .line 81
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v5, v6

    cmpg-float v5, v5, v3

    if-gez v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v5, v6

    cmpl-float v5, v5, v3

    if-lez v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    cmpg-float v5, v5, v4

    if-gez v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    cmpl-float v5, v5, v4

    if-lez v5, :cond_3

    .line 82
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iput v7, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    goto :goto_0

    .line 83
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    cmpg-float v5, v5, v3

    if-gez v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    cmpl-float v5, v5, v3

    if-lez v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v5, v6

    cmpg-float v5, v5, v4

    if-gez v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v5, v6

    cmpl-float v5, v5, v4

    if-lez v5, :cond_4

    .line 84
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iput v11, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    goto/16 :goto_0

    .line 85
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v5, v6

    cmpg-float v5, v5, v3

    if-gez v5, :cond_5

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v5, v6

    cmpl-float v5, v5, v3

    if-lez v5, :cond_5

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v5, v6

    cmpg-float v5, v5, v4

    if-gez v5, :cond_5

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v5, v6

    cmpl-float v5, v5, v4

    if-lez v5, :cond_5

    .line 86
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    const/4 v6, 0x4

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    goto/16 :goto_0

    .line 87
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    cmpg-float v5, v5, v3

    if-gez v5, :cond_6

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v5, v6

    cmpl-float v5, v5, v3

    if-lez v5, :cond_6

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    cmpg-float v5, v5, v4

    if-gez v5, :cond_6

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v5, v6

    cmpl-float v5, v5, v4

    if-lez v5, :cond_6

    .line 88
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    const/4 v6, 0x5

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    goto/16 :goto_0

    .line 90
    :cond_6
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iput v10, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    goto/16 :goto_0

    .line 97
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v9, :cond_8

    .line 98
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iput v10, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    goto/16 :goto_1

    .line 99
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v7, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    if-eqz v5, :cond_1

    .line 100
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->oldX:F

    sub-float v1, v3, v5

    .line 101
    .local v1, "diffX":F
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->oldY:F

    sub-float v2, v4, v5

    .line 102
    .local v2, "diffY":F
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_d

    .line 103
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    add-float/2addr v6, v1

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    .line 104
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float/2addr v6, v2

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    .line 106
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_b

    .line 107
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v6, v6

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    .line 111
    :cond_9
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_c

    .line 112
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v6, v6

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    .line 220
    :cond_a
    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iput v3, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->oldX:F

    .line 221
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iput v4, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->oldY:F

    .line 222
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    invoke-virtual {v5}, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->invalidate()V

    goto/16 :goto_1

    .line 108
    :cond_b
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    iget-object v7, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v7, v7, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9

    .line 109
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    iget-object v7, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v7, v7, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v7, v7, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float/2addr v6, v7

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    goto :goto_2

    .line 113
    :cond_c
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget-object v7, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v7, v7, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    .line 114
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget-object v7, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v7, v7, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v7, v7, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    sub-float/2addr v6, v7

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    goto :goto_3

    .line 117
    :cond_d
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    if-ne v5, v9, :cond_14

    .line 118
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float/2addr v5, v1

    cmpg-float v5, v5, v8

    if-gez v5, :cond_e

    .line 119
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float v1, v5, v8

    .line 121
    :cond_e
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    add-float/2addr v5, v1

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_f

    .line 122
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    sub-float v1, v5, v6

    .line 124
    :cond_f
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget-boolean v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->freeform:Z

    if-nez v5, :cond_11

    .line 125
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float/2addr v5, v1

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_10

    .line 126
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    sub-float v1, v5, v6

    .line 128
    :cond_10
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    add-float/2addr v6, v1

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    .line 129
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float/2addr v6, v1

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    .line 130
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float/2addr v6, v1

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    .line 131
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    sub-float/2addr v6, v1

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    goto/16 :goto_3

    .line 133
    :cond_11
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    sub-float/2addr v5, v2

    cmpg-float v5, v5, v8

    if-gez v5, :cond_12

    .line 134
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    sub-float v2, v5, v8

    .line 136
    :cond_12
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float/2addr v5, v2

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_13

    .line 137
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    sub-float v2, v5, v6

    .line 139
    :cond_13
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    add-float/2addr v6, v1

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    .line 140
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float/2addr v6, v2

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    .line 141
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float/2addr v6, v1

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    .line 142
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    sub-float/2addr v6, v2

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    goto/16 :goto_3

    .line 144
    :cond_14
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    if-ne v5, v7, :cond_1b

    .line 145
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v5, v1

    cmpg-float v5, v5, v8

    if-gez v5, :cond_15

    .line 146
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float/2addr v5, v8

    neg-float v1, v5

    .line 148
    :cond_15
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v5, v6

    add-float/2addr v5, v1

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    iget-object v7, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v7, v7, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_16

    .line 149
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float v1, v5, v6

    .line 151
    :cond_16
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget-boolean v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->freeform:Z

    if-nez v5, :cond_18

    .line 152
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    sub-float/2addr v5, v1

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_17

    .line 153
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v6, v6

    sub-float v1, v5, v6

    .line 155
    :cond_17
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    sub-float/2addr v6, v1

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    .line 156
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v6, v1

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    .line 157
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v6, v1

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    goto/16 :goto_3

    .line 159
    :cond_18
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    sub-float/2addr v5, v2

    cmpg-float v5, v5, v8

    if-gez v5, :cond_19

    .line 160
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    sub-float v2, v5, v8

    .line 162
    :cond_19
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float/2addr v5, v2

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1a

    .line 163
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    sub-float v2, v5, v6

    .line 165
    :cond_1a
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float/2addr v6, v2

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    .line 166
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v6, v1

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    .line 167
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    sub-float/2addr v6, v2

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    goto/16 :goto_3

    .line 169
    :cond_1b
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    if-ne v5, v11, :cond_21

    .line 170
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float/2addr v5, v1

    cmpg-float v5, v5, v8

    if-gez v5, :cond_1c

    .line 171
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float v1, v5, v8

    .line 173
    :cond_1c
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    add-float/2addr v5, v1

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1d

    .line 174
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    sub-float v1, v5, v6

    .line 176
    :cond_1d
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget-boolean v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->freeform:Z

    if-nez v5, :cond_1f

    .line 177
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v5, v6

    sub-float/2addr v5, v1

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget-object v7, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v7, v7, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1e

    .line 178
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    int-to-float v6, v6

    sub-float v1, v5, v6

    .line 180
    :cond_1e
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    add-float/2addr v6, v1

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    .line 181
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float/2addr v6, v1

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    .line 182
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    sub-float/2addr v6, v1

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    goto/16 :goto_3

    .line 184
    :cond_1f
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v5, v6

    add-float/2addr v5, v2

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget-object v7, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v7, v7, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_20

    .line 185
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    sub-float v2, v5, v6

    .line 187
    :cond_20
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    add-float/2addr v6, v1

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    .line 188
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float/2addr v6, v1

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    .line 189
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v6, v2

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    .line 190
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_a

    .line 191
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iput v8, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    goto/16 :goto_3

    .line 194
    :cond_21
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_a

    .line 195
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v5, v6

    add-float/2addr v5, v1

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    iget-object v7, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v7, v7, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_22

    .line 196
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float v1, v5, v6

    .line 198
    :cond_22
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget-boolean v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->freeform:Z

    if-nez v5, :cond_25

    .line 199
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v5, v6

    add-float/2addr v5, v1

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget-object v7, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v7, v7, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_23

    .line 200
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float v1, v5, v6

    .line 202
    :cond_23
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v6, v1

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    .line 203
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v6, v1

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    .line 211
    :goto_4
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_24

    .line 212
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iput v8, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    .line 214
    :cond_24
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_a

    .line 215
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iput v8, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    goto/16 :goto_3

    .line 205
    :cond_25
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v5, v6

    add-float/2addr v5, v2

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget-object v7, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v7, v7, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_26

    .line 206
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v5, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v6, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    sub-float v2, v5, v6

    .line 208
    :cond_26
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v6, v1

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    .line 209
    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$1;->this$1:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iget v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v6, v2

    iput v6, v5, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    goto :goto_4
.end method
