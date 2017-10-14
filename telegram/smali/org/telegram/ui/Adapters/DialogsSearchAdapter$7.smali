.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;
.super Ljava/lang/Object;
.source "DialogsSearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

.field final synthetic val$encUsers:Ljava/util/ArrayList;

.field final synthetic val$names:Ljava/util/ArrayList;

.field final synthetic val$result:Ljava/util/ArrayList;

.field final synthetic val$searchId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 781
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iput p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$searchId:I

    iput-object p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$result:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$encUsers:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$names:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 784
    iget v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$searchId:I

    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$900(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 804
    :goto_0
    return-void

    .line 787
    :cond_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 788
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLObject;

    .line 789
    .local v2, "obj":Lorg/telegram/tgnet/TLObject;
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_2

    move-object v3, v2

    .line 790
    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 791
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 787
    .end local v3    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 792
    :cond_2
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_3

    move-object v1, v2

    .line 793
    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 794
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v1, v6}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto :goto_2

    .line 795
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_3
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v4, :cond_1

    move-object v1, v2

    .line 796
    check-cast v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 797
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v1, v6}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    goto :goto_2

    .line 800
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v2    # "obj":Lorg/telegram/tgnet/TLObject;
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$encUsers:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 801
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$result:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$1202(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 802
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$names:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$1302(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 803
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
