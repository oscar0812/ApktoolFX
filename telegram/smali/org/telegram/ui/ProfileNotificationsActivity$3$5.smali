.class Lorg/telegram/ui/ProfileNotificationsActivity$3$5;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ProfileNotificationsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileNotificationsActivity$3;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileNotificationsActivity$3;

.field final synthetic val$context1:Landroid/content/Context;

.field final synthetic val$selected:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileNotificationsActivity$3;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ProfileNotificationsActivity$3;

    .prologue
    .line 379
    iput-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3$5;->this$1:Lorg/telegram/ui/ProfileNotificationsActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3$5;->val$context1:Landroid/content/Context;

    iput p3, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3$5;->val$selected:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 382
    const/16 v0, 0x64

    return v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 387
    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 9
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 409
    iget-object v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    .line 410
    .local v3, "textView":Landroid/widget/TextView;
    iget v5, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3$5;->val$selected:I

    if-ne p2, v5, :cond_0

    const-string/jumbo v5, "dialogTextGray"

    :goto_0
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 411
    rem-int/lit8 v2, p2, 0xa

    .line 412
    .local v2, "notifyMaxCount":I
    div-int/lit8 v1, p2, 0xa

    .line 413
    .local v1, "notifyDelay":I
    const-string/jumbo v5, "Times"

    add-int/lit8 v6, v2, 0x1

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 414
    .local v4, "times":Ljava/lang/String;
    const-string/jumbo v5, "Minutes"

    add-int/lit8 v6, v1, 0x1

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "minutes":Ljava/lang/String;
    const-string/jumbo v5, "SmartNotificationsDetail"

    const v6, 0x7f0705a2

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    return-void

    .line 410
    .end local v0    # "minutes":Ljava/lang/String;
    .end local v1    # "notifyDelay":I
    .end local v2    # "notifyMaxCount":I
    .end local v4    # "times":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "dialogTextBlack"

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v3, 0x1

    .line 392
    new-instance v1, Lorg/telegram/ui/ProfileNotificationsActivity$3$5$1;

    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3$5;->val$context1:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/ProfileNotificationsActivity$3$5$1;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity$3$5;Landroid/content/Context;)V

    .local v1, "view":Landroid/view/View;
    move-object v0, v1

    .line 398
    check-cast v0, Landroid/widget/TextView;

    .line 399
    .local v0, "textView":Landroid/widget/TextView;
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 400
    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 401
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 402
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 403
    new-instance v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v2
.end method
