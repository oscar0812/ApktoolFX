.class Lorg/telegram/ui/ChannelEditActivity$3;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "ChannelEditActivity.java"


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
    .line 167
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditActivity;->access$300(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->searchDialogs(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/ChannelEditActivity;->access$202(Lorg/telegram/ui/ChannelEditActivity;Z)Z

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/ChannelEditActivity;->access$402(Lorg/telegram/ui/ChannelEditActivity;Z)Z

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditActivity;->access$600(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$500(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/ChannelEditActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditActivity;->access$500(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/ChannelEditActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->notifyDataSetChanged()V

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditActivity;->access$600(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollVisible(Z)V

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditActivity;->access$600(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 182
    return-void
.end method

.method public onSearchExpand()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelEditActivity;->access$202(Lorg/telegram/ui/ChannelEditActivity;Z)Z

    .line 171
    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 4
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    const/4 v3, 0x1

    .line 186
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$300(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 200
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/ChannelEditActivity;->access$402(Lorg/telegram/ui/ChannelEditActivity;Z)Z

    .line 192
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$600(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$600(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$300(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 194
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$300(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->notifyDataSetChanged()V

    .line 195
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$600(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollVisible(Z)V

    .line 196
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$600(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 199
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$3;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$300(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->searchDialogs(Ljava/lang/String;)V

    goto :goto_0
.end method
