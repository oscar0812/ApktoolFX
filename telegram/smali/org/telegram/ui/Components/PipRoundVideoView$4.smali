.class Lorg/telegram/ui/Components/PipRoundVideoView$4;
.super Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
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
.field private aspectPath:Landroid/graphics/Path;

.field final synthetic this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

.field final synthetic val$aspectPaint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PipRoundVideoView;Landroid/content/Context;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PipRoundVideoView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    iput-object p1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$4;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    iput-object p3, p0, Lorg/telegram/ui/Components/PipRoundVideoView$4;->val$aspectPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    .line 208
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$4;->aspectPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 220
    invoke-super {p0, p1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 221
    iget-object v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$4;->aspectPath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$4;->val$aspectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 222
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    const/high16 v5, 0x3fc00000    # 1.5f

    .line 228
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 232
    .local v8, "result":Z
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$4;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$500(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/TextureView;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 233
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    .line 234
    .local v6, "currentMessageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v6, :cond_0

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$4;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$600(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PipRoundVideoView$4;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PipRoundVideoView$4;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$4;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$600(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/graphics/RectF;

    move-result-object v1

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v0, 0x43b40000    # 360.0f

    iget v3, v6, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    mul-float/2addr v3, v0

    const/4 v4, 0x0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_radialProgressPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 239
    .end local v6    # "currentMessageObject":Lorg/telegram/messenger/MessageObject;
    :cond_0
    return v8

    .line 229
    .end local v8    # "result":Z
    :catch_0
    move-exception v7

    .line 230
    .local v7, "ignore":Ljava/lang/Throwable;
    const/4 v8, 0x0

    .restart local v8    # "result":Z
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 212
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->onSizeChanged(IIII)V

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$4;->aspectPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 214
    iget-object v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$4;->aspectPath:Landroid/graphics/Path;

    div-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$4;->aspectPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->toggleInverseFillType()V

    .line 216
    return-void
.end method
