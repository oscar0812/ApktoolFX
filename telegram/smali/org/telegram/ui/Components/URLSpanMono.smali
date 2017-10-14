.class public Lorg/telegram/ui/Components/URLSpanMono;
.super Landroid/text/style/MetricAffectingSpan;
.source "URLSpanMono.java"


# instance fields
.field private currentEnd:I

.field private currentMessage:Ljava/lang/CharSequence;

.field private currentStart:I

.field private isOut:Z


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IIZ)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "out"    # Z

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/telegram/ui/Components/URLSpanMono;->currentMessage:Ljava/lang/CharSequence;

    .line 29
    iput p2, p0, Lorg/telegram/ui/Components/URLSpanMono;->currentStart:I

    .line 30
    iput p3, p0, Lorg/telegram/ui/Components/URLSpanMono;->currentEnd:I

    .line 31
    return-void
.end method


# virtual methods
.method public copyToClipboard()V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Components/URLSpanMono;->currentMessage:Ljava/lang/CharSequence;

    iget v1, p0, Lorg/telegram/ui/Components/URLSpanMono;->currentStart:I

    iget v2, p0, Lorg/telegram/ui/Components/URLSpanMono;->currentEnd:I

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)V

    .line 35
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 46
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->fontSize:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 47
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 49
    iget-boolean v0, p0, Lorg/telegram/ui/Components/URLSpanMono;->isOut:Z

    if-eqz v0, :cond_0

    .line 50
    const-string/jumbo v0, "chat_messageTextOut"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    const-string/jumbo v0, "chat_messageTextIn"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "p"    # Landroid/text/TextPaint;

    .prologue
    .line 39
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 40
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->fontSize:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 41
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 42
    return-void
.end method
