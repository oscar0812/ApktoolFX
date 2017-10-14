.class Lorg/telegram/messenger/voip/VoIPService$11;
.super Ljava/lang/Object;
.source "VoIPService.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall(ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/voip/VoIPService;

.field final synthetic val$onDone:Ljava/lang/Runnable;

.field final synthetic val$stopper:Ljava/lang/Runnable;

.field final synthetic val$wasNotConnected:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/VoIPService;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 582
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$11;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    iput-boolean p2, p0, Lorg/telegram/messenger/voip/VoIPService$11;->val$wasNotConnected:Z

    iput-object p3, p0, Lorg/telegram/messenger/voip/VoIPService$11;->val$stopper:Ljava/lang/Runnable;

    iput-object p4, p0, Lorg/telegram/messenger/voip/VoIPService$11;->val$onDone:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 585
    if-eqz p2, :cond_1

    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error on phone.discardCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 594
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService$11;->val$wasNotConnected:Z

    if-nez v1, :cond_0

    .line 595
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$11;->val$stopper:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 596
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$11;->val$onDone:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 597
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$11;->val$onDone:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 599
    :cond_0
    return-void

    .line 588
    :cond_1
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 589
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_updates;

    .line 590
    .local v0, "updates":Lorg/telegram/tgnet/TLRPC$TL_updates;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 592
    .end local v0    # "updates":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "phone.discardCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
