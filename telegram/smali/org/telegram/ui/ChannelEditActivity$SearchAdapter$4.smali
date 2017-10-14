.class Lorg/telegram/ui/ChannelEditActivity$SearchAdapter$4;
.super Ljava/lang/Object;
.source "ChannelEditActivity.java"

# interfaces
.implements Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;

    .prologue
    .line 641
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter$4;->this$1:Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionsButtonCheck(Lorg/telegram/ui/Cells/ManageChatUserCell;Z)Z
    .locals 4
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ManageChatUserCell;
    .param p2, "click"    # Z

    .prologue
    .line 644
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter$4;->this$1:Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;

    iget-object v1, v0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter$4;->this$1:Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    move-result-object v3

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v3, v0}, Lorg/telegram/ui/ChannelEditActivity;->access$1500(Lorg/telegram/ui/ChannelEditActivity;Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
