.class final Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilitiesReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HdmiAudioPlugBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilitiesReceiver;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilitiesReceiver;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilitiesReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilitiesReceiver;Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilitiesReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilitiesReceiver;
    .param p2, "x1"    # Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilitiesReceiver$1;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;-><init>(Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilitiesReceiver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    invoke-static {p2}, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;->getCapabilities(Landroid/content/Intent;)Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

    move-result-object v0

    .line 93
    .local v0, "newAudioCapabilities":Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilitiesReceiver;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilitiesReceiver;

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

    .line 95
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilitiesReceiver;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilitiesReceiver;->access$100(Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilitiesReceiver;)Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;->onAudioCapabilitiesChanged(Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;)V

    .line 98
    .end local v0    # "newAudioCapabilities":Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;
    :cond_0
    return-void
.end method
