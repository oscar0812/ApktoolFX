.class Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$3;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->processSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

    .prologue
    .line 958
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$3;->this$1:Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$3;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 961
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$3;->this$1:Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->access$2600(Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;)Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$3;->val$query:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$3;->this$1:Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$1300(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$3;->this$1:Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

    iget-object v5, v5, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelUsersActivity;->access$800(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v6

    iget-object v5, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$3;->this$1:Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

    iget-object v5, v5, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v5

    if-nez v5, :cond_2

    move v7, v4

    :goto_1
    move v5, v4

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZIZ)V

    .line 962
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$3;->this$1:Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$1300(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 963
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 964
    .local v8, "contactsCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 965
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$3$1;

    invoke-direct {v1, p0, v8}, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$3$1;-><init>(Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$3;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1023
    .end local v8    # "contactsCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_0
    return-void

    :cond_1
    move v2, v3

    .line 961
    goto :goto_0

    :cond_2
    move v7, v3

    goto :goto_1
.end method
