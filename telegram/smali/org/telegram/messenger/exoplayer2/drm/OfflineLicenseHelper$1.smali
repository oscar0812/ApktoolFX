.class Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper$1;
.super Ljava/lang/Object;
.source "OfflineLicenseHelper.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;-><init>(Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;

    .prologue
    .line 94
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper$1;, "Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper$1;"
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper$1;->this$0:Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrmKeysLoaded()V
    .locals 1

    .prologue
    .line 97
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper$1;, "Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper$1;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper$1;->this$0:Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;->access$000(Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 98
    return-void
.end method

.method public onDrmKeysRemoved()V
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper$1;, "Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper$1;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper$1;->this$0:Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;->access$000(Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 113
    return-void
.end method

.method public onDrmKeysRestored()V
    .locals 1

    .prologue
    .line 107
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper$1;, "Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper$1;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper$1;->this$0:Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;->access$000(Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 108
    return-void
.end method

.method public onDrmSessionManagerError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 102
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper$1;, "Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper$1;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper$1;->this$0:Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;->access$000(Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 103
    return-void
.end method
