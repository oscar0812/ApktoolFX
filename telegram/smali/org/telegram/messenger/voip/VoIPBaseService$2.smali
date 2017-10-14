.class Lorg/telegram/messenger/voip/VoIPBaseService$2;
.super Landroid/content/BroadcastReceiver;
.source "VoIPBaseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/voip/VoIPBaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/voip/VoIPBaseService;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/VoIPBaseService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/voip/VoIPBaseService;

    .prologue
    .line 121
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPBaseService$2;->this$0:Lorg/telegram/messenger/voip/VoIPBaseService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 124
    const-string/jumbo v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 125
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPBaseService$2;->this$0:Lorg/telegram/messenger/voip/VoIPBaseService;

    const-string/jumbo v5, "state"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_2

    :goto_0
    iput-boolean v2, v4, Lorg/telegram/messenger/voip/VoIPBaseService;->isHeadsetPlugged:Z

    .line 126
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPBaseService$2;->this$0:Lorg/telegram/messenger/voip/VoIPBaseService;

    iget-boolean v2, v2, Lorg/telegram/messenger/voip/VoIPBaseService;->isHeadsetPlugged:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPBaseService$2;->this$0:Lorg/telegram/messenger/voip/VoIPBaseService;

    iget-object v2, v2, Lorg/telegram/messenger/voip/VoIPBaseService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPBaseService$2;->this$0:Lorg/telegram/messenger/voip/VoIPBaseService;

    iget-object v2, v2, Lorg/telegram/messenger/voip/VoIPBaseService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPBaseService$2;->this$0:Lorg/telegram/messenger/voip/VoIPBaseService;

    iget-object v2, v2, Lorg/telegram/messenger/voip/VoIPBaseService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 129
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPBaseService$2;->this$0:Lorg/telegram/messenger/voip/VoIPBaseService;

    iput-boolean v3, v2, Lorg/telegram/messenger/voip/VoIPBaseService;->isProximityNear:Z

    .line 130
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPBaseService$2;->this$0:Lorg/telegram/messenger/voip/VoIPBaseService;

    invoke-virtual {v2}, Lorg/telegram/messenger/voip/VoIPBaseService;->updateOutputGainControlState()V

    .line 145
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v3

    .line 125
    goto :goto_0

    .line 131
    :cond_3
    const-string/jumbo v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 132
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPBaseService$2;->this$0:Lorg/telegram/messenger/voip/VoIPBaseService;

    invoke-virtual {v2}, Lorg/telegram/messenger/voip/VoIPBaseService;->updateNetworkType()V

    goto :goto_1

    .line 133
    :cond_4
    const-string/jumbo v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 135
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPBaseService$2;->this$0:Lorg/telegram/messenger/voip/VoIPBaseService;

    const-string/jumbo v5, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    :goto_2
    invoke-virtual {v4, v2}, Lorg/telegram/messenger/voip/VoIPBaseService;->updateBluetoothHeadsetState(Z)V

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2

    .line 136
    :cond_6
    const-string/jumbo v2, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 137
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPBaseService$2;->this$0:Lorg/telegram/messenger/voip/VoIPBaseService;

    iget-object v2, v2, Lorg/telegram/messenger/voip/VoIPBaseService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;

    .line 138
    .local v0, "l":Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;
    invoke-interface {v0}, Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;->onAudioSettingsChanged()V

    goto :goto_3

    .line 139
    .end local v0    # "l":Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;
    :cond_7
    const-string/jumbo v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    const-string/jumbo v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "state":Ljava/lang/String;
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPBaseService$2;->this$0:Lorg/telegram/messenger/voip/VoIPBaseService;

    invoke-virtual {v2}, Lorg/telegram/messenger/voip/VoIPBaseService;->hangUp()V

    goto :goto_1
.end method
