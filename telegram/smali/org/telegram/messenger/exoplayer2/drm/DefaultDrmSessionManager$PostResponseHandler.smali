.class Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$PostResponseHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSessionManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostResponseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 668
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$PostResponseHandler;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>.PostResponseHandler;"
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$PostResponseHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    .line 669
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 670
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 674
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$PostResponseHandler;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>.PostResponseHandler;"
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 682
    :goto_0
    return-void

    .line 676
    :pswitch_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$PostResponseHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->access$800(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;Ljava/lang/Object;)V

    goto :goto_0

    .line 679
    :pswitch_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$PostResponseHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->access$900(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;Ljava/lang/Object;)V

    goto :goto_0

    .line 674
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
