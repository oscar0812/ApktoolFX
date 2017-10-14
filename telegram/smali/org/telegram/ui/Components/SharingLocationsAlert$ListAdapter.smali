.class Lorg/telegram/ui/Components/SharingLocationsAlert$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SharingLocationsAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharingLocationsAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/SharingLocationsAlert;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    iput-object p1, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 247
    iput-object p2, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$ListAdapter;->context:Landroid/content/Context;

    .line 248
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 252
    invoke-static {}, Lorg/telegram/messenger/LocationController;->getInstance()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 258
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 265
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 8
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 304
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 306
    :pswitch_0
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/SharingLiveLocationCell;

    .line 307
    .local v0, "cell":Lorg/telegram/ui/Cells/SharingLiveLocationCell;
    invoke-static {}, Lorg/telegram/messenger/LocationController;->getInstance()Lorg/telegram/messenger/LocationController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;->setDialog(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    goto :goto_0

    .line 311
    .end local v0    # "cell":Lorg/telegram/ui/Cells/SharingLiveLocationCell;
    :pswitch_1
    iget-object v1, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharingLocationsAlert;->access$700(Lorg/telegram/ui/Components/SharingLocationsAlert;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharingLocationsAlert;->access$700(Lorg/telegram/ui/Components/SharingLocationsAlert;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, "SharingLiveLocationTitle"

    const v3, 0x7f070597

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "Chats"

    invoke-static {}, Lorg/telegram/messenger/LocationController;->getInstance()Lorg/telegram/messenger/LocationController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v5, 0x0

    .line 271
    packed-switch p2, :pswitch_data_0

    .line 278
    new-instance v0, Lorg/telegram/ui/Components/SharingLocationsAlert$ListAdapter$1;

    iget-object v2, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$ListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Components/SharingLocationsAlert$ListAdapter$1;-><init>(Lorg/telegram/ui/Components/SharingLocationsAlert$ListAdapter;Landroid/content/Context;)V

    .line 289
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 290
    iget-object v2, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$ListAdapter;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/SharingLocationsAlert;->access$702(Lorg/telegram/ui/Components/SharingLocationsAlert;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 291
    iget-object v2, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharingLocationsAlert;->access$700(Lorg/telegram/ui/Components/SharingLocationsAlert;)Landroid/widget/TextView;

    move-result-object v2

    const-string/jumbo v3, "dialogIcon"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 292
    iget-object v2, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharingLocationsAlert;->access$700(Lorg/telegram/ui/Components/SharingLocationsAlert;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 293
    iget-object v2, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharingLocationsAlert;->access$700(Lorg/telegram/ui/Components/SharingLocationsAlert;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 294
    iget-object v2, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharingLocationsAlert;->access$700(Lorg/telegram/ui/Components/SharingLocationsAlert;)Landroid/widget/TextView;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v5, v5, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 295
    iget-object v2, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharingLocationsAlert;->access$700(Lorg/telegram/ui/Components/SharingLocationsAlert;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, -0x1

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    move-object v1, v0

    .line 299
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    .local v1, "view":Landroid/view/View;
    :goto_0
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v2

    .line 273
    .end local v1    # "view":Landroid/view/View;
    :pswitch_0
    new-instance v1, Lorg/telegram/ui/Cells/SharingLiveLocationCell;

    iget-object v2, p0, Lorg/telegram/ui/Components/SharingLocationsAlert$ListAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v5}, Lorg/telegram/ui/Cells/SharingLiveLocationCell;-><init>(Landroid/content/Context;Z)V

    .line 275
    .restart local v1    # "view":Landroid/view/View;
    goto :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
