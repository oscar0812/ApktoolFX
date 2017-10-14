.class public Lorg/telegram/ui/Cells/ThemeCell;
.super Landroid/widget/FrameLayout;
.source "ThemeCell.java"


# static fields
.field private static bytes:[B


# instance fields
.field private checkImage:Landroid/widget/ImageView;

.field private currentThemeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

.field private needDivider:Z

.field private optionsButton:Landroid/widget/ImageView;

.field private paint:Landroid/graphics/Paint;

.field private textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lorg/telegram/ui/Cells/ThemeCell;->bytes:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v10, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0, v10}, Lorg/telegram/ui/Cells/ThemeCell;->setWillNotDraw(Z)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->paint:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 55
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v10, v10, v10, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 60
    iget-object v1, p0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    move v0, v7

    :goto_0
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 61
    iget-object v9, p0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    move v2, v7

    :goto_1
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_2

    const/high16 v3, 0x42ca0000    # 101.0f

    :goto_2
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_3

    const/high16 v5, 0x42700000    # 60.0f

    :goto_3
    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/ThemeCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->checkImage:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->checkImage:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v2, "featuredStickers_addedIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 65
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->checkImage:Landroid/widget/ImageView;

    const v1, 0x7f0201a9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    iget-object v9, p0, Lorg/telegram/ui/Cells/ThemeCell;->checkImage:Landroid/widget/ImageView;

    const/16 v0, 0x13

    const/high16 v1, 0x41600000    # 14.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_4

    move v2, v8

    :goto_4
    or-int/lit8 v2, v2, 0x10

    const/high16 v3, 0x425c0000    # 55.0f

    const/high16 v5, 0x425c0000    # 55.0f

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/ThemeCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->optionsButton:Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->optionsButton:Landroid/widget/ImageView;

    const-string/jumbo v1, "stickers_menuSelector"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->optionsButton:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->optionsButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v2, "stickers_menu"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->optionsButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->optionsButton:Landroid/widget/ImageView;

    const/16 v1, 0x30

    const/16 v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_5

    :goto_5
    or-int/lit8 v3, v8, 0x30

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/ThemeCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    return-void

    :cond_0
    move v0, v8

    .line 60
    goto/16 :goto_0

    :cond_1
    move v2, v8

    .line 61
    goto/16 :goto_1

    :cond_2
    const/high16 v3, 0x42700000    # 60.0f

    goto/16 :goto_2

    :cond_3
    const/high16 v5, 0x42ca0000    # 101.0f

    goto/16 :goto_3

    :cond_4
    move v2, v7

    .line 66
    goto :goto_4

    :cond_5
    move v8, v7

    .line 74
    goto :goto_5
.end method


# virtual methods
.method public getCurrentThemeInfo()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->currentThemeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 185
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->needDivider:Z

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ThemeCell;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ThemeCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ThemeCell;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ThemeCell;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ThemeCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 188
    :cond_0
    const/high16 v0, 0x41d80000    # 27.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    .line 189
    .local v6, "x":I
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ThemeCell;->getWidth()I

    move-result v0

    sub-int v6, v0, v6

    .line 192
    :cond_1
    int-to-float v0, v6

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/ThemeCell;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 193
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 79
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->needDivider:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 80
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnOptionsClick(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    return-void
.end method

.method public setTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Z)V
    .locals 26
    .param p1, "themeInfo"    # Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    .param p2, "divider"    # Z

    .prologue
    .line 99
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Cells/ThemeCell;->currentThemeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 100
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getName()Ljava/lang/String;

    move-result-object v21

    .line 101
    .local v21, "text":Ljava/lang/String;
    const-string/jumbo v23, ".attheme"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 102
    const/16 v23, 0x0

    const/16 v24, 0x2e

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 104
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Cells/ThemeCell;->needDivider:Z

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Cells/ThemeCell;->checkImage:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_7

    const/16 v23, 0x0

    :goto_0
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    const/4 v8, 0x0

    .line 109
    .local v8, "finished":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    .line 110
    :cond_1
    const/16 v19, 0x0

    .line 112
    .local v19, "stream":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 114
    .local v5, "currentPosition":I
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    .line 115
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getAssetFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 119
    .local v7, "file":Ljava/io/File;
    :goto_1
    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v19    # "stream":Ljava/io/FileInputStream;
    .local v20, "stream":Ljava/io/FileInputStream;
    const/4 v14, 0x0

    .line 123
    .local v14, "linesRead":I
    :cond_2
    :try_start_1
    sget-object v23, Lorg/telegram/ui/Cells/ThemeCell;->bytes:[B

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v17

    .local v17, "read":I
    const/16 v23, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    .line 124
    move/from16 v16, v5

    .line 125
    .local v16, "previousPosition":I
    const/16 v18, 0x0

    .line 126
    .local v18, "start":I
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_2
    move/from16 v0, v17

    if-ge v4, v0, :cond_3

    .line 127
    sget-object v23, Lorg/telegram/ui/Cells/ThemeCell;->bytes:[B

    aget-byte v23, v23, v4

    const/16 v24, 0xa

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 128
    add-int/lit8 v14, v14, 0x1

    .line 129
    sub-int v23, v4, v18

    add-int/lit8 v12, v23, 0x1

    .line 130
    .local v12, "len":I
    new-instance v13, Ljava/lang/String;

    sget-object v23, Lorg/telegram/ui/Cells/ThemeCell;->bytes:[B

    add-int/lit8 v24, v12, -0x1

    const-string/jumbo v25, "UTF-8"

    move-object/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v13, v0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 131
    .local v13, "line":Ljava/lang/String;
    const-string/jumbo v23, "WPS"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v23

    if-eqz v23, :cond_9

    .line 158
    .end local v12    # "len":I
    .end local v13    # "line":Ljava/lang/String;
    :cond_3
    :goto_3
    move/from16 v0, v16

    if-eq v0, v5, :cond_4

    const/16 v23, 0x1f4

    move/from16 v0, v23

    if-lt v14, v0, :cond_d

    .line 170
    .end local v4    # "a":I
    .end local v16    # "previousPosition":I
    .end local v18    # "start":I
    :cond_4
    :goto_4
    if-eqz v20, :cond_5

    .line 171
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 178
    .end local v5    # "currentPosition":I
    .end local v7    # "file":Ljava/io/File;
    .end local v14    # "linesRead":I
    .end local v17    # "read":I
    .end local v20    # "stream":Ljava/io/FileInputStream;
    :cond_5
    :goto_5
    if-nez v8, :cond_6

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Cells/ThemeCell;->paint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    const-string/jumbo v24, "actionBarDefault"

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultColor(Ljava/lang/String;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    :cond_6
    return-void

    .line 106
    .end local v8    # "finished":Z
    :cond_7
    const/16 v23, 0x4

    goto/16 :goto_0

    .line 117
    .restart local v5    # "currentPosition":I
    .restart local v8    # "finished":Z
    .restart local v19    # "stream":Ljava/io/FileInputStream;
    :cond_8
    :try_start_3
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v7    # "file":Ljava/io/File;
    goto/16 :goto_1

    .line 134
    .end local v19    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "a":I
    .restart local v12    # "len":I
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v14    # "linesRead":I
    .restart local v16    # "previousPosition":I
    .restart local v17    # "read":I
    .restart local v18    # "start":I
    .restart local v20    # "stream":Ljava/io/FileInputStream;
    :cond_9
    const/16 v23, 0x3d

    :try_start_4
    move/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .local v9, "idx":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v9, v0, :cond_b

    .line 135
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 136
    .local v11, "key":Ljava/lang/String;
    const-string/jumbo v23, "actionBarDefault"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 137
    add-int/lit8 v23, v9, 0x1

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 139
    .local v15, "param":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_a

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v23

    const/16 v24, 0x23

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 141
    :try_start_5
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v22

    .line 148
    .local v22, "value":I
    :goto_6
    const/4 v8, 0x1

    .line 149
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Cells/ThemeCell;->paint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_3

    .line 166
    .end local v4    # "a":I
    .end local v9    # "idx":I
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "len":I
    .end local v13    # "line":Ljava/lang/String;
    .end local v15    # "param":Ljava/lang/String;
    .end local v16    # "previousPosition":I
    .end local v17    # "read":I
    .end local v18    # "start":I
    .end local v22    # "value":I
    :catch_0
    move-exception v6

    move-object/from16 v19, v20

    .line 167
    .end local v7    # "file":Ljava/io/File;
    .end local v14    # "linesRead":I
    .end local v20    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/lang/Throwable;
    .restart local v19    # "stream":Ljava/io/FileInputStream;
    :goto_7
    :try_start_7
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 170
    if-eqz v19, :cond_5

    .line 171
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_5

    .line 173
    :catch_1
    move-exception v6

    .line 174
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 142
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v19    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "a":I
    .restart local v7    # "file":Ljava/io/File;
    .restart local v9    # "idx":I
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v12    # "len":I
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v14    # "linesRead":I
    .restart local v15    # "param":Ljava/lang/String;
    .restart local v16    # "previousPosition":I
    .restart local v17    # "read":I
    .restart local v18    # "start":I
    .restart local v20    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v10

    .line 143
    .local v10, "ignore":Ljava/lang/Exception;
    :try_start_9
    invoke-static {v15}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 144
    .restart local v22    # "value":I
    goto :goto_6

    .line 146
    .end local v10    # "ignore":Ljava/lang/Exception;
    .end local v22    # "value":I
    :cond_a
    invoke-static {v15}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .restart local v22    # "value":I
    goto :goto_6

    .line 154
    .end local v11    # "key":Ljava/lang/String;
    .end local v15    # "param":Ljava/lang/String;
    .end local v22    # "value":I
    :cond_b
    add-int v18, v18, v12

    .line 155
    add-int/2addr v5, v12

    .line 126
    .end local v9    # "idx":I
    .end local v12    # "len":I
    .end local v13    # "line":Ljava/lang/String;
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 161
    :cond_d
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v23

    int-to-long v0, v5

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 162
    if-eqz v8, :cond_2

    goto/16 :goto_4

    .line 173
    .end local v4    # "a":I
    .end local v16    # "previousPosition":I
    .end local v18    # "start":I
    :catch_3
    move-exception v6

    .line 174
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 169
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "file":Ljava/io/File;
    .end local v14    # "linesRead":I
    .end local v17    # "read":I
    .end local v20    # "stream":Ljava/io/FileInputStream;
    .restart local v19    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v23

    .line 170
    :goto_8
    if-eqz v19, :cond_e

    .line 171
    :try_start_a
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 175
    :cond_e
    :goto_9
    throw v23

    .line 173
    :catch_4
    move-exception v6

    .line 174
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 169
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v19    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v14    # "linesRead":I
    .restart local v20    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v23

    move-object/from16 v19, v20

    .end local v20    # "stream":Ljava/io/FileInputStream;
    .restart local v19    # "stream":Ljava/io/FileInputStream;
    goto :goto_8

    .line 166
    .end local v7    # "file":Ljava/io/File;
    .end local v14    # "linesRead":I
    :catch_5
    move-exception v6

    goto :goto_7
.end method
