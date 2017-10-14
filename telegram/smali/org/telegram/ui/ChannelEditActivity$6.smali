.class Lorg/telegram/ui/ChannelEditActivity$6;
.super Ljava/lang/Object;
.source "ChannelEditActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


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
    .line 270
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity$6;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 273
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$6;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$700(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v1

    if-lt p2, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$6;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$800(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 274
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$6;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChannelEditActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v2

    .line 285
    :goto_0
    return v1

    .line 278
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$6;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$900(Lorg/telegram/ui/ChannelEditActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$6;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$6;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$900(Lorg/telegram/ui/ChannelEditActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$6;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditActivity;->access$700(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v4

    sub-int v4, p2, v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    .line 283
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$6;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Lorg/telegram/ui/ChannelEditActivity;->access$1500(Lorg/telegram/ui/ChannelEditActivity;Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Z)Z

    move-result v1

    goto :goto_0

    .line 281
    .end local v0    # "user":Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$6;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$6;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$700(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    .restart local v0    # "user":Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    goto :goto_1

    .end local v0    # "user":Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    :cond_2
    move v1, v2

    .line 285
    goto :goto_0
.end method
