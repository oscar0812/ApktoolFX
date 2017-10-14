.class public Lorg/telegram/ui/Components/StickersArchiveAlert;
.super Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
.source "StickersArchiveAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/StickersArchiveAlert$ListAdapter;
    }
.end annotation


# instance fields
.field private currentType:I

.field private ignoreLayout:Z

.field private parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private reqId:I

.field private scrollOffsetY:I

.field private stickerSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "sets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v11, 0x1

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v10, 0x0

    .line 45
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 48
    .local v8, "set":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v0, :cond_1

    .line 49
    iput v11, p0, Lorg/telegram/ui/Components/StickersArchiveAlert;->currentType:I

    .line 50
    const-string/jumbo v0, "ArchivedMasksAlertTitle"

    const v4, 0x7f070081

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/StickersArchiveAlert;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 55
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/StickersArchiveAlert;->stickerSets:Ljava/util/ArrayList;

    .line 56
    iput-object p2, p0, Lorg/telegram/ui/Components/StickersArchiveAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 58
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    .local v6, "container":Landroid/widget/LinearLayout;
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 60
    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/StickersArchiveAlert;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 62
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 63
    .local v9, "textView":Landroid/widget/TextView;
    const-string/jumbo v0, "windowBackgroundWhiteBlackText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v9, v11, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 65
    const/high16 v0, 0x41b80000    # 23.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41b80000    # 23.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v9, v0, v4, v5, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 66
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v0, :cond_2

    .line 67
    const-string/jumbo v0, "ArchivedMasksAlertInfo"

    const v4, 0x7f070080

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_1
    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v7, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v7, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    .line 74
    .local v7, "listView":Lorg/telegram/ui/Components/RecyclerListView;
    new-instance v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersArchiveAlert;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, v11, v10}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 75
    new-instance v0, Lorg/telegram/ui/Components/StickersArchiveAlert$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/StickersArchiveAlert$ListAdapter;-><init>(Lorg/telegram/ui/Components/StickersArchiveAlert;Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 76
    invoke-virtual {v7, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 77
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v7, v0, v10, v4, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 78
    const v0, -0xa0909

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 79
    const/4 v0, -0x1

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    const-string/jumbo v0, "Close"

    const v1, 0x7f070179

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/StickersArchiveAlert$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickersArchiveAlert$1;-><init>(Lorg/telegram/ui/Components/StickersArchiveAlert;)V

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/StickersArchiveAlert;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersArchiveAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    .line 88
    const-string/jumbo v0, "Settings"

    const v1, 0x7f070584

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/StickersArchiveAlert$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickersArchiveAlert$2;-><init>(Lorg/telegram/ui/Components/StickersArchiveAlert;)V

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/StickersArchiveAlert;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 96
    :cond_0
    return-void

    .line 52
    .end local v6    # "container":Landroid/widget/LinearLayout;
    .end local v7    # "listView":Lorg/telegram/ui/Components/RecyclerListView;
    .end local v9    # "textView":Landroid/widget/TextView;
    :cond_1
    iput v10, p0, Lorg/telegram/ui/Components/StickersArchiveAlert;->currentType:I

    .line 53
    const-string/jumbo v0, "ArchivedStickersAlertTitle"

    const v4, 0x7f070086

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/StickersArchiveAlert;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_0

    .line 69
    .restart local v6    # "container":Landroid/widget/LinearLayout;
    .restart local v9    # "textView":Landroid/widget/TextView;
    :cond_2
    const-string/jumbo v0, "ArchivedStickersAlertInfo"

    const v4, 0x7f070085

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/StickersArchiveAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersArchiveAlert;

    .prologue
    .line 34
    iget v0, p0, Lorg/telegram/ui/Components/StickersArchiveAlert;->currentType:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/StickersArchiveAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersArchiveAlert;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersArchiveAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/StickersArchiveAlert;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersArchiveAlert;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersArchiveAlert;->stickerSets:Ljava/util/ArrayList;

    return-object v0
.end method
