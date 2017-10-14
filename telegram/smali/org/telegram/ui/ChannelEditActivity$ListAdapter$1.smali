.class Lorg/telegram/ui/ChannelEditActivity$ListAdapter$1;
.super Ljava/lang/Object;
.source "ChannelEditActivity.java"

# interfaces
.implements Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelEditActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditActivity$ListAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelEditActivity$ListAdapter;

    .prologue
    .line 709
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionsButtonCheck(Lorg/telegram/ui/Cells/ManageChatUserCell;Z)Z
    .locals 5
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ManageChatUserCell;
    .param p2, "click"    # Z

    .prologue
    .line 712
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 714
    .local v0, "i":I
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$900(Lorg/telegram/ui/ChannelEditActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 715
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$900(Lorg/telegram/ui/ChannelEditActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$ListAdapter;

    iget-object v4, v4, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditActivity;->access$700(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 719
    .local v1, "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$ListAdapter;

    iget-object v3, v2, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    .end local v1    # "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    const/4 v4, 0x0

    if-nez p2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v3, v1, v4, v2}, Lorg/telegram/ui/ChannelEditActivity;->access$1500(Lorg/telegram/ui/ChannelEditActivity;Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Z)Z

    move-result v2

    return v2

    .line 717
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$ListAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$700(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .restart local v1    # "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    goto :goto_0

    .line 719
    .end local v1    # "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
