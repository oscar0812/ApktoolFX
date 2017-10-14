.class public Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;
.super Landroid/widget/TextView;
.source "CorrectlyMeasuringTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 8
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 14
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 16
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 17
    .local v1, "l":Landroid/text/Layout;
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    .line 28
    .end local v1    # "l":Landroid/text/Layout;
    :goto_0
    return-void

    .line 20
    .restart local v1    # "l":Landroid/text/Layout;
    :cond_0
    const/4 v2, 0x0

    .line 21
    .local v2, "maxw":I
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 22
    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 21
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;->getMeasuredWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    or-int/2addr v3, v7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;->getMeasuredHeight()I

    move-result v4

    or-int/2addr v4, v7

    invoke-super {p0, v3, v4}, Landroid/widget/TextView;->onMeasure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 25
    .end local v0    # "i":I
    .end local v1    # "l":Landroid/text/Layout;
    .end local v2    # "maxw":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method
