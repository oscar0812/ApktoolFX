.class Lorg/telegram/messenger/voip/VoIPBaseService$1;
.super Ljava/lang/Object;
.source "VoIPBaseService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 108
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPBaseService$1;->this$0:Lorg/telegram/messenger/voip/VoIPBaseService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService$1;->this$0:Lorg/telegram/messenger/voip/VoIPBaseService;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPBaseService;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 112
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPBaseService$1;->this$0:Lorg/telegram/messenger/voip/VoIPBaseService;

    iget-boolean v0, v0, Lorg/telegram/messenger/voip/VoIPBaseService;->isBtHeadsetConnected:Z

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 114
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 115
    return-void
.end method
