.class Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$4;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->onError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    .prologue
    .line 606
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$4;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$4;"
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$4;->this$0:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$4;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 609
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$4;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$4;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$4;->this$0:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->access$100(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;)Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$4;->val$e:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;->onDrmSessionManagerError(Ljava/lang/Exception;)V

    .line 610
    return-void
.end method
