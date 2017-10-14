.class Lorg/telegram/messenger/voip/VoIPService$15;
.super Ljava/lang/Object;
.source "VoIPService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/VoIPService;->startConnectingSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/voip/VoIPService;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 940
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$15;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 943
    sget-object v0, Lorg/telegram/messenger/voip/VoIPBaseService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPBaseService;

    if-nez v0, :cond_1

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 945
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$15;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    iget v0, v0, Lorg/telegram/messenger/voip/VoIPService;->spPlayID:I

    if-nez v0, :cond_2

    .line 946
    iget-object v7, p0, Lorg/telegram/messenger/voip/VoIPService$15;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$15;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$15;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    iget v1, v1, Lorg/telegram/messenger/voip/VoIPService;->spConnectingId:I

    const/4 v4, 0x0

    const/4 v5, -0x1

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, v7, Lorg/telegram/messenger/voip/VoIPService;->spPlayID:I

    .line 947
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$15;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    iget v0, v0, Lorg/telegram/messenger/voip/VoIPService;->spPlayID:I

    if-nez v0, :cond_0

    .line 948
    const-wide/16 v0, 0x64

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
