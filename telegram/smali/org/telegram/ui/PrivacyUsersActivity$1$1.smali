.class Lorg/telegram/ui/PrivacyUsersActivity$1$1;
.super Ljava/lang/Object;
.source "PrivacyUsersActivity.java"

# interfaces
.implements Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacyUsersActivity$1;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PrivacyUsersActivity$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacyUsersActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PrivacyUsersActivity$1;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/telegram/ui/PrivacyUsersActivity$1$1;->this$1:Lorg/telegram/ui/PrivacyUsersActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectUsers(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 113
    .local v0, "id":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/telegram/ui/PrivacyUsersActivity$1$1;->this$1:Lorg/telegram/ui/PrivacyUsersActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/PrivacyUsersActivity$1;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacyUsersActivity;->access$200(Lorg/telegram/ui/PrivacyUsersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    iget-object v2, p0, Lorg/telegram/ui/PrivacyUsersActivity$1$1;->this$1:Lorg/telegram/ui/PrivacyUsersActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/PrivacyUsersActivity$1;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacyUsersActivity;->access$200(Lorg/telegram/ui/PrivacyUsersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    .end local v0    # "id":Ljava/lang/Integer;
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PrivacyUsersActivity$1$1;->this$1:Lorg/telegram/ui/PrivacyUsersActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/PrivacyUsersActivity$1;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyUsersActivity;->access$300(Lorg/telegram/ui/PrivacyUsersActivity;)Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 119
    iget-object v1, p0, Lorg/telegram/ui/PrivacyUsersActivity$1$1;->this$1:Lorg/telegram/ui/PrivacyUsersActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/PrivacyUsersActivity$1;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyUsersActivity;->access$400(Lorg/telegram/ui/PrivacyUsersActivity;)Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 120
    iget-object v1, p0, Lorg/telegram/ui/PrivacyUsersActivity$1$1;->this$1:Lorg/telegram/ui/PrivacyUsersActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/PrivacyUsersActivity$1;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyUsersActivity;->access$400(Lorg/telegram/ui/PrivacyUsersActivity;)Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PrivacyUsersActivity$1$1;->this$1:Lorg/telegram/ui/PrivacyUsersActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/PrivacyUsersActivity$1;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacyUsersActivity;->access$200(Lorg/telegram/ui/PrivacyUsersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;->didUpdatedUserList(Ljava/util/ArrayList;Z)V

    .line 122
    :cond_2
    return-void
.end method
