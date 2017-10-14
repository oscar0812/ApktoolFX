.class Lorg/telegram/ui/ChatUsersActivity$3;
.super Ljava/lang/Object;
.source "ChatUsersActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatUsersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatUsersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatUsersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChatUsersActivity;

    .prologue
    .line 205
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$3;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 209
    const/4 v5, 0x0

    .line 210
    .local v5, "user_id":I
    const/4 v4, 0x0

    .line 211
    .local v4, "promoted_by":I
    const/4 v1, 0x0

    .line 212
    .local v1, "canEditAdmin":Z
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity$3;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatUsersActivity;->access$500(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ChatUsersActivity$3;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatUsersActivity;->access$400(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    move-result-object v7

    if-ne v6, v7, :cond_2

    .line 213
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity$3;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatUsersActivity;->access$400(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    move-result-object v6

    invoke-virtual {v6, p2}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    move-result-object v3

    .line 214
    .local v3, "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    if-eqz v3, :cond_0

    .line 215
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    .line 228
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 229
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 230
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v6, "user_id"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 231
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity$3;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    new-instance v7, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v7, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ChatUsersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 233
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    return-void

    .line 218
    .end local v3    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity$3;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatUsersActivity;->access$200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    move-result-object v6

    invoke-virtual {v6, p2}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v2

    .line 219
    .local v2, "object":Lorg/telegram/tgnet/TLObject;
    instance-of v6, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v6, :cond_3

    move-object v3, v2

    .line 220
    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 224
    .restart local v3    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :goto_1
    if-eqz v3, :cond_0

    .line 225
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    goto :goto_0

    .line 222
    .end local v3    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    goto :goto_1
.end method
