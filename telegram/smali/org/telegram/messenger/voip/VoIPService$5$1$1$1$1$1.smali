.class Lorg/telegram/messenger/voip/VoIPService$5$1$1$1$1$1;
.super Ljava/lang/Object;
.source "VoIPService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/VoIPService$5$1$1$1$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$5:Lorg/telegram/messenger/voip/VoIPService$5$1$1$1$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/VoIPService$5$1$1$1$1;)V
    .locals 0
    .param p1, "this$5"    # Lorg/telegram/messenger/voip/VoIPService$5$1$1$1$1;

    .prologue
    .line 292
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$5$1$1$1$1$1;->this$5:Lorg/telegram/messenger/voip/VoIPService$5$1$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$5$1$1$1$1$1;->this$5:Lorg/telegram/messenger/voip/VoIPService$5$1$1$1$1;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService$5$1$1$1$1;->this$4:Lorg/telegram/messenger/voip/VoIPService$5$1$1$1;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService$5$1$1$1;->this$3:Lorg/telegram/messenger/voip/VoIPService$5$1$1;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService$5$1$1;->this$2:Lorg/telegram/messenger/voip/VoIPService$5$1;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService$5$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$5;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService$5;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    .line 296
    return-void
.end method
