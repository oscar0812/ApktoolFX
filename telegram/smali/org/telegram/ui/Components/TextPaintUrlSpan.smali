.class public Lorg/telegram/ui/Components/TextPaintUrlSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "TextPaintUrlSpan.java"


# instance fields
.field private color:I

.field private currentUrl:Ljava/lang/String;

.field private textPaint:Landroid/text/TextPaint;

.field private textSize:I


# direct methods
.method public constructor <init>(Landroid/text/TextPaint;Ljava/lang/String;)V
    .locals 0
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    .line 23
    iput-object p2, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->currentUrl:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->currentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "p"    # Landroid/text/TextPaint;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 46
    :cond_0
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "p"    # Landroid/text/TextPaint;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 35
    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 37
    :cond_0
    return-void
.end method
