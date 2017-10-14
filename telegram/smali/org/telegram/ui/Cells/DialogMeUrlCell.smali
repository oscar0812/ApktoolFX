.class public Lorg/telegram/ui/Cells/DialogMeUrlCell;
.super Lorg/telegram/ui/Cells/BaseCell;
.source "DialogMeUrlCell.java"


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/messenger/ImageReceiver;

.field private avatarTop:I

.field private drawNameBot:Z

.field private drawNameBroadcast:Z

.field private drawNameGroup:Z

.field private drawNameLock:Z

.field private drawVerified:Z

.field private isSelected:Z

.field private messageLayout:Landroid/text/StaticLayout;

.field private messageLeft:I

.field private messageTop:I

.field private nameLayout:Landroid/text/StaticLayout;

.field private nameLeft:I

.field private nameLockLeft:I

.field private nameLockTop:I

.field private nameMuteLeft:I

.field private recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

.field public useSeparator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 36
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 50
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageTop:I

    .line 56
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarTop:I

    .line 63
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->createDialogsResources(Landroid/content/Context;)V

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 65
    return-void
.end method


# virtual methods
.method public buildLayout()V
    .locals 28

    .prologue
    .line 97
    const-string/jumbo v23, ""

    .line 99
    .local v23, "nameString":Ljava/lang/String;
    sget-object v19, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:Landroid/text/TextPaint;

    .line 100
    .local v19, "currentNamePaint":Landroid/text/TextPaint;
    sget-object v18, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:Landroid/text/TextPaint;

    .line 102
    .local v18, "currentMessagePaint":Landroid/text/TextPaint;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawNameGroup:Z

    .line 103
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawNameBroadcast:Z

    .line 104
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawNameLock:Z

    .line 105
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawNameBot:Z

    .line 106
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawVerified:Z

    .line 110
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlChat;

    if-eqz v2, :cond_c

    .line 111
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->chat_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v17

    .line 112
    .local v17, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, v17

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-ltz v2, :cond_0

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_7

    .line 113
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawNameBroadcast:Z

    .line 114
    const/high16 v2, 0x41840000    # 16.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockTop:I

    .line 119
    :goto_0
    move-object/from16 v0, v17

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawVerified:Z

    .line 121
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_9

    .line 122
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockLeft:I

    .line 123
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawNameGroup:Z

    if-eqz v2, :cond_8

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :goto_1
    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    .line 128
    :goto_2
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 129
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v2, :cond_b

    .line 130
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 134
    .local v3, "image":Lorg/telegram/tgnet/TLObject;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 224
    .end local v17    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 225
    .local v22, "messageString":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const-string/jumbo v4, "50_50"

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    .line 227
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    const-string/jumbo v2, "HiddenName"

    const v4, 0x7f0702eb

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 233
    :cond_1
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_22

    .line 234
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    sub-int/2addr v2, v4

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v7, v2, v4

    .line 238
    .local v7, "nameWidth":I
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawNameLock:Z

    if-eqz v2, :cond_23

    .line 239
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v7, v2

    .line 248
    :cond_2
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawVerified:Z

    if-eqz v2, :cond_3

    .line 249
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int v25, v2, v4

    .line 250
    .local v25, "w":I
    sub-int v7, v7, v25

    .line 251
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_3

    .line 252
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    add-int v2, v2, v25

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    .line 256
    .end local v25    # "w":I
    :cond_3
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 258
    const/16 v2, 0xa

    const/16 v4, 0x20

    :try_start_0
    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v7, v4

    int-to-float v4, v4

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v19

    invoke-static {v2, v0, v4, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 259
    .local v5, "nameStringFinal":Ljava/lang/CharSequence;
    new-instance v4, Landroid/text/StaticLayout;

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, v19

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLayout:Landroid/text/StaticLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v5    # "nameStringFinal":Ljava/lang/CharSequence;
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v4, v4, 0x10

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v11, v2, v4

    .line 266
    .local v11, "messageWidth":I
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_27

    .line 267
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLeft:I

    .line 268
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_26

    const/high16 v2, 0x41500000    # 13.0f

    :goto_8
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    .line 273
    .local v16, "avatarLeft":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarTop:I

    const/high16 v6, 0x42500000    # 52.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v8, 0x42500000    # 52.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    move/from16 v0, v16

    invoke-virtual {v2, v0, v4, v6, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 275
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 276
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v11, v2

    int-to-float v2, v2

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 278
    .local v9, "messageStringFinal":Ljava/lang/CharSequence;
    :try_start_1
    new-instance v8, Landroid/text/StaticLayout;

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, v18

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLayout:Landroid/text/StaticLayout;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 285
    :goto_a
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_29

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v21

    .line 288
    .local v21, "left":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    .line 289
    .local v26, "widthpx":D
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawVerified:Z

    if-eqz v2, :cond_4

    .line 290
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    int-to-double v12, v2

    int-to-double v14, v7

    sub-double v14, v14, v26

    add-double/2addr v12, v14

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-double v14, v2

    sub-double/2addr v12, v14

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-double v14, v2

    sub-double/2addr v12, v14

    double-to-int v2, v12

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameMuteLeft:I

    .line 292
    :cond_4
    const/4 v2, 0x0

    cmpl-float v2, v21, v2

    if-nez v2, :cond_5

    .line 293
    int-to-double v12, v7

    cmpg-double v2, v26, v12

    if-gez v2, :cond_5

    .line 294
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    int-to-double v12, v2

    int-to-double v14, v7

    sub-double v14, v14, v26

    add-double/2addr v12, v14

    double-to-int v2, v12

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    .line 298
    .end local v21    # "left":F
    .end local v26    # "widthpx":D
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v21

    .line 300
    .restart local v21    # "left":F
    const/4 v2, 0x0

    cmpl-float v2, v21, v2

    if-nez v2, :cond_6

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    .line 302
    .restart local v26    # "widthpx":D
    int-to-double v12, v11

    cmpg-double v2, v26, v12

    if-gez v2, :cond_6

    .line 303
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLeft:I

    int-to-double v12, v2

    int-to-double v14, v11

    sub-double v14, v14, v26

    add-double/2addr v12, v14

    double-to-int v2, v12

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLeft:I

    .line 330
    .end local v21    # "left":F
    .end local v26    # "widthpx":D
    :cond_6
    :goto_b
    return-void

    .line 116
    .end local v3    # "image":Lorg/telegram/tgnet/TLObject;
    .end local v7    # "nameWidth":I
    .end local v9    # "messageStringFinal":Ljava/lang/CharSequence;
    .end local v11    # "messageWidth":I
    .end local v16    # "avatarLeft":I
    .end local v22    # "messageString":Ljava/lang/CharSequence;
    .restart local v17    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawNameGroup:Z

    .line 117
    const/high16 v2, 0x418c0000    # 17.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockTop:I

    goto/16 :goto_0

    .line 123
    :cond_8
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto/16 :goto_1

    .line 125
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v2, v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawNameGroup:Z

    if-eqz v2, :cond_a

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :goto_c
    sub-int v2, v4, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockLeft:I

    .line 126
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    goto/16 :goto_2

    .line 125
    :cond_a
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_c

    .line 132
    :cond_b
    const/4 v3, 0x0

    .restart local v3    # "image":Lorg/telegram/tgnet/TLObject;
    goto/16 :goto_3

    .line 135
    .end local v3    # "image":Lorg/telegram/tgnet/TLObject;
    .end local v17    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlUser;

    if-eqz v2, :cond_12

    .line 136
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v24

    .line 137
    .local v24, "user":Lorg/telegram/tgnet/TLRPC$User;
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_f

    .line 138
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    .line 142
    :goto_d
    if-eqz v24, :cond_e

    .line 143
    move-object/from16 v0, v24

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_d

    .line 144
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawNameBot:Z

    .line 145
    const/high16 v2, 0x41840000    # 16.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockTop:I

    .line 146
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_10

    .line 147
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockLeft:I

    .line 148
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    .line 154
    :cond_d
    :goto_e
    move-object/from16 v0, v24

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawVerified:Z

    .line 156
    :cond_e
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v23

    .line 157
    move-object/from16 v0, v24

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v2, :cond_11

    .line 158
    move-object/from16 v0, v24

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 162
    .restart local v3    # "image":Lorg/telegram/tgnet/TLObject;
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    goto/16 :goto_4

    .line 140
    .end local v3    # "image":Lorg/telegram/tgnet/TLObject;
    :cond_f
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    goto :goto_d

    .line 150
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockLeft:I

    .line 151
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    goto :goto_e

    .line 160
    :cond_11
    const/4 v3, 0x0

    .restart local v3    # "image":Lorg/telegram/tgnet/TLObject;
    goto :goto_f

    .line 163
    .end local v3    # "image":Lorg/telegram/tgnet/TLObject;
    .end local v24    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlStickerSet;

    if-eqz v2, :cond_14

    .line 164
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_13

    .line 165
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    .line 169
    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->set:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->set:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    .line 171
    .restart local v3    # "image":Lorg/telegram/tgnet/TLObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v4, 0x5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->set:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v4, v6, v8, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 167
    .end local v3    # "image":Lorg/telegram/tgnet/TLObject;
    :cond_13
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    goto :goto_10

    .line 172
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlChatInvite;

    if-eqz v2, :cond_1f

    .line 173
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_16

    .line 174
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    .line 178
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->chat_invite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_19

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->chat_invite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->chat_invite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->chat_invite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v2, :cond_17

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->chat_invite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 186
    .restart local v3    # "image":Lorg/telegram/tgnet/TLObject;
    :goto_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->chat_invite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-ltz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->chat_invite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->chat_invite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_18

    .line 187
    :cond_15
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawNameBroadcast:Z

    .line 188
    const/high16 v2, 0x41840000    # 16.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockTop:I

    .line 193
    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->chat_invite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawVerified:Z

    .line 206
    :goto_14
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_1d

    .line 207
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockLeft:I

    .line 208
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawNameGroup:Z

    if-eqz v2, :cond_1c

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :goto_15
    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    goto/16 :goto_4

    .line 176
    .end local v3    # "image":Lorg/telegram/tgnet/TLObject;
    :cond_16
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    goto/16 :goto_11

    .line 184
    :cond_17
    const/4 v3, 0x0

    .restart local v3    # "image":Lorg/telegram/tgnet/TLObject;
    goto :goto_12

    .line 190
    :cond_18
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawNameGroup:Z

    .line 191
    const/high16 v2, 0x418c0000    # 17.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockTop:I

    goto :goto_13

    .line 195
    .end local v3    # "image":Lorg/telegram/tgnet/TLObject;
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->chat_invite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->chat_invite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 197
    .restart local v3    # "image":Lorg/telegram/tgnet/TLObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v4, 0x5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->chat_invite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v4, v6, v8, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->chat_invite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->broadcast:Z

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->chat_invite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->channel:Z

    if-eqz v2, :cond_1b

    .line 199
    :cond_1a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawNameBroadcast:Z

    .line 200
    const/high16 v2, 0x41840000    # 16.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockTop:I

    goto/16 :goto_14

    .line 202
    :cond_1b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawNameGroup:Z

    .line 203
    const/high16 v2, 0x418c0000    # 17.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockTop:I

    goto/16 :goto_14

    .line 208
    :cond_1c
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto/16 :goto_15

    .line 210
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v2, v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawNameGroup:Z

    if-eqz v2, :cond_1e

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :goto_16
    sub-int v2, v4, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockLeft:I

    .line 211
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    goto/16 :goto_4

    .line 210
    :cond_1e
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_16

    .line 213
    .end local v3    # "image":Lorg/telegram/tgnet/TLObject;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlUnknown;

    if-eqz v2, :cond_21

    .line 214
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_20

    .line 215
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    .line 219
    :goto_17
    const-string/jumbo v23, "Url"

    .line 220
    const/4 v3, 0x0

    .restart local v3    # "image":Lorg/telegram/tgnet/TLObject;
    goto/16 :goto_4

    .line 217
    .end local v3    # "image":Lorg/telegram/tgnet/TLObject;
    :cond_20
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    goto :goto_17

    .line 222
    :cond_21
    const/4 v3, 0x0

    .restart local v3    # "image":Lorg/telegram/tgnet/TLObject;
    goto/16 :goto_4

    .line 236
    .restart local v22    # "messageString":Ljava/lang/CharSequence;
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    sub-int/2addr v2, v4

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v7, v2, v4

    .restart local v7    # "nameWidth":I
    goto/16 :goto_5

    .line 240
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawNameGroup:Z

    if-eqz v2, :cond_24

    .line 241
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v7, v2

    goto/16 :goto_6

    .line 242
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawNameBroadcast:Z

    if-eqz v2, :cond_25

    .line 243
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v7, v2

    goto/16 :goto_6

    .line 244
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawNameBot:Z

    if-eqz v2, :cond_2

    .line 245
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v7, v2

    goto/16 :goto_6

    .line 260
    :catch_0
    move-exception v20

    .line 261
    .local v20, "e":Ljava/lang/Exception;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 268
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v11    # "messageWidth":I
    :cond_26
    const/high16 v2, 0x41100000    # 9.0f

    goto/16 :goto_8

    .line 270
    :cond_27
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLeft:I

    .line 271
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->getMeasuredWidth()I

    move-result v4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_28

    const/high16 v2, 0x42820000    # 65.0f

    :goto_18
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v16, v4, v2

    .restart local v16    # "avatarLeft":I
    goto/16 :goto_9

    .end local v16    # "avatarLeft":I
    :cond_28
    const/high16 v2, 0x42740000    # 61.0f

    goto :goto_18

    .line 279
    .restart local v9    # "messageStringFinal":Ljava/lang/CharSequence;
    .restart local v16    # "avatarLeft":I
    :catch_1
    move-exception v20

    .line 280
    .restart local v20    # "e":Ljava/lang/Exception;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 308
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_2b

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v21

    .line 310
    .restart local v21    # "left":F
    int-to-float v2, v7

    cmpl-float v2, v21, v2

    if-nez v2, :cond_2a

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    .line 312
    .restart local v26    # "widthpx":D
    int-to-double v12, v7

    cmpg-double v2, v26, v12

    if-gez v2, :cond_2a

    .line 313
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    int-to-double v12, v2

    int-to-double v14, v7

    sub-double v14, v14, v26

    sub-double/2addr v12, v14

    double-to-int v2, v12

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    .line 316
    .end local v26    # "widthpx":D
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawVerified:Z

    if-eqz v2, :cond_2b

    .line 317
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    int-to-float v2, v2

    add-float v2, v2, v21

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameMuteLeft:I

    .line 320
    .end local v21    # "left":F
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v21

    .line 322
    .restart local v21    # "left":F
    int-to-float v2, v11

    cmpl-float v2, v21, v2

    if-nez v2, :cond_6

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    .line 324
    .restart local v26    # "widthpx":D
    int-to-double v12, v11

    cmpg-double v2, v26, v12

    if-gez v2, :cond_6

    .line 325
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLeft:I

    int-to-double v12, v2

    int-to-double v14, v11

    sub-double v14, v14, v26

    sub-double/2addr v12, v14

    double-to-int v2, v12

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLeft:I

    goto/16 :goto_b
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lorg/telegram/ui/Cells/BaseCell;->onAttachedToWindow()V

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 82
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lorg/telegram/ui/Cells/BaseCell;->onDetachedFromWindow()V

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 76
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v7, 0x41840000    # 16.5f

    const/4 v1, 0x0

    .line 341
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->isSelected:Z

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_tabletSeletedPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 345
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawNameLock:Z

    if-eqz v0, :cond_6

    .line 346
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 347
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 359
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2

    .line 360
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 361
    iget v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLeft:I

    int-to-float v0, v0

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 362
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 363
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 366
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_3

    .line 367
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 368
    iget v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLeft:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 370
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 377
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawVerified:Z

    if-eqz v0, :cond_4

    .line 378
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameMuteLeft:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 379
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameMuteLeft:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 380
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 381
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 384
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->useSeparator:Z

    if-eqz v0, :cond_5

    .line 385
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_9

    .line 386
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->getMeasuredWidth()I

    move-result v0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 392
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 393
    return-void

    .line 348
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawNameGroup:Z

    if-eqz v0, :cond_7

    .line 349
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 350
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 351
    :cond_7
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawNameBroadcast:Z

    if-eqz v0, :cond_8

    .line 352
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 353
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 354
    :cond_8
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->drawNameBot:Z

    if-eqz v0, :cond_1

    .line 355
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->nameLockTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 356
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 371
    :catch_0
    move-exception v6

    .line 372
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 388
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_9
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->buildLayout()V

    .line 94
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 86
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v0, 0x42900000    # 72.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->useSeparator:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->setMeasuredDimension(II)V

    .line 87
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDialogSelected(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 333
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->isSelected:Z

    if-eq v0, p1, :cond_0

    .line 334
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->invalidate()V

    .line 336
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->isSelected:Z

    .line 337
    return-void
.end method

.method public setRecentMeUrl(Lorg/telegram/tgnet/TLRPC$RecentMeUrl;)V
    .locals 0
    .param p1, "url"    # Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    .prologue
    .line 68
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogMeUrlCell;->recentMeUrl:Lorg/telegram/tgnet/TLRPC$RecentMeUrl;

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogMeUrlCell;->requestLayout()V

    .line 70
    return-void
.end method
