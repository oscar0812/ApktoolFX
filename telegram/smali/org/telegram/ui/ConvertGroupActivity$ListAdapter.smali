.class Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ConvertGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ConvertGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ConvertGroupActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ConvertGroupActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    iput-object p1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 138
    iput-object p2, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 139
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    invoke-static {v0}, Lorg/telegram/ui/ConvertGroupActivity;->access$200(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 191
    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    invoke-static {v1}, Lorg/telegram/ui/ConvertGroupActivity;->access$000(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v0

    .line 193
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    invoke-static {v1}, Lorg/telegram/ui/ConvertGroupActivity;->access$300(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    invoke-static {v1}, Lorg/telegram/ui/ConvertGroupActivity;->access$400(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 194
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 143
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    invoke-static {v1}, Lorg/telegram/ui/ConvertGroupActivity;->access$000(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 169
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 171
    :pswitch_0
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 172
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v2, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    invoke-static {v2}, Lorg/telegram/ui/ConvertGroupActivity;->access$000(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 173
    const-string/jumbo v2, "ConvertGroup"

    const v3, 0x7f070198

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 177
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :pswitch_1
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 178
    .local v0, "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    iget-object v2, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    invoke-static {v2}, Lorg/telegram/ui/ConvertGroupActivity;->access$300(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v2

    if-ne p2, v2, :cond_1

    .line 179
    const-string/jumbo v2, "ConvertGroupInfo2"

    const v3, 0x7f07019c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v2, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f020084

    const-string/jumbo v4, "windowBackgroundGrayShadow"

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->this$0:Lorg/telegram/ui/ConvertGroupActivity;

    invoke-static {v2}, Lorg/telegram/ui/ConvertGroupActivity;->access$400(Lorg/telegram/ui/ConvertGroupActivity;)I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 182
    const-string/jumbo v2, "ConvertGroupInfo3"

    const v3, 0x7f07019d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v2, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f020085

    const-string/jumbo v4, "windowBackgroundGrayShadow"

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 154
    packed-switch p2, :pswitch_data_0

    .line 161
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 164
    .local v0, "view":Landroid/view/View;
    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 156
    .end local v0    # "view":Landroid/view/View;
    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/ConvertGroupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 157
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
