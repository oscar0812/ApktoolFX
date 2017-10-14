.class Lorg/telegram/messenger/voip/VoIPBaseService$4;
.super Ljava/lang/Object;
.source "VoIPBaseService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/VoIPBaseService;->onConnectionStateChanged(I)V
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
    .line 609
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPBaseService$4;->this$0:Lorg/telegram/messenger/voip/VoIPBaseService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 612
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPBaseService$4;->this$0:Lorg/telegram/messenger/voip/VoIPBaseService;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPBaseService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    if-nez v1, :cond_0

    .line 617
    :goto_0
    return-void

    .line 614
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPBaseService$4;->this$0:Lorg/telegram/messenger/voip/VoIPBaseService;

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPBaseService;->getStatsNetworkType()I

    move-result v0

    .line 615
    .local v0, "netType":I
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/StatsController;->incrementTotalCallsTime(II)V

    .line 616
    const-wide/16 v2, 0x1388

    invoke-static {p0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
