.class Lorg/telegram/ui/Components/PipRoundVideoView$1;
.super Landroid/widget/FrameLayout;
.source "PipRoundVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PipRoundVideoView;->show(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private dragging:Z

.field private startDragging:Z

.field private startX:F

.field private startY:F

.field final synthetic this$0:Lorg/telegram/ui/Components/PipRoundVideoView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PipRoundVideoView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PipRoundVideoView;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x42fa0000    # 125.0f

    .line 167
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_roundVideoShadow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_roundVideoShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PipRoundVideoView$1;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 169
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_roundVideoShadow:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 170
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_roundVideoShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 172
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->startX:F

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->startY:F

    .line 94
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->startDragging:Z

    .line 96
    :cond_0
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f000000    # 0.5f

    const v11, 0x3e99999a    # 0.3f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 106
    iget-boolean v9, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->startDragging:Z

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->dragging:Z

    if-nez v9, :cond_0

    .line 162
    :goto_0
    return v7

    .line 109
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    .line 110
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 111
    .local v6, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_b

    .line 112
    iget v9, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->startX:F

    sub-float v1, v5, v9

    .line 113
    .local v1, "dx":F
    iget v9, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->startY:F

    sub-float v2, v6, v9

    .line 114
    .local v2, "dy":F
    iget-boolean v9, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->startDragging:Z

    if-eqz v9, :cond_3

    .line 115
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v11, v8}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v10

    cmpl-float v9, v9, v10

    if-gez v9, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v11, v7}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v10

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_2

    .line 116
    :cond_1
    iput-boolean v8, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->dragging:Z

    .line 117
    iput-boolean v7, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->startDragging:Z

    .end local v1    # "dx":F
    .end local v2    # "dy":F
    :cond_2
    :goto_1
    move v7, v8

    .line 162
    goto :goto_0

    .line 119
    .restart local v1    # "dx":F
    .restart local v2    # "dy":F
    :cond_3
    iget-boolean v7, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->dragging:Z

    if-eqz v7, :cond_2

    .line 120
    iget-object v7, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v7}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v9, v9

    add-float/2addr v9, v1

    float-to-int v9, v9

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 121
    iget-object v7, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v7}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v9, v9

    add-float/2addr v9, v2

    float-to-int v9, v9

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 122
    iget-object v7, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v7}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$100(Lorg/telegram/ui/Components/PipRoundVideoView;)I

    move-result v7

    div-int/lit8 v3, v7, 0x2

    .line 123
    .local v3, "maxDiff":I
    iget-object v7, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v7}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    neg-int v9, v3

    if-ge v7, v9, :cond_8

    .line 124
    iget-object v7, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v7}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    neg-int v9, v3

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 128
    :cond_4
    :goto_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 129
    .local v0, "alpha":F
    iget-object v7, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v7}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v7, :cond_9

    .line 130
    iget-object v7, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v7}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v7, v7

    int-to-float v9, v3

    div-float/2addr v7, v9

    mul-float/2addr v7, v12

    add-float v0, v13, v7

    .line 134
    :cond_5
    :goto_3
    iget-object v7, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v7}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$200(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v7

    cmpl-float v7, v7, v0

    if-eqz v7, :cond_6

    .line 135
    iget-object v7, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v7}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$200(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 137
    :cond_6
    const/4 v3, 0x0

    .line 138
    iget-object v7, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v7}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    neg-int v9, v3

    if-ge v7, v9, :cond_a

    .line 139
    iget-object v7, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v7}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    neg-int v9, v3

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 143
    :cond_7
    :goto_4
    iget-object v7, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v7}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$300(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager;

    move-result-object v7

    iget-object v9, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v9}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$200(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/widget/FrameLayout;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v10}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iput v5, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->startX:F

    .line 145
    iput v6, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->startY:F

    goto/16 :goto_1

    .line 125
    .end local v0    # "alpha":F
    :cond_8
    iget-object v7, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v7}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget-object v10, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v10}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v9, v10

    add-int/2addr v9, v3

    if-le v7, v9, :cond_4

    .line 126
    iget-object v7, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v7}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget-object v10, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v10}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v9, v10

    add-int/2addr v9, v3

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_2

    .line 131
    .restart local v0    # "alpha":F
    :cond_9
    iget-object v7, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v7}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget-object v10, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v10}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v9, v10

    if-le v7, v9, :cond_5

    .line 132
    iget-object v7, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v7}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v9

    iget-object v9, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v9}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v7, v9

    int-to-float v7, v7

    int-to-float v9, v3

    div-float/2addr v7, v9

    mul-float/2addr v7, v12

    sub-float v0, v13, v7

    goto/16 :goto_3

    .line 140
    :cond_a
    iget-object v7, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v7}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget-object v10, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v10}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v9, v10

    add-int/2addr v9, v3

    if-le v7, v9, :cond_7

    .line 141
    iget-object v7, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v7}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget-object v10, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v10}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$000(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v9, v10

    add-int/2addr v9, v3

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_4

    .line 147
    .end local v0    # "alpha":F
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v3    # "maxDiff":I
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-ne v9, v8, :cond_2

    .line 148
    iget-boolean v9, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->startDragging:Z

    if-eqz v9, :cond_c

    iget-boolean v9, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->dragging:Z

    if-nez v9, :cond_c

    .line 149
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    .line 150
    .local v4, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v4, :cond_c

    .line 151
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 152
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v9

    invoke-virtual {v9, v4}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    .line 158
    .end local v4    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_c
    :goto_5
    iput-boolean v7, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->dragging:Z

    .line 159
    iput-boolean v7, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->startDragging:Z

    .line 160
    iget-object v7, p0, Lorg/telegram/ui/Components/PipRoundVideoView$1;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v7}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$400(Lorg/telegram/ui/Components/PipRoundVideoView;)V

    goto/16 :goto_1

    .line 154
    .restart local v4    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_d
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v9

    invoke-virtual {v9, v4}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_5
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 102
    return-void
.end method
