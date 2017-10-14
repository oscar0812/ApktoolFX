.class Lorg/telegram/ui/ChannelEditActivity$5;
.super Ljava/lang/Object;
.source "ChannelEditActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelEditActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 227
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 230
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChannelEditActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$600(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditActivity;->access$300(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 234
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 235
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "user_id"

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditActivity;->access$300(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;

    move-result-object v4

    invoke-virtual {v4, p2}, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    move-result-object v4

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    new-instance v4, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v4, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ChannelEditActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 238
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$700(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v3

    if-lt p2, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$800(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v3

    if-ge p2, v3, :cond_4

    .line 240
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$900(Lorg/telegram/ui/ChannelEditActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 241
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$900(Lorg/telegram/ui/ChannelEditActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelEditActivity;->access$700(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v5

    sub-int v5, p2, v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v2, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    .line 245
    .local v2, "user_id":I
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 246
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string/jumbo v3, "user_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 247
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    new-instance v4, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v4, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ChannelEditActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 243
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "user_id":I
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditActivity;->access$700(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v4

    sub-int v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v2, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    .restart local v2    # "user_id":I
    goto :goto_1

    .line 248
    .end local v2    # "user_id":I
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$1100(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v3

    if-eq p2, v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$1200(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v3

    if-ne p2, v3, :cond_8

    .line 249
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string/jumbo v3, "chat_id"

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditActivity;->access$100(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$1100(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v3

    if-ne p2, v3, :cond_7

    .line 252
    const-string/jumbo v3, "type"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    :cond_6
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    new-instance v4, Lorg/telegram/ui/ChannelUsersActivity;

    invoke-direct {v4, v0}, Lorg/telegram/ui/ChannelUsersActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ChannelEditActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 253
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$1200(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v3

    if-ne p2, v3, :cond_6

    .line 254
    const-string/jumbo v3, "type"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 257
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$1300(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v3

    if-ne p2, v3, :cond_9

    .line 258
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    new-instance v4, Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v5, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelEditActivity;->access$000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/ui/ChannelAdminLogActivity;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ChannelEditActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 259
    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$1400(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v3

    if-ne p2, v3, :cond_0

    .line 260
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 261
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string/jumbo v3, "chat_id"

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditActivity;->access$100(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    new-instance v1, Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChannelEditInfoActivity;-><init>(Landroid/os/Bundle;)V

    .line 263
    .local v1, "fragment":Lorg/telegram/ui/ChannelEditInfoActivity;
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 264
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$5;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ChannelEditActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0
.end method
