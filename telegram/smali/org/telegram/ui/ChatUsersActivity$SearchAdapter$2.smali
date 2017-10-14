.class Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$2;
.super Ljava/lang/Object;
.source "ChatUsersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->processSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    .prologue
    .line 378
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$2;->this$1:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$2;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v0, "contactsCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$ChatParticipant;>;"
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$2;->this$1:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->access$1100(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 383
    sget-object v1, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$2$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$2$1;-><init>(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$2;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 436
    return-void
.end method
