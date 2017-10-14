.class Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$3;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->onKeyResponse(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    .prologue
    .line 582
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$3;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$3;"
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$3;->this$0:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 585
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$3;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$3;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$3;->this$0:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->access$100(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;)Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;->onDrmKeysLoaded()V

    .line 586
    return-void
.end method
