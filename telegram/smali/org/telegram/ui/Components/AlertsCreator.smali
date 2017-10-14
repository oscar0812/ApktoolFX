.class public Lorg/telegram/ui/Components/AlertsCreator;
.super Ljava/lang/Object;
.source "AlertsCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/AlertsCreator$PaymentAlertDelegate;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createColorSelectDialog(Landroid/app/Activity;JZZLjava/lang/Runnable;)Landroid/app/Dialog;
    .locals 21
    .param p0, "parentActivity"    # Landroid/app/Activity;
    .param p1, "dialog_id"    # J
    .param p3, "globalGroup"    # Z
    .param p4, "globalAll"    # Z
    .param p5, "onSelect"    # Ljava/lang/Runnable;

    .prologue
    .line 464
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "Notifications"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 465
    .local v19, "preferences":Landroid/content/SharedPreferences;
    if-eqz p3, :cond_0

    .line 466
    const-string/jumbo v4, "GroupLed"

    const v5, -0xffff01

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 480
    .local v16, "currentColor":I
    :goto_0
    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 481
    .local v18, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 482
    const/16 v4, 0x9

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v4, 0x0

    const-string/jumbo v5, "ColorRed"

    const v7, 0x7f070183

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "ColorOrange"

    const v7, 0x7f070181

    .line 483
    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "ColorYellow"

    const v7, 0x7f070187

    .line 484
    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "ColorGreen"

    const v7, 0x7f070180

    .line 485
    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "ColorCyan"

    const v7, 0x7f07017e

    .line 486
    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "ColorBlue"

    const v7, 0x7f07017d

    .line 487
    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "ColorViolet"

    const v7, 0x7f070185

    .line 488
    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "ColorPink"

    const v7, 0x7f070182

    .line 489
    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "ColorWhite"

    const v7, 0x7f070186

    .line 490
    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    .line 491
    .local v17, "descriptions":[Ljava/lang/String;
    const/4 v4, 0x1

    new-array v6, v4, [I

    const/4 v4, 0x0

    aput v16, v6, v4

    .line 492
    .local v6, "selectedColor":[I
    const/4 v13, 0x0

    .local v13, "a":I
    :goto_1
    const/16 v4, 0x9

    if-ge v13, v4, :cond_5

    .line 493
    new-instance v15, Lorg/telegram/ui/Cells/RadioColorCell;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 494
    .local v15, "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v15, v4, v5, v7, v8}, Lorg/telegram/ui/Cells/RadioColorCell;->setPadding(IIII)V

    .line 495
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setTag(Ljava/lang/Object;)V

    .line 496
    sget-object v4, Lorg/telegram/ui/Cells/TextColorCell;->colors:[I

    aget v4, v4, v13

    sget-object v5, Lorg/telegram/ui/Cells/TextColorCell;->colors:[I

    aget v5, v5, v13

    invoke-virtual {v15, v4, v5}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 497
    aget-object v5, v17, v13

    sget-object v4, Lorg/telegram/ui/Cells/TextColorCell;->colorsToSave:[I

    aget v4, v4, v13

    move/from16 v0, v16

    if-ne v0, v4, :cond_4

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v15, v5, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/String;Z)V

    .line 498
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 499
    new-instance v4, Lorg/telegram/ui/Components/AlertsCreator$4;

    move-object/from16 v0, v18

    invoke-direct {v4, v0, v6}, Lorg/telegram/ui/Components/AlertsCreator$4;-><init>(Landroid/widget/LinearLayout;[I)V

    invoke-virtual {v15, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 467
    .end local v6    # "selectedColor":[I
    .end local v13    # "a":I
    .end local v15    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    .end local v16    # "currentColor":I
    .end local v17    # "descriptions":[Ljava/lang/String;
    .end local v18    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_0
    if-eqz p4, :cond_1

    .line 468
    const-string/jumbo v4, "MessagesLed"

    const v5, -0xffff01

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .restart local v16    # "currentColor":I
    goto/16 :goto_0

    .line 470
    .end local v16    # "currentColor":I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "color_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 471
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "color_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, -0xffff01

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .restart local v16    # "currentColor":I
    goto/16 :goto_0

    .line 473
    .end local v16    # "currentColor":I
    :cond_2
    move-wide/from16 v0, p1

    long-to-int v4, v0

    if-gez v4, :cond_3

    .line 474
    const-string/jumbo v4, "GroupLed"

    const v5, -0xffff01

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .restart local v16    # "currentColor":I
    goto/16 :goto_0

    .line 476
    .end local v16    # "currentColor":I
    :cond_3
    const-string/jumbo v4, "MessagesLed"

    const v5, -0xffff01

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .restart local v16    # "currentColor":I
    goto/16 :goto_0

    .line 497
    .restart local v6    # "selectedColor":[I
    .restart local v13    # "a":I
    .restart local v15    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    .restart local v17    # "descriptions":[Ljava/lang/String;
    .restart local v18    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 511
    .end local v15    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    :cond_5
    new-instance v14, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 512
    .local v14, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v4, "LedColor"

    const v5, 0x7f070348

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 513
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 514
    const-string/jumbo v4, "Set"

    const v5, 0x7f070579

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    new-instance v4, Lorg/telegram/ui/Components/AlertsCreator$5;

    move/from16 v5, p4

    move/from16 v7, p3

    move-wide/from16 v8, p1

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/AlertsCreator$5;-><init>(Z[IZJLjava/lang/Runnable;)V

    invoke-virtual {v14, v11, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 532
    const-string/jumbo v4, "LedDisabled"

    const v5, 0x7f070349

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lorg/telegram/ui/Components/AlertsCreator$6;

    move/from16 v8, p4

    move/from16 v9, p3

    move-wide/from16 v10, p1

    move-object/from16 v12, p5

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/Components/AlertsCreator$6;-><init>(ZZJLjava/lang/Runnable;)V

    invoke-virtual {v14, v4, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 550
    if-nez p4, :cond_6

    if-nez p3, :cond_6

    .line 551
    const-string/jumbo v4, "Default"

    const v5, 0x7f0701ca

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/AlertsCreator$7;

    move-wide/from16 v0, p1

    move-object/from16 v2, p5

    invoke-direct {v5, v0, v1, v2}, Lorg/telegram/ui/Components/AlertsCreator$7;-><init>(JLjava/lang/Runnable;)V

    invoke-virtual {v14, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 564
    :cond_6
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public static createFreeSpaceDialog(Lorg/telegram/ui/LaunchActivity;)Landroid/app/Dialog;
    .locals 17
    .param p0, "parentActivity"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 736
    const/4 v1, 0x1

    new-array v15, v1, [I

    .line 738
    .local v15, "selected":[I
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "mainconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 739
    .local v14, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "keep_media"

    const/4 v2, 0x2

    invoke-interface {v14, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 740
    .local v12, "keepMedia":I
    const/4 v1, 0x2

    if-ne v12, v1, :cond_1

    .line 741
    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v15, v1

    .line 750
    :cond_0
    :goto_0
    const/4 v1, 0x4

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Days"

    const/4 v3, 0x3

    .line 751
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "Weeks"

    const/4 v3, 0x1

    .line 752
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "Months"

    const/4 v3, 0x1

    .line 753
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "LowDiskSpaceNeverRemove"

    const v3, 0x7f07036c

    .line 754
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v1

    .line 757
    .local v11, "descriptions":[Ljava/lang/String;
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 758
    .local v13, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 760
    new-instance v16, Landroid/widget/TextView;

    invoke-direct/range {v16 .. v17}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 761
    .local v16, "titleTextView":Landroid/widget/TextView;
    const-string/jumbo v1, "LowDiskSpaceTitle2"

    const v2, 0x7f07036e

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    const-string/jumbo v1, "dialogTextBlack"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 763
    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 764
    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 765
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    :goto_1
    or-int/lit8 v1, v1, 0x30

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 766
    const/4 v1, -0x2

    const/4 v2, -0x2

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    :goto_2
    or-int/lit8 v3, v3, 0x30

    const/16 v4, 0x18

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/16 v7, 0x8

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 768
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_3
    array-length v1, v11

    if-ge v8, v1, :cond_7

    .line 769
    new-instance v10, Lorg/telegram/ui/Cells/RadioColorCell;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 770
    .local v10, "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v10, v1, v2, v3, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setPadding(IIII)V

    .line 771
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lorg/telegram/ui/Cells/RadioColorCell;->setTag(Ljava/lang/Object;)V

    .line 772
    const-string/jumbo v1, "radioBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "dialogRadioBackgroundChecked"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v10, v1, v2}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 773
    aget-object v2, v11, v8

    const/4 v1, 0x0

    aget v1, v15, v1

    if-ne v1, v8, :cond_6

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {v10, v2, v1}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/String;Z)V

    .line 774
    invoke-virtual {v13, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 775
    new-instance v1, Lorg/telegram/ui/Components/AlertsCreator$11;

    invoke-direct {v1, v15, v13}, Lorg/telegram/ui/Components/AlertsCreator$11;-><init>([ILandroid/widget/LinearLayout;)V

    invoke-virtual {v10, v1}, Lorg/telegram/ui/Cells/RadioColorCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 768
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 742
    .end local v8    # "a":I
    .end local v10    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    .end local v11    # "descriptions":[Ljava/lang/String;
    .end local v13    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v16    # "titleTextView":Landroid/widget/TextView;
    :cond_1
    if-nez v12, :cond_2

    .line 743
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v15, v1

    goto/16 :goto_0

    .line 744
    :cond_2
    const/4 v1, 0x1

    if-ne v12, v1, :cond_3

    .line 745
    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v15, v1

    goto/16 :goto_0

    .line 746
    :cond_3
    const/4 v1, 0x3

    if-ne v12, v1, :cond_0

    .line 747
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v15, v1

    goto/16 :goto_0

    .line 765
    .restart local v11    # "descriptions":[Ljava/lang/String;
    .restart local v13    # "linearLayout":Landroid/widget/LinearLayout;
    .restart local v16    # "titleTextView":Landroid/widget/TextView;
    :cond_4
    const/4 v1, 0x3

    goto/16 :goto_1

    .line 766
    :cond_5
    const/4 v3, 0x3

    goto :goto_2

    .line 773
    .restart local v8    # "a":I
    .restart local v10    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    :cond_6
    const/4 v1, 0x0

    goto :goto_4

    .line 798
    .end local v10    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    :cond_7
    new-instance v9, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 799
    .local v9, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v1, "LowDiskSpaceTitle"

    const v2, 0x7f07036d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 800
    const-string/jumbo v1, "LowDiskSpaceMessage"

    const v2, 0x7f07036b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 801
    invoke-virtual {v9, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 802
    const-string/jumbo v1, "OK"

    const v2, 0x7f070440

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/AlertsCreator$12;

    invoke-direct {v2, v15}, Lorg/telegram/ui/Components/AlertsCreator$12;-><init>([I)V

    invoke-virtual {v9, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 808
    const-string/jumbo v1, "ClearMediaCache"

    const v2, 0x7f070175

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/AlertsCreator$13;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/AlertsCreator$13;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v9, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 814
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static createLocationUpdateDialog(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/MessagesStorage$IntCallback;)Landroid/app/Dialog;
    .locals 15
    .param p0, "parentActivity"    # Landroid/app/Activity;
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "callback"    # Lorg/telegram/messenger/MessagesStorage$IntCallback;

    .prologue
    .line 670
    const/4 v1, 0x1

    new-array v13, v1, [I

    .line 672
    .local v13, "selected":[I
    const/4 v1, 0x3

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "SendLiveLocationFor15m"

    const v3, 0x7f07055e

    .line 673
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "SendLiveLocationFor1h"

    const v3, 0x7f07055f

    .line 674
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "SendLiveLocationFor8h"

    const v3, 0x7f070560

    .line 675
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v1

    .line 678
    .local v11, "descriptions":[Ljava/lang/String;
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 679
    .local v12, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 681
    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 682
    .local v14, "titleTextView":Landroid/widget/TextView;
    if-eqz p1, :cond_0

    .line 683
    const-string/jumbo v1, "LiveLocationAlertPrivate"

    const v2, 0x7f070358

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    :goto_0
    const-string/jumbo v1, "dialogTextBlack"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 688
    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v14, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 689
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    :goto_1
    or-int/lit8 v1, v1, 0x30

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 690
    const/4 v1, -0x2

    const/4 v2, -0x2

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    :goto_2
    or-int/lit8 v3, v3, 0x30

    const/16 v4, 0x18

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/16 v7, 0x8

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 692
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_3
    array-length v1, v11

    if-ge v8, v1, :cond_4

    .line 693
    new-instance v10, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-direct {v10, p0}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 694
    .local v10, "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v10, v1, v2, v3, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setPadding(IIII)V

    .line 695
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lorg/telegram/ui/Cells/RadioColorCell;->setTag(Ljava/lang/Object;)V

    .line 696
    const-string/jumbo v1, "radioBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "dialogRadioBackgroundChecked"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v10, v1, v2}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 697
    aget-object v2, v11, v8

    const/4 v1, 0x0

    aget v1, v13, v1

    if-ne v1, v8, :cond_3

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {v10, v2, v1}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/String;Z)V

    .line 698
    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 699
    new-instance v1, Lorg/telegram/ui/Components/AlertsCreator$9;

    invoke-direct {v1, v13, v12}, Lorg/telegram/ui/Components/AlertsCreator$9;-><init>([ILandroid/widget/LinearLayout;)V

    invoke-virtual {v10, v1}, Lorg/telegram/ui/Cells/RadioColorCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 685
    .end local v8    # "a":I
    .end local v10    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    :cond_0
    const-string/jumbo v1, "LiveLocationAlertGroup"

    const v2, 0x7f070357

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 689
    :cond_1
    const/4 v1, 0x3

    goto :goto_1

    .line 690
    :cond_2
    const/4 v3, 0x3

    goto :goto_2

    .line 697
    .restart local v8    # "a":I
    .restart local v10    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 714
    .end local v10    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    :cond_4
    new-instance v9, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 715
    .local v9, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    new-instance v1, Lorg/telegram/ui/Components/ShareLocationDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/Components/ShareLocationDrawable;-><init>(Landroid/content/Context;Z)V

    const-string/jumbo v2, "dialogTopBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopImage(Landroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 716
    invoke-virtual {v9, v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 717
    const-string/jumbo v1, "ShareFile"

    const v2, 0x7f070588

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/AlertsCreator$10;

    move-object/from16 v0, p2

    invoke-direct {v2, v13, v0}, Lorg/telegram/ui/Components/AlertsCreator$10;-><init>([ILorg/telegram/messenger/MessagesStorage$IntCallback;)V

    invoke-virtual {v9, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 731
    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0700f4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 732
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static createMuteAlert(Landroid/content/Context;J)Landroid/app/Dialog;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialog_id"    # J

    .prologue
    const/4 v9, 0x2

    const v8, 0x7f0703b2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 235
    if-nez p0, :cond_0

    .line 236
    const/4 v2, 0x0

    .line 284
    :goto_0
    return-object v2

    .line 239
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 240
    .local v0, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const-string/jumbo v2, "Notifications"

    const v3, 0x7f070429

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 241
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/CharSequence;

    const-string/jumbo v2, "MuteFor"

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "Hours"

    .line 242
    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v8, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string/jumbo v2, "MuteFor"

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "Hours"

    const/16 v5, 0x8

    .line 243
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v8, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string/jumbo v2, "MuteFor"

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "Days"

    .line 244
    invoke-static {v4, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v8, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x3

    const-string/jumbo v3, "MuteDisable"

    const v4, 0x7f0703b1

    .line 245
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 247
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v2, Lorg/telegram/ui/Components/AlertsCreator$1;

    invoke-direct {v2, p1, p2}, Lorg/telegram/ui/Components/AlertsCreator$1;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 284
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v2

    goto :goto_0
.end method

.method public static createPopupSelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;ZZLjava/lang/Runnable;)Landroid/app/Dialog;
    .locals 11
    .param p0, "parentActivity"    # Landroid/app/Activity;
    .param p1, "parentFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "globalGroup"    # Z
    .param p3, "globalAll"    # Z
    .param p4, "onSelect"    # Ljava/lang/Runnable;

    .prologue
    .line 892
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v8, "Notifications"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 893
    .local v5, "preferences":Landroid/content/SharedPreferences;
    const/4 v7, 0x1

    new-array v6, v7, [I

    .line 894
    .local v6, "selected":[I
    if-eqz p3, :cond_1

    .line 895
    const/4 v7, 0x0

    const-string/jumbo v8, "popupAll"

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    aput v8, v6, v7

    .line 899
    :cond_0
    :goto_0
    const/4 v7, 0x4

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "NoPopup"

    const v9, 0x7f0703dd

    .line 900
    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "OnlyWhenScreenOn"

    const v9, 0x7f07044b

    .line 901
    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "OnlyWhenScreenOff"

    const v9, 0x7f07044a

    .line 902
    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "AlwaysShowPopup"

    const v9, 0x7f07006d

    .line 903
    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    .line 906
    .local v3, "descriptions":[Ljava/lang/String;
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 907
    .local v4, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 909
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    array-length v7, v3

    if-ge v0, v7, :cond_3

    .line 910
    new-instance v2, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 911
    .local v2, "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Cells/RadioColorCell;->setTag(Ljava/lang/Object;)V

    .line 912
    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v8, 0x0

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v2, v7, v8, v9, v10}, Lorg/telegram/ui/Cells/RadioColorCell;->setPadding(IIII)V

    .line 913
    const-string/jumbo v7, "radioBackground"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "dialogRadioBackgroundChecked"

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 914
    aget-object v8, v3, v0

    const/4 v7, 0x0

    aget v7, v6, v7

    if-ne v7, v0, :cond_2

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v2, v8, v7}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/String;Z)V

    .line 915
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 916
    new-instance v7, Lorg/telegram/ui/Components/AlertsCreator$15;

    invoke-direct {v7, v6, p2, p1, p4}, Lorg/telegram/ui/Components/AlertsCreator$15;-><init>([IZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Cells/RadioColorCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 909
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 896
    .end local v0    # "a":I
    .end local v2    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    .end local v3    # "descriptions":[Ljava/lang/String;
    .end local v4    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_1
    if-eqz p2, :cond_0

    .line 897
    const/4 v7, 0x0

    const-string/jumbo v8, "popupGroup"

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    aput v8, v6, v7

    goto/16 :goto_0

    .line 914
    .restart local v0    # "a":I
    .restart local v2    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    .restart local v3    # "descriptions":[Ljava/lang/String;
    .restart local v4    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 934
    .end local v2    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    :cond_3
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 935
    .local v1, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v7, "PopupNotification"

    const v8, 0x7f0704d2

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 936
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 937
    const-string/jumbo v7, "Cancel"

    const v8, 0x7f0700f4

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 938
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v7

    return-object v7
.end method

.method public static createPrioritySelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;JZZLjava/lang/Runnable;)Landroid/app/Dialog;
    .locals 16
    .param p0, "parentActivity"    # Landroid/app/Activity;
    .param p1, "parentFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "dialog_id"    # J
    .param p4, "globalGroup"    # Z
    .param p5, "globalAll"    # Z
    .param p6, "onSelect"    # Ljava/lang/Runnable;

    .prologue
    .line 818
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "Notifications"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 819
    .local v14, "preferences":Landroid/content/SharedPreferences;
    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 821
    .local v3, "selected":[I
    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    if-eqz v2, :cond_1

    .line 822
    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "priority_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v14, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v2

    .line 823
    const/4 v2, 0x0

    aget v2, v3, v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 824
    const/4 v2, 0x0

    const/4 v4, 0x0

    aput v4, v3, v2

    .line 828
    :goto_0
    const/4 v2, 0x4

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v4, "NotificationsPrioritySettings"

    const v5, 0x7f070438

    .line 829
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x1

    const-string/jumbo v4, "NotificationsPriorityDefault"

    const v5, 0x7f070435

    .line 830
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x2

    const-string/jumbo v4, "NotificationsPriorityHigh"

    const v5, 0x7f070436

    .line 831
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x3

    const-string/jumbo v4, "NotificationsPriorityMax"

    const v5, 0x7f070437

    .line 832
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    .line 847
    .local v12, "descriptions":[Ljava/lang/String;
    :goto_1
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 848
    .local v13, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 850
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_2
    array-length v2, v12

    if-ge v9, v2, :cond_5

    .line 851
    new-instance v11, Lorg/telegram/ui/Cells/RadioColorCell;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 852
    .local v11, "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v4, 0x0

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v11, v2, v4, v5, v6}, Lorg/telegram/ui/Cells/RadioColorCell;->setPadding(IIII)V

    .line 853
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Cells/RadioColorCell;->setTag(Ljava/lang/Object;)V

    .line 854
    const-string/jumbo v2, "radioBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v4, "dialogRadioBackgroundChecked"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v11, v2, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 855
    aget-object v4, v12, v9

    const/4 v2, 0x0

    aget v2, v3, v2

    if-ne v2, v9, :cond_4

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v11, v4, v2}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/String;Z)V

    .line 856
    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 857
    new-instance v2, Lorg/telegram/ui/Components/AlertsCreator$14;

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p1

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AlertsCreator$14;-><init>([IJZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Cells/RadioColorCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 850
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 826
    .end local v9    # "a":I
    .end local v11    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    .end local v12    # "descriptions":[Ljava/lang/String;
    .end local v13    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_0
    const/4 v2, 0x0

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    goto/16 :goto_0

    .line 835
    :cond_1
    if-eqz p5, :cond_3

    .line 836
    const/4 v2, 0x0

    const-string/jumbo v4, "priority_messages"

    const/4 v5, 0x1

    invoke-interface {v14, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v2

    .line 840
    :cond_2
    :goto_4
    const/4 v2, 0x3

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v4, "NotificationsPriorityDefault"

    const v5, 0x7f070435

    .line 841
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x1

    const-string/jumbo v4, "NotificationsPriorityHigh"

    const v5, 0x7f070436

    .line 842
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x2

    const-string/jumbo v4, "NotificationsPriorityMax"

    const v5, 0x7f070437

    .line 843
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    .restart local v12    # "descriptions":[Ljava/lang/String;
    goto/16 :goto_1

    .line 837
    .end local v12    # "descriptions":[Ljava/lang/String;
    :cond_3
    if-eqz p4, :cond_2

    .line 838
    const/4 v2, 0x0

    const-string/jumbo v4, "priority_group"

    const/4 v5, 0x1

    invoke-interface {v14, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v2

    goto :goto_4

    .line 855
    .restart local v9    # "a":I
    .restart local v11    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    .restart local v12    # "descriptions":[Ljava/lang/String;
    .restart local v13    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 884
    .end local v11    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    :cond_5
    new-instance v10, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 885
    .local v10, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v2, "NotificationsPriority"

    const v4, 0x7f070434

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 886
    invoke-virtual {v10, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 887
    const-string/jumbo v2, "Cancel"

    const v4, 0x7f0700f4

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v10, v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 888
    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public static createReportAlert(Landroid/content/Context;JLorg/telegram/ui/ActionBar/BaseFragment;)Landroid/app/Dialog;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialog_id"    # J
    .param p3, "parentFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 288
    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    .line 289
    :cond_0
    const/4 v2, 0x0

    .line 327
    :goto_0
    return-object v2

    .line 292
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 293
    .local v0, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const-string/jumbo v2, "ReportChat"

    const v3, 0x7f0704ff

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 294
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string/jumbo v3, "ReportChatSpam"

    const v4, 0x7f070503

    .line 295
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "ReportChatViolence"

    const v4, 0x7f070504

    .line 296
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "ReportChatPornography"

    const v4, 0x7f070502

    .line 297
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "ReportChatOther"

    const v4, 0x7f070501

    .line 298
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 300
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v2, Lorg/telegram/ui/Components/AlertsCreator$2;

    invoke-direct {v2, p1, p2, p3}, Lorg/telegram/ui/Components/AlertsCreator$2;-><init>(JLorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 327
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v2

    goto :goto_0
.end method

.method public static createSingleChoiceDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 9
    .param p0, "parentActivity"    # Landroid/app/Activity;
    .param p1, "parentFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "options"    # [Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "selected"    # I
    .param p5, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v5, 0x1

    const/high16 v8, 0x40800000    # 4.0f

    const/4 v6, 0x0

    .line 942
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 943
    .local v3, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 945
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_1

    .line 946
    new-instance v2, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 947
    .local v2, "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v2, v4, v6, v7, v6}, Lorg/telegram/ui/Cells/RadioColorCell;->setPadding(IIII)V

    .line 948
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setTag(Ljava/lang/Object;)V

    .line 949
    const-string/jumbo v4, "radioBackground"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "dialogRadioBackgroundChecked"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v4, v7}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 950
    aget-object v7, p2, v0

    if-ne p4, v0, :cond_0

    move v4, v5

    :goto_1
    invoke-virtual {v2, v7, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/String;Z)V

    .line 951
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 952
    new-instance v4, Lorg/telegram/ui/Components/AlertsCreator$16;

    invoke-direct {v4, p1, p5}, Lorg/telegram/ui/Components/AlertsCreator$16;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 945
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    .line 950
    goto :goto_1

    .line 964
    .end local v2    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    :cond_1
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 965
    .local v1, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    invoke-virtual {v1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 966
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 967
    const-string/jumbo v4, "Cancel"

    const v5, 0x7f0700f4

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 968
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public static createTTLAlert(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    const/16 v6, 0x14

    const/16 v5, 0x10

    const/4 v4, 0x0

    .line 972
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 973
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v2, "MessageLifetime"

    const v3, 0x7f07038b

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 974
    new-instance v1, Lorg/telegram/ui/Components/NumberPicker;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 975
    .local v1, "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 976
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 977
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    if-lez v2, :cond_1

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    if-ge v2, v5, :cond_1

    .line 978
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 992
    :cond_0
    :goto_0
    new-instance v2, Lorg/telegram/ui/Components/AlertsCreator$17;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AlertsCreator$17;-><init>()V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberPicker;->setFormatter(Lorg/telegram/ui/Components/NumberPicker$Formatter;)V

    .line 1013
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1014
    const-string/jumbo v2, "Done"

    const v3, 0x7f0701f2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/AlertsCreator$18;

    invoke-direct {v3, p1, v1}, Lorg/telegram/ui/Components/AlertsCreator$18;-><init>(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/ui/Components/NumberPicker;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1038
    return-object v0

    .line 979
    :cond_1
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_2

    .line 980
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_0

    .line 981
    :cond_2
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_3

    .line 982
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_0

    .line 983
    :cond_3
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    const/16 v3, 0xe10

    if-ne v2, v3, :cond_4

    .line 984
    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_0

    .line 985
    :cond_4
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    const v3, 0x15180

    if-ne v2, v3, :cond_5

    .line 986
    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_0

    .line 987
    :cond_5
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    const v3, 0x93a80

    if-ne v2, v3, :cond_6

    .line 988
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_0

    .line 989
    :cond_6
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    if-nez v2, :cond_0

    .line 990
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_0
.end method

.method public static createVibrationSelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;JLjava/lang/String;Ljava/lang/Runnable;)Landroid/app/Dialog;
    .locals 16
    .param p0, "parentActivity"    # Landroid/app/Activity;
    .param p1, "parentFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "dialog_id"    # J
    .param p4, "prefKeyPrefix"    # Ljava/lang/String;
    .param p5, "onSelect"    # Ljava/lang/Runnable;

    .prologue
    .line 578
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "Notifications"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 579
    .local v14, "preferences":Landroid/content/SharedPreferences;
    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 581
    .local v3, "selected":[I
    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    if-eqz v2, :cond_2

    .line 582
    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v14, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v2

    .line 583
    const/4 v2, 0x0

    aget v2, v3, v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 584
    const/4 v2, 0x0

    const/4 v4, 0x2

    aput v4, v3, v2

    .line 588
    :cond_0
    :goto_0
    const/4 v2, 0x4

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v4, "VibrationDefault"

    const v5, 0x7f07062d

    .line 589
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x1

    const-string/jumbo v4, "Short"

    const v5, 0x7f07059a

    .line 590
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x2

    const-string/jumbo v4, "Long"

    const v5, 0x7f07036a

    .line 591
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x3

    const-string/jumbo v4, "VibrationDisabled"

    const v5, 0x7f07062e

    .line 592
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    .line 612
    .local v12, "descriptions":[Ljava/lang/String;
    :goto_1
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 613
    .local v13, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 615
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_2
    array-length v2, v12

    if-ge v9, v2, :cond_7

    .line 616
    new-instance v11, Lorg/telegram/ui/Cells/RadioColorCell;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 617
    .local v11, "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v4, 0x0

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v11, v2, v4, v5, v6}, Lorg/telegram/ui/Cells/RadioColorCell;->setPadding(IIII)V

    .line 618
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Cells/RadioColorCell;->setTag(Ljava/lang/Object;)V

    .line 619
    const-string/jumbo v2, "radioBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v4, "dialogRadioBackgroundChecked"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v11, v2, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 620
    aget-object v4, v12, v9

    const/4 v2, 0x0

    aget v2, v3, v2

    if-ne v2, v9, :cond_6

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v11, v4, v2}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/String;Z)V

    .line 621
    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 622
    new-instance v2, Lorg/telegram/ui/Components/AlertsCreator$8;

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AlertsCreator$8;-><init>([IJLjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Cells/RadioColorCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 585
    .end local v9    # "a":I
    .end local v11    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    .end local v12    # "descriptions":[Ljava/lang/String;
    .end local v13    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_1
    const/4 v2, 0x0

    aget v2, v3, v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 586
    const/4 v2, 0x0

    const/4 v4, 0x3

    aput v4, v3, v2

    goto/16 :goto_0

    .line 595
    :cond_2
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-interface {v14, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v2

    .line 596
    const/4 v2, 0x0

    aget v2, v3, v2

    if-nez v2, :cond_4

    .line 597
    const/4 v2, 0x0

    const/4 v4, 0x1

    aput v4, v3, v2

    .line 603
    :cond_3
    :goto_4
    const/4 v2, 0x5

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v4, "VibrationDisabled"

    const v5, 0x7f07062e

    .line 604
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x1

    const-string/jumbo v4, "VibrationDefault"

    const v5, 0x7f07062d

    .line 605
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x2

    const-string/jumbo v4, "Short"

    const v5, 0x7f07059a

    .line 606
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x3

    const-string/jumbo v4, "Long"

    const v5, 0x7f07036a

    .line 607
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x4

    const-string/jumbo v4, "OnlyIfSilent"

    const v5, 0x7f070449

    .line 608
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    .restart local v12    # "descriptions":[Ljava/lang/String;
    goto/16 :goto_1

    .line 598
    .end local v12    # "descriptions":[Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    aget v2, v3, v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    .line 599
    const/4 v2, 0x0

    const/4 v4, 0x2

    aput v4, v3, v2

    goto :goto_4

    .line 600
    :cond_5
    const/4 v2, 0x0

    aget v2, v3, v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 601
    const/4 v2, 0x0

    const/4 v4, 0x0

    aput v4, v3, v2

    goto :goto_4

    .line 620
    .restart local v9    # "a":I
    .restart local v11    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    .restart local v12    # "descriptions":[Ljava/lang/String;
    .restart local v13    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 662
    .end local v11    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    :cond_7
    new-instance v10, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 663
    .local v10, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v2, "Vibrate"

    const v4, 0x7f07062c

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 664
    invoke-virtual {v10, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 665
    const-string/jumbo v2, "Cancel"

    const v4, 0x7f0700f4

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v10, v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 666
    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public static createVibrationSelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;JZZLjava/lang/Runnable;)Landroid/app/Dialog;
    .locals 6
    .param p0, "parentActivity"    # Landroid/app/Activity;
    .param p1, "parentFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "dialog_id"    # J
    .param p4, "globalGroup"    # Z
    .param p5, "globalAll"    # Z
    .param p6, "onSelect"    # Ljava/lang/Runnable;

    .prologue
    .line 569
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 570
    const-string/jumbo v4, "vibrate_"

    .local v4, "prefix":Ljava/lang/String;
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p6

    .line 574
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AlertsCreator;->createVibrationSelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;JLjava/lang/String;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 572
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_0
    if-eqz p4, :cond_1

    const-string/jumbo v4, "vibrate_group"

    .restart local v4    # "prefix":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .end local v4    # "prefix":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "vibrate_messages"

    goto :goto_1
.end method

.method private static getFloodWaitString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    .line 331
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 333
    .local v0, "time":I
    const/16 v2, 0x3c

    if-ge v0, v2, :cond_0

    .line 334
    const-string/jumbo v2, "Seconds"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "timeString":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "FloodWaitTime"

    const v3, 0x7f070285

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 336
    .end local v1    # "timeString":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "Minutes"

    div-int/lit8 v3, v0, 0x3c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "timeString":Ljava/lang/String;
    goto :goto_0
.end method

.method public static varargs processError(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;
    .locals 7
    .param p0, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "request"    # Lorg/telegram/tgnet/TLObject;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const v6, 0x7f07017c

    const v5, 0x7f07022a

    const/4 v2, 0x1

    const v4, 0x7f070284

    const/4 v1, 0x0

    .line 52
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 v3, 0x196

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 209
    :goto_0
    return-object v0

    .line 55
    :cond_1
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;

    if-nez v0, :cond_2

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;

    if-nez v0, :cond_2

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;

    if-nez v0, :cond_2

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;

    if-nez v0, :cond_2

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;

    if-nez v0, :cond_2

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;

    if-eqz v0, :cond_5

    .line 61
    :cond_2
    if-eqz p1, :cond_4

    .line 62
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    aget-object v0, p3, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v2, p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showAddUserAlert(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 209
    :cond_3
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :cond_4
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "PEER_FLOOD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 68
    :cond_5
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;

    if-eqz v0, :cond_7

    .line 69
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v2, "FLOOD_WAIT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 70
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/AlertsCreator;->showFloodWaitAlert(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_1

    .line 72
    :cond_6
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/Components/AlertsCreator;->showAddUserAlert(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    goto :goto_1

    .line 74
    :cond_7
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;

    if-eqz v0, :cond_8

    .line 75
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/AlertsCreator;->showFloodWaitAlert(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_1

    .line 78
    :cond_8
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    if-eqz v0, :cond_9

    .line 79
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "MESSAGE_NOT_MODIFIED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 80
    const-string/jumbo v0, "EditMessageError"

    const v1, 0x7f070206

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_1

    .line 82
    :cond_9
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    if-nez v0, :cond_a

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-nez v0, :cond_a

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_geochats_sendMessage;

    if-nez v0, :cond_a

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    if-nez v0, :cond_a

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;

    if-nez v0, :cond_a

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_geochats_sendMedia;

    if-nez v0, :cond_a

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    if-eqz v0, :cond_b

    .line 89
    :cond_a
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "PEER_FLOOD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 92
    :cond_b
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;

    if-eqz v0, :cond_e

    .line 93
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 94
    const-string/jumbo v0, "FloodWait"

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 95
    :cond_c
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "USERS_TOO_MUCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 96
    const-string/jumbo v0, "JoinToGroupErrorFull"

    const v1, 0x7f070329

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 98
    :cond_d
    const-string/jumbo v0, "JoinToGroupErrorNotExist"

    const v1, 0x7f07032a

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 100
    :cond_e
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

    if-eqz v0, :cond_f

    .line 101
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 102
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ErrorOccurred"

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 104
    :cond_f
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;

    if-eqz v0, :cond_14

    .line 105
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_CODE_EMPTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_CODE_INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 106
    :cond_10
    const-string/jumbo v0, "InvalidCode"

    const v1, 0x7f07030a

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 107
    :cond_11
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_CODE_EXPIRED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 108
    const-string/jumbo v0, "CodeExpired"

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 109
    :cond_12
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 110
    const-string/jumbo v0, "FloodWait"

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 112
    :cond_13
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 114
    :cond_14
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    if-eqz v0, :cond_1a

    .line 115
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_NUMBER_INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 116
    const-string/jumbo v0, "InvalidPhoneNumber"

    const v1, 0x7f07030d

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 117
    :cond_15
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_CODE_EMPTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_CODE_INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 118
    :cond_16
    const-string/jumbo v0, "InvalidCode"

    const v1, 0x7f07030a

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 119
    :cond_17
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_CODE_EXPIRED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 120
    const-string/jumbo v0, "CodeExpired"

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 121
    :cond_18
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 122
    const-string/jumbo v0, "FloodWait"

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 123
    :cond_19
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_3

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ErrorOccurred"

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 126
    :cond_1a
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;

    if-eqz v0, :cond_1d

    .line 127
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1b

    .line 128
    const-string/jumbo v0, "CancelLinkExpired"

    const v1, 0x7f0700f7

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 129
    :cond_1b
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 130
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 131
    const-string/jumbo v0, "FloodWait"

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 133
    :cond_1c
    const-string/jumbo v0, "ErrorOccurred"

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 136
    :cond_1d
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;

    if-eqz v0, :cond_23

    .line 137
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_NUMBER_INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 138
    const-string/jumbo v0, "InvalidPhoneNumber"

    const v1, 0x7f07030d

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 139
    :cond_1e
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_CODE_EMPTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_CODE_INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 140
    :cond_1f
    const-string/jumbo v0, "InvalidCode"

    const v1, 0x7f07030a

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 141
    :cond_20
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_CODE_EXPIRED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 142
    const-string/jumbo v0, "CodeExpired"

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 143
    :cond_21
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 144
    const-string/jumbo v0, "FloodWait"

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 146
    :cond_22
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 148
    :cond_23
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;

    if-eqz v0, :cond_2a

    .line 149
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "PHONE_NUMBER_INVALID"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 150
    const-string/jumbo v0, "InvalidPhoneNumber"

    const v1, 0x7f07030d

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 151
    :cond_24
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "PHONE_CODE_EMPTY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "PHONE_CODE_INVALID"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 152
    :cond_25
    const-string/jumbo v0, "InvalidCode"

    const v1, 0x7f07030a

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 153
    :cond_26
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "PHONE_CODE_EXPIRED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 154
    const-string/jumbo v0, "CodeExpired"

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 155
    :cond_27
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "FLOOD_WAIT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 156
    const-string/jumbo v0, "FloodWait"

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 157
    :cond_28
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "PHONE_NUMBER_OCCUPIED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 158
    const-string/jumbo v3, "ChangePhoneNumberOccupied"

    const v4, 0x7f070101

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v0, p3, v1

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    invoke-static {v3, v4, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 160
    :cond_29
    const-string/jumbo v0, "ErrorOccurred"

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 162
    :cond_2a
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_updateUserName;

    if-eqz v0, :cond_2c

    .line 163
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2b
    move v1, v0

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 171
    const-string/jumbo v0, "ErrorOccurred"

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 163
    :sswitch_0
    const-string/jumbo v2, "USERNAME_INVALID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_2

    :sswitch_1
    const-string/jumbo v1, "USERNAME_OCCUPIED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    move v1, v2

    goto :goto_2

    .line 165
    :pswitch_0
    const-string/jumbo v0, "UsernameInvalid"

    const v1, 0x7f070621

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 168
    :pswitch_1
    const-string/jumbo v0, "UsernameInUse"

    const v1, 0x7f070620

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 174
    :cond_2c
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;

    if-eqz v0, :cond_2f

    .line 175
    if-eqz p0, :cond_2d

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 176
    :cond_2d
    const-string/jumbo v0, "FloodWait"

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 178
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ErrorOccurred"

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 180
    :cond_2f
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;

    if-nez v0, :cond_30

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;

    if-eqz v0, :cond_32

    .line 181
    :cond_30
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 182
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/Components/AlertsCreator;->getFloodWaitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_1

    .line 184
    :cond_31
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_1

    .line 186
    :cond_32
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;

    if-eqz v0, :cond_34

    .line 187
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :cond_33
    move v1, v0

    :goto_3
    packed-switch v1, :pswitch_data_1

    .line 195
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_1

    .line 187
    :sswitch_2
    const-string/jumbo v2, "BOT_PRECHECKOUT_FAILED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    goto :goto_3

    :sswitch_3
    const-string/jumbo v1, "PAYMENT_FAILED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    move v1, v2

    goto :goto_3

    .line 189
    :pswitch_2
    const-string/jumbo v0, "PaymentPrecheckoutFailed"

    const v1, 0x7f070491

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_1

    .line 192
    :pswitch_3
    const-string/jumbo v0, "PaymentFailed"

    const v1, 0x7f070486

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_1

    .line 198
    :cond_34
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    if-eqz v0, :cond_3

    .line 199
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_2

    :cond_35
    :goto_4
    packed-switch v0, :pswitch_data_3

    .line 204
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_1

    .line 199
    :pswitch_4
    const-string/jumbo v3, "SHIPPING_NOT_AVAILABLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    move v0, v1

    goto :goto_4

    .line 201
    :pswitch_5
    const-string/jumbo v0, "PaymentNoShippingMethod"

    const v1, 0x7f070488

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_1

    .line 163
    :sswitch_data_0
    .sparse-switch
        0x1137676e -> :sswitch_0
        0x1fc79be7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 187
    :sswitch_data_1
    .sparse-switch
        -0x443101f5 -> :sswitch_2
        -0x2ebe874a -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 199
    :pswitch_data_2
    .packed-switch 0x68c9574c
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public static showAddUserAlert(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 6
    .param p0, "error"    # Ljava/lang/String;
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "isChannel"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 376
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 380
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v1, "AppName"

    const v3, 0x7f07007a

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 381
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ErrorOccurred"

    const v4, 0x7f07022a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 458
    :goto_2
    const-string/jumbo v1, "OK"

    const v3, 0x7f070440

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 459
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {p1, v1, v2, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;ZLandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    goto :goto_0

    .line 381
    :sswitch_0
    const-string/jumbo v3, "PEER_FLOOD"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "USER_BLOCKED"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "USER_BOT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v3, "USER_ID_INVALID"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v3, "USERS_TOO_MUCH"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v3, "USER_NOT_MUTUAL_CONTACT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v3, "ADMINS_TOO_MUCH"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v3, "BOTS_TOO_MUCH"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v3, "USER_PRIVACY_RESTRICTED"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v3, "USERS_TOO_FEW"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v3, "USER_RESTRICTED"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v3, "YOU_BLOCKED_USER"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v3, "CHAT_ADMIN_BAN_REQUIRED"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v3, "USER_KICKED"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v3, "CHAT_ADMIN_INVITE_REQUIRED"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v3, "USER_ADMIN_INVALID"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0xf

    goto/16 :goto_1

    .line 383
    :pswitch_0
    const-string/jumbo v1, "NobodyLikesSpam2"

    const v3, 0x7f0703ec

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 384
    const-string/jumbo v1, "MoreInfo"

    const v3, 0x7f0703b0

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/AlertsCreator$3;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/AlertsCreator$3;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 394
    :pswitch_1
    if-eqz p2, :cond_3

    .line 395
    const-string/jumbo v1, "ChannelUserCantAdd"

    const v3, 0x7f070146

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 397
    :cond_3
    const-string/jumbo v1, "GroupUserCantAdd"

    const v3, 0x7f0702e2

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 401
    :pswitch_2
    if-eqz p2, :cond_4

    .line 402
    const-string/jumbo v1, "ChannelUserAddLimit"

    const v3, 0x7f070145

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 404
    :cond_4
    const-string/jumbo v1, "GroupUserAddLimit"

    const v3, 0x7f0702e1

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 408
    :pswitch_3
    if-eqz p2, :cond_5

    .line 409
    const-string/jumbo v1, "ChannelUserLeftError"

    const v3, 0x7f070149

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 411
    :cond_5
    const-string/jumbo v1, "GroupUserLeftError"

    const v3, 0x7f0702e5

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 415
    :pswitch_4
    if-eqz p2, :cond_6

    .line 416
    const-string/jumbo v1, "ChannelUserCantAdmin"

    const v3, 0x7f070147

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 418
    :cond_6
    const-string/jumbo v1, "GroupUserCantAdmin"

    const v3, 0x7f0702e3

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 422
    :pswitch_5
    if-eqz p2, :cond_7

    .line 423
    const-string/jumbo v1, "ChannelUserCantBot"

    const v3, 0x7f070148

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 425
    :cond_7
    const-string/jumbo v1, "GroupUserCantBot"

    const v3, 0x7f0702e4

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 429
    :pswitch_6
    if-eqz p2, :cond_8

    .line 430
    const-string/jumbo v1, "InviteToChannelError"

    const v3, 0x7f07031a

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 432
    :cond_8
    const-string/jumbo v1, "InviteToGroupError"

    const v3, 0x7f07031c

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 436
    :pswitch_7
    const-string/jumbo v1, "CreateGroupError"

    const v3, 0x7f0701a4

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 439
    :pswitch_8
    const-string/jumbo v1, "UserRestricted"

    const v3, 0x7f07060e

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 442
    :pswitch_9
    const-string/jumbo v1, "YouBlockedUser"

    const v3, 0x7f070675

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 446
    :pswitch_a
    const-string/jumbo v1, "AddAdminErrorBlacklisted"

    const v3, 0x7f070048

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 449
    :pswitch_b
    const-string/jumbo v1, "AddAdminErrorNotAMember"

    const v3, 0x7f070049

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 452
    :pswitch_c
    const-string/jumbo v1, "AddBannedErrorAdmin"

    const v3, 0x7f07004a

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 381
    nop

    :sswitch_data_0
    .sparse-switch
        -0x691c616a -> :sswitch_9
        -0x201302a8 -> :sswitch_1
        -0x1e9056b1 -> :sswitch_a
        -0x1b10193f -> :sswitch_0
        -0x1909e875 -> :sswitch_7
        0x5e11059 -> :sswitch_d
        0x1ed73733 -> :sswitch_2
        0x3266369e -> :sswitch_b
        0x369e4753 -> :sswitch_f
        0x3e6a9946 -> :sswitch_c
        0x45939caf -> :sswitch_4
        0x492297a7 -> :sswitch_3
        0x4ab0d713 -> :sswitch_6
        0x60bf92d5 -> :sswitch_5
        0x6894e15e -> :sswitch_e
        0x723eea86 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static showFloodWaitAlert(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 9
    .param p0, "error"    # Ljava/lang/String;
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 342
    if-eqz p0, :cond_0

    const-string/jumbo v3, "FLOOD_WAIT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 347
    .local v1, "time":I
    const/16 v3, 0x3c

    if-ge v1, v3, :cond_2

    .line 348
    const-string/jumbo v3, "Seconds"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, "timeString":Ljava/lang/String;
    :goto_1
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 354
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v3, "AppName"

    const v4, 0x7f07007a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 355
    const-string/jumbo v3, "FloodWaitTime"

    const v4, 0x7f070285

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 356
    const-string/jumbo v3, "OK"

    const v4, 0x7f070440

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 357
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    invoke-virtual {p1, v3, v7, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;ZLandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    goto :goto_0

    .line 350
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v2    # "timeString":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "Minutes"

    div-int/lit8 v4, v1, 0x3c

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "timeString":Ljava/lang/String;
    goto :goto_1
.end method

.method public static showSendMediaAlert(ILorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 5
    .param p0, "result"    # I
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 361
    if-nez p0, :cond_0

    .line 373
    :goto_0
    return-void

    .line 364
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 365
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v1, "AppName"

    const v2, 0x7f07007a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 366
    if-ne p0, v3, :cond_2

    .line 367
    const-string/jumbo v1, "ErrorSendRestrictedStickers"

    const v2, 0x7f07022c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 371
    :cond_1
    :goto_1
    const-string/jumbo v1, "OK"

    const v2, 0x7f070440

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 372
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {p1, v1, v3, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;ZLandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    goto :goto_0

    .line 368
    :cond_2
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 369
    const-string/jumbo v1, "ErrorSendRestrictedMedia"

    const v2, 0x7f07022b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1
.end method

.method public static showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 4
    .param p0, "baseFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 222
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-object v1

    .line 225
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 226
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v2, "AppName"

    const v3, 0x7f07007a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 227
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 228
    const-string/jumbo v2, "OK"

    const v3, 0x7f070440

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 229
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 230
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method public static showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;
    .locals 3
    .param p0, "baseFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 213
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 214
    :cond_0
    const/4 v0, 0x0

    .line 218
    :goto_0
    return-object v0

    .line 216
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 217
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
