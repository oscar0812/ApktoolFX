.class public Lorg/telegram/ui/Cells/InviteUserCell;
.super Landroid/widget/FrameLayout;
.source "InviteUserCell.java"


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private checkBox:Lorg/telegram/ui/Components/GroupCreateCheckBox;

.field private currentContact:Lorg/telegram/messenger/ContactsController$Contact;

.field private currentName:Ljava/lang/CharSequence;

.field private nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "needCheck"    # Z

    .prologue
    const/high16 v10, 0x42900000    # 72.0f

    const/high16 v9, 0x41e00000    # 28.0f

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v6, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/InviteUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 39
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/InviteUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Cells/InviteUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 41
    iget-object v11, p0, Lorg/telegram/ui/Cells/InviteUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x32

    const/high16 v1, 0x42480000    # 50.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    move v2, v7

    :goto_0
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_2

    move v3, v6

    :goto_1
    const/high16 v4, 0x41300000    # 11.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_3

    const/high16 v5, 0x41300000    # 11.0f

    :goto_2
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lorg/telegram/ui/Cells/InviteUserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/InviteUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Cells/InviteUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Cells/InviteUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Cells/InviteUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 47
    iget-object v1, p0, Lorg/telegram/ui/Cells/InviteUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_4

    move v0, v7

    :goto_3
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 48
    iget-object v11, p0, Lorg/telegram/ui/Cells/InviteUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x1

    const/high16 v1, 0x41a00000    # 20.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_5

    move v2, v7

    :goto_4
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_6

    move v3, v9

    :goto_5
    const/high16 v4, 0x41600000    # 14.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_7

    move v5, v10

    :goto_6
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lorg/telegram/ui/Cells/InviteUserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/InviteUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Cells/InviteUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 52
    iget-object v1, p0, Lorg/telegram/ui/Cells/InviteUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_8

    move v0, v7

    :goto_7
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 53
    iget-object v11, p0, Lorg/telegram/ui/Cells/InviteUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x1

    const/high16 v1, 0x41a00000    # 20.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_9

    move v2, v7

    :goto_8
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_a

    move v3, v9

    :goto_9
    const/high16 v4, 0x421c0000    # 39.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_b

    move v5, v10

    :goto_a
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lorg/telegram/ui/Cells/InviteUserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    if-eqz p2, :cond_0

    .line 56
    new-instance v0, Lorg/telegram/ui/Components/GroupCreateCheckBox;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/GroupCreateCheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/InviteUserCell;->checkBox:Lorg/telegram/ui/Components/GroupCreateCheckBox;

    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Cells/InviteUserCell;->checkBox:Lorg/telegram/ui/Components/GroupCreateCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->setVisibility(I)V

    .line 58
    iget-object v9, p0, Lorg/telegram/ui/Cells/InviteUserCell;->checkBox:Lorg/telegram/ui/Components/GroupCreateCheckBox;

    const/16 v0, 0x18

    const/high16 v1, 0x41c00000    # 24.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_c

    :goto_b
    or-int/lit8 v2, v7, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_d

    move v3, v6

    :goto_c
    const/high16 v4, 0x42240000    # 41.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_e

    const/high16 v5, 0x42240000    # 41.0f

    :goto_d
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/InviteUserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    :cond_0
    return-void

    :cond_1
    move v2, v8

    .line 41
    goto/16 :goto_0

    :cond_2
    const/high16 v3, 0x41300000    # 11.0f

    goto/16 :goto_1

    :cond_3
    move v5, v6

    goto/16 :goto_2

    :cond_4
    move v0, v8

    .line 47
    goto/16 :goto_3

    :cond_5
    move v2, v8

    .line 48
    goto/16 :goto_4

    :cond_6
    move v3, v10

    goto/16 :goto_5

    :cond_7
    move v5, v9

    goto/16 :goto_6

    :cond_8
    move v0, v8

    .line 52
    goto :goto_7

    :cond_9
    move v2, v8

    .line 53
    goto :goto_8

    :cond_a
    move v3, v10

    goto :goto_9

    :cond_b
    move v5, v9

    goto :goto_a

    :cond_c
    move v7, v8

    .line 58
    goto :goto_b

    :cond_d
    const/high16 v3, 0x42240000    # 41.0f

    goto :goto_c

    :cond_e
    move v5, v6

    goto :goto_d
.end method


# virtual methods
.method public getContact()Lorg/telegram/messenger/ContactsController$Contact;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Cells/InviteUserCell;->currentContact:Lorg/telegram/messenger/ContactsController$Contact;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 78
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 79
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Cells/InviteUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->cancelLoadImage()V

    .line 83
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1
    .param p1, "checked"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Cells/InviteUserCell;->checkBox:Lorg/telegram/ui/Components/GroupCreateCheckBox;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->setChecked(ZZ)V

    .line 70
    return-void
.end method

.method public setUser(Lorg/telegram/messenger/ContactsController$Contact;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "contact"    # Lorg/telegram/messenger/ContactsController$Contact;
    .param p2, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 63
    iput-object p1, p0, Lorg/telegram/ui/Cells/InviteUserCell;->currentContact:Lorg/telegram/messenger/ContactsController$Contact;

    .line 64
    iput-object p2, p0, Lorg/telegram/ui/Cells/InviteUserCell;->currentName:Ljava/lang/CharSequence;

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/InviteUserCell;->update(I)V

    .line 66
    return-void
.end method

.method public update(I)V
    .locals 6
    .param p1, "mask"    # I

    .prologue
    const/4 v5, 0x0

    .line 86
    iget-object v1, p0, Lorg/telegram/ui/Cells/InviteUserCell;->currentContact:Lorg/telegram/messenger/ContactsController$Contact;

    if-nez v1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    .line 91
    .local v0, "newName":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/ui/Cells/InviteUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Cells/InviteUserCell;->currentContact:Lorg/telegram/messenger/ContactsController$Contact;

    iget v2, v2, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    iget-object v3, p0, Lorg/telegram/ui/Cells/InviteUserCell;->currentContact:Lorg/telegram/messenger/ContactsController$Contact;

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/Cells/InviteUserCell;->currentContact:Lorg/telegram/messenger/ContactsController$Contact;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 93
    iget-object v1, p0, Lorg/telegram/ui/Cells/InviteUserCell;->currentName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lorg/telegram/ui/Cells/InviteUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/InviteUserCell;->currentName:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 99
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/InviteUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v2, "groupcreate_offlineText"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTag(Ljava/lang/Object;)V

    .line 100
    iget-object v1, p0, Lorg/telegram/ui/Cells/InviteUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v2, "groupcreate_offlineText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 101
    iget-object v1, p0, Lorg/telegram/ui/Cells/InviteUserCell;->currentContact:Lorg/telegram/messenger/ContactsController$Contact;

    iget v1, v1, Lorg/telegram/messenger/ContactsController$Contact;->imported:I

    if-lez v1, :cond_2

    .line 102
    iget-object v1, p0, Lorg/telegram/ui/Cells/InviteUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v2, "TelegramContacts"

    iget-object v3, p0, Lorg/telegram/ui/Cells/InviteUserCell;->currentContact:Lorg/telegram/messenger/ContactsController$Contact;

    iget v3, v3, Lorg/telegram/messenger/ContactsController$Contact;->imported:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Cells/InviteUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/InviteUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/InviteUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/InviteUserCell;->currentContact:Lorg/telegram/messenger/ContactsController$Contact;

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Cells/InviteUserCell;->currentContact:Lorg/telegram/messenger/ContactsController$Contact;

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 104
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Cells/InviteUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/InviteUserCell;->currentContact:Lorg/telegram/messenger/ContactsController$Contact;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
