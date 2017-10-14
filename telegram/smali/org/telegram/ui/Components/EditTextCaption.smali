.class public Lorg/telegram/ui/Components/EditTextCaption;
.super Lorg/telegram/ui/Components/EditTextBoldCursor;
.source "EditTextCaption.java"


# instance fields
.field private caption:Ljava/lang/String;

.field private captionLayout:Landroid/text/StaticLayout;

.field private copyPasteShowed:Z

.field private hintColor:I

.field private triesCount:I

.field private userNameLength:I

.field private xOffset:I

.field private yOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->triesCount:I

    .line 43
    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/EditTextCaption;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EditTextCaption;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->copyPasteShowed:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/EditTextCaption;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EditTextCaption;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedRegular()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/EditTextCaption;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EditTextCaption;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedBold()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/EditTextCaption;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EditTextCaption;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedItalic()V

    return-void
.end method

.method private applyTextStyleToSelection(Lorg/telegram/ui/Components/TypefaceSpan;)V
    .locals 12
    .param p1, "span"    # Lorg/telegram/ui/Components/TypefaceSpan;

    .prologue
    const/16 v11, 0x21

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->getSelectionStart()I

    move-result v8

    .line 70
    .local v8, "start":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->getSelectionEnd()I

    move-result v2

    .line 71
    .local v2, "end":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 73
    .local v1, "editable":Landroid/text/Editable;
    const-class v9, Lorg/telegram/ui/Components/URLSpanUserMention;

    invoke-interface {v1, v8, v2, v9}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/telegram/ui/Components/URLSpanUserMention;

    .line 74
    .local v7, "spansMentions":[Lorg/telegram/ui/Components/URLSpanUserMention;
    if-eqz v7, :cond_1

    array-length v9, v7

    if-lez v9, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const-class v9, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-interface {v1, v8, v2, v9}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/telegram/ui/Components/TypefaceSpan;

    .line 79
    .local v6, "spans":[Lorg/telegram/ui/Components/TypefaceSpan;
    if-eqz v6, :cond_4

    array-length v9, v6

    if-lez v9, :cond_4

    .line 80
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    array-length v9, v6

    if-ge v0, v9, :cond_4

    .line 81
    aget-object v3, v6, v0

    .line 82
    .local v3, "oldSpan":Lorg/telegram/ui/Components/TypefaceSpan;
    invoke-interface {v1, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 83
    .local v5, "spanStart":I
    invoke-interface {v1, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 84
    .local v4, "spanEnd":I
    invoke-interface {v1, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 85
    if-ge v5, v8, :cond_2

    .line 86
    new-instance v9, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/TypefaceSpan;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-interface {v1, v9, v5, v8, v11}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 88
    :cond_2
    if-le v4, v2, :cond_3

    .line 89
    new-instance v9, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/TypefaceSpan;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-interface {v1, v9, v2, v4, v11}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 80
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    .end local v0    # "a":I
    .end local v3    # "oldSpan":Lorg/telegram/ui/Components/TypefaceSpan;
    .end local v4    # "spanEnd":I
    .end local v5    # "spanStart":I
    :cond_4
    if-eqz p1, :cond_0

    .line 94
    invoke-interface {v1, p1, v8, v2, v11}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private makeSelectedBold()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EditTextCaption;->applyTextStyleToSelection(Lorg/telegram/ui/Components/TypefaceSpan;)V

    .line 58
    return-void
.end method

.method private makeSelectedItalic()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string/jumbo v1, "fonts/ritalic.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EditTextCaption;->applyTextStyleToSelection(Lorg/telegram/ui/Components/TypefaceSpan;)V

    .line 62
    return-void
.end method

.method private makeSelectedRegular()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EditTextCaption;->applyTextStyleToSelection(Lorg/telegram/ui/Components/TypefaceSpan;)V

    .line 66
    return-void
.end method

.method private overrideCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 107
    new-instance v0, Lorg/telegram/ui/Components/EditTextCaption$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EditTextCaption$1;-><init>(Lorg/telegram/ui/Components/EditTextCaption;Landroid/view/ActionMode$Callback;)V

    return-object v0
.end method


# virtual methods
.method public getCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 206
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onDraw(Landroid/graphics/Canvas;)V

    .line 208
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_0

    iget v3, p0, Lorg/telegram/ui/Components/EditTextCaption;->userNameLength:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 209
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 210
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getColor()I

    move-result v1

    .line 211
    .local v1, "oldColor":I
    iget v3, p0, Lorg/telegram/ui/Components/EditTextCaption;->hintColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 213
    iget v3, p0, Lorg/telegram/ui/Components/EditTextCaption;->xOffset:I

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/EditTextCaption;->yOffset:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 214
    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 216
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v1    # "oldColor":I
    .end local v2    # "paint":Landroid/graphics/Paint;
    :cond_0
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 159
    :try_start_0
    invoke-super/range {p0 .. p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onMeasure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    .line 167
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 168
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v13

    .line 169
    .local v13, "text":Ljava/lang/CharSequence;
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-interface {v13, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x40

    if-ne v0, v2, :cond_1

    .line 170
    const/16 v0, 0x20

    invoke-static {v13, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v9

    .line 171
    .local v9, "index":I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    .line 173
    .local v10, "paint":Landroid/text/TextPaint;
    const/4 v0, 0x0

    add-int/lit8 v2, v9, 0x1

    invoke-interface {v13, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 174
    .local v12, "str":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v10, v13, v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v11, v2

    .line 175
    .local v11, "size":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->getPaddingRight()I

    move-result v2

    sub-int v14, v0, v2

    .line 176
    .local v14, "width":I
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->userNameLength:I

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    sub-int v2, v14, v11

    int-to-float v2, v2

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v10, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 178
    .local v1, "captionFinal":Ljava/lang/CharSequence;
    iput v11, p0, Lorg/telegram/ui/Components/EditTextCaption;->xOffset:I

    .line 180
    :try_start_1
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sub-int v3, v14, v11

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 182
    iget v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->xOffset:I

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v2

    neg-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->xOffset:I

    .line 184
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->yOffset:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    .end local v1    # "captionFinal":Ljava/lang/CharSequence;
    .end local v9    # "index":I
    .end local v10    # "paint":Landroid/text/TextPaint;
    .end local v11    # "size":I
    .end local v12    # "str":Ljava/lang/CharSequence;
    .end local v13    # "text":Ljava/lang/CharSequence;
    .end local v14    # "width":I
    :cond_1
    :goto_1
    return-void

    .line 160
    :catch_0
    move-exception v8

    .line 161
    .local v8, "e":Ljava/lang/Exception;
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v2, 0x424c0000    # 51.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Components/EditTextCaption;->setMeasuredDimension(II)V

    .line 162
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 185
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v1    # "captionFinal":Ljava/lang/CharSequence;
    .restart local v9    # "index":I
    .restart local v10    # "paint":Landroid/text/TextPaint;
    .restart local v11    # "size":I
    .restart local v12    # "str":Ljava/lang/CharSequence;
    .restart local v13    # "text":Ljava/lang/CharSequence;
    .restart local v14    # "width":I
    :catch_1
    move-exception v8

    .line 186
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->copyPasteShowed:Z

    if-eqz v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

.method public setCaption(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    :cond_2
    :goto_0
    return-void

    .line 49
    :cond_3
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    const/16 v1, 0xa

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    .line 53
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->requestLayout()V

    goto :goto_0
.end method

.method public setHintColor(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 199
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintColor(I)V

    .line 200
    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->hintColor:I

    .line 201
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->invalidate()V

    .line 202
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->overrideCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->overrideCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
