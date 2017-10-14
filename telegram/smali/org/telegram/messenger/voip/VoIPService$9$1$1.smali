.class Lorg/telegram/messenger/voip/VoIPService$9$1$1;
.super Ljava/lang/Object;
.source "VoIPService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/VoIPService$9$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/voip/VoIPService$9$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/VoIPService$9$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/messenger/voip/VoIPService$9$1;

    .prologue
    .line 483
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$9$1$1;->this$2:Lorg/telegram/messenger/voip/VoIPService$9$1;

    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService$9$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/messenger/voip/VoIPService$9$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$9$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_1

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "accept call ok! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$9$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$9$1$1;->this$2:Lorg/telegram/messenger/voip/VoIPService$9$1;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService$9$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$9;

    iget-object v1, v0, Lorg/telegram/messenger/voip/VoIPService$9;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$9$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_phone_phoneCall;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_phoneCall;->phone_call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    invoke-static {v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->access$502(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$PhoneCall;)Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .line 489
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$9$1$1;->this$2:Lorg/telegram/messenger/voip/VoIPService$9$1;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService$9$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$9;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService$9;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPService;->access$500(Lorg/telegram/messenger/voip/VoIPService;)Lorg/telegram/tgnet/TLRPC$PhoneCall;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$9$1$1;->this$2:Lorg/telegram/messenger/voip/VoIPService$9$1;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService$9$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$9;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService$9;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$9$1$1;->this$2:Lorg/telegram/messenger/voip/VoIPService$9$1;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$9$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$9;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$9;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {v1}, Lorg/telegram/messenger/voip/VoIPService;->access$500(Lorg/telegram/messenger/voip/VoIPService;)Lorg/telegram/tgnet/TLRPC$PhoneCall;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->onCallUpdated(Lorg/telegram/tgnet/TLRPC$PhoneCall;)V

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Error on phone.acceptCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$9$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$9$1$1;->this$2:Lorg/telegram/messenger/voip/VoIPService$9$1;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService$9$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$9;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService$9;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    goto :goto_0
.end method
