.class public Lorg/telegram/ui/Components/AudioPlayerAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "AudioPlayerAlert.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;
    }
.end annotation


# instance fields
.field private TAG:I

.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private actionBarAnimation:Landroid/animation/AnimatorSet;

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private authorTextView:Landroid/widget/TextView;

.field private avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

.field private buttons:[Landroid/widget/ImageView;

.field private durationTextView:Landroid/widget/TextView;

.field private endTranslation:F

.field private fullAnimationProgress:F

.field private hasNoCover:Z

.field private hasOptions:Z

.field private inFullSize:Z

.field private isInFullMode:Z

.field private lastTime:I

.field private layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private noCoverDrawable:Landroid/graphics/drawable/Drawable;

.field private optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private paint:Landroid/graphics/Paint;

.field private panelEndTranslation:F

.field private panelStartTranslation:F

.field private parentActivity:Lorg/telegram/ui/LaunchActivity;

.field private placeholderImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private playButton:Landroid/widget/ImageView;

.field private playerLayout:Landroid/widget/FrameLayout;

.field private playlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private progressView:Lorg/telegram/ui/Components/LineProgressView;

.field private repeatButton:Landroid/widget/ImageView;

.field private scrollOffsetY:I

.field private scrollToSong:Z

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchOpenOffset:I

.field private searchOpenPosition:I

.field private searchWas:Z

.field private searching:Z

.field private seekBarView:Lorg/telegram/ui/Components/SeekBarView;

.field private shadow:Landroid/view/View;

.field private shadow2:Landroid/view/View;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private shuffleButton:Landroid/widget/ImageView;

.field private startTranslation:F

.field private thumbMaxScale:F

.field private thumbMaxX:I

.field private thumbMaxY:I

.field private timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private titleTextView:Landroid/widget/TextView;

.field private topBeforeSwitch:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 108
    const/4 v4, 0x5

    new-array v4, v4, [Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->buttons:[Landroid/widget/ImageView;

    .line 109
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->hasOptions:Z

    .line 111
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollToSong:Z

    .line 121
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchOpenPosition:I

    .line 126
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->paint:Landroid/graphics/Paint;

    .line 132
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playlist:Ljava/util/ArrayList;

    .line 134
    const v4, 0x7fffffff

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    move-object/from16 v4, p1

    .line 150
    check-cast v4, Lorg/telegram/ui/LaunchActivity;

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02014c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->noCoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 152
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->noCoverDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v6, "player_placeholder"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 154
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController;->generateObserverTag()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->TAG:I

    .line 155
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 156
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 157
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStarted:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 158
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 159
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->musicDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02019d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 162
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v6, "player_background"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->paint:Landroid/graphics/Paint;

    const-string/jumbo v5, "player_placeholderBackground"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    new-instance v4, Lorg/telegram/ui/Components/AudioPlayerAlert$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$1;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->containerView:Landroid/view/ViewGroup;

    .line 244
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->containerView:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 245
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->containerView:Landroid/view/ViewGroup;

    sget v5, Lorg/telegram/ui/Components/AudioPlayerAlert;->backgroundPaddingLeft:I

    const/4 v6, 0x0

    sget v7, Lorg/telegram/ui/Components/AudioPlayerAlert;->backgroundPaddingLeft:I

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 247
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 248
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "player_actionBar"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 249
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v5, 0x7f020093

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 250
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "player_actionBarItems"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 251
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "player_actionBarSelector"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 252
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "player_actionBarTitle"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 253
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "player_actionBarSubtitle"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    .line 254
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setAlpha(F)V

    .line 255
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setAlpha(F)V

    .line 258
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->getSubtitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setAlpha(F)V

    .line 259
    new-instance v4, Lorg/telegram/ui/Components/ChatAvatarContainer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v5, v6}, Lorg/telegram/ui/Components/ChatAvatarContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Z)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    .line 260
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setEnabled(Z)V

    .line 261
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    const-string/jumbo v5, "player_actionBarTitle"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "player_actionBarSubtitle"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitleColors(II)V

    .line 262
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v20

    .line 263
    .local v20, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v20, :cond_0

    .line 264
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v14

    .line 265
    .local v14, "did":J
    long-to-int v0, v14

    move/from16 v18, v0

    .line 266
    .local v18, "lower_id":I
    const/16 v4, 0x20

    shr-long v4, v14, v4

    long-to-int v0, v4

    move/from16 v17, v0

    .line 267
    .local v17, "high_id":I
    if-eqz v18, :cond_3

    .line 268
    if-lez v18, :cond_2

    .line 269
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v23

    .line 270
    .local v23, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-object/from16 v0, v23

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setUserAvatar(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 284
    .end local v14    # "did":J
    .end local v17    # "high_id":I
    .end local v18    # "lower_id":I
    .end local v23    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    const-string/jumbo v5, "AudioTitle"

    const v6, 0x7f0700b8

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/4 v4, -0x2

    const/high16 v5, -0x40800000    # -1.0f

    const/16 v6, 0x33

    const/high16 v7, 0x42600000    # 56.0f

    const/4 v8, 0x0

    const/high16 v9, 0x42200000    # 40.0f

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v19

    .line 288
    .local v19, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v4, 0x0

    const v5, 0x7f02009a

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 289
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v5, 0x1

    const-string/jumbo v6, "Forward"

    const v7, 0x7f070289

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 290
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v5, 0x2

    const-string/jumbo v6, "ShareFile"

    const v7, 0x7f070588

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 292
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v5, 0x4

    const-string/jumbo v6, "ShowInChat"

    const v7, 0x7f07059d

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 293
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setTranslationX(F)V

    .line 294
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 296
    const/4 v4, 0x0

    const v5, 0x7f02009d

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/AudioPlayerAlert$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$2;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 337
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v13

    .line 338
    .local v13, "editText":Lorg/telegram/ui/Components/EditTextBoldCursor;
    const-string/jumbo v4, "Search"

    const v5, 0x7f070535

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHint(Ljava/lang/CharSequence;)V

    .line 339
    const-string/jumbo v4, "player_actionBarTitle"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v13, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextColor(I)V

    .line 340
    const-string/jumbo v4, "player_time"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v13, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintTextColor(I)V

    .line 341
    const-string/jumbo v4, "player_actionBarTitle"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v13, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 343
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-nez v4, :cond_1

    .line 344
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionModeTop()V

    .line 345
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "player_actionBarTop"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionModeTopColor(I)V

    .line 347
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/Components/AudioPlayerAlert$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$3;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 358
    new-instance v4, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shadow:Landroid/view/View;

    .line 359
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shadow:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 360
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shadow:Landroid/view/View;

    const v5, 0x7f02008f

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 362
    new-instance v4, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shadow2:Landroid/view/View;

    .line 363
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shadow2:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 364
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shadow2:Landroid/view/View;

    const v5, 0x7f02008f

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 366
    new-instance v4, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    .line 367
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v5, "player_background"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 369
    new-instance v4, Lorg/telegram/ui/Components/AudioPlayerAlert$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$4;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->placeholderImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 389
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->placeholderImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 390
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->placeholderImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setPivotX(F)V

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->placeholderImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setPivotY(F)V

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->placeholderImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v5, Lorg/telegram/ui/Components/AudioPlayerAlert$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$5;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->titleTextView:Landroid/widget/TextView;

    .line 443
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "player_actionBarTitle"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 444
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->titleTextView:Landroid/widget/TextView;

    const/4 v5, 0x1

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 445
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->titleTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->titleTextView:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->titleTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/4 v4, -0x1

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x33

    const/high16 v7, 0x42900000    # 72.0f

    const/high16 v8, 0x41900000    # 18.0f

    const/high16 v9, 0x42700000    # 60.0f

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->authorTextView:Landroid/widget/TextView;

    .line 451
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->authorTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "player_time"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 452
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->authorTextView:Landroid/widget/TextView;

    const/4 v5, 0x1

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 453
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->authorTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->authorTextView:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->authorTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/4 v4, -0x1

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x33

    const/high16 v7, 0x42900000    # 72.0f

    const/high16 v8, 0x42200000    # 40.0f

    const/high16 v9, 0x42700000    # 60.0f

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "player_actionBarItems"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v5, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 458
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const v5, 0x7f02009a

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 459
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v5, 0x42f00000    # 120.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalOffset(I)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v25, v0

    const/16 v4, 0x28

    const/high16 v5, 0x42200000    # 40.0f

    const/16 v6, 0x35

    const/4 v7, 0x0

    const/high16 v8, 0x41980000    # 19.0f

    const/high16 v9, 0x41200000    # 10.0f

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v5, 0x1

    const-string/jumbo v6, "Forward"

    const v7, 0x7f070289

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 462
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v5, 0x2

    const-string/jumbo v6, "ShareFile"

    const v7, 0x7f070588

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 464
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v5, 0x4

    const-string/jumbo v6, "ShowInChat"

    const v7, 0x7f07059d

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 465
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v5, Lorg/telegram/ui/Components/AudioPlayerAlert$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$6;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 472
    new-instance v4, Lorg/telegram/ui/Components/SeekBarView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/SeekBarView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    .line 473
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    new-instance v5, Lorg/telegram/ui/Components/AudioPlayerAlert$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$7;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/SeekBarView;->setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    move-object/from16 v25, v0

    const/4 v4, -0x1

    const/high16 v5, 0x41f00000    # 30.0f

    const/16 v6, 0x33

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v8, 0x42780000    # 62.0f

    const/high16 v9, 0x41000000    # 8.0f

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    new-instance v4, Lorg/telegram/ui/Components/LineProgressView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/LineProgressView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    .line 482
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/LineProgressView;->setVisibility(I)V

    .line 483
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const-string/jumbo v5, "player_progressBackground"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/LineProgressView;->setBackgroundColor(I)V

    .line 484
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const-string/jumbo v5, "player_progress"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    move-object/from16 v25, v0

    const/4 v4, -0x1

    const/high16 v5, 0x40000000    # 2.0f

    const/16 v6, 0x33

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v8, 0x429c0000    # 78.0f

    const/high16 v9, 0x41a00000    # 20.0f

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    new-instance v4, Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 488
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 489
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v5, "player_time"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 490
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v5, "0:00"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v25, v0

    const/16 v4, 0x64

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x33

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v8, 0x42b80000    # 92.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    .line 494
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    const/4 v5, 0x1

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 495
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "player_time"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 496
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 497
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "3:00"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/4 v4, -0x2

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x35

    const/4 v7, 0x0

    const/high16 v8, 0x42b40000    # 90.0f

    const/high16 v9, 0x41a00000    # 20.0f

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    new-instance v11, Lorg/telegram/ui/Components/AudioPlayerAlert$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$8;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V

    .line 511
    .local v11, "bottomView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    const/4 v4, -0x1

    const/high16 v5, 0x42840000    # 66.0f

    const/16 v6, 0x33

    const/4 v7, 0x0

    const/high16 v8, 0x42d40000    # 106.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v11, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->buttons:[Landroid/widget/ImageView;

    const/4 v5, 0x0

    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shuffleButton:Landroid/widget/ImageView;

    aput-object v6, v4, v5

    .line 514
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shuffleButton:Landroid/widget/ImageView;

    const v5, 0x7f02017d

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 515
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shuffleButton:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 516
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shuffleButton:Landroid/widget/ImageView;

    const/16 v5, 0x30

    const/16 v6, 0x30

    const/16 v7, 0x33

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shuffleButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/Components/AudioPlayerAlert$9;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$9;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->buttons:[Landroid/widget/ImageView;

    const/4 v5, 0x1

    new-instance v22, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .local v22, "prevButton":Landroid/widget/ImageView;
    aput-object v22, v4, v5

    .line 527
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 528
    const v4, 0x7f02017a

    const-string/jumbo v5, "player_button"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "player_buttonActive"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 529
    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x33

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v11, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    new-instance v4, Lorg/telegram/ui/Components/AudioPlayerAlert$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$10;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->buttons:[Landroid/widget/ImageView;

    const/4 v5, 0x2

    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    aput-object v6, v4, v5

    .line 538
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    const v5, 0x7f020179

    const-string/jumbo v6, "player_button"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "player_buttonActive"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    const/16 v5, 0x30

    const/16 v6, 0x30

    const/16 v7, 0x33

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/Components/AudioPlayerAlert$11;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$11;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->buttons:[Landroid/widget/ImageView;

    const/4 v5, 0x3

    new-instance v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .local v21, "nextButton":Landroid/widget/ImageView;
    aput-object v21, v4, v5

    .line 557
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 558
    const v4, 0x7f020177

    const-string/jumbo v5, "player_button"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "player_buttonActive"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 559
    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x33

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v11, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    new-instance v4, Lorg/telegram/ui/Components/AudioPlayerAlert$12;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$12;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->buttons:[Landroid/widget/ImageView;

    const/4 v5, 0x4

    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Landroid/widget/ImageView;

    aput-object v6, v4, v5

    .line 568
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Landroid/widget/ImageView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 570
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Landroid/widget/ImageView;

    const/16 v5, 0x32

    const/16 v6, 0x30

    const/16 v7, 0x33

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/Components/AudioPlayerAlert$13;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$13;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    new-instance v4, Lorg/telegram/ui/Components/AudioPlayerAlert$14;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$14;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 636
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 637
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 638
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setHorizontalScrollBarEnabled(Z)V

    .line 640
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 641
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0x33

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string/jumbo v5, "dialogScrollGlow"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 644
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Components/AudioPlayerAlert$15;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$15;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 652
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Components/AudioPlayerAlert$16;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$16;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 666
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController;->getPlaylist()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playlist:Ljava/util/ArrayList;

    .line 667
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->notifyDataSetChanged()V

    .line 669
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    const/4 v6, -0x1

    const/high16 v7, 0x43320000    # 178.0f

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shadow2:Landroid/view/View;

    const/4 v6, -0x1

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->placeholderImageView:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v25, v0

    const/16 v4, 0x28

    const/high16 v5, 0x42200000    # 40.0f

    const/16 v6, 0x33

    const/high16 v7, 0x41880000    # 17.0f

    const/high16 v8, 0x41980000    # 19.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 672
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shadow:Landroid/view/View;

    const/4 v6, -0x1

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 675
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateTitle(Z)V

    .line 676
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateRepeatButton()V

    .line 677
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateShuffleButton()V

    .line 678
    return-void

    .line 273
    .end local v11    # "bottomView":Landroid/widget/FrameLayout;
    .end local v13    # "editText":Lorg/telegram/ui/Components/EditTextBoldCursor;
    .end local v19    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .end local v21    # "nextButton":Landroid/widget/ImageView;
    .end local v22    # "prevButton":Landroid/widget/ImageView;
    .restart local v14    # "did":J
    .restart local v17    # "high_id":I
    .restart local v18    # "lower_id":I
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move/from16 v0, v18

    neg-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v12

    .line 274
    .local v12, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    iget-object v5, v12, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v4, v12}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setChatAvatar(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto/16 :goto_0

    .line 278
    .end local v12    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v16

    .line 279
    .local v16, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v16

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v23

    .line 280
    .restart local v23    # "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-object/from16 v0, v23

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setUserAvatar(Lorg/telegram/tgnet/TLRPC$User;)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->placeholderImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/AudioPlayerAlert;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->thumbMaxScale:F

    return v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/AudioPlayerAlert;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;
    .param p1, "x1"    # F

    .prologue
    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->thumbMaxScale:F

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/AudioPlayerAlert;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->endTranslation:F

    return v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/AudioPlayerAlert;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;
    .param p1, "x1"    # F

    .prologue
    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->endTranslation:F

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shadow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateLayout()V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/AudioPlayerAlert;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->fullAnimationProgress:F

    return v0
.end method

.method static synthetic access$1700()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/ChatAvatarContainer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/AudioPlayerAlert;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->hasOptions:Z

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchWas:Z

    return v0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchWas:Z

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchOpenPosition:I

    return v0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/Components/AudioPlayerAlert;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;
    .param p1, "x1"    # I

    .prologue
    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchOpenPosition:I

    return p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchOpenOffset:I

    return v0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/Components/AudioPlayerAlert;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;
    .param p1, "x1"    # I

    .prologue
    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchOpenOffset:I

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/AudioPlayerAlert;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;
    .param p1, "x1"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->onSubItemClick(I)V

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->hasNoCover:Z

    return v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->noCoverDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->animatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->isInFullMode:Z

    return v0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->isInFullMode:Z

    return p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shadow2:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/AudioPlayerAlert;)[Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->buttons:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateShuffleButton()V

    return-void
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateRepeatButton()V

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollToSong:Z

    return v0
.end method

.method static synthetic access$3802(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollToSong:Z

    return p1
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/LaunchActivity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searching:Z

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searching:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->inFullSize:Z

    return p1
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/AudioPlayerAlert;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;
    .param p1, "x1"    # I

    .prologue
    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->thumbMaxX:I

    return p1
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/AudioPlayerAlert;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;
    .param p1, "x1"    # I

    .prologue
    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->thumbMaxY:I

    return p1
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/AudioPlayerAlert;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;
    .param p1, "x1"    # F

    .prologue
    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->panelEndTranslation:F

    return p1
.end method

.method private checkIfMusicDownloaded(Lorg/telegram/messenger/MessageObject;)V
    .locals 7
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 1088
    const/4 v0, 0x0

    .line 1089
    .local v0, "cacheFile":Ljava/io/File;
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1090
    new-instance v0, Ljava/io/File;

    .end local v0    # "cacheFile":Ljava/io/File;
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1091
    .restart local v0    # "cacheFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1092
    const/4 v0, 0x0

    .line 1095
    :cond_0
    if-nez v0, :cond_1

    .line 1096
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    .line 1098
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1099
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 1100
    .local v1, "fileName":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3, v1, p0}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 1101
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    .line 1102
    .local v2, "progress":Ljava/lang/Float;
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_0
    invoke-virtual {v4, v3, v5}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 1103
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/LineProgressView;->setVisibility(I)V

    .line 1104
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/SeekBarView;->setVisibility(I)V

    .line 1105
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1112
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "progress":Ljava/lang/Float;
    :goto_1
    return-void

    .line 1102
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v2    # "progress":Ljava/lang/Float;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1107
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "progress":Ljava/lang/Float;
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 1108
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/LineProgressView;->setVisibility(I)V

    .line 1109
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/SeekBarView;->setVisibility(I)V

    .line 1110
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1
.end method

.method private getCurrentTop()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 891
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_1

    .line 892
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 893
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 894
    .local v1, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    if-eqz v1, :cond_1

    .line 895
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;->getAdapterPosition()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    :cond_0
    sub-int v2, v3, v2

    .line 898
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :goto_0
    return v2

    :cond_1
    const/16 v2, -0x3e8

    goto :goto_0
.end method

.method private onSubItemClick(I)V
    .locals 35
    .param p1, "id"    # I

    .prologue
    .line 703
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v34

    .line 704
    .local v34, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-nez v34, :cond_1

    .line 888
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_2

    .line 708
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 709
    .local v11, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "onlySelect"

    const/4 v5, 0x1

    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 710
    const-string/jumbo v4, "isForward"

    const/4 v5, 0x1

    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 711
    new-instance v25, Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, v25

    invoke-direct {v0, v11}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 712
    .local v25, "fragment":Lorg/telegram/ui/DialogsActivity;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v24, "fmessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    new-instance v4, Lorg/telegram/ui/Components/AudioPlayerAlert$17;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$17;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Ljava/util/ArrayList;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 752
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->dismiss()V

    goto :goto_0

    .line 753
    .end local v11    # "args":Landroid/os/Bundle;
    .end local v24    # "fmessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v25    # "fragment":Lorg/telegram/ui/DialogsActivity;
    :cond_2
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_8

    .line 755
    const/16 v22, 0x0

    .line 756
    .local v22, "f":Ljava/io/File;
    const/16 v31, 0x0

    .line 758
    .local v31, "isVideo":Z
    :try_start_0
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 759
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    .end local v22    # "f":Ljava/io/File;
    .local v23, "f":Ljava/io/File;
    :try_start_1
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v4

    if-nez v4, :cond_18

    .line 761
    const/16 v22, 0x0

    .line 764
    .end local v23    # "f":Ljava/io/File;
    .restart local v22    # "f":Ljava/io/File;
    :cond_3
    :goto_1
    if-nez v22, :cond_4

    .line 765
    :try_start_2
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v22

    .line 768
    :cond_4
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 769
    new-instance v30, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SEND"

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 770
    .local v30, "intent":Landroid/content/Intent;
    if-eqz v34, :cond_5

    .line 771
    invoke-virtual/range {v34 .. v34}, Lorg/telegram/messenger/MessageObject;->getMimeType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 775
    :goto_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v5, 0x18

    if-lt v4, v5, :cond_6

    .line 777
    :try_start_3
    const-string/jumbo v4, "android.intent.extra.STREAM"

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "org.telegram.messenger.provider"

    move-object/from16 v0, v22

    invoke-static {v5, v6, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 778
    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 786
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    const-string/jumbo v5, "ShareFile"

    const v6, 0x7f070588

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-static {v0, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    const/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/LaunchActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 794
    .end local v30    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v19

    .line 795
    .local v19, "e":Ljava/lang/Exception;
    :goto_4
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 773
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v30    # "intent":Landroid/content/Intent;
    :cond_5
    :try_start_5
    const-string/jumbo v4, "audio/mp3"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 779
    :catch_1
    move-exception v29

    .line 780
    .local v29, "ignore":Ljava/lang/Exception;
    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_3

    .line 783
    .end local v29    # "ignore":Ljava/lang/Exception;
    :cond_6
    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_3

    .line 788
    .end local v30    # "intent":Landroid/content/Intent;
    :cond_7
    new-instance v12, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v12, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 789
    .local v12, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v4, "AppName"

    const v5, 0x7f07007a

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 790
    const-string/jumbo v4, "OK"

    const v5, 0x7f070440

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 791
    const-string/jumbo v4, "PleaseDownload"

    const v5, 0x7f0704c5

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 792
    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 797
    .end local v12    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v22    # "f":Ljava/io/File;
    .end local v31    # "isVideo":Z
    :cond_8
    const/4 v4, 0x3

    move/from16 v0, p1

    if-ne v0, v4, :cond_12

    .line 798
    new-instance v12, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v12, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 800
    .restart local v12    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v4, "AppName"

    const v5, 0x7f07007a

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 802
    const/4 v4, 0x1

    new-array v0, v4, [Z

    move-object/from16 v18, v0

    .line 803
    .local v18, "deleteForAll":[Z
    invoke-virtual/range {v34 .. v34}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v32, v0

    .line 804
    .local v32, "lower_id":I
    if-eqz v32, :cond_d

    .line 807
    if-lez v32, :cond_e

    .line 808
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v17

    .line 809
    .local v17, "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v15, 0x0

    .line 814
    .local v15, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :goto_5
    if-nez v17, :cond_9

    invoke-static {v15}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 815
    :cond_9
    const/16 v27, 0x0

    .line 816
    .local v27, "hasOutgoing":Z
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v16

    .line 817
    .local v16, "currentDate":I
    if-eqz v17, :cond_a

    move-object/from16 v0, v17

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v5

    if-ne v4, v5, :cond_b

    :cond_a
    if-eqz v15, :cond_d

    .line 818
    :cond_b
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v4, :cond_c

    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    if-eqz v4, :cond_d

    :cond_c
    invoke-virtual/range {v34 .. v34}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sub-int v4, v16, v4

    const v5, 0x2a300

    if-gt v4, v5, :cond_d

    .line 819
    new-instance v26, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 820
    .local v26, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v13, Lorg/telegram/ui/Cells/CheckBoxCell;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    const/4 v5, 0x1

    invoke-direct {v13, v4, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;Z)V

    .line 821
    .local v13, "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v13, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 822
    if-eqz v15, :cond_f

    .line 823
    const-string/jumbo v4, "DeleteForAll"

    const v5, 0x7f0701d7

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v13, v4, v5, v6, v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 827
    :goto_6
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_10

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    :goto_7
    const/4 v6, 0x0

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_11

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    :goto_8
    const/4 v7, 0x0

    invoke-virtual {v13, v4, v6, v5, v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setPadding(IIII)V

    .line 828
    const/4 v4, -0x1

    const/high16 v5, 0x42400000    # 48.0f

    const/16 v6, 0x33

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v13, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 829
    new-instance v4, Lorg/telegram/ui/Components/AudioPlayerAlert$18;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$18;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;[Z)V

    invoke-virtual {v13, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 837
    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 842
    .end local v13    # "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    .end local v15    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v16    # "currentDate":I
    .end local v17    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v26    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v27    # "hasOutgoing":Z
    :cond_d
    const-string/jumbo v4, "OK"

    const v5, 0x7f070440

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/AudioPlayerAlert$19;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v18

    invoke-direct {v5, v0, v1, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert$19;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/messenger/MessageObject;[Z)V

    invoke-virtual {v12, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 858
    const-string/jumbo v4, "Cancel"

    const v5, 0x7f0700f4

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 859
    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto/16 :goto_0

    .line 811
    :cond_e
    const/16 v17, 0x0

    .line 812
    .restart local v17    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move/from16 v0, v32

    neg-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v15

    .restart local v15    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    goto/16 :goto_5

    .line 825
    .restart local v13    # "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    .restart local v16    # "currentDate":I
    .restart local v26    # "frameLayout":Landroid/widget/FrameLayout;
    .restart local v27    # "hasOutgoing":Z
    :cond_f
    const-string/jumbo v4, "DeleteForUser"

    const v5, 0x7f0701d8

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v13, v4, v5, v6, v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_6

    .line 827
    :cond_10
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto/16 :goto_7

    :cond_11
    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    goto/16 :goto_8

    .line 860
    .end local v12    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v13    # "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    .end local v15    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v16    # "currentDate":I
    .end local v17    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v18    # "deleteForAll":[Z
    .end local v26    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v27    # "hasOutgoing":Z
    .end local v32    # "lower_id":I
    :cond_12
    const/4 v4, 0x4

    move/from16 v0, p1

    if-ne v0, v4, :cond_0

    .line 861
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 862
    .restart local v11    # "args":Landroid/os/Bundle;
    invoke-virtual/range {v34 .. v34}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v20

    .line 863
    .local v20, "did":J
    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v33, v0

    .line 864
    .local v33, "lower_part":I
    const/16 v4, 0x20

    shr-long v4, v20, v4

    long-to-int v0, v4

    move/from16 v28, v0

    .line 865
    .local v28, "high_id":I
    if-eqz v33, :cond_17

    .line 866
    const/4 v4, 0x1

    move/from16 v0, v28

    if-ne v0, v4, :cond_14

    .line 867
    const-string/jumbo v4, "chat_id"

    move/from16 v0, v33

    invoke-virtual {v11, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 883
    :cond_13
    :goto_9
    const-string/jumbo v4, "message_id"

    invoke-virtual/range {v34 .. v34}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 884
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 885
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    new-instance v5, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v5, v11}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    .line 886
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->dismiss()V

    goto/16 :goto_0

    .line 869
    :cond_14
    if-lez v33, :cond_15

    .line 870
    const-string/jumbo v4, "user_id"

    move/from16 v0, v33

    invoke-virtual {v11, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_9

    .line 871
    :cond_15
    if-gez v33, :cond_13

    .line 872
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move/from16 v0, v33

    neg-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v14

    .line 873
    .local v14, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v14, :cond_16

    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v4, :cond_16

    .line 874
    const-string/jumbo v4, "migrated_to"

    move/from16 v0, v33

    invoke-virtual {v11, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 875
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:I

    neg-int v0, v4

    move/from16 v33, v0

    .line 877
    :cond_16
    const-string/jumbo v4, "chat_id"

    move/from16 v0, v33

    neg-int v5, v0

    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_9

    .line 881
    .end local v14    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_17
    const-string/jumbo v4, "enc_id"

    move/from16 v0, v28

    invoke-virtual {v11, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_9

    .line 794
    .end local v11    # "args":Landroid/os/Bundle;
    .end local v20    # "did":J
    .end local v28    # "high_id":I
    .end local v33    # "lower_part":I
    .restart local v23    # "f":Ljava/io/File;
    .restart local v31    # "isVideo":Z
    :catch_2
    move-exception v19

    move-object/from16 v22, v23

    .end local v23    # "f":Ljava/io/File;
    .restart local v22    # "f":Ljava/io/File;
    goto/16 :goto_4

    .end local v22    # "f":Ljava/io/File;
    .restart local v23    # "f":Ljava/io/File;
    :cond_18
    move-object/from16 v22, v23

    .end local v23    # "f":Ljava/io/File;
    .restart local v22    # "f":Ljava/io/File;
    goto/16 :goto_1
.end method

.method private updateLayout()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 951
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v5

    if-gtz v5, :cond_0

    .line 1001
    :goto_0
    return-void

    .line 954
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 955
    .local v0, "child":Landroid/view/View;
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/RecyclerListView;->findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 956
    .local v1, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 957
    .local v3, "top":I
    if-lez v3, :cond_7

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;->getAdapterPosition()I

    move-result v5

    if-nez v5, :cond_7

    move v2, v3

    .line 958
    .local v2, "newOffset":I
    :goto_1
    iget-boolean v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchWas:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searching:Z

    if-eqz v5, :cond_2

    .line 959
    :cond_1
    const/4 v2, 0x0

    .line 961
    :cond_2
    iget v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    if-eq v5, v2, :cond_6

    .line 962
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 963
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 964
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->placeholderImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setTranslationY(F)V

    .line 965
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shadow2:Landroid/view/View;

    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 966
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->invalidate()V

    .line 968
    iget-boolean v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->inFullSize:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v6

    if-le v5, v6, :cond_4

    :cond_3
    iget-boolean v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchWas:Z

    if-eqz v5, :cond_8

    .line 969
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    .line 970
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_5

    .line 971
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 973
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTag(Ljava/lang/Object;)V

    .line 974
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    .line 975
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    iget-object v7, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v8, "alpha"

    new-array v9, v10, [F

    aput v12, v9, v4

    .line 976
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v7, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shadow:Landroid/view/View;

    const-string/jumbo v8, "alpha"

    new-array v9, v10, [F

    aput v12, v9, v4

    .line 977
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v6, v10

    iget-object v7, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shadow2:Landroid/view/View;

    const-string/jumbo v8, "alpha"

    new-array v9, v10, [F

    aput v12, v9, v4

    .line 978
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v6, v13

    .line 975
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 979
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xb4

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 980
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 999
    :cond_6
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->startTranslation:F

    .line 1000
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->panelStartTranslation:F

    goto/16 :goto_0

    .end local v2    # "newOffset":I
    :cond_7
    move v2, v4

    .line 957
    goto/16 :goto_1

    .line 983
    .restart local v2    # "newOffset":I
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 984
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_9

    .line 985
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 987
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTag(Ljava/lang/Object;)V

    .line 988
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    .line 989
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    iget-object v7, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v8, "alpha"

    new-array v9, v10, [F

    aput v11, v9, v4

    .line 990
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v7, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shadow:Landroid/view/View;

    const-string/jumbo v8, "alpha"

    new-array v9, v10, [F

    aput v11, v9, v4

    .line 991
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v6, v10

    iget-object v7, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shadow2:Landroid/view/View;

    const-string/jumbo v8, "alpha"

    new-array v9, v10, [F

    aput v11, v9, v4

    .line 992
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v6, v13

    .line 989
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 993
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xb4

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 994
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2
.end method

.method private updateProgress(Lorg/telegram/messenger/MessageObject;)V
    .locals 5
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 1076
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz v0, :cond_1

    .line 1077
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBarView;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1078
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    iget v1, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    .line 1080
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastTime:I

    iget v1, p1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    if-eq v0, v1, :cond_1

    .line 1081
    iget v0, p1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    iput v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastTime:I

    .line 1082
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v1, "%d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    :cond_1
    return-void
.end method

.method private updateRepeatButton()V
    .locals 5

    .prologue
    const v2, 0x7f02017b

    .line 1059
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getRepeatMode()I

    move-result v0

    .line 1060
    .local v0, "mode":I
    if-nez v0, :cond_1

    .line 1061
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1062
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Landroid/widget/ImageView;

    const-string/jumbo v2, "player_button"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1063
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v3, "player_button"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1073
    :cond_0
    :goto_0
    return-void

    .line 1064
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1065
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1066
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Landroid/widget/ImageView;

    const-string/jumbo v2, "player_buttonActive"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1067
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v3, "player_buttonActive"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 1068
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1069
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Landroid/widget/ImageView;

    const v2, 0x7f02017c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1070
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Landroid/widget/ImageView;

    const-string/jumbo v2, "player_buttonActive"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1071
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v3, "player_buttonActive"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private updateShuffleButton()V
    .locals 4

    .prologue
    .line 1049
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isShuffleMusic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shuffleButton:Landroid/widget/ImageView;

    const-string/jumbo v1, "player_buttonActive"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1051
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shuffleButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v2, "player_buttonActive"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1056
    :goto_0
    return-void

    .line 1053
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shuffleButton:Landroid/widget/ImageView;

    const-string/jumbo v1, "player_button"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1054
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shuffleButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v2, "player_button"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private updateTitle(Z)V
    .locals 13
    .param p1, "shutdown"    # Z

    .prologue
    .line 1115
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    .line 1116
    .local v6, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-nez v6, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1117
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->dismiss()V

    .line 1173
    :cond_2
    :goto_0
    return-void

    .line 1119
    :cond_3
    if-eqz v6, :cond_2

    .line 1122
    iget-wide v8, v6, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    .line 1123
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->hasOptions:Z

    .line 1124
    iget-object v8, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1125
    iget-object v8, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1133
    :goto_1
    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/AudioPlayerAlert;->checkIfMusicDownloaded(Lorg/telegram/messenger/MessageObject;)V

    .line 1134
    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateProgress(Lorg/telegram/messenger/MessageObject;)V

    .line 1136
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1137
    iget-object v8, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f020179

    const-string/jumbo v11, "player_button"

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v12, "player_buttonActive"

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v12

    invoke-static {v9, v10, v11, v12}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1141
    :goto_2
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v7

    .line 1142
    .local v7, "title":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v3

    .line 1143
    .local v3, "author":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1144
    iget-object v8, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->authorTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1145
    iget-object v8, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1146
    iget-object v8, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1148
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MediaController;->getAudioInfo()Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v2

    .line 1149
    .local v2, "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCover()Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 1150
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->hasNoCover:Z

    .line 1151
    iget-object v8, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->placeholderImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCover()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1158
    :goto_3
    iget-object v8, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    if-eqz v8, :cond_2

    .line 1159
    const/4 v5, 0x0

    .line 1160
    .local v5, "duration":I
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    .line 1161
    .local v4, "document":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v4, :cond_4

    .line 1162
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 1163
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1164
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v8, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v8, :cond_9

    .line 1165
    iget v5, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    .line 1170
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_4
    iget-object v9, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_a

    const-string/jumbo v8, "%d:%02d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    div-int/lit8 v12, v5, 0x3c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    rem-int/lit8 v12, v5, 0x3c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_5
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1127
    .end local v2    # "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    .end local v3    # "author":Ljava/lang/String;
    .end local v4    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v5    # "duration":I
    .end local v7    # "title":Ljava/lang/String;
    :cond_5
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->hasOptions:Z

    .line 1128
    iget-object v8, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1129
    iget-object v8, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1131
    :cond_6
    iget-object v8, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    goto/16 :goto_1

    .line 1139
    :cond_7
    iget-object v8, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f020178

    const-string/jumbo v11, "player_button"

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v12, "player_buttonActive"

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v12

    invoke-static {v9, v10, v11, v12}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 1153
    .restart local v2    # "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    .restart local v3    # "author":Ljava/lang/String;
    .restart local v7    # "title":Ljava/lang/String;
    :cond_8
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->hasNoCover:Z

    .line 1154
    iget-object v8, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->placeholderImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/BackupImageView;->invalidate()V

    .line 1155
    iget-object v8, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->placeholderImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 1162
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v4    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .restart local v5    # "duration":I
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 1170
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_a
    const-string/jumbo v8, "-:--"

    goto :goto_5
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    .prologue
    .line 947
    const/4 v0, 0x0

    return v0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 12
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 903
    sget v6, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStarted:I

    if-eq p1, v6, :cond_0

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-eq p1, v6, :cond_0

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-ne p1, v6, :cond_a

    .line 904
    :cond_0
    sget v6, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-ne p1, v6, :cond_4

    aget-object v6, p2, v7

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    :goto_0
    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateTitle(Z)V

    .line 905
    sget v6, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-eq p1, v6, :cond_1

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-ne p1, v6, :cond_5

    .line 906
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 907
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v2, :cond_6

    .line 908
    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 909
    .local v5, "view":Landroid/view/View;
    instance-of v6, v5, Lorg/telegram/ui/Cells/AudioPlayerCell;

    if-eqz v6, :cond_3

    move-object v1, v5

    .line 910
    check-cast v1, Lorg/telegram/ui/Cells/AudioPlayerCell;

    .line 911
    .local v1, "cell":Lorg/telegram/ui/Cells/AudioPlayerCell;
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    .line 912
    .local v3, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 913
    :cond_2
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Cells/AudioPlayerCell;->updateButtonState(Z)V

    .line 907
    .end local v1    # "cell":Lorg/telegram/ui/Cells/AudioPlayerCell;
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "a":I
    .end local v2    # "count":I
    .end local v5    # "view":Landroid/view/View;
    :cond_4
    move v6, v8

    .line 904
    goto :goto_0

    .line 917
    :cond_5
    sget v6, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStarted:I

    if-ne p1, v6, :cond_6

    .line 918
    aget-object v3, p2, v8

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 919
    .restart local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-wide v6, v3, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v10, 0x0

    cmp-long v6, v6, v10

    if-eqz v6, :cond_7

    .line 943
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_6
    :goto_2
    return-void

    .line 922
    .restart local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 923
    .restart local v2    # "count":I
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_3
    if-ge v0, v2, :cond_6

    .line 924
    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 925
    .restart local v5    # "view":Landroid/view/View;
    instance-of v6, v5, Lorg/telegram/ui/Cells/AudioPlayerCell;

    if-eqz v6, :cond_9

    move-object v1, v5

    .line 926
    check-cast v1, Lorg/telegram/ui/Cells/AudioPlayerCell;

    .line 927
    .restart local v1    # "cell":Lorg/telegram/ui/Cells/AudioPlayerCell;
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    .line 928
    .local v4, "messageObject1":Lorg/telegram/messenger/MessageObject;
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 929
    :cond_8
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Cells/AudioPlayerCell;->updateButtonState(Z)V

    .line 923
    .end local v1    # "cell":Lorg/telegram/ui/Cells/AudioPlayerCell;
    .end local v4    # "messageObject1":Lorg/telegram/messenger/MessageObject;
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 934
    .end local v0    # "a":I
    .end local v2    # "count":I
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v5    # "view":Landroid/view/View;
    :cond_a
    sget v6, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    if-ne p1, v6, :cond_b

    .line 935
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    .line 936
    .restart local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 937
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateProgress(Lorg/telegram/messenger/MessageObject;)V

    goto :goto_2

    .line 939
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_b
    sget v6, Lorg/telegram/messenger/NotificationCenter;->musicDidLoaded:I

    if-ne p1, v6, :cond_6

    .line 940
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MediaController;->getPlaylist()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playlist:Ljava/util/ArrayList;

    .line 941
    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->notifyDataSetChanged()V

    goto :goto_2
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 1005
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 1006
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1007
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1008
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1009
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1010
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->musicDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1011
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 1012
    return-void
.end method

.method public getFullAnimationProgress()F
    .locals 1

    .prologue
    .line 699
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->fullAnimationProgress:F

    return v0
.end method

.method public getObserverTag()I
    .locals 1

    .prologue
    .line 1045
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->TAG:I

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    .line 1021
    :goto_0
    return-void

    .line 1020
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onBackPressed()V

    goto :goto_0
.end method

.method public onFailedDownload(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1026
    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;F)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "progress"    # F

    .prologue
    .line 1035
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 1036
    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;FZ)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "progress"    # F
    .param p3, "isEncrypted"    # Z

    .prologue
    .line 1041
    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1031
    return-void
.end method

.method public setFullAnimationProgress(F)V
    .locals 7
    .param p1, "value"    # F

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 681
    iput p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->fullAnimationProgress:F

    .line 682
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->placeholderImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v3, 0x41a00000    # 20.0f

    iget v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->fullAnimationProgress:F

    sub-float v4, v6, v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 683
    iget v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->thumbMaxScale:F

    iget v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->fullAnimationProgress:F

    mul-float/2addr v2, v3

    add-float v0, v6, v2

    .line 684
    .local v0, "scale":F
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->placeholderImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setScaleX(F)V

    .line 685
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->placeholderImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setScaleY(F)V

    .line 686
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->placeholderImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getTranslationY()F

    move-result v1

    .line 687
    .local v1, "translationY":F
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->placeholderImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->thumbMaxX:I

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->fullAnimationProgress:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setTranslationX(F)V

    .line 688
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->placeholderImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->startTranslation:F

    iget v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->endTranslation:F

    iget v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->startTranslation:F

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->fullAnimationProgress:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setTranslationY(F)V

    .line 689
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    iget v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->panelStartTranslation:F

    iget v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->panelEndTranslation:F

    iget v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->panelStartTranslation:F

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->fullAnimationProgress:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 690
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shadow2:Landroid/view/View;

    iget v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->panelStartTranslation:F

    iget v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->panelEndTranslation:F

    iget v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->panelStartTranslation:F

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->fullAnimationProgress:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 691
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->fullAnimationProgress:F

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 692
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->fullAnimationProgress:F

    sub-float v3, v6, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 693
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    iget v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->fullAnimationProgress:F

    sub-float v3, v6, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setAlpha(F)V

    .line 694
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->fullAnimationProgress:F

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setAlpha(F)V

    .line 695
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getSubtitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->fullAnimationProgress:F

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setAlpha(F)V

    .line 696
    return-void
.end method
