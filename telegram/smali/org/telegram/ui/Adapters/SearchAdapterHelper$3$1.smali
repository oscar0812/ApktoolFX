.class Lorg/telegram/ui/Adapters/SearchAdapterHelper$3$1;
.super Ljava/lang/Object;
.source "SearchAdapterHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;

    .prologue
    .line 161
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 164
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;

    iget v3, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;->val$currentReqId:I

    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;

    iget-object v4, v4, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;->this$0:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-static {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->access$900(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 165
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v3, :cond_5

    .line 166
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;

    .line 167
    .local v1, "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_found;
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;

    iget-object v3, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;->this$0:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-static {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->access$1000(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 168
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;

    iget-boolean v3, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;->val$allowChats:Z

    if-eqz v3, :cond_0

    .line 169
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 170
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;

    iget-object v3, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;->this$0:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-static {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->access$1000(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "a":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_1
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 174
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 175
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;

    iget-boolean v3, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;->val$allowBots:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;

    iget-boolean v3, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;->val$allowSelf:Z

    if-nez v3, :cond_3

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v3, :cond_3

    .line 173
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;

    iget-object v3, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;->this$0:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-static {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->access$1000(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 180
    .end local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;

    iget-object v3, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;->this$0:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;

    iget-object v4, v4, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;->val$query:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->access$1102(Lorg/telegram/ui/Adapters/SearchAdapterHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;

    iget-object v3, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;->this$0:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-static {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->access$300(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;->onDataSetChanged()V

    .line 184
    .end local v0    # "a":I
    .end local v1    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_found;
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;

    iget-object v3, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;->this$0:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->access$1202(Lorg/telegram/ui/Adapters/SearchAdapterHelper;I)I

    .line 185
    return-void
.end method
