.class Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "JoinGroupAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/JoinGroupAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsersAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/JoinGroupAlert;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/JoinGroupAlert;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    iput-object p1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 186
    iput-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->context:Landroid/content/Context;

    .line 187
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    .prologue
    .line 191
    iget-object v2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$200(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 193
    .local v0, "count":I
    iget-object v2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$200(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_1

    .line 194
    iget-object v2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$200(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v1, v2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    .line 198
    .local v1, "participants_count":I
    :goto_0
    if-eq v0, v1, :cond_0

    .line 199
    add-int/lit8 v0, v0, 0x1

    .line 201
    :cond_0
    return v0

    .line 196
    .end local v1    # "participants_count":I
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$200(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v2

    iget v1, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants_count:I

    .restart local v1    # "participants_count":I
    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 206
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 223
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/JoinSheetUserCell;

    .line 224
    .local v0, "cell":Lorg/telegram/ui/Cells/JoinSheetUserCell;
    iget-object v2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$200(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 225
    iget-object v2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$200(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/JoinSheetUserCell;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 235
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$200(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_1

    .line 229
    iget-object v2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$200(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v1, v2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    .line 233
    .local v1, "participants_count":I
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$200(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/JoinSheetUserCell;->setCount(I)V

    goto :goto_0

    .line 231
    .end local v1    # "participants_count":I
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$200(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v2

    iget v1, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants_count:I

    .restart local v1    # "participants_count":I
    goto :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 216
    new-instance v0, Lorg/telegram/ui/Cells/JoinSheetUserCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/JoinSheetUserCell;-><init>(Landroid/content/Context;)V

    .line 217
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
