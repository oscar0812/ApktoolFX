.class public abstract Lorg/telegram/messenger/voip/VoIPBaseService;
.super Landroid/app/Service;
.source "VoIPBaseService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lorg/telegram/messenger/voip/VoIPController$ConnectionStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;
    }
.end annotation


# static fields
.field public static final ACTION_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final DISCARD_REASON_DISCONNECT:I = 0x2

.field public static final DISCARD_REASON_HANGUP:I = 0x1

.field public static final DISCARD_REASON_LINE_BUSY:I = 0x4

.field public static final DISCARD_REASON_MISSED:I = 0x3

.field protected static final ID_INCOMING_CALL_NOTIFICATION:I = 0xca

.field protected static final ID_ONGOING_CALL_NOTIFICATION:I = 0xc9

.field protected static final PROXIMITY_SCREEN_OFF_WAKE_LOCK:I = 0x20

.field public static final STATE_ENDED:I = 0xb

.field public static final STATE_ESTABLISHED:I = 0x3

.field public static final STATE_FAILED:I = 0x4

.field public static final STATE_RECONNECTING:I = 0x5

.field public static final STATE_WAIT_INIT:I = 0x1

.field public static final STATE_WAIT_INIT_ACK:I = 0x2

.field protected static sharedInstance:Lorg/telegram/messenger/voip/VoIPBaseService;


# instance fields
.field protected afterSoundRunnable:Ljava/lang/Runnable;

.field protected btAdapter:Landroid/bluetooth/BluetoothAdapter;

.field protected controller:Lorg/telegram/messenger/voip/VoIPController;

.field protected controllerStarted:Z

.field protected cpuWakelock:Landroid/os/PowerManager$WakeLock;

.field protected currentState:I

.field protected haveAudioFocus:Z

.field protected isBtHeadsetConnected:Z

.field protected isHeadsetPlugged:Z

.field protected isOutgoing:Z

.field protected isProximityNear:Z

.field protected lastError:I

.field protected lastKnownDuration:J

.field protected lastNetInfo:Landroid/net/NetworkInfo;

.field private mHasEarpiece:Ljava/lang/Boolean;

.field protected micMute:Z

.field protected needPlayEndSound:Z

.field protected ongoingCallNotification:Landroid/app/Notification;

.field protected playingSound:Z

.field protected prevStats:Lorg/telegram/messenger/voip/VoIPController$Stats;

.field protected proximityWakelock:Landroid/os/PowerManager$WakeLock;

.field protected receiver:Landroid/content/BroadcastReceiver;

.field protected ringtonePlayer:Landroid/media/MediaPlayer;

.field protected signalBarCount:I

.field protected soundPool:Landroid/media/SoundPool;

.field protected spBusyId:I

.field protected spConnectingId:I

.field protected spEndId:I

.field protected spFailedID:I

.field protected spPlayID:I

.field protected spRingbackID:I

.field protected stateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;",
            ">;"
        }
    .end annotation
.end field

.field protected stats:Lorg/telegram/messenger/voip/VoIPController$Stats;

.field protected timeoutRunnable:Ljava/lang/Runnable;

.field protected vibrator:Landroid/os/Vibrator;

.field private wasEstablished:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->currentState:I

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->stateListeners:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Lorg/telegram/messenger/voip/VoIPController$Stats;

    invoke-direct {v0}, Lorg/telegram/messenger/voip/VoIPController$Stats;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->stats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    .line 106
    new-instance v0, Lorg/telegram/messenger/voip/VoIPController$Stats;

    invoke-direct {v0}, Lorg/telegram/messenger/voip/VoIPController$Stats;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->prevStats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    .line 108
    new-instance v0, Lorg/telegram/messenger/voip/VoIPBaseService$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPBaseService$1;-><init>(Lorg/telegram/messenger/voip/VoIPBaseService;)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->afterSoundRunnable:Ljava/lang/Runnable;

    .line 117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->lastKnownDuration:J

    .line 121
    new-instance v0, Lorg/telegram/messenger/voip/VoIPBaseService$2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPBaseService$2;-><init>(Lorg/telegram/messenger/voip/VoIPBaseService;)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->receiver:Landroid/content/BroadcastReceiver;

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->mHasEarpiece:Ljava/lang/Boolean;

    return-void
.end method

.method public static getSharedInstance()Lorg/telegram/messenger/voip/VoIPBaseService;
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lorg/telegram/messenger/voip/VoIPBaseService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPBaseService;

    return-object v0
.end method


# virtual methods
.method public abstract acceptIncomingCall()V
.end method

.method protected callEnded()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPBaseService;->getCallID()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ended"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 644
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/voip/VoIPBaseService;->dispatchStateChanged(I)V

    .line 645
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->needPlayEndSound:Z

    if-eqz v0, :cond_0

    .line 646
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->playingSound:Z

    .line 647
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->spEndId:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 648
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->afterSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 650
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 652
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 654
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPBaseService;->stopSelf()V

    .line 655
    return-void
.end method

.method protected callFailed()V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->controllerStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPController;->getLastError()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/voip/VoIPBaseService;->callFailed(I)V

    .line 573
    return-void

    .line 572
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected callFailed(I)V
    .locals 10
    .param p1, "errorCode"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 577
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Call "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPBaseService;->getCallID()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " failed with error code "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :catch_0
    move-exception v7

    .line 579
    .local v7, "x":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 581
    iput p1, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->lastError:I

    .line 582
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/voip/VoIPBaseService;->dispatchStateChanged(I)V

    .line 583
    const/4 v0, -0x3

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->playingSound:Z

    .line 585
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->spFailedID:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 586
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->afterSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 588
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPBaseService;->stopSelf()V

    .line 589
    return-void
.end method

.method protected configureDeviceForCall()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 440
    iput-boolean v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->needPlayEndSound:Z

    .line 441
    const-string/jumbo v4, "audio"

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/voip/VoIPBaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 442
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setMode(I)V

    .line 443
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 444
    invoke-virtual {v0, p0, v5, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 445
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPBaseService;->updateOutputGainControlState()V

    .line 447
    const-string/jumbo v4, "sensor"

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/voip/VoIPBaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 448
    .local v2, "sm":Landroid/hardware/SensorManager;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 450
    .local v1, "proximity":Landroid/hardware/Sensor;
    if-eqz v1, :cond_0

    .line 451
    :try_start_0
    const-string/jumbo v4, "power"

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/voip/VoIPBaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    const/16 v5, 0x20

    const-string/jumbo v6, "telegram-voip-prx"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    .line 452
    const/4 v4, 0x3

    invoke-virtual {v2, p0, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v3

    .line 455
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "Error initializing proximity sensor"

    invoke-static {v4, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected createController()Lorg/telegram/messenger/voip/VoIPController;
    .locals 1

    .prologue
    .line 345
    new-instance v0, Lorg/telegram/messenger/voip/VoIPController;

    invoke-direct {v0}, Lorg/telegram/messenger/voip/VoIPController;-><init>()V

    return-object v0
.end method

.method public abstract declineIncomingCall()V
.end method

.method public abstract declineIncomingCall(ILjava/lang/Runnable;)V
.end method

.method protected dispatchStateChanged(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "== Call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPBaseService;->getCallID()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " state changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " =="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 411
    iput p1, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->currentState:I

    .line 412
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 413
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;

    .line 414
    .local v1, "l":Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;
    invoke-interface {v1, p1}, Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;->onStateChanged(I)V

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    .end local v1    # "l":Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;
    :cond_0
    return-void
.end method

.method public getCallDuration()J
    .locals 2

    .prologue
    .line 214
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->controllerStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    if-nez v0, :cond_1

    .line 215
    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->lastKnownDuration:J

    .line 216
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPController;->getCallDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->lastKnownDuration:J

    goto :goto_0
.end method

.method protected abstract getCallID()J
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->currentState:I

    return v0
.end method

.method public getDebugString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPController;->getDebugString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->lastError:I

    return v0
.end method

.method protected getStatsNetworkType()I
    .locals 2

    .prologue
    .line 181
    const/4 v0, 0x1

    .line 182
    .local v0, "netType":I
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->lastNetInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->lastNetInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 184
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->lastNetInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    .line 186
    :cond_0
    :goto_0
    return v0

    .line 184
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleNotificationAction(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPBaseService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".END_CALL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 663
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/voip/VoIPBaseService;->stopForeground(Z)V

    .line 664
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPBaseService;->hangUp()V

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPBaseService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".DECLINE_CALL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 666
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/voip/VoIPBaseService;->stopForeground(Z)V

    .line 667
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/voip/VoIPBaseService;->declineIncomingCall(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 668
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPBaseService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".ANSWER_CALL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPBaseService;->showNotification()V

    .line 670
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/voip/VoIPBaseService;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 672
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/telegram/ui/VoIPPermissionActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, "x":Ljava/lang/Exception;
    const-string/jumbo v1, "Error starting permission activity"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 678
    .end local v0    # "x":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPBaseService;->acceptIncomingCall()V

    .line 680
    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/telegram/ui/VoIPActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x30000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 681
    :catch_1
    move-exception v0

    .line 682
    .restart local v0    # "x":Ljava/lang/Exception;
    const-string/jumbo v1, "Error starting incall activity"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public abstract hangUp()V
.end method

.method public hasEarpiece()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    .line 152
    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/voip/VoIPBaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    .line 177
    :goto_0
    return v6

    .line 154
    :cond_0
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->mHasEarpiece:Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    .line 155
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->mHasEarpiece:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_0

    .line 160
    :cond_1
    :try_start_0
    const-string/jumbo v6, "audio"

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/voip/VoIPBaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 161
    .local v0, "am":Landroid/media/AudioManager;
    const-class v6, Landroid/media/AudioManager;

    const-string/jumbo v7, "getDevicesForStream"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 162
    .local v5, "method":Ljava/lang/reflect/Method;
    const-class v6, Landroid/media/AudioManager;

    const-string/jumbo v7, "DEVICE_OUT_EARPIECE"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 163
    .local v4, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 164
    .local v2, "earpieceFlag":I
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 167
    .local v1, "bitmaskResult":I
    and-int v6, v1, v2

    if-ne v6, v2, :cond_2

    .line 168
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->mHasEarpiece:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "bitmaskResult":I
    .end local v2    # "earpieceFlag":I
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :goto_1
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->mHasEarpiece:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_0

    .line 170
    .restart local v0    # "am":Landroid/media/AudioManager;
    .restart local v1    # "bitmaskResult":I
    .restart local v2    # "earpieceFlag":I
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    :cond_2
    :try_start_1
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->mHasEarpiece:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 172
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "bitmaskResult":I
    .end local v2    # "earpieceFlag":I
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 173
    .local v3, "error":Ljava/lang/Throwable;
    const-string/jumbo v6, "Error while checking earpiece! "

    invoke-static {v6, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->mHasEarpiece:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public isBluetoothHeadsetConnected()Z
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->isBtHeadsetConnected:Z

    return v0
.end method

.method public isMicMute()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->micMute:Z

    return v0
.end method

.method public isOutgoing()Z
    .locals 1

    .prologue
    .line 658
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->isOutgoing:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 487
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 1
    .param p1, "focusChange"    # I

    .prologue
    const/4 v0, 0x1

    .line 494
    if-ne p1, v0, :cond_0

    .line 495
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->haveAudioFocus:Z

    .line 499
    :goto_0
    return-void

    .line 497
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->haveAudioFocus:Z

    goto :goto_0
.end method

.method public onConnectionStateChanged(I)V
    .locals 10
    .param p1, "newState"    # I

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 593
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 594
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPBaseService;->callFailed()V

    .line 631
    :goto_0
    return-void

    .line 597
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 598
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->spPlayID:I

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->spPlayID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 600
    iput v4, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->spPlayID:I

    .line 602
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->wasEstablished:Z

    if-nez v0, :cond_3

    .line 603
    iput-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->wasEstablished:Z

    .line 604
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->isProximityNear:Z

    if-nez v0, :cond_2

    .line 605
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/voip/VoIPBaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Vibrator;

    .line 606
    .local v7, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v7}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 607
    const-wide/16 v0, 0x64

    invoke-virtual {v7, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 609
    .end local v7    # "vibrator":Landroid/os/Vibrator;
    :cond_2
    new-instance v0, Lorg/telegram/messenger/voip/VoIPBaseService$4;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPBaseService$4;-><init>(Lorg/telegram/messenger/voip/VoIPBaseService;)V

    const-wide/16 v8, 0x1388

    invoke-static {v0, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 619
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->isOutgoing:Z

    if-eqz v0, :cond_6

    .line 620
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPBaseService;->getStatsNetworkType()I

    move-result v1

    invoke-virtual {v0, v1, v4, v3}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    .line 625
    :cond_3
    :goto_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 626
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->spPlayID:I

    if-eqz v0, :cond_4

    .line 627
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->spPlayID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 628
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->spConnectingId:I

    const/4 v5, -0x1

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->spPlayID:I

    .line 630
    :cond_5
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/voip/VoIPBaseService;->dispatchStateChanged(I)V

    goto :goto_0

    .line 622
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPBaseService;->getStatsNetworkType()I

    move-result v1

    invoke-virtual {v0, v1, v4, v3}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    goto :goto_1
.end method

.method protected onControllerPreRelease()V
    .locals 0

    .prologue
    .line 342
    return-void
.end method

.method public onCreate()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 350
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 351
    const-string/jumbo v6, "=============== VoIPService STARTING ==============="

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 352
    const-string/jumbo v6, "audio"

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/voip/VoIPBaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 353
    .local v0, "am":Landroid/media/AudioManager;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-lt v6, v9, :cond_2

    const-string/jumbo v6, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 354
    const-string/jumbo v6, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 355
    .local v4, "outFramesPerBuffer":I
    invoke-static {v4}, Lorg/telegram/messenger/voip/VoIPController;->setNativeBufferSize(I)V

    .line 359
    .end local v4    # "outFramesPerBuffer":I
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPBaseService;->updateServerConfig()V

    .line 361
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPBaseService;->createController()Lorg/telegram/messenger/voip/VoIPController;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    .line 362
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v6, p0}, Lorg/telegram/messenger/voip/VoIPController;->setConnectionStateListener(Lorg/telegram/messenger/voip/VoIPController$ConnectionStateListener;)V

    .line 364
    const-string/jumbo v6, "power"

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/voip/VoIPBaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    const/4 v9, 0x1

    const-string/jumbo v10, "telegram-voip"

    invoke-virtual {v6, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->cpuWakelock:Landroid/os/PowerManager$WakeLock;

    .line 365
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->cpuWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 367
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    :goto_1
    iput-object v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 369
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 370
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    const-string/jumbo v6, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v6, :cond_0

    .line 373
    const-string/jumbo v6, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    const-string/jumbo v6, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    :cond_0
    const-string/jumbo v6, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v1}, Lorg/telegram/messenger/voip/VoIPBaseService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 379
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 381
    new-instance v6, Landroid/media/SoundPool;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->soundPool:Landroid/media/SoundPool;

    .line 382
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->soundPool:Landroid/media/SoundPool;

    const v9, 0x7f060003

    const/4 v10, 0x1

    invoke-virtual {v6, p0, v9, v10}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v6

    iput v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->spConnectingId:I

    .line 383
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->soundPool:Landroid/media/SoundPool;

    const v9, 0x7f060006

    const/4 v10, 0x1

    invoke-virtual {v6, p0, v9, v10}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v6

    iput v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->spRingbackID:I

    .line 384
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->soundPool:Landroid/media/SoundPool;

    const v9, 0x7f060005

    const/4 v10, 0x1

    invoke-virtual {v6, p0, v9, v10}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v6

    iput v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->spFailedID:I

    .line 385
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->soundPool:Landroid/media/SoundPool;

    const v9, 0x7f060004

    const/4 v10, 0x1

    invoke-virtual {v6, p0, v9, v10}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v6

    iput v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->spEndId:I

    .line 386
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->soundPool:Landroid/media/SoundPool;

    const v9, 0x7f060002

    const/4 v10, 0x1

    invoke-virtual {v6, p0, v9, v10}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v6

    iput v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->spBusyId:I

    .line 388
    new-instance v6, Landroid/content/ComponentName;

    const-class v9, Lorg/telegram/messenger/voip/VoIPMediaButtonReceiver;

    invoke-direct {v6, p0, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 390
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 391
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v2

    .line 392
    .local v2, "headsetState":I
    if-ne v2, v12, :cond_4

    move v6, v7

    :goto_2
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/voip/VoIPBaseService;->updateBluetoothHeadsetState(Z)V

    .line 393
    if-ne v2, v12, :cond_1

    .line 394
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 395
    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;

    .line 396
    .local v3, "l":Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;
    invoke-interface {v3}, Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;->onAudioSettingsChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 400
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "headsetState":I
    .end local v3    # "l":Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;
    :catch_0
    move-exception v5

    .line 401
    .local v5, "x":Ljava/lang/Exception;
    const-string/jumbo v6, "error initializing voip controller"

    invoke-static {v6, v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPBaseService;->callFailed()V

    .line 404
    .end local v5    # "x":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 357
    :cond_2
    const v6, 0xbb80

    const/4 v9, 0x4

    invoke-static {v6, v9, v12}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-static {v6}, Lorg/telegram/messenger/voip/VoIPController;->setNativeBufferSize(I)V

    goto/16 :goto_0

    .line 367
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_1

    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "headsetState":I
    :cond_4
    move v6, v8

    .line 392
    goto :goto_2

    .line 399
    .end local v2    # "headsetState":I
    :cond_5
    :try_start_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    invoke-virtual {v6, p0, v7}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 285
    const-string/jumbo v4, "=============== VoIPService STOPPING ==============="

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0, v12}, Lorg/telegram/messenger/voip/VoIPBaseService;->stopForeground(Z)V

    .line 287
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPBaseService;->stopRinging()V

    .line 288
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    invoke-virtual {v4, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 289
    const-string/jumbo v4, "sensor"

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/voip/VoIPBaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 290
    .local v2, "sm":Landroid/hardware/SensorManager;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 291
    .local v1, "proximity":Landroid/hardware/Sensor;
    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {v2, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 294
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 295
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 297
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/voip/VoIPBaseService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 298
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_2

    .line 299
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 300
    iput-object v11, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 302
    :cond_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 303
    sput-object v11, Lorg/telegram/messenger/voip/VoIPBaseService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPBaseService;

    .line 304
    new-instance v4, Lorg/telegram/messenger/voip/VoIPBaseService$3;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/voip/VoIPBaseService$3;-><init>(Lorg/telegram/messenger/voip/VoIPBaseService;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 310
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->controllerStarted:Z

    if-eqz v4, :cond_3

    .line 311
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v4}, Lorg/telegram/messenger/voip/VoIPController;->getCallDuration()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->lastKnownDuration:J

    .line 312
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPBaseService;->updateStats()V

    .line 313
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v4

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPBaseService;->getStatsNetworkType()I

    move-result v5

    iget-wide v6, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->lastKnownDuration:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v6, v6

    rem-int/lit8 v6, v6, 0x5

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/StatsController;->incrementTotalCallsTime(II)V

    .line 314
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPBaseService;->onControllerPreRelease()V

    .line 315
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v4}, Lorg/telegram/messenger/voip/VoIPController;->release()V

    .line 316
    iput-object v11, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    .line 318
    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->cpuWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 319
    const-string/jumbo v4, "audio"

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/voip/VoIPBaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 320
    .local v0, "am":Landroid/media/AudioManager;
    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->isBtHeadsetConnected:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->playingSound:Z

    if-nez v4, :cond_4

    .line 321
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 322
    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 325
    :cond_4
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_0
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lorg/telegram/messenger/voip/VoIPMediaButtonReceiver;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 330
    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->haveAudioFocus:Z

    if-eqz v4, :cond_5

    .line 331
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 333
    :cond_5
    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->playingSound:Z

    if-nez v4, :cond_6

    .line 334
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v4}, Landroid/media/SoundPool;->release()V

    .line 336
    :cond_6
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4, v12, v10}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lorg/telegram/ui/Components/voip/VoIPHelper;->lastCallTime:J

    .line 338
    return-void

    .line 326
    :catch_0
    move-exception v3

    .line 327
    .local v3, "x":Ljava/lang/SecurityException;
    const-string/jumbo v4, "Error setting audio more to normal"

    invoke-static {v4, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 462
    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 463
    const-string/jumbo v4, "audio"

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/voip/VoIPBaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 464
    .local v0, "am":Landroid/media/AudioManager;
    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->isHeadsetPlugged:Z

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPBaseService;->isBluetoothHeadsetConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 482
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    :goto_0
    return-void

    .line 467
    .restart local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v5

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 468
    .local v1, "newIsNear":Z
    :goto_1
    iget-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->isProximityNear:Z

    if-eq v1, v3, :cond_0

    .line 469
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "proximity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 470
    iput-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->isProximityNear:Z

    .line 472
    :try_start_0
    iget-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->isProximityNear:Z

    if-eqz v3, :cond_3

    .line 473
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 477
    :catch_0
    move-exception v2

    .line 478
    .local v2, "x":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v1    # "newIsNear":Z
    .end local v2    # "x":Ljava/lang/Exception;
    :cond_2
    move v1, v3

    .line 467
    goto :goto_1

    .line 475
    .restart local v1    # "newIsNear":Z
    :cond_3
    :try_start_1
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->release(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onSignalBarCountChanged(I)V
    .locals 3
    .param p1, "newCount"    # I

    .prologue
    .line 635
    iput p1, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->signalBarCount:I

    .line 636
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 637
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;

    .line 638
    .local v1, "l":Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;
    invoke-interface {v1, p1}, Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;->onSignalBarsCountChanged(I)V

    .line 636
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    .end local v1    # "l":Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;
    :cond_0
    return-void
.end method

.method public registerStateListener(Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;)V
    .locals 1
    .param p1, "l"    # Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;

    .prologue
    .line 190
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->currentState:I

    if-eqz v0, :cond_0

    .line 192
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->currentState:I

    invoke-interface {p1, v0}, Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;->onStateChanged(I)V

    .line 193
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->signalBarCount:I

    if-eqz v0, :cond_1

    .line 194
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->signalBarCount:I

    invoke-interface {p1, v0}, Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;->onSignalBarsCountChanged(I)V

    .line 195
    :cond_1
    return-void
.end method

.method public setMicMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 202
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->micMute:Z

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/voip/VoIPController;->setMicMute(Z)V

    .line 203
    return-void
.end method

.method protected abstract showNotification()V
.end method

.method protected showNotification(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/Class;)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "photo"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$FileLocation;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p3, "activity":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v8, 0x30000000

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 238
    new-instance v8, Landroid/app/Notification$Builder;

    invoke-direct {v8, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v9, "VoipOutgoingCall"

    const v10, 0x7f07064b

    .line 239
    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 240
    invoke-virtual {v8, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x7f020150

    .line 241
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 242
    invoke-static {p0, v9, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 243
    .local v1, "builder":Landroid/app/Notification$Builder;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-lt v8, v9, :cond_0

    .line 244
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lorg/telegram/messenger/voip/VoIPActionsReceiver;

    invoke-direct {v3, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .local v3, "endIntent":Landroid/content/Intent;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPBaseService;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".END_CALL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const v8, 0x7f0200a7

    const-string/jumbo v9, "VoipEndCall"

    const v10, 0x7f07063b

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/high16 v11, 0x8000000

    invoke-static {p0, v10, v3, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v1, v8, v9, v10}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 247
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 249
    .end local v3    # "endIntent":Landroid/content/Intent;
    :cond_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-lt v8, v9, :cond_1

    .line 250
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 252
    :cond_1
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_2

    .line 253
    const v8, -0xd35a20

    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 255
    :cond_2
    if-eqz p2, :cond_3

    .line 256
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v8

    const/4 v9, 0x0

    const-string/jumbo v10, "50_50"

    invoke-virtual {v8, p2, v9, v10}, Lorg/telegram/messenger/ImageLoader;->getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    .line 257
    .local v4, "img":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v4, :cond_4

    .line 258
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 273
    .end local v4    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->ongoingCallNotification:Landroid/app/Notification;

    .line 274
    const/16 v8, 0xc9

    iget-object v9, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->ongoingCallNotification:Landroid/app/Notification;

    invoke-virtual {p0, v8, v9}, Lorg/telegram/messenger/voip/VoIPBaseService;->startForeground(ILandroid/app/Notification;)V

    .line 275
    return-void

    .line 261
    .restart local v4    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :cond_4
    const/high16 v8, 0x43200000    # 160.0f

    const/high16 v9, 0x42480000    # 50.0f

    :try_start_0
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    div-float v7, v8, v9

    .line 262
    .local v7, "scaleFactor":F
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 263
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v8, v7, v8

    if-gez v8, :cond_5

    const/4 v8, 0x1

    :goto_1
    iput v8, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 264
    const/4 v8, 0x1

    invoke-static {p2, v8}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 265
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 266
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v7    # "scaleFactor":F
    :catch_0
    move-exception v2

    .line 269
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 263
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v7    # "scaleFactor":F
    :cond_5
    float-to-int v8, v7

    goto :goto_1
.end method

.method public stopRinging()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->ringtonePlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 226
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 227
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->ringtonePlayer:Landroid/media/MediaPlayer;

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 231
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->vibrator:Landroid/os/Vibrator;

    .line 233
    :cond_1
    return-void
.end method

.method public unregisterStateListener(Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;)V
    .locals 1
    .param p1, "l"    # Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;

    .prologue
    .line 198
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method protected updateBluetoothHeadsetState(Z)V
    .locals 4
    .param p1, "connected"    # Z

    .prologue
    .line 502
    iget-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->isBtHeadsetConnected:Z

    if-ne p1, v2, :cond_1

    .line 512
    :cond_0
    return-void

    .line 504
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->isBtHeadsetConnected:Z

    .line 505
    const-string/jumbo v2, "audio"

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/voip/VoIPBaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 506
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz p1, :cond_2

    .line 507
    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 510
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;

    .line 511
    .local v1, "l":Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;
    invoke-interface {v1}, Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;->onAudioSettingsChanged()V

    goto :goto_1

    .line 509
    .end local v1    # "l":Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;
    :cond_2
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    goto :goto_0
.end method

.method protected updateNetworkType()V
    .locals 4

    .prologue
    .line 523
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/voip/VoIPBaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 524
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 525
    .local v1, "info":Landroid/net/NetworkInfo;
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->lastNetInfo:Landroid/net/NetworkInfo;

    .line 526
    const/4 v2, 0x0

    .line 527
    .local v2, "type":I
    if-eqz v1, :cond_0

    .line 528
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 566
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    if-eqz v3, :cond_1

    .line 567
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/voip/VoIPController;->setNetworkType(I)V

    .line 569
    :cond_1
    return-void

    .line 530
    :sswitch_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 554
    :pswitch_0
    const/16 v2, 0xb

    .line 555
    goto :goto_0

    .line 532
    :pswitch_1
    const/4 v2, 0x1

    .line 533
    goto :goto_0

    .line 536
    :pswitch_2
    const/4 v2, 0x2

    .line 537
    goto :goto_0

    .line 540
    :pswitch_3
    const/4 v2, 0x3

    .line 541
    goto :goto_0

    .line 548
    :pswitch_4
    const/4 v2, 0x4

    .line 549
    goto :goto_0

    .line 551
    :pswitch_5
    const/4 v2, 0x5

    .line 552
    goto :goto_0

    .line 559
    :sswitch_1
    const/4 v2, 0x6

    .line 560
    goto :goto_0

    .line 562
    :sswitch_2
    const/4 v2, 0x7

    goto :goto_0

    .line 528
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch

    .line 530
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public updateOutputGainControlState()V
    .locals 3

    .prologue
    .line 688
    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/voip/VoIPBaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 689
    .local v0, "am":Landroid/media/AudioManager;
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPBaseService;->hasEarpiece()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->isHeadsetPlugged:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lorg/telegram/messenger/voip/VoIPController;->setAudioOutputGainControlEnabled(Z)V

    .line 690
    return-void

    .line 689
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract updateServerConfig()V
.end method

.method protected updateStats()V
    .locals 14

    .prologue
    .line 419
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    iget-object v10, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->stats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    invoke-virtual {v5, v10}, Lorg/telegram/messenger/voip/VoIPController;->getStats(Lorg/telegram/messenger/voip/VoIPController$Stats;)V

    .line 420
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->stats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    iget-wide v10, v5, Lorg/telegram/messenger/voip/VoIPController$Stats;->bytesSentWifi:J

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->prevStats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    iget-wide v12, v5, Lorg/telegram/messenger/voip/VoIPController$Stats;->bytesSentWifi:J

    sub-long v8, v10, v12

    .line 421
    .local v8, "wifiSentDiff":J
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->stats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    iget-wide v10, v5, Lorg/telegram/messenger/voip/VoIPController$Stats;->bytesRecvdWifi:J

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->prevStats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    iget-wide v12, v5, Lorg/telegram/messenger/voip/VoIPController$Stats;->bytesRecvdWifi:J

    sub-long v6, v10, v12

    .line 422
    .local v6, "wifiRecvdDiff":J
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->stats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    iget-wide v10, v5, Lorg/telegram/messenger/voip/VoIPController$Stats;->bytesSentMobile:J

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->prevStats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    iget-wide v12, v5, Lorg/telegram/messenger/voip/VoIPController$Stats;->bytesSentMobile:J

    sub-long v2, v10, v12

    .line 423
    .local v2, "mobileSentDiff":J
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->stats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    iget-wide v10, v5, Lorg/telegram/messenger/voip/VoIPController$Stats;->bytesRecvdMobile:J

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->prevStats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    iget-wide v12, v5, Lorg/telegram/messenger/voip/VoIPController$Stats;->bytesRecvdMobile:J

    sub-long v0, v10, v12

    .line 424
    .local v0, "mobileRecvdDiff":J
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->stats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    .line 425
    .local v4, "tmp":Lorg/telegram/messenger/voip/VoIPController$Stats;
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->prevStats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    iput-object v5, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->stats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    .line 426
    iput-object v4, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->prevStats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    .line 427
    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_0

    .line 428
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v5

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11, v8, v9}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    .line 429
    :cond_0
    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-lez v5, :cond_1

    .line 430
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v5

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11, v6, v7}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    .line 431
    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v5, v2, v10

    if-lez v5, :cond_2

    .line 432
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v10

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->lastNetInfo:Landroid/net/NetworkInfo;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->lastNetInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x2

    :goto_0
    const/4 v11, 0x0

    invoke-virtual {v10, v5, v11, v2, v3}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    .line 434
    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v5, v0, v10

    if-lez v5, :cond_3

    .line 435
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v10

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->lastNetInfo:Landroid/net/NetworkInfo;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPBaseService;->lastNetInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x2

    :goto_1
    const/4 v11, 0x0

    invoke-virtual {v10, v5, v11, v0, v1}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    .line 437
    :cond_3
    return-void

    .line 432
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 435
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method
