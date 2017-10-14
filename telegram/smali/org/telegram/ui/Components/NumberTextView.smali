.class public Lorg/telegram/ui/Components/NumberTextView;
.super Landroid/view/View;
.source "NumberTextView.java"


# instance fields
.field private animator:Landroid/animation/ObjectAnimator;

.field private currentNumber:I

.field private letters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation
.end field

.field private oldLetters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation
.end field

.field private progress:F

.field private textPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 38
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->letters:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->oldLetters:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->textPaint:Landroid/text/TextPaint;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    .line 35
    iput v1, p0, Lorg/telegram/ui/Components/NumberTextView;->currentNumber:I

    .line 39
    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/NumberTextView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/NumberTextView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 28
    iput-object p1, p0, Lorg/telegram/ui/Components/NumberTextView;->animator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/NumberTextView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/NumberTextView;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->oldLetters:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getProgress()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v12, 0xff

    const/4 v11, 0x0

    const/high16 v10, 0x437f0000    # 255.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 116
    iget-object v5, p0, Lorg/telegram/ui/Components/NumberTextView;->letters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 167
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/Components/NumberTextView;->letters:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    int-to-float v2, v5

    .line 120
    .local v2, "height":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 121
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberTextView;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberTextView;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 122
    iget-object v5, p0, Lorg/telegram/ui/Components/NumberTextView;->letters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/NumberTextView;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 123
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v1, :cond_c

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 125
    iget-object v5, p0, Lorg/telegram/ui/Components/NumberTextView;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/Components/NumberTextView;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/StaticLayout;

    move-object v4, v5

    .line 126
    .local v4, "old":Landroid/text/StaticLayout;
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Components/NumberTextView;->letters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Components/NumberTextView;->letters:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/StaticLayout;

    move-object v3, v5

    .line 127
    .local v3, "layout":Landroid/text/StaticLayout;
    :goto_3
    iget v5, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_6

    .line 128
    if-eqz v4, :cond_5

    .line 129
    iget-object v5, p0, Lorg/telegram/ui/Components/NumberTextView;->textPaint:Landroid/text/TextPaint;

    iget v6, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 131
    iget v5, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    sub-float/2addr v5, v9

    mul-float/2addr v5, v2

    invoke-virtual {p1, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 132
    invoke-virtual {v4, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 134
    if-eqz v3, :cond_1

    .line 135
    iget-object v5, p0, Lorg/telegram/ui/Components/NumberTextView;->textPaint:Landroid/text/TextPaint;

    iget v6, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    sub-float v6, v9, v6

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 136
    iget v5, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    mul-float/2addr v5, v2

    invoke-virtual {p1, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 160
    :cond_1
    :goto_4
    if-eqz v3, :cond_2

    .line 161
    invoke-virtual {v3, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 163
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 164
    if-eqz v3, :cond_b

    invoke-virtual {v3, v11}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v5

    :goto_5
    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    .end local v3    # "layout":Landroid/text/StaticLayout;
    .end local v4    # "old":Landroid/text/StaticLayout;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 126
    .restart local v4    # "old":Landroid/text/StaticLayout;
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 139
    .restart local v3    # "layout":Landroid/text/StaticLayout;
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/Components/NumberTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v12}, Landroid/text/TextPaint;->setAlpha(I)V

    goto :goto_4

    .line 141
    :cond_6
    iget v5, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_a

    .line 142
    if-eqz v4, :cond_7

    .line 143
    iget-object v5, p0, Lorg/telegram/ui/Components/NumberTextView;->textPaint:Landroid/text/TextPaint;

    iget v6, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    neg-float v6, v6

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 145
    iget v5, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    add-float/2addr v5, v9

    mul-float/2addr v5, v2

    invoke-virtual {p1, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 146
    invoke-virtual {v4, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 149
    :cond_7
    if-eqz v3, :cond_1

    .line 150
    add-int/lit8 v5, v1, -0x1

    if-eq v0, v5, :cond_8

    if-eqz v4, :cond_9

    .line 151
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Components/NumberTextView;->textPaint:Landroid/text/TextPaint;

    iget v6, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    add-float/2addr v6, v9

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 152
    iget v5, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    mul-float/2addr v5, v2

    invoke-virtual {p1, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_4

    .line 154
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/Components/NumberTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v12}, Landroid/text/TextPaint;->setAlpha(I)V

    goto :goto_4

    .line 157
    :cond_a
    if-eqz v3, :cond_1

    .line 158
    iget-object v5, p0, Lorg/telegram/ui/Components/NumberTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v12}, Landroid/text/TextPaint;->setAlpha(I)V

    goto :goto_4

    .line 164
    :cond_b
    invoke-virtual {v4, v11}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    goto :goto_5

    .line 166
    .end local v3    # "layout":Landroid/text/StaticLayout;
    .end local v4    # "old":Landroid/text/StaticLayout;
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method public setNumber(IZ)V
    .locals 13
    .param p1, "number"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 54
    iget v2, p0, Lorg/telegram/ui/Components/NumberTextView;->currentNumber:I

    if-ne v2, p1, :cond_0

    if-eqz p2, :cond_0

    .line 93
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/NumberTextView;->animator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_1

    .line 58
    iget-object v2, p0, Lorg/telegram/ui/Components/NumberTextView;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 59
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/Components/NumberTextView;->animator:Landroid/animation/ObjectAnimator;

    .line 61
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/NumberTextView;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 62
    iget-object v2, p0, Lorg/telegram/ui/Components/NumberTextView;->oldLetters:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Components/NumberTextView;->letters:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 63
    iget-object v2, p0, Lorg/telegram/ui/Components/NumberTextView;->letters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 64
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lorg/telegram/ui/Components/NumberTextView;->currentNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 65
    .local v11, "oldText":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 66
    .local v12, "text":Ljava/lang/String;
    iget v2, p0, Lorg/telegram/ui/Components/NumberTextView;->currentNumber:I

    if-le p1, v2, :cond_2

    const/4 v9, 0x1

    .line 67
    .local v9, "forwardAnimation":Z
    :goto_1
    iput p1, p0, Lorg/telegram/ui/Components/NumberTextView;->currentNumber:I

    .line 68
    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    .line 69
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_2
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v8, v2, :cond_5

    .line 70
    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v12, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "ch":Ljava/lang/String;
    iget-object v2, p0, Lorg/telegram/ui/Components/NumberTextView;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v8, v2, :cond_3

    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v11, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 72
    .local v10, "oldCh":Ljava/lang/String;
    :goto_3
    if-eqz v10, :cond_4

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 73
    iget-object v2, p0, Lorg/telegram/ui/Components/NumberTextView;->letters:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Components/NumberTextView;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v2, p0, Lorg/telegram/ui/Components/NumberTextView;->oldLetters:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v8, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 69
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 66
    .end local v1    # "ch":Ljava/lang/String;
    .end local v8    # "a":I
    .end local v9    # "forwardAnimation":Z
    .end local v10    # "oldCh":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 71
    .restart local v1    # "ch":Ljava/lang/String;
    .restart local v8    # "a":I
    .restart local v9    # "forwardAnimation":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    .line 76
    .restart local v10    # "oldCh":Ljava/lang/String;
    :cond_4
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberTextView;->textPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lorg/telegram/ui/Components/NumberTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 77
    .local v0, "layout":Landroid/text/StaticLayout;
    iget-object v2, p0, Lorg/telegram/ui/Components/NumberTextView;->letters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 80
    .end local v0    # "layout":Landroid/text/StaticLayout;
    .end local v1    # "ch":Ljava/lang/String;
    .end local v10    # "oldCh":Ljava/lang/String;
    :cond_5
    if-eqz p2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberTextView;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 81
    const-string/jumbo v3, "progress"

    const/4 v2, 0x2

    new-array v4, v2, [F

    const/4 v5, 0x0

    if-eqz v9, :cond_7

    const/high16 v2, -0x40800000    # -1.0f

    :goto_5
    aput v2, v4, v5

    const/4 v2, 0x1

    const/4 v5, 0x0

    aput v5, v4, v2

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/NumberTextView;->animator:Landroid/animation/ObjectAnimator;

    .line 82
    iget-object v2, p0, Lorg/telegram/ui/Components/NumberTextView;->animator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 83
    iget-object v2, p0, Lorg/telegram/ui/Components/NumberTextView;->animator:Landroid/animation/ObjectAnimator;

    new-instance v3, Lorg/telegram/ui/Components/NumberTextView$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/NumberTextView$1;-><init>(Lorg/telegram/ui/Components/NumberTextView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 90
    iget-object v2, p0, Lorg/telegram/ui/Components/NumberTextView;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 92
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberTextView;->invalidate()V

    goto/16 :goto_0

    .line 81
    :cond_7
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_5
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 42
    iget v0, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    .line 46
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberTextView;->invalidate()V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 104
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberTextView;->invalidate()V

    .line 105
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->textPaint:Landroid/text/TextPaint;

    int-to-float v1, p1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->letters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 99
    iget v0, p0, Lorg/telegram/ui/Components/NumberTextView;->currentNumber:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 100
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->letters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 111
    iget v0, p0, Lorg/telegram/ui/Components/NumberTextView;->currentNumber:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 112
    return-void
.end method
