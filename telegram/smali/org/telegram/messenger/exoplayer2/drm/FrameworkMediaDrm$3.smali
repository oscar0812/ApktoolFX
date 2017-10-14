.class Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm$3;
.super Ljava/lang/Object;
.source "FrameworkMediaDrm.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm;->getProvisionRequest()Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm;

.field final synthetic val$provisionRequest:Landroid/media/MediaDrm$ProvisionRequest;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm;Landroid/media/MediaDrm$ProvisionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm;

    .prologue
    .line 110
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm$3;->this$0:Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm$3;->val$provisionRequest:Landroid/media/MediaDrm$ProvisionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm$3;->val$provisionRequest:Landroid/media/MediaDrm$ProvisionRequest;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm$3;->val$provisionRequest:Landroid/media/MediaDrm$ProvisionRequest;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
