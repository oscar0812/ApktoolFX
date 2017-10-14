.class Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$3;
.super Ljava/lang/Object;
.source "ChatUsersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

.field final synthetic val$names:Ljava/util/ArrayList;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    .prologue
    .line 441
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$3;->this$1:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$3;->val$users:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$3;->val$names:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$3;->this$1:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$3;->val$users:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->access$1302(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 445
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$3;->this$1:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$3;->val$names:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->access$1402(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 446
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$3;->this$1:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->notifyDataSetChanged()V

    .line 447
    return-void
.end method
