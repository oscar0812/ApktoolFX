.class public Lorg/telegram/ui/ArchivedStickersActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ArchivedStickersActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private currentType:I

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private endReached:Z

.field private firstLoaded:Z

.field private layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loadingStickers:Z

.field private rowCount:I

.field private sets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private stickersEndRow:I

.field private stickersLoadingRow:I

.field private stickersShadowRow:I

.field private stickersStartRow:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->sets:Ljava/util/ArrayList;

    .line 65
    iput p1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->currentType:I

    .line 66
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ArchivedStickersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArchivedStickersActivity;

    .prologue
    .line 42
    iget v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersStartRow:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ArchivedStickersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArchivedStickersActivity;

    .prologue
    .line 42
    iget v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersEndRow:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ArchivedStickersActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArchivedStickersActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/telegram/ui/ArchivedStickersActivity;->updateRows()V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ArchivedStickersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArchivedStickersActivity;

    .prologue
    .line 42
    iget v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ArchivedStickersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArchivedStickersActivity;

    .prologue
    .line 42
    iget v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersShadowRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ArchivedStickersActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArchivedStickersActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->sets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ArchivedStickersActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArchivedStickersActivity;

    .prologue
    .line 42
    iget-boolean v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->loadingStickers:Z

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/ArchivedStickersActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArchivedStickersActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->loadingStickers:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/ArchivedStickersActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArchivedStickersActivity;

    .prologue
    .line 42
    iget-boolean v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->endReached:Z

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/ArchivedStickersActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArchivedStickersActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->endReached:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/ArchivedStickersActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArchivedStickersActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ArchivedStickersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArchivedStickersActivity;

    .prologue
    .line 42
    iget v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersLoadingRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ArchivedStickersActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArchivedStickersActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/telegram/ui/ArchivedStickersActivity;->getStickers()V

    return-void
.end method

.method static synthetic access$802(Lorg/telegram/ui/ArchivedStickersActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArchivedStickersActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->firstLoaded:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/ArchivedStickersActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArchivedStickersActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object v0
.end method

.method private getStickers()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 196
    iget-boolean v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->loadingStickers:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->endReached:Z

    if-eqz v2, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iput-boolean v4, p0, Lorg/telegram/ui/ArchivedStickersActivity;->loadingStickers:Z

    .line 200
    iget-object v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->firstLoaded:Z

    if-nez v2, :cond_2

    .line 201
    iget-object v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 203
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listAdapter:Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;

    if-eqz v2, :cond_3

    .line 204
    iget-object v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listAdapter:Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 206
    :cond_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;-><init>()V

    .line 207
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;
    iget-object v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->sets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide/16 v2, 0x0

    :goto_1
    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->offset_id:J

    .line 208
    const/16 v2, 0xf

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->limit:I

    .line 209
    iget v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->currentType:I

    if-ne v2, v4, :cond_5

    move v2, v4

    :goto_2
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->masks:Z

    .line 210
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ArchivedStickersActivity$4;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ArchivedStickersActivity$4;-><init>(Lorg/telegram/ui/ArchivedStickersActivity;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v1

    .line 231
    .local v1, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/ArchivedStickersActivity;->classGuid:I

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    .line 207
    .end local v1    # "reqId":I
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->sets:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/ArchivedStickersActivity;->sets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    goto :goto_1

    .line 209
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private updateRows()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->rowCount:I

    .line 173
    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->sets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 174
    iget v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersStartRow:I

    .line 175
    iget v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->rowCount:I

    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->sets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersEndRow:I

    .line 176
    iget v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->rowCount:I

    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->sets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->rowCount:I

    .line 177
    iget-boolean v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->endReached:Z

    if-nez v0, :cond_1

    .line 178
    iget v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersLoadingRow:I

    .line 179
    iput v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersShadowRow:I

    .line 190
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listAdapter:Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listAdapter:Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 193
    :cond_0
    return-void

    .line 181
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersShadowRow:I

    .line 182
    iput v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersLoadingRow:I

    goto :goto_0

    .line 185
    :cond_2
    iput v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersStartRow:I

    .line 186
    iput v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersEndRow:I

    .line 187
    iput v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersLoadingRow:I

    .line 188
    iput v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->stickersShadowRow:I

    goto :goto_0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, 0x1

    .line 85
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v2, 0x7f020093

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 86
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 87
    iget v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->currentType:I

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "ArchivedStickers"

    const v3, 0x7f070084

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/ArchivedStickersActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArchivedStickersActivity$1;-><init>(Lorg/telegram/ui/ArchivedStickersActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 101
    new-instance v1, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;-><init>(Lorg/telegram/ui/ArchivedStickersActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listAdapter:Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;

    .line 103
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->fragmentView:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 105
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const-string/jumbo v1, "windowBackgroundGray"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 107
    new-instance v1, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 108
    iget v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->currentType:I

    if-nez v1, :cond_1

    .line 109
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v2, "ArchivedStickersEmpty"

    const v3, 0x7f070087

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 113
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-static {v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-boolean v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->loadingStickers:Z

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 120
    :goto_2
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 121
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setFocusable(Z)V

    .line 122
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 123
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v4, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 125
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listAdapter:Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 127
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ArchivedStickersActivity$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArchivedStickersActivity$2;-><init>(Lorg/telegram/ui/ArchivedStickersActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 159
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ArchivedStickersActivity$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArchivedStickersActivity$3;-><init>(Lorg/telegram/ui/ArchivedStickersActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 168
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->fragmentView:Landroid/view/View;

    return-object v1

    .line 90
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "ArchivedMasks"

    const v3, 0x7f07007f

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 111
    .restart local v0    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v2, "ArchivedMasksEmpty"

    const v3, 0x7f070082

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    goto :goto_2
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 244
    sget v0, Lorg/telegram/messenger/NotificationCenter;->needReloadArchivedStickers:I

    if-ne p1, v0, :cond_1

    .line 245
    iput-boolean v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->firstLoaded:Z

    .line 246
    iput-boolean v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->endReached:Z

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->sets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 248
    invoke-direct {p0}, Lorg/telegram/ui/ArchivedStickersActivity;->updateRows()V

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 252
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ArchivedStickersActivity;->getStickers()V

    .line 254
    :cond_1
    return-void
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 11

    .prologue
    .line 333
    const/16 v0, 0x13

    new-array v9, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/LoadingCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "emptyListPlaceholder"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "progressCircle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v10, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/LoadingCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "progressBar"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "progressCircle"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchThumb"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchTrack"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchThumbChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchTrackChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    return-object v9
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 71
    invoke-direct {p0}, Lorg/telegram/ui/ArchivedStickersActivity;->getStickers()V

    .line 72
    invoke-direct {p0}, Lorg/telegram/ui/ArchivedStickersActivity;->updateRows()V

    .line 73
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needReloadArchivedStickers:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 80
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needReloadArchivedStickers:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 81
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listAdapter:Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity;->listAdapter:Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 240
    :cond_0
    return-void
.end method
