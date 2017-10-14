.class Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$4;
.super Ljava/lang/Object;
.source "ChatUsersActivity.java"

# interfaces
.implements Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    .prologue
    .line 469
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$4;->this$1:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionsButtonCheck(Lorg/telegram/ui/Cells/ManageChatUserCell;Z)Z
    .locals 5
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ManageChatUserCell;
    .param p2, "click"    # Z

    .prologue
    const/4 v3, 0x0

    .line 472
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$4;->this$1:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 473
    .local v0, "object":Lorg/telegram/tgnet/TLObject;
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v2, :cond_0

    .line 474
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$4;->this$1:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 475
    .local v1, "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$4;->this$1:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    iget-object v4, v2, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    if-nez p2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v4, v1, v2}, Lorg/telegram/ui/ChatUsersActivity;->access$600(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$ChatParticipant;Z)Z

    move-result v3

    .line 477
    .end local v1    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_0
    return v3

    .restart local v1    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_1
    move v2, v3

    .line 475
    goto :goto_0
.end method
