.class Lorg/telegram/ui/Components/PipVideoView$1;
.super Landroid/widget/FrameLayout;
.source "PipVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PipVideoView;->show(Landroid/app/Activity;Lorg/telegram/ui/Components/EmbedBottomSheet;Landroid/view/View;FI)Landroid/view/TextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private dragging:Z

.field private startX:F

.field private startY:F

.field final synthetic this$0:Lorg/telegram/ui/Components/PipVideoView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PipVideoView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PipVideoView;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 52
    iput-object p1, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v5, 0x3e99999a    # 0.3f

    const/4 v3, 0x1

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 61
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 62
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 63
    iput v0, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startX:F

    .line 64
    iput v1, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startY:F

    .line 74
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 65
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/PipVideoView$1;->dragging:Z

    if-nez v2, :cond_0

    .line 66
    iget v2, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startX:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v5, v3}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v4

    cmpl-float v2, v2, v4

    if-gez v2, :cond_2

    iget v2, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startY:F

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v4, 0x0

    invoke-static {v5, v4}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v4

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_0

    .line 67
    :cond_2
    iput-boolean v3, p0, Lorg/telegram/ui/Components/PipVideoView$1;->dragging:Z

    .line 68
    iput v0, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startX:F

    .line 69
    iput v1, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startY:F

    .line 70
    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoView;->access$000(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewParent;

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v2, v3

    .line 71
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f000000    # 0.5f

    .line 84
    iget-boolean v8, p0, Lorg/telegram/ui/Components/PipVideoView$1;->dragging:Z

    if-nez v8, :cond_0

    .line 122
    :goto_0
    return v6

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    .line 88
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .line 89
    .local v5, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    .line 90
    iget v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startX:F

    sub-float v1, v4, v6

    .line 91
    .local v1, "dx":F
    iget v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startY:F

    sub-float v2, v5, v6

    .line 92
    .local v2, "dy":F
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v8, v8

    add-float/2addr v8, v1

    float-to-int v8, v8

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 93
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v8, v8

    add-float/2addr v8, v2

    float-to-int v8, v8

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 94
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$200(Lorg/telegram/ui/Components/PipVideoView;)I

    move-result v6

    div-int/lit8 v3, v6, 0x2

    .line 95
    .local v3, "maxDiff":I
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    neg-int v8, v3

    if-ge v6, v8, :cond_6

    .line 96
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    neg-int v8, v3

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 100
    :cond_1
    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 101
    .local v0, "alpha":F
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v6, :cond_7

    .line 102
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v6, v6

    int-to-float v8, v3

    div-float/2addr v6, v8

    mul-float/2addr v6, v10

    add-float v0, v11, v6

    .line 106
    :cond_2
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$300(Lorg/telegram/ui/Components/PipVideoView;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v6

    cmpl-float v6, v6, v0

    if-eqz v6, :cond_3

    .line 107
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$300(Lorg/telegram/ui/Components/PipVideoView;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 109
    :cond_3
    const/4 v3, 0x0

    .line 110
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    neg-int v8, v3

    if-ge v6, v8, :cond_8

    .line 111
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    neg-int v8, v3

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 115
    :cond_4
    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$400(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager;

    move-result-object v6

    iget-object v8, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v8}, Lorg/telegram/ui/Components/PipVideoView;->access$300(Lorg/telegram/ui/Components/PipVideoView;)Landroid/widget/FrameLayout;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v9}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iput v4, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startX:F

    .line 117
    iput v5, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startY:F

    .end local v0    # "alpha":F
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v3    # "maxDiff":I
    :cond_5
    :goto_4
    move v6, v7

    .line 122
    goto/16 :goto_0

    .line 97
    .restart local v1    # "dx":F
    .restart local v2    # "dy":F
    .restart local v3    # "maxDiff":I
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v9}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v8, v9

    add-int/2addr v8, v3

    if-le v6, v8, :cond_1

    .line 98
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v9}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v8, v9

    add-int/2addr v8, v3

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_1

    .line 103
    .restart local v0    # "alpha":F
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v9}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_2

    .line 104
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v8}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v6, v8

    int-to-float v6, v6

    int-to-float v8, v3

    div-float/2addr v6, v8

    mul-float/2addr v6, v10

    sub-float v0, v11, v6

    goto/16 :goto_2

    .line 112
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v9}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v8, v9

    add-int/2addr v8, v3

    if-le v6, v8, :cond_4

    .line 113
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v9}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v8, v9

    add-int/2addr v8, v3

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3

    .line 118
    .end local v0    # "alpha":F
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v3    # "maxDiff":I
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v7, :cond_5

    .line 119
    iput-boolean v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->dragging:Z

    .line 120
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$500(Lorg/telegram/ui/Components/PipVideoView;)V

    goto/16 :goto_4
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 80
    return-void
.end method
