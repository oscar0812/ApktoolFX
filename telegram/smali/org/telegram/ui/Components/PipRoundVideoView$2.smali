.class Lorg/telegram/ui/Components/PipRoundVideoView$2;
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
.field final synthetic this$0:Lorg/telegram/ui/Components/PipRoundVideoView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PipRoundVideoView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PipRoundVideoView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    iput-object p1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$2;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    const/high16 v5, 0x3fc00000    # 1.5f

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    .line 184
    .local v7, "result":Z
    iget-object v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$2;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$500(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/view/TextureView;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 185
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    .line 186
    .local v6, "currentMessageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v6, :cond_0

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$2;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$600(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PipRoundVideoView$2;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PipRoundVideoView$2;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$2;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

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

    .line 191
    .end local v6    # "currentMessageObject":Lorg/telegram/messenger/MessageObject;
    :cond_0
    return v7
.end method
