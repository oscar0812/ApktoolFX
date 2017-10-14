.class Lorg/telegram/messenger/voip/VoIPService$13$1;
.super Ljava/lang/Object;
.source "VoIPService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/VoIPService$13;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/voip/VoIPService$13;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/VoIPService$13;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/voip/VoIPService$13;

    .prologue
    .line 782
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$13$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$13;

    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService$13$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/messenger/voip/VoIPService$13$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 785
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$13$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$13$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$13;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService$13;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    .line 791
    :goto_0
    return-void

    .line 788
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$13$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$13;

    iget-object v1, v0, Lorg/telegram/messenger/voip/VoIPService$13;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$13$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_phone_phoneCall;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_phoneCall;->phone_call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    invoke-static {v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->access$502(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$PhoneCall;)Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .line 789
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$13$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$13;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService$13;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPService;->access$1100(Lorg/telegram/messenger/voip/VoIPService;)V

    goto :goto_0
.end method
