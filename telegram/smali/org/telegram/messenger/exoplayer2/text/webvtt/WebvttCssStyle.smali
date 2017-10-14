.class final Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
.super Ljava/lang/Object;
.source "WebvttCssStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle$OptionalBoolean;,
        Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle$FontSizeUnit;,
        Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle$StyleFlags;
    }
.end annotation


# static fields
.field public static final FONT_SIZE_UNIT_EM:I = 0x2

.field public static final FONT_SIZE_UNIT_PERCENT:I = 0x3

.field public static final FONT_SIZE_UNIT_PIXEL:I = 0x1

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field public static final STYLE_BOLD:I = 0x1

.field public static final STYLE_BOLD_ITALIC:I = 0x3

.field public static final STYLE_ITALIC:I = 0x2

.field public static final STYLE_NORMAL:I = 0x0

.field public static final UNSPECIFIED:I = -0x1


# instance fields
.field private backgroundColor:I

.field private bold:I

.field private fontColor:I

.field private fontFamily:Ljava/lang/String;

.field private fontSize:F

.field private fontSizeUnit:I

.field private hasBackgroundColor:Z

.field private hasFontColor:Z

.field private italic:I

.field private linethrough:I

.field private targetClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private targetId:Ljava/lang/String;

.field private targetTag:Ljava/lang/String;

.field private targetVoice:Ljava/lang/String;

.field private textAlign:Landroid/text/Layout$Alignment;

.field private underline:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->reset()V

    .line 82
    return-void
.end method

.method private static updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p0, "currentScore"    # I
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;
    .param p3, "score"    # I

    .prologue
    const/4 v0, -0x1

    .line 298
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-ne p0, v0, :cond_2

    :cond_0
    move v0, p0

    .line 301
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int v0, p0, p3

    goto :goto_0
.end method


# virtual methods
.method public cascadeFrom(Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;)V
    .locals 2
    .param p1, "style"    # Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;

    .prologue
    const/4 v1, -0x1

    .line 266
    iget-boolean v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    if-eqz v0, :cond_0

    .line 267
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontColor:I

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->setFontColor(I)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;

    .line 269
    :cond_0
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->bold:I

    if-eq v0, v1, :cond_1

    .line 270
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->bold:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->bold:I

    .line 272
    :cond_1
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->italic:I

    if-eq v0, v1, :cond_2

    .line 273
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->italic:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->italic:I

    .line 275
    :cond_2
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 276
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    .line 278
    :cond_3
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->linethrough:I

    if-ne v0, v1, :cond_4

    .line 279
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->linethrough:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->linethrough:I

    .line 281
    :cond_4
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->underline:I

    if-ne v0, v1, :cond_5

    .line 282
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->underline:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->underline:I

    .line 284
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->textAlign:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_6

    .line 285
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->textAlign:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->textAlign:Landroid/text/Layout$Alignment;

    .line 287
    :cond_6
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    if-ne v0, v1, :cond_7

    .line 288
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    .line 289
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontSize:F

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontSize:F

    .line 291
    :cond_7
    iget-boolean v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    if-eqz v0, :cond_8

    .line 292
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->backgroundColor:I

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->setBackgroundColor(I)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;

    .line 294
    :cond_8
    return-void
.end method

.method public getBackgroundColor()I
    .locals 2

    .prologue
    .line 222
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Background color not defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->backgroundColor:I

    return v0
.end method

.method public getFontColor()I
    .locals 2

    .prologue
    .line 205
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Font color not defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontColor:I

    return v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontSize:F

    return v0
.end method

.method public getFontSizeUnit()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    return v0
.end method

.method public getSpecificityScore(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "classes"    # [Ljava/lang/String;
    .param p4, "voice"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    .line 137
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 151
    :cond_0
    :goto_0
    return v1

    .line 142
    :cond_1
    const/4 v0, 0x0

    .line 143
    .local v0, "score":I
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v2, p1, v3}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 144
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v0, v2, p2, v3}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 145
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {v0, v2, p4, v3}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 146
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    move v1, v0

    .line 151
    goto :goto_0
.end method

.method public getStyle()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 161
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->bold:I

    if-ne v3, v0, :cond_0

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->italic:I

    if-ne v3, v0, :cond_0

    .line 164
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->bold:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->italic:I

    if-ne v3, v1, :cond_1

    const/4 v2, 0x2

    :cond_1
    or-int/2addr v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public getTextAlign()Landroid/text/Layout$Alignment;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->textAlign:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public hasBackgroundColor()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    return v0
.end method

.method public hasFontColor()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    return v0
.end method

.method public isLinethrough()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 169
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->linethrough:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnderline()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 178
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->underline:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 85
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/List;

    .line 88
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    .line 89
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    .line 90
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    .line 91
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    .line 92
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->linethrough:I

    .line 93
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->underline:I

    .line 94
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->bold:I

    .line 95
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->italic:I

    .line 96
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    .line 97
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->textAlign:Landroid/text/Layout$Alignment;

    .line 98
    return-void
.end method

.method public setBackgroundColor(I)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
    .locals 1
    .param p1, "backgroundColor"    # I

    .prologue
    .line 229
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->backgroundColor:I

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    .line 231
    return-object p0
.end method

.method public setBold(Z)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
    .locals 1
    .param p1, "bold"    # Z

    .prologue
    .line 186
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->bold:I

    .line 187
    return-object p0

    .line 186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFontColor(I)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 212
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontColor:I

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    .line 214
    return-object p0
.end method

.method public setFontFamily(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
    .locals 1
    .param p1, "fontFamily"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    .line 201
    return-object p0
.end method

.method public setFontSize(F)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
    .locals 0
    .param p1, "fontSize"    # F

    .prologue
    .line 248
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontSize:F

    .line 249
    return-object p0
.end method

.method public setFontSizeUnit(S)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
    .locals 0
    .param p1, "unit"    # S

    .prologue
    .line 253
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    .line 254
    return-object p0
.end method

.method public setItalic(Z)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
    .locals 1
    .param p1, "italic"    # Z

    .prologue
    .line 191
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->italic:I

    .line 192
    return-object p0

    .line 191
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLinethrough(Z)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
    .locals 1
    .param p1, "linethrough"    # Z

    .prologue
    .line 173
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->linethrough:I

    .line 174
    return-object p0

    .line 173
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTargetClasses([Ljava/lang/String;)V
    .locals 1
    .param p1, "targetClasses"    # [Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/List;

    .line 110
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetId"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setTargetTagName(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetTag"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setTargetVoice(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetVoice"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
    .locals 0
    .param p1, "textAlign"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 243
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->textAlign:Landroid/text/Layout$Alignment;

    .line 244
    return-object p0
.end method

.method public setUnderline(Z)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
    .locals 1
    .param p1, "underline"    # Z

    .prologue
    .line 182
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->underline:I

    .line 183
    return-object p0

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
