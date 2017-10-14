.class public Lorg/telegram/messenger/Emoji$EmojiSpan;
.super Landroid/text/style/ImageSpan;
.source "Emoji.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/Emoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiSpan"
.end annotation


# instance fields
.field private fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private size:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/Emoji$EmojiDrawable;IILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 3
    .param p1, "d"    # Lorg/telegram/messenger/Emoji$EmojiDrawable;
    .param p2, "verticalAlignment"    # I
    .param p3, "s"    # I
    .param p4, "original"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    const/high16 v2, 0x41a00000    # 20.0f

    .line 490
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 487
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    .line 491
    iput-object p4, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 492
    if-eqz p4, :cond_0

    .line 493
    iget-object v0, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    .line 494
    iget v0, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    if-nez v0, :cond_0

    .line 495
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    .line 498
    :cond_0
    return-void
.end method


# virtual methods
.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 7
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    const/4 v6, 0x0

    .line 507
    if-nez p5, :cond_0

    .line 508
    new-instance p5, Landroid/graphics/Paint$FontMetricsInt;

    .end local p5    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    invoke-direct {p5}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 511
    .restart local p5    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-nez v3, :cond_1

    .line 512
    invoke-super/range {p0 .. p5}, Landroid/text/style/ImageSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    .line 514
    .local v1, "sz":I
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 515
    .local v0, "offset":I
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 516
    .local v2, "w":I
    neg-int v3, v2

    sub-int/2addr v3, v0

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 517
    sub-int v3, v2, v0

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 518
    neg-int v3, v2

    sub-int/2addr v3, v0

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 519
    iput v6, p5, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 520
    sub-int v3, v2, v0

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 534
    .end local v0    # "offset":I
    .end local v1    # "sz":I
    .end local v2    # "w":I
    :goto_0
    return v1

    .line 524
    :cond_1
    if-eqz p5, :cond_2

    .line 525
    iget-object v3, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 526
    iget-object v3, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 528
    iget-object v3, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 529
    iget-object v3, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 531
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/Emoji$EmojiSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 532
    invoke-virtual {p0}, Lorg/telegram/messenger/Emoji$EmojiSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    iget v5, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 534
    :cond_3
    iget v1, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    goto :goto_0
.end method

.method public replaceFontMetrics(Landroid/graphics/Paint$FontMetricsInt;I)V
    .locals 0
    .param p1, "newMetrics"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p2, "newSize"    # I

    .prologue
    .line 501
    iput-object p1, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 502
    iput p2, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    .line 503
    return-void
.end method
