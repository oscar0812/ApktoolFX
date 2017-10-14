.class Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$5;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

    .prologue
    .line 1156
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$5;->this$1:Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

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

    .line 1159
    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$5;->this$1:Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 1160
    .local v0, "object":Lorg/telegram/tgnet/TLObject;
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v2, :cond_0

    .line 1161
    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$5;->this$1:Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 1162
    .local v1, "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$5;->this$1:Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

    iget-object v4, v2, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    if-nez p2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v4, v1, v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$1500(Lorg/telegram/ui/ChannelUsersActivity;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Z)Z

    move-result v3

    .line 1164
    .end local v1    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_0
    return v3

    .restart local v1    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_1
    move v2, v3

    .line 1162
    goto :goto_0
.end method
