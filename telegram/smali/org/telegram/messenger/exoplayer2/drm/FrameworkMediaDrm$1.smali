.class Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm$1;
.super Ljava/lang/Object;
.source "FrameworkMediaDrm.java"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm;->setOnEventListener(Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm;

.field final synthetic val$listener:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$OnEventListener;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm;Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm$1;->this$0:Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm$1;->val$listener:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$OnEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 6
    .param p1, "md"    # Landroid/media/MediaDrm;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "sessionId"    # [B
    .param p3, "event"    # I
    .param p4, "extra"    # I
    .param p5, "data"    # [B

    .prologue
    .line 68
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm$1;->val$listener:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$OnEventListener;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm$1;->this$0:Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$OnEventListener;->onEvent(Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;[BII[B)V

    .line 69
    return-void
.end method
