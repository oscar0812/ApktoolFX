.class Lorg/telegram/ui/Adapters/SearchAdapterHelper$2$1;
.super Ljava/lang/Object;
.source "SearchAdapterHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;

    .prologue
    .line 128
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 131
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;

    iget v1, v1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;->val$currentReqId2:I

    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;->this$0:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-static {v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->access$500(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 132
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v1, :cond_0

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    .line 134
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;->this$0:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;->val$query:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->access$602(Lorg/telegram/ui/Adapters/SearchAdapterHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 136
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;->this$0:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->access$702(Lorg/telegram/ui/Adapters/SearchAdapterHelper;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 137
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;->this$0:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-static {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->access$300(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;->onDataSetChanged()V

    .line 140
    .end local v0    # "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;->this$0:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-static {v1, v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->access$802(Lorg/telegram/ui/Adapters/SearchAdapterHelper;I)I

    .line 141
    return-void
.end method
