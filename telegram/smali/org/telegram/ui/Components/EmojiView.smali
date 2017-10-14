.class public Lorg/telegram/ui/Components/EmojiView;
.super Landroid/widget/FrameLayout;
.source "EmojiView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/EmojiView$GifsAdapter;,
        Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;,
        Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;,
        Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;,
        Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;,
        Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;,
        Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;,
        Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;,
        Lorg/telegram/ui/Components/EmojiView$DragListener;,
        Lorg/telegram/ui/Components/EmojiView$Listener;
    }
.end annotation


# static fields
.field private static final NOP:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private static final superListenerField:Ljava/lang/reflect/Field;


# instance fields
.field private adapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private backspaceButton:Landroid/widget/ImageView;

.field private backspaceOnce:Z

.field private backspacePressed:Z

.field private currentBackgroundType:I

.field private currentChatId:I

.field private currentPage:I

.field private dotPaint:Landroid/graphics/Paint;

.field private dragListener:Lorg/telegram/ui/Components/EmojiView$DragListener;

.field private emojiGrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation
.end field

.field private emojiSize:I

.field private emojiTab:Landroid/widget/LinearLayout;

.field private favTabBum:I

.field private favouriteStickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private featuredStickersHash:I

.field private flowLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

.field private gifTabNum:I

.field private gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

.field private gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private groupStickerPackNum:I

.field private groupStickerPackPosition:I

.field private groupStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

.field private groupStickersHidden:Z

.field private icons:[Landroid/graphics/drawable/Drawable;

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private installingStickerSets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private isLayout:Z

.field private lastNotifyWidth:I

.field private listener:Lorg/telegram/ui/Components/EmojiView$Listener;

.field private location:[I

.field private mediaBanTooltip:Landroid/widget/TextView;

.field private minusDy:I

.field private oldWidth:I

.field private outlineProvider:Ljava/lang/Object;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

.field private pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

.field private pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

.field private popupHeight:I

.field private popupWidth:I

.field private recentGifs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private recentStickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private recentTabBum:I

.field private removingStickerSets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private showGifs:Z

.field private stickerPreviewViewerDelegate:Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

.field private stickerSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private stickersEmptyView:Landroid/widget/TextView;

.field private stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

.field private stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

.field private stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

.field private stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

.field private stickersTabOffset:I

.field private stickersWrap:Landroid/widget/FrameLayout;

.field private switchToGifTab:Z

.field private trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

.field private trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private trendingLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

.field private trendingLoaded:Z

.field private trendingTabNum:I

.field private views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 139
    .local v0, "f":Ljava/lang/reflect/Field;
    :try_start_0
    const-class v1, Landroid/widget/PopupWindow;

    const-string/jumbo v2, "mOnScrollChangedListener"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 140
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    sput-object v0, Lorg/telegram/ui/Components/EmojiView;->superListenerField:Ljava/lang/reflect/Field;

    .line 146
    new-instance v1, Lorg/telegram/ui/Components/EmojiView$2;

    invoke-direct {v1}, Lorg/telegram/ui/Components/EmojiView$2;-><init>()V

    sput-object v1, Lorg/telegram/ui/Components/EmojiView;->NOP:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void

    .line 141
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(ZZLandroid/content/Context;Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 18
    .param p1, "needStickers"    # Z
    .param p2, "needGif"    # Z
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "chatFull"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 627
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/EmojiView$1;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickerPreviewViewerDelegate:Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    .line 551
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    .line 552
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    .line 558
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    .line 559
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    .line 560
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    .line 569
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;

    .line 570
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiGrids:Ljava/util/ArrayList;

    .line 591
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Ljava/util/HashMap;

    .line 592
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Ljava/util/HashMap;

    .line 603
    const/4 v2, 0x2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->location:[I

    .line 605
    const/4 v2, -0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    .line 606
    const/4 v2, -0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->favTabBum:I

    .line 607
    const/4 v2, -0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    .line 608
    const/4 v2, -0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    .line 614
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    .line 629
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 630
    .local v13, "stickersDrawable":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v2, "chat_emojiPanelIcon"

    invoke-static {v13, v2}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColorByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 631
    const/4 v2, 0x7

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const v4, 0x7f0200d6

    const-string/jumbo v5, "chat_emojiPanelIcon"

    .line 632
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "chat_emojiPanelIconSelected"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f0200d8

    const-string/jumbo v5, "chat_emojiPanelIcon"

    .line 633
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "chat_emojiPanelIconSelected"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const v4, 0x7f0200d4

    const-string/jumbo v5, "chat_emojiPanelIcon"

    .line 634
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "chat_emojiPanelIconSelected"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const v4, 0x7f0200d3

    const-string/jumbo v5, "chat_emojiPanelIcon"

    .line 635
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "chat_emojiPanelIconSelected"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const v4, 0x7f0200d2

    const-string/jumbo v5, "chat_emojiPanelIcon"

    .line 636
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "chat_emojiPanelIconSelected"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const v4, 0x7f0200d5

    const-string/jumbo v5, "chat_emojiPanelIcon"

    .line 637
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "chat_emojiPanelIconSelected"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object v13, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->icons:[Landroid/graphics/drawable/Drawable;

    .line 641
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/EmojiView;->showGifs:Z

    .line 642
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 644
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->dotPaint:Landroid/graphics/Paint;

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->dotPaint:Landroid/graphics/Paint;

    const-string/jumbo v3, "chat_emojiPanelNewTrending"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 647
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 648
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/EmojiView$3;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->outlineProvider:Ljava/lang/Object;

    .line 657
    :cond_0
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    sget-object v2, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    if-ge v12, v2, :cond_2

    .line 658
    new-instance v11, Landroid/widget/GridView;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 659
    .local v11, "gridView":Landroid/widget/GridView;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 660
    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 664
    :goto_1
    const/4 v2, -0x1

    invoke-virtual {v11, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 665
    new-instance v9, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    add-int/lit8 v2, v12, -0x1

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    .line 667
    .local v9, "emojiGridAdapter":Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;
    invoke-virtual {v11, v9}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiGrids:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    new-instance v10, Landroid/widget/FrameLayout;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 671
    .local v10, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v11, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 662
    .end local v9    # "emojiGridAdapter":Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;
    .end local v10    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_1
    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    goto :goto_1

    .line 676
    .end local v11    # "gridView":Landroid/widget/GridView;
    :cond_2
    if-eqz p1, :cond_4

    .line 677
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    .line 679
    const/4 v2, 0x0

    invoke-static {v2}, Lorg/telegram/messenger/query/StickersQuery;->checkStickers(I)V

    .line 680
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->checkFeaturedStickers()V

    .line 681
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/EmojiView$4;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/messenger/support/widget/GridLayoutManager;

    const/4 v4, 0x5

    move-object/from16 v0, p3

    invoke-direct {v3, v0, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$5;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setSpanSizeLookup(Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    const/high16 v4, 0x42500000    # 52.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 715
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$6;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 721
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/EmojiView$7;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 737
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string/jumbo v3, "chat_emojiPanelBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 740
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$8;

    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1, v4}, Lorg/telegram/ui/Components/EmojiView$8;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->trendingLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$9;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setSpanSizeLookup(Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 758
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$10;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 767
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$11;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->notifyDataSetChanged()V

    .line 777
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string/jumbo v3, "chat_emojiPanelBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 778
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 781
    if-eqz p2, :cond_3

    .line 782
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 783
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 784
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 785
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$12;

    const/16 v4, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1, v4}, Lorg/telegram/ui/Components/EmojiView$12;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->flowLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 805
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->flowLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$13;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->setSpanSizeLookup(Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$14;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;)V

    .line 824
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOverScrollMode(I)V

    .line 825
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/EmojiView$GifsAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$15;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$16;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$17;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$17;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 872
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 873
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 876
    :cond_3
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    .line 877
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    const-string/jumbo v3, "NoStickers"

    const v4, 0x7f0703e9

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 879
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    const-string/jumbo v3, "chat_emojiPanelEmptyText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 881
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 883
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$18;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/EmojiView$18;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    .line 1008
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineHeight(I)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const-string/jumbo v3, "chat_emojiPanelStickerPackSelector"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setIndicatorColor(I)V

    .line 1010
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const-string/jumbo v3, "chat_emojiPanelStickerPackSelector"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineColor(I)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const-string/jumbo v3, "chat_emojiPanelBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setBackgroundColor(I)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setVisibility(I)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EmojiView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1014
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setTranslationX(F)V

    .line 1015
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    .line 1016
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$19;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$19;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setDelegate(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$20;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$20;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 1090
    :cond_4
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$21;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/EmojiView$21;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    .line 1099
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$1;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1101
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$22;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/EmojiView$22;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    .line 1110
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EmojiView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1113
    new-instance v2, Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    .line 1114
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 1115
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setShouldExpand(Z)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setIndicatorHeight(I)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setUnderlineHeight(I)V

    .line 1118
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const-string/jumbo v3, "chat_emojiPanelIconSelector"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setIndicatorColor(I)V

    .line 1119
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const-string/jumbo v3, "chat_emojiPanelShadowLine"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setUnderlineColor(I)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/4 v4, 0x0

    const/16 v5, 0x30

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$23;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$23;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1138
    new-instance v10, Landroid/widget/FrameLayout;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1139
    .restart local v10    # "frameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    const/16 v3, 0x34

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1141
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$24;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/EmojiView$24;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    .line 1160
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const v3, 0x7f0200da

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v4, "chat_emojiPanelBackspace"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1162
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1163
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/16 v3, 0x34

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1165
    new-instance v15, Landroid/view/View;

    move-object/from16 v0, p3

    invoke-direct {v15, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1166
    .local v15, "view":Landroid/view/View;
    const-string/jumbo v2, "chat_emojiPanelShadowLine"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1167
    const/16 v2, 0x34

    const/4 v3, 0x1

    const/16 v4, 0x53

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v15, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1169
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p3

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1170
    .local v14, "textView":Landroid/widget/TextView;
    const-string/jumbo v2, "NoRecent"

    const v3, 0x7f0703de

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1171
    const/4 v2, 0x1

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v14, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1172
    const-string/jumbo v2, "chat_emojiPanelEmptyText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1173
    const/16 v2, 0x11

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1174
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1175
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/FrameLayout;

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1177
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiGrids:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    invoke-virtual {v2, v14}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 1179
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x33

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Components/EmojiView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1181
    new-instance v2, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    .line 1182
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const-string/jumbo v4, "chat_gifSaveHintBackground"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1183
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const-string/jumbo v3, "chat_gifSaveHintText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1184
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x35

    const/high16 v5, 0x41f00000    # 30.0f

    const/high16 v6, 0x42540000    # 53.0f

    const/high16 v7, 0x40a00000    # 5.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1190
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_5

    const/high16 v2, 0x42200000    # 40.0f

    :goto_2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiSize:I

    .line 1191
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    .line 1192
    new-instance v3, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x28

    :goto_3
    mul-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lorg/telegram/ui/Components/EmojiView;->popupWidth:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_7

    const/high16 v2, 0x42800000    # 64.0f

    :goto_4
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->popupHeight:I

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    .line 1193
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->setOutsideTouchable(Z)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->setClippingEnabled(Z)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->setInputMethodMode(I)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->setSoftInputMode(I)V

    .line 1197
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1198
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$25;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$25;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1208
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "emoji"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "selected_page"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    .line 1209
    invoke-static {}, Lorg/telegram/messenger/Emoji;->loadRecentEmoji()V

    .line 1210
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 1211
    return-void

    .line 1190
    :cond_5
    const/high16 v2, 0x42000000    # 32.0f

    goto/16 :goto_2

    .line 1192
    :cond_6
    const/16 v2, 0x20

    goto/16 :goto_3

    :cond_7
    const/high16 v2, 0x42600000    # 56.0f

    goto/16 :goto_4
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->popupWidth:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->popupHeight:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1400(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->addColorToCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lorg/telegram/ui/Components/EmojiView;->superListenerField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$1600()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lorg/telegram/ui/Components/EmojiView;->NOP:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickerPreviewViewerDelegate:Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->checkStickersTabY(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/Components/EmojiView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->flowLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifsAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$DragListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->dragListener:Lorg/telegram/ui/Components/EmojiView$DragListener;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    return v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->showGifTab()V

    return-void
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    return v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->showTrendingTab()V

    return-void
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->checkScroll()V

    return-void
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveNewPage()V

    return-void
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    return v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/messenger/support/widget/GridLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    return v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->favTabBum:I

    return v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/EmojiView;III)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView;->onPageScrolled(III)V

    return-void
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspacePressed:Z

    return v0
.end method

.method static synthetic access$5202(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->backspacePressed:Z

    return p1
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceOnce:Z

    return v0
.end method

.method static synthetic access$5302(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceOnce:Z

    return p1
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->postBackspaceRunnable(I)V

    return-void
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    return-void
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/messenger/support/widget/GridLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    return-object v0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingLoaded:Z

    return v0
.end method

.method static synthetic access$6102(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->trendingLoaded:Z

    return p1
.end method

.method static synthetic access$6202(Lorg/telegram/ui/Components/EmojiView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->featuredStickersHash:I

    return p1
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-object v0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object v0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackPosition:I

    return v0
.end method

.method static synthetic access$6702(Lorg/telegram/ui/Components/EmojiView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackPosition:I

    return p1
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickersHidden:Z

    return v0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    return-object v0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentChatId:I

    return v0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Components/EmojiView;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->icons:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Components/EmojiView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->dotPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/EmojiView;)[I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->location:[I

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSize:I

    return v0
.end method

.method private static addColorToCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x200d

    const/4 v3, 0x0

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "end":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 156
    .local v1, "lenght":I
    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    .line 157
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 163
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 164
    if-eqz v0, :cond_1

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 167
    :cond_1
    return-object p0

    .line 159
    :cond_2
    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    .line 160
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private checkDocuments(Z)V
    .locals 10
    .param p1, "isGif"    # Z

    .prologue
    .line 1762
    if-eqz p1, :cond_3

    .line 1763
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1764
    .local v3, "previousCount":I
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getRecentGifs()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    .line 1765
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    if-eqz v6, :cond_0

    .line 1766
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/EmojiView$GifsAdapter;->notifyDataSetChanged()V

    .line 1768
    :cond_0
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v3, v6, :cond_1

    .line 1769
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    .line 1771
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v6, :cond_2

    .line 1772
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    .line 1797
    :cond_2
    :goto_0
    return-void

    .line 1775
    .end local v3    # "previousCount":I
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1776
    .restart local v3    # "previousCount":I
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1777
    .local v4, "previousCount2":I
    const/4 v6, 0x0

    invoke-static {v6}, Lorg/telegram/messenger/query/StickersQuery;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    .line 1778
    const/4 v6, 0x2

    invoke-static {v6}, Lorg/telegram/messenger/query/StickersQuery;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    .line 1779
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_6

    .line 1780
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1781
    .local v2, "favSticker":Lorg/telegram/tgnet/TLRPC$Document;
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 1782
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1783
    .local v5, "recSticker":Lorg/telegram/tgnet/TLRPC$Document;
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iget v7, v2, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    if-ne v6, v7, :cond_5

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 1784
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1779
    .end local v5    # "recSticker":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1781
    .restart local v5    # "recSticker":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1789
    .end local v1    # "b":I
    .end local v2    # "favSticker":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v5    # "recSticker":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v3, v6, :cond_7

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v4, v6, :cond_8

    .line 1790
    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    .line 1792
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v6, :cond_9

    .line 1793
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    .line 1795
    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->checkPanels()V

    goto :goto_0
.end method

.method private checkPanels()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1492
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-nez v2, :cond_1

    .line 1527
    :cond_0
    :goto_0
    return-void

    .line 1495
    :cond_1
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 1496
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1497
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1498
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1499
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getItemCount()I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1501
    :cond_2
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    if-ne v2, v6, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 1502
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    invoke-interface {v2, v4}, Lorg/telegram/ui/Components/EmojiView$Listener;->onGifTab(Z)V

    .line 1503
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1504
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1505
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1506
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getItemCount()I

    move-result v5

    if-eqz v5, :cond_4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v2, v4

    .line 1499
    goto :goto_1

    :cond_4
    move v3, v4

    .line 1506
    goto :goto_2

    .line 1507
    :cond_5
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    if-eq v2, v6, :cond_0

    .line 1508
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 1509
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    add-int/lit8 v4, v2, 0x1

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v2, :cond_6

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    :goto_3
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v4, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto/16 :goto_0

    :cond_6
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_3

    .line 1510
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    .line 1511
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    add-int/lit8 v4, v2, 0x1

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v2, :cond_8

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    :goto_4
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v4, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto/16 :goto_0

    :cond_8
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_4

    .line 1513
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 1514
    .local v1, "position":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1516
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->favTabBum:I

    if-lez v2, :cond_a

    .line 1517
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->favTabBum:I

    .line 1523
    .local v0, "firstTab":I
    :goto_5
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getTabForPosition(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto/16 :goto_0

    .line 1518
    .end local v0    # "firstTab":I
    :cond_a
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v2, :cond_b

    .line 1519
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    .restart local v0    # "firstTab":I
    goto :goto_5

    .line 1521
    .end local v0    # "firstTab":I
    :cond_b
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .restart local v0    # "firstTab":I
    goto :goto_5
.end method

.method private checkScroll()V
    .locals 5

    .prologue
    .line 1231
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 1232
    .local v1, "firstVisibleItem":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1257
    :cond_0
    :goto_0
    return-void

    .line 1235
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_0

    .line 1239
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->favTabBum:I

    if-lez v2, :cond_4

    .line 1240
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->favTabBum:I

    .line 1246
    .local v0, "firstTab":I
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_6

    .line 1247
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1248
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1250
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 1251
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1253
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto :goto_0

    .line 1241
    .end local v0    # "firstTab":I
    :cond_4
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v2, :cond_5

    .line 1242
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    .restart local v0    # "firstTab":I
    goto :goto_1

    .line 1244
    .end local v0    # "firstTab":I
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .restart local v0    # "firstTab":I
    goto :goto_1

    .line 1256
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getTabForPosition(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto :goto_0
.end method

.method private checkStickersTabY(Landroid/view/View;I)V
    .locals 3
    .param p1, "list"    # Landroid/view/View;
    .param p2, "dy"    # I

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x43900000    # 288.0f

    .line 1214
    if-nez p1, :cond_1

    .line 1215
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iput v1, p0, Lorg/telegram/ui/Components/EmojiView;->minusDy:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setTranslationY(F)V

    .line 1228
    :cond_0
    :goto_0
    return-void

    .line 1218
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1221
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->minusDy:I

    sub-int/2addr v0, p2

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->minusDy:I

    .line 1222
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->minusDy:I

    if-lez v0, :cond_3

    .line 1223
    iput v1, p0, Lorg/telegram/ui/Components/EmojiView;->minusDy:I

    .line 1227
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/high16 v1, 0x423c0000    # 47.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->minusDy:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setTranslationY(F)V

    goto :goto_0

    .line 1224
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->minusDy:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    if-ge v0, v1, :cond_2

    .line 1225
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->minusDy:I

    goto :goto_1
.end method

.method private onPageScrolled(III)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "width"    # I
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1300
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-nez v3, :cond_1

    .line 1330
    :cond_0
    :goto_0
    return-void

    .line 1304
    :cond_1
    if-nez p2, :cond_2

    .line 1305
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, v3, Landroid/graphics/Point;->x:I

    .line 1308
    :cond_2
    const/4 v0, 0x0

    .line 1309
    .local v0, "margin":I
    const/4 v3, 0x5

    if-ne p1, v3, :cond_5

    .line 1310
    neg-int v0, p3

    .line 1311
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    if-eqz v3, :cond_3

    .line 1312
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    if-eqz p3, :cond_4

    :goto_1
    invoke-interface {v3, v1}, Lorg/telegram/ui/Components/EmojiView$Listener;->onStickersTab(Z)V

    .line 1325
    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result v1

    int-to-float v3, v0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    .line 1326
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    int-to-float v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 1327
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    add-int v3, p2, v0

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setTranslationX(F)V

    .line 1328
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-gez v0, :cond_7

    :goto_3
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 1312
    goto :goto_1

    .line 1314
    :cond_5
    const/4 v3, 0x6

    if-ne p1, v3, :cond_6

    .line 1315
    neg-int v0, p2

    .line 1316
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    if-eqz v3, :cond_3

    .line 1317
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    invoke-interface {v3, v1}, Lorg/telegram/ui/Components/EmojiView$Listener;->onStickersTab(Z)V

    goto :goto_2

    .line 1320
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    if-eqz v1, :cond_3

    .line 1321
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/EmojiView$Listener;->onStickersTab(Z)V

    goto :goto_2

    .line 1328
    :cond_7
    const/4 v2, 0x4

    goto :goto_3
.end method

.method private postBackspaceRunnable(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    .line 1333
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$26;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EmojiView$26;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1346
    return-void
.end method

.method private reloadStickersAdapter()V
    .locals 1

    .prologue
    .line 1625
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_0

    .line 1626
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    .line 1628
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    if-eqz v0, :cond_1

    .line 1629
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->notifyDataSetChanged()V

    .line 1631
    :cond_1
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/StickerPreviewViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1632
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/StickerPreviewViewer;->close()V

    .line 1634
    :cond_2
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/StickerPreviewViewer;->reset()V

    .line 1635
    return-void
.end method

.method private saveNewPage()V
    .locals 4

    .prologue
    .line 1261
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 1262
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 1263
    const/4 v0, 0x2

    .line 1270
    .local v0, "newPage":I
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    if-eq v1, v0, :cond_0

    .line 1271
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    .line 1272
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "emoji"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "selected_page"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1274
    :cond_0
    return-void

    .line 1265
    .end local v0    # "newPage":I
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "newPage":I
    goto :goto_0

    .line 1268
    .end local v0    # "newPage":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "newPage":I
    goto :goto_0
.end method

.method private showGifTab()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1291
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1292
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1293
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1294
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1295
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    add-int/lit8 v2, v0, 0x1

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    :goto_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    .line 1296
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveNewPage()V

    .line 1297
    return-void

    .line 1295
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_0
.end method

.method private showTrendingTab()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1282
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1283
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1284
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1285
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1286
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    add-int/lit8 v2, v0, 0x1

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    :goto_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    .line 1287
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveNewPage()V

    .line 1288
    return-void

    .line 1286
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_0
.end method

.method private updateStickerTabs()V
    .locals 18

    .prologue
    .line 1358
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-nez v13, :cond_0

    .line 1489
    :goto_0
    return-void

    .line 1361
    :cond_0
    const/4 v13, -0x2

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    .line 1362
    const/4 v13, -0x2

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/EmojiView;->favTabBum:I

    .line 1363
    const/4 v13, -0x2

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    .line 1364
    const/4 v13, -0x2

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    .line 1366
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 1367
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getCurrentPosition()I

    move-result v5

    .line 1368
    .local v5, "lastPosition":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->removeTabs()V

    .line 1369
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0200d8

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1370
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v13, "chat_emojiPanelIcon"

    invoke-static {v4, v13}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColorByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1371
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v13, v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(Landroid/graphics/drawable/Drawable;)V

    .line 1373
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/telegram/ui/Components/EmojiView;->showGifs:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    .line 1374
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0200db

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1375
    const-string/jumbo v13, "chat_emojiPanelIcon"

    invoke-static {v4, v13}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColorByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1376
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v13, v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(Landroid/graphics/drawable/Drawable;)V

    .line 1377
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    .line 1378
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 1381
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getUnreadStickerSets()Ljava/util/ArrayList;

    move-result-object v12

    .line 1384
    .local v12, "unread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->getItemCount()I

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 1385
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0200dd

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1386
    const-string/jumbo v13, "chat_emojiPanelIcon"

    invoke-static {v4, v13}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColorByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1387
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v13, v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTabWithCounter(Landroid/graphics/drawable/Drawable;)Landroid/widget/TextView;

    move-result-object v11

    .line 1388
    .local v11, "stickersCounter":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    .line 1389
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 1390
    const-string/jumbo v13, "%d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1393
    .end local v11    # "stickersCounter":Landroid/widget/TextView;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    .line 1394
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/EmojiView;->favTabBum:I

    .line 1395
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 1396
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0201a8

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1397
    const-string/jumbo v13, "chat_emojiPanelIcon"

    invoke-static {v4, v13}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColorByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1398
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v13, v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(Landroid/graphics/drawable/Drawable;)V

    .line 1401
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    .line 1402
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    .line 1403
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 1404
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0200d6

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1405
    const-string/jumbo v13, "chat_emojiPanelIcon"

    invoke-static {v4, v13}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColorByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1406
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v13, v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(Landroid/graphics/drawable/Drawable;)V

    .line 1409
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1410
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->groupStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1411
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackPosition:I

    .line 1412
    const/16 v13, -0xa

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    .line 1413
    const/4 v13, 0x0

    invoke-static {v13}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 1414
    .local v9, "packs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_7

    .line 1415
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1416
    .local v8, "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    iget-object v13, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v13, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-nez v13, :cond_5

    iget-object v13, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v13, :cond_5

    iget-object v13, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1414
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1419
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1421
    .end local v8    # "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v13, :cond_a

    .line 1422
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "emoji"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "group_hide_stickers_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-interface {v13, v14, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1423
    .local v6, "hiddenStickerSetId":J
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 1424
    .local v3, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v13, :cond_8

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v13

    if-nez v13, :cond_c

    .line 1425
    :cond_8
    const-wide/16 v14, -0x1

    cmp-long v13, v6, v14

    if-eqz v13, :cond_b

    const/4 v13, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/ui/Components/EmojiView;->groupStickersHidden:Z

    .line 1429
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v13, :cond_10

    .line 1430
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-static {v13}, Lorg/telegram/messenger/query/StickersQuery;->getGroupStickerSetById(Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v8

    .line 1431
    .restart local v8    # "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    if-eqz v8, :cond_a

    iget-object v13, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v13, :cond_a

    iget-object v13, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_a

    iget-object v13, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v13, :cond_a

    .line 1432
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;-><init>()V

    .line 1433
    .local v10, "set":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    iget-object v13, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    iput-object v13, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    .line 1434
    iget-object v13, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->packs:Ljava/util/ArrayList;

    iput-object v13, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->packs:Ljava/util/ArrayList;

    .line 1435
    iget-object v13, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object v13, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 1436
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/telegram/ui/Components/EmojiView;->groupStickersHidden:Z

    if-eqz v13, :cond_e

    .line 1437
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    .line 1438
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1443
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v13, v13, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_stickers:Z

    if-eqz v13, :cond_f

    .end local v10    # "set":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :goto_6
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/telegram/ui/Components/EmojiView;->groupStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1456
    .end local v3    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v6    # "hiddenStickerSetId":J
    .end local v8    # "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_a
    :goto_7
    const/4 v2, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_14

    .line 1457
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    if-ne v2, v13, :cond_13

    .line 1458
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 1459
    .restart local v3    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v3, :cond_12

    .line 1460
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1461
    add-int/lit8 v2, v2, -0x1

    .line 1456
    .end local v3    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1425
    .restart local v3    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v6    # "hiddenStickerSetId":J
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 1426
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v13, :cond_9

    .line 1427
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v13, v6, v14

    if-nez v13, :cond_d

    const/4 v13, 0x1

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/ui/Components/EmojiView;->groupStickersHidden:Z

    goto/16 :goto_4

    :cond_d
    const/4 v13, 0x0

    goto :goto_a

    .line 1440
    .restart local v8    # "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .restart local v10    # "set":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_e
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    .line 1441
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5

    .line 1443
    :cond_f
    const/4 v10, 0x0

    goto :goto_6

    .line 1445
    .end local v8    # "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .end local v10    # "set":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v13, v13, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_stickers:Z

    if-eqz v13, :cond_a

    .line 1446
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;-><init>()V

    .line 1447
    .restart local v8    # "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/telegram/ui/Components/EmojiView;->groupStickersHidden:Z

    if-eqz v13, :cond_11

    .line 1448
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    .line 1449
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1451
    :cond_11
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    .line 1452
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 1463
    .end local v6    # "hiddenStickerSetId":J
    .end local v8    # "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v13, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addStickerTab(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_9

    .line 1466
    .end local v3    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v14, v13}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addStickerTab(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto/16 :goto_9

    .line 1469
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->getItemCount()I

    move-result v13

    if-eqz v13, :cond_15

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_15

    .line 1470
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0200dd

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1471
    const-string/jumbo v13, "chat_emojiPanelIcon"

    invoke-static {v4, v13}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColorByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1472
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    .line 1473
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v13, v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(Landroid/graphics/drawable/Drawable;)V

    .line 1475
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0200dc

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1476
    const-string/jumbo v13, "chat_emojiPanelIcon"

    invoke-static {v4, v13}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColorByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1477
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v13, v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(Landroid/graphics/drawable/Drawable;)V

    .line 1478
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->updateTabStyles()V

    .line 1479
    if-eqz v5, :cond_16

    .line 1480
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v13, v5, v5}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    .line 1482
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/telegram/ui/Components/EmojiView;->switchToGifTab:Z

    if-eqz v13, :cond_17

    .line 1483
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    if-ltz v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_17

    .line 1484
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->showGifTab()V

    .line 1485
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/ui/Components/EmojiView;->switchToGifTab:Z

    .line 1488
    :cond_17
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->checkPanels()V

    goto/16 :goto_0
.end method

.method private updateVisibleTrendingSets()V
    .locals 16

    .prologue
    .line 1865
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    if-nez v13, :cond_1

    .line 1902
    :cond_0
    :goto_0
    return-void

    .line 1869
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v5

    .line 1870
    .local v5, "count":I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1
    if-ge v2, v5, :cond_0

    .line 1871
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1872
    .local v4, "child":Landroid/view/View;
    instance-of v13, v4, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    if-eqz v13, :cond_2

    .line 1873
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 1874
    .local v7, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    if-nez v7, :cond_3

    .line 1870
    .end local v7    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1877
    .restart local v7    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :cond_3
    move-object v0, v4

    check-cast v0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    move-object v3, v0

    .line 1878
    .local v3, "cell":Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getUnreadStickerSets()Ljava/util/ArrayList;

    move-result-object v12

    .line 1879
    .local v12, "unreadStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->getStickerSet()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v10

    .line 1880
    .local v10, "stickerSetCovered":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    if-eqz v12, :cond_8

    iget-object v13, v10, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v11, 0x1

    .line 1881
    .local v11, "unread":Z
    :goto_3
    invoke-virtual {v3, v10, v11}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Z)V

    .line 1882
    if-eqz v11, :cond_4

    .line 1883
    iget-object v13, v10, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v14, v15}, Lorg/telegram/messenger/query/StickersQuery;->markFaturedStickersByIdAsRead(J)V

    .line 1885
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Ljava/util/HashMap;

    iget-object v14, v10, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    .line 1886
    .local v8, "installing":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Ljava/util/HashMap;

    iget-object v14, v10, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    .line 1887
    .local v9, "removing":Z
    if-nez v8, :cond_5

    if-eqz v9, :cond_6

    .line 1888
    :cond_5
    if-eqz v8, :cond_9

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1889
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Ljava/util/HashMap;

    iget-object v14, v10, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1890
    const/4 v8, 0x0

    .line 1896
    :cond_6
    :goto_4
    if-nez v8, :cond_7

    if-eqz v9, :cond_a

    :cond_7
    const/4 v13, 0x1

    :goto_5
    invoke-virtual {v3, v13}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setDrawProgress(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1899
    .end local v2    # "a":I
    .end local v3    # "cell":Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "count":I
    .end local v7    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .end local v8    # "installing":Z
    .end local v9    # "removing":Z
    .end local v10    # "stickerSetCovered":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    .end local v11    # "unread":Z
    .end local v12    # "unreadStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_0
    move-exception v6

    .line 1900
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1880
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v2    # "a":I
    .restart local v3    # "cell":Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "count":I
    .restart local v7    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .restart local v10    # "stickerSetCovered":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    .restart local v12    # "unreadStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_8
    const/4 v11, 0x0

    goto :goto_3

    .line 1891
    .restart local v8    # "installing":Z
    .restart local v9    # "removing":Z
    .restart local v11    # "unread":Z
    :cond_9
    if-eqz v9, :cond_6

    :try_start_1
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled()Z

    move-result v13

    if-nez v13, :cond_6

    .line 1892
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Ljava/util/HashMap;

    iget-object v14, v10, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1893
    const/4 v9, 0x0

    goto :goto_4

    .line 1896
    :cond_a
    const/4 v13, 0x0

    goto :goto_5
.end method


# virtual methods
.method public addEmojiToRecent(Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->addRecentEmoji(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/Emoji;->sortEmoji()V

    .line 175
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/Emoji;->saveRecentEmoji()V

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 177
    return-void
.end method

.method public addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 2
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 1545
    if-nez p1, :cond_1

    .line 1556
    :cond_0
    :goto_0
    return-void

    .line 1548
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 1549
    .local v0, "wasEmpty":Z
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getRecentGifs()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    .line 1550
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    if-eqz v1, :cond_2

    .line 1551
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$GifsAdapter;->notifyDataSetChanged()V

    .line 1553
    :cond_2
    if-eqz v0, :cond_0

    .line 1554
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    goto :goto_0
.end method

.method public addRecentSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 7
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/4 v6, 0x0

    .line 1530
    if-nez p1, :cond_1

    .line 1542
    :cond_0
    :goto_0
    return-void

    .line 1533
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-static {v6, p1, v1, v6}, Lorg/telegram/messenger/query/StickersQuery;->addRecentSticker(ILorg/telegram/tgnet/TLRPC$Document;IZ)V

    .line 1534
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 1535
    .local v0, "wasEmpty":Z
    invoke-static {v6}, Lorg/telegram/messenger/query/StickersQuery;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    .line 1536
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v1, :cond_2

    .line 1537
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    .line 1539
    :cond_2
    if-eqz v0, :cond_0

    .line 1540
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    goto :goto_0
.end method

.method public areThereAnyStickers()Z
    .locals 1

    .prologue
    .line 1905
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearRecentEmoji()V
    .locals 2

    .prologue
    .line 1277
    invoke-static {}, Lorg/telegram/messenger/Emoji;->clearRecentEmoji()V

    .line 1278
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 1279
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 9
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 1911
    sget v4, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    if-ne p1, v4, :cond_3

    .line 1912
    aget-object v4, p2, v8

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_1

    .line 1913
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    if-eqz v4, :cond_0

    .line 1914
    iget-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView;->trendingLoaded:Z

    if-eqz v4, :cond_2

    .line 1915
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateVisibleTrendingSets()V

    .line 1920
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    .line 1921
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    .line 1922
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->checkPanels()V

    .line 1953
    :cond_1
    :goto_1
    return-void

    .line 1917
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1924
    :cond_3
    sget v4, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoaded:I

    if-ne p1, v4, :cond_5

    .line 1925
    aget-object v4, p2, v8

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1926
    .local v2, "isGif":Z
    const/4 v4, 0x1

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1927
    .local v3, "type":I
    if-nez v2, :cond_4

    if-eqz v3, :cond_4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1928
    :cond_4
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->checkDocuments(Z)V

    goto :goto_1

    .line 1930
    .end local v2    # "isGif":Z
    .end local v3    # "type":I
    :cond_5
    sget v4, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    if-ne p1, v4, :cond_a

    .line 1931
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    if-eqz v4, :cond_7

    .line 1932
    iget v4, p0, Lorg/telegram/ui/Components/EmojiView;->featuredStickersHash:I

    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getFeaturesStickersHashWithoutUnread()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 1933
    iput-boolean v8, p0, Lorg/telegram/ui/Components/EmojiView;->trendingLoaded:Z

    .line 1935
    :cond_6
    iget-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView;->trendingLoaded:Z

    if-eqz v4, :cond_8

    .line 1936
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateVisibleTrendingSets()V

    .line 1941
    :cond_7
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    if-eqz v4, :cond_9

    .line 1942
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->getChildCount()I

    move-result v1

    .line 1943
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3
    if-ge v0, v1, :cond_9

    .line 1944
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 1943
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1938
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 1947
    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    goto :goto_1

    .line 1948
    :cond_a
    sget v4, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoaded:I

    if-ne p1, v4, :cond_1

    .line 1949
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    aget-object v4, p2, v8

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-nez v4, :cond_1

    .line 1950
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    goto/16 :goto_1
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 1741
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    return v0
.end method

.method public invalidateViews()V
    .locals 2

    .prologue
    .line 1651
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGrids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1652
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGrids:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->invalidateViews()V

    .line 1651
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1654
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1697
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1698
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_0

    .line 1699
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1700
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentImagesDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1701
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1702
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1703
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$27;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiView$27;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1711
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1745
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_0

    .line 1746
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1747
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1748
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1749
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1751
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1755
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1756
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1757
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->dismiss()V

    .line 1759
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1617
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastNotifyWidth:I

    sub-int v1, p4, p2

    if-eq v0, v1, :cond_0

    .line 1618
    sub-int v0, p4, p2

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastNotifyWidth:I

    .line 1619
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    .line 1621
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1622
    return-void
.end method

.method public onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/16 v3, 0x15

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1568
    iput-boolean v7, p0, Lorg/telegram/ui/Components/EmojiView;->isLayout:Z

    .line 1569
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v2, :cond_5

    .line 1570
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    if-eq v2, v7, :cond_1

    .line 1571
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_0

    .line 1572
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->outlineProvider:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1573
    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/EmojiView;->setClipToOutline(Z)V

    .line 1574
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->setElevation(F)V

    .line 1576
    :cond_0
    const v2, 0x7f0201a6

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->setBackgroundResource(I)V

    .line 1577
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v4, "chat_emojiPanelBackground"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1578
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1579
    iput v7, p0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    .line 1594
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1595
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x0

    .line 1596
    .local v1, "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1597
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v2, :cond_2

    .line 1598
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1599
    .restart local v1    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v1, :cond_2

    .line 1600
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1603
    :cond_2
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->oldWidth:I

    if-eq v2, v3, :cond_4

    .line 1604
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 1605
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p0, v2, v3, v6}, Lorg/telegram/ui/Components/EmojiView;->onPageScrolled(III)V

    .line 1606
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1608
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1609
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, p0, Lorg/telegram/ui/Components/EmojiView;->oldWidth:I

    .line 1611
    :cond_4
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-super {p0, v2, v3}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1612
    iput-boolean v6, p0, Lorg/telegram/ui/Components/EmojiView;->isLayout:Z

    .line 1613
    return-void

    .line 1582
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    if-eqz v2, :cond_1

    .line 1583
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_6

    .line 1584
    invoke-virtual {p0, v9}, Lorg/telegram/ui/Components/EmojiView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1585
    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/EmojiView;->setClipToOutline(Z)V

    .line 1586
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->setElevation(F)V

    .line 1588
    :cond_6
    const-string/jumbo v2, "chat_emojiPanelBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->setBackgroundColor(I)V

    .line 1589
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    const-string/jumbo v3, "chat_emojiPanelBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1590
    iput v6, p0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    goto/16 :goto_0
.end method

.method public onOpen(Z)V
    .locals 4
    .param p1, "forceEmoji"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x6

    .line 1657
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v2, :cond_2

    .line 1658
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentChatId:I

    if-eqz v2, :cond_0

    .line 1659
    iput v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    .line 1661
    :cond_0
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    if-eqz v2, :cond_1

    if-eqz p1, :cond_4

    .line 1662
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 1663
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    if-nez p1, :cond_3

    :goto_0
    invoke-virtual {v2, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1693
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 1663
    goto :goto_0

    .line 1665
    :cond_4
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    if-ne v1, v0, :cond_9

    .line 1666
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v1, v3, :cond_5

    .line 1667
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1669
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getCurrentPosition()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1670
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-ltz v1, :cond_6

    .line 1671
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    goto :goto_1

    .line 1672
    :cond_6
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->favTabBum:I

    if-ltz v1, :cond_7

    .line 1673
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->favTabBum:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    goto :goto_1

    .line 1674
    :cond_7
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    if-ltz v1, :cond_8

    .line 1675
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    goto :goto_1

    .line 1677
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    goto :goto_1

    .line 1680
    :cond_9
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1681
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v1, v3, :cond_a

    .line 1682
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1684
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getCurrentPosition()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    add-int/lit8 v2, v2, 0x1

    if-eq v1, v2, :cond_2

    .line 1685
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    if-ltz v1, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1686
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    goto/16 :goto_1

    .line 1688
    :cond_b
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->switchToGifTab:Z

    goto/16 :goto_1
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1560
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->isLayout:Z

    if-eqz v0, :cond_0

    .line 1564
    :goto_0
    return-void

    .line 1563
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0
    .param p1, "chatInfo"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 1646
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1647
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    .line 1648
    return-void
.end method

.method public setDragListener(Lorg/telegram/ui/Components/EmojiView$DragListener;)V
    .locals 0
    .param p1, "dragListener"    # Lorg/telegram/ui/Components/EmojiView$DragListener;

    .prologue
    .line 1642
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->dragListener:Lorg/telegram/ui/Components/EmojiView$DragListener;

    .line 1643
    return-void
.end method

.method public setListener(Lorg/telegram/ui/Components/EmojiView$Listener;)V
    .locals 0
    .param p1, "value"    # Lorg/telegram/ui/Components/EmojiView$Listener;

    .prologue
    .line 1638
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    .line 1639
    return-void
.end method

.method public setStickersBanned(ZI)V
    .locals 4
    .param p1, "value"    # Z
    .param p2, "chatId"    # I

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 1800
    if-eqz p1, :cond_1

    .line 1801
    iput p2, p0, Lorg/telegram/ui/Components/EmojiView;->currentChatId:I

    .line 1805
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->getTab(I)Landroid/view/View;

    move-result-object v0

    .line 1806
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1807
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentChatId:I

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1808
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentChatId:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1809
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1812
    :cond_0
    return-void

    .line 1803
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    iput v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentChatId:I

    goto :goto_0

    .line 1807
    .restart local v0    # "view":Landroid/view/View;
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method public setVisibility(I)V
    .locals 5
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1715
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1716
    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    .line 1717
    invoke-static {}, Lorg/telegram/messenger/Emoji;->sortEmoji()V

    .line 1718
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 1719
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_0

    .line 1720
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1721
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoaded:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1722
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    .line 1723
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    .line 1724
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    if-eqz v0, :cond_0

    .line 1725
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v4, 0x6

    if-lt v0, v4, :cond_3

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Lorg/telegram/ui/Components/EmojiView$Listener;->onGifTab(Z)V

    .line 1728
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    if-eqz v0, :cond_1

    .line 1729
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->trendingLoaded:Z

    .line 1730
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->notifyDataSetChanged()V

    .line 1732
    :cond_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->checkDocuments(Z)V

    .line 1733
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->checkDocuments(Z)V

    .line 1734
    invoke-static {v2, v1, v1, v2}, Lorg/telegram/messenger/query/StickersQuery;->loadRecents(IZZZ)V

    .line 1735
    invoke-static {v2, v2, v1, v2}, Lorg/telegram/messenger/query/StickersQuery;->loadRecents(IZZZ)V

    .line 1736
    const/4 v0, 0x2

    invoke-static {v0, v2, v1, v2}, Lorg/telegram/messenger/query/StickersQuery;->loadRecents(IZZZ)V

    .line 1738
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 1725
    goto :goto_0
.end method

.method public showStickerBanHint()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1815
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1862
    :cond_0
    :goto_0
    return-void

    .line 1818
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->currentChatId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 1819
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    if-eqz v2, :cond_0

    .line 1823
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->until_date:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1824
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const-string/jumbo v3, "AttachStickersRestrictedForever"

    const v4, 0x7f0700b4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1828
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1829
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1830
    .local v0, "AnimatorSet":Landroid/animation/AnimatorSet;
    new-array v2, v9, [Landroid/animation/Animator;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const-string/jumbo v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    .line 1831
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    .line 1830
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1833
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$28;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/EmojiView$28;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1860
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1861
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1826
    .end local v0    # "AnimatorSet":Landroid/animation/AnimatorSet;
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const-string/jumbo v3, "AttachStickersRestricted"

    const v4, 0x7f0700b3

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->until_date:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1830
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public switchToGifRecent()V
    .locals 2

    .prologue
    .line 1349
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1350
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    .line 1354
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1355
    return-void

    .line 1352
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->switchToGifTab:Z

    goto :goto_0
.end method
