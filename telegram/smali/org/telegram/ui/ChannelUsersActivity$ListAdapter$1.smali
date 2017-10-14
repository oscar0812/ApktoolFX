.class Lorg/telegram/ui/ChannelUsersActivity$ListAdapter$1;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    .prologue
    .line 1330
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionsButtonCheck(Lorg/telegram/ui/Cells/ManageChatUserCell;Z)Z
    .locals 3
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ManageChatUserCell;
    .param p2, "click"    # Z

    .prologue
    .line 1333
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$400(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    move-result-object v2

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    move-result-object v0

    .line 1334
    .local v0, "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    iget-object v2, v1, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    if-nez p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v0, v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$1500(Lorg/telegram/ui/ChannelUsersActivity;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Z)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
