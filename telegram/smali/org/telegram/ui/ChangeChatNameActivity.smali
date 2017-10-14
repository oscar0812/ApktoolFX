.class public Lorg/telegram/ui/ChangeChatNameActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChangeChatNameActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/ui/Components/BackupImageView;

.field private avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

.field private chatId:I

.field private createAfterUpload:Z

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private doneButton:Landroid/view/View;

.field private donePressed:Z

.field private headerLabelView:Landroid/view/View;

.field private nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChangeChatNameActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeChatNameActivity;

    .prologue
    .line 54
    iget-boolean v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->donePressed:Z

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ChangeChatNameActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangeChatNameActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->donePressed:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeChatNameActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/ui/Components/AvatarDrawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeChatNameActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeChatNameActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ChangeChatNameActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeChatNameActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->doneButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/ui/Components/AvatarUpdater;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeChatNameActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChangeChatNameActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeChatNameActivity;

    .prologue
    .line 54
    iget-boolean v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->createAfterUpload:Z

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/ChangeChatNameActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangeChatNameActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->createAfterUpload:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeChatNameActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/ChangeChatNameActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangeChatNameActivity;
    .param p1, "x1"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 54
    iput-object p1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/tgnet/TLRPC$InputFile;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeChatNameActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;

    return-object v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/ChangeChatNameActivity;Lorg/telegram/tgnet/TLRPC$InputFile;)Lorg/telegram/tgnet/TLRPC$InputFile;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangeChatNameActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$InputFile;

    .prologue
    .line 54
    iput-object p1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChangeChatNameActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeChatNameActivity;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->chatId:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeChatNameActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/ChangeChatNameActivity;Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangeChatNameActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$FileLocation;

    .prologue
    .line 54
    iput-object p1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeChatNameActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChangeChatNameActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangeChatNameActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/telegram/ui/ChangeChatNameActivity;->saveName()V

    return-void
.end method

.method private saveName()V
    .locals 3

    .prologue
    .line 388
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->chatId:I

    iget-object v2, p0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->changeChatTitle(ILjava/lang/String;)V

    .line 389
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 19
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x7f020093

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "ChannelEdit"

    const v4, 0x7f07011b

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ChangeChatNameActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChangeChatNameActivity$1;-><init>(Lorg/telegram/ui/ChangeChatNameActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v15

    .line 149
    .local v15, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v2, 0x1

    const v3, 0x7f0200af

    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v15, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->doneButton:Landroid/view/View;

    .line 151
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/ChangeChatNameActivity;->chatId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 153
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 154
    .local v13, "linearLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/ChangeChatNameActivity;->fragmentView:Landroid/view/View;

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->fragmentView:Landroid/view/View;

    const-string/jumbo v3, "windowBackgroundGray"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->fragmentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->fragmentView:Landroid/view/View;

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->fragmentView:Landroid/view/View;

    new-instance v3, Lorg/telegram/ui/ChangeChatNameActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChangeChatNameActivity$2;-><init>(Lorg/telegram/ui/ChangeChatNameActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 165
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 166
    .local v14, "linearLayout2":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 167
    const-string/jumbo v2, "windowBackgroundWhite"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 168
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v14, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    new-instance v10, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 171
    .local v10, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v14, v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setDrawPhoto(Z)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChangeChatNameActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v18, v0

    const/16 v2, 0x40

    const/high16 v3, 0x42800000    # 64.0f

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    :goto_0
    or-int/lit8 v4, v4, 0x30

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    const/high16 v6, 0x41400000    # 12.0f

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_2

    const/high16 v7, 0x41800000    # 16.0f

    :goto_2
    const/high16 v8, 0x41400000    # 12.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v3, Lorg/telegram/ui/ChangeChatNameActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChangeChatNameActivity$3;-><init>(Lorg/telegram/ui/ChangeChatNameActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    new-instance v2, Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_3

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string/jumbo v3, "GroupName"

    const v4, 0x7f0702dd

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHint(Ljava/lang/CharSequence;)V

    .line 218
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setMaxLines(I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChangeChatNameActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setText(Ljava/lang/CharSequence;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    :goto_4
    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setGravity(I)V

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string/jumbo v3, "GroupName"

    const v4, 0x7f0702dd

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHint(Ljava/lang/CharSequence;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string/jumbo v3, "windowBackgroundWhiteHintText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintTextColor(I)V

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setImeOptions(I)V

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v3, 0x4001

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setInputType(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setPadding(IIII)V

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setFocusable(Z)V

    .line 229
    const/4 v2, 0x1

    new-array v12, v2, [Landroid/text/InputFilter;

    .line 230
    .local v12, "inputFilters":[Landroid/text/InputFilter;
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v12, v2

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2, v12}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setFilters([Landroid/text/InputFilter;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string/jumbo v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string/jumbo v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextColor(I)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-object/from16 v18, v0

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x10

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_5

    const/high16 v5, 0x41800000    # 16.0f

    :goto_5
    const/4 v6, 0x0

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_6

    const/high16 v7, 0x42c00000    # 96.0f

    :goto_6
    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v3, Lorg/telegram/ui/ChangeChatNameActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChangeChatNameActivity$4;-><init>(Lorg/telegram/ui/ChangeChatNameActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 255
    new-instance v16, Lorg/telegram/ui/Cells/ShadowSectionCell;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 256
    .local v16, "sectionCell":Lorg/telegram/ui/Cells/ShadowSectionCell;
    const/16 v2, 0x14

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setSize(I)V

    .line 257
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v2, :cond_7

    .line 260
    new-instance v9, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 261
    .local v9, "container3":Landroid/widget/FrameLayout;
    const-string/jumbo v2, "windowBackgroundWhite"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 262
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    new-instance v17, Lorg/telegram/ui/Cells/TextSettingsCell;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 265
    .local v17, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    const-string/jumbo v2, "windowBackgroundWhiteRedText5"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 266
    const/4 v2, 0x0

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 267
    const-string/jumbo v2, "DeleteMega"

    const v3, 0x7f0701dc

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    .line 268
    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    new-instance v2, Lorg/telegram/ui/ChangeChatNameActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChangeChatNameActivity$5;-><init>(Lorg/telegram/ui/ChangeChatNameActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    new-instance v11, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 294
    .local v11, "infoCell2":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    const v2, 0x7f020085

    const-string/jumbo v3, "windowBackgroundGrayShadow"

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    const-string/jumbo v2, "MegaDeleteInfo"

    const v3, 0x7f07037a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 296
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v11, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    .end local v9    # "container3":Landroid/widget/FrameLayout;
    .end local v11    # "infoCell2":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    .end local v17    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v2, :cond_8

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChangeChatNameActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v4, "50_50"

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChangeChatNameActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 309
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->fragmentView:Landroid/view/View;

    return-object v2

    .line 177
    .end local v12    # "inputFilters":[Landroid/text/InputFilter;
    .end local v16    # "sectionCell":Lorg/telegram/ui/Cells/ShadowSectionCell;
    :cond_0
    const/4 v4, 0x3

    goto/16 :goto_0

    :cond_1
    const/high16 v5, 0x41800000    # 16.0f

    goto/16 :goto_1

    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 216
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string/jumbo v3, "EnterChannelName"

    const v4, 0x7f070222

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 220
    :cond_4
    const/4 v2, 0x3

    goto/16 :goto_4

    .line 236
    .restart local v12    # "inputFilters":[Landroid/text/InputFilter;
    :cond_5
    const/high16 v5, 0x42c00000    # 96.0f

    goto/16 :goto_5

    :cond_6
    const/high16 v7, 0x41800000    # 16.0f

    goto/16 :goto_6

    .line 298
    .restart local v16    # "sectionCell":Lorg/telegram/ui/Cells/ShadowSectionCell;
    :cond_7
    const v2, 0x7f020085

    const-string/jumbo v3, "windowBackgroundGrayShadow"

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 306
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangeChatNameActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChangeChatNameActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8
.end method

.method public didUploadedPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 1
    .param p1, "file"    # Lorg/telegram/tgnet/TLRPC$InputFile;
    .param p2, "small"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .param p3, "big"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .prologue
    .line 325
    new-instance v0, Lorg/telegram/ui/ChangeChatNameActivity$6;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/ChangeChatNameActivity$6;-><init>(Lorg/telegram/ui/ChangeChatNameActivity;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 345
    return-void
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 349
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/AvatarUpdater;->onActivityResult(IILandroid/content/Intent;)V

    .line 350
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 3

    .prologue
    .line 78
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 79
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 80
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeChatNameActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "chat_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->chatId:I

    .line 81
    new-instance v0, Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarUpdater;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iput-object p0, v0, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iput-object p0, v0, Lorg/telegram/ui/Components/AvatarUpdater;->delegate:Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 314
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 315
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 316
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "view_animations"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 317
    .local v0, "animations":Z
    if-nez v0, :cond_0

    .line 318
    iget-object v2, p0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->requestFocus()Z

    .line 319
    iget-object v2, p0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 321
    :cond_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 4
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 374
    if-eqz p1, :cond_0

    .line 375
    new-instance v0, Lorg/telegram/ui/ChangeChatNameActivity$7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChangeChatNameActivity$7;-><init>(Lorg/telegram/ui/ChangeChatNameActivity;)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 385
    :cond_0
    return-void
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 367
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    const-string/jumbo v1, "path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    .line 370
    :cond_0
    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 354
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 355
    const-string/jumbo v1, "path"

    iget-object v2, p0, Lorg/telegram/ui/ChangeChatNameActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v2, v2, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v1, :cond_1

    .line 358
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    const-string/jumbo v1, "nameTextView"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    return-void
.end method
