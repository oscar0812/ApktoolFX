.class public final Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;
.super Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;
.source "Tx3gDecoder.java"


# static fields
.field private static final BOM_UTF16_BE:C = '\ufeff'

.field private static final BOM_UTF16_LE:C = '\ufffe'

.field private static final DEFAULT_COLOR:I = -0x1

.field private static final DEFAULT_FONT_FACE:I = 0x0

.field private static final DEFAULT_FONT_FAMILY:Ljava/lang/String; = "sans-serif"

.field private static final DEFAULT_VERTICAL_PLACEMENT:F = 0.85f

.field private static final FONT_FACE_BOLD:I = 0x1

.field private static final FONT_FACE_ITALIC:I = 0x2

.field private static final FONT_FACE_UNDERLINE:I = 0x4

.field private static final SIZE_ATOM_HEADER:I = 0x8

.field private static final SIZE_BOM_UTF16:I = 0x2

.field private static final SIZE_SHORT:I = 0x2

.field private static final SIZE_STYLE_RECORD:I = 0xc

.field private static final SPAN_PRIORITY_HIGH:I = 0x0

.field private static final SPAN_PRIORITY_LOW:I = 0xff0000

.field private static final TX3G_SERIF:Ljava/lang/String; = "Serif"

.field private static final TYPE_STYL:I

.field private static final TYPE_TBOX:I


# instance fields
.field private calculatedVideoTrackHeight:I

.field private customVerticalPlacement:Z

.field private defaultColorRgba:I

.field private defaultFontFace:I

.field private defaultFontFamily:Ljava/lang/String;

.field private defaultVerticalPlacement:F

.field private final parsableByteArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "styl"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->TYPE_STYL:I

    .line 47
    const-string/jumbo v0, "tbox"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->TYPE_TBOX:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-string/jumbo v0, "Tx3gDecoder"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 82
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 83
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->decodeInitializationData(Ljava/util/List;)V

    .line 84
    return-void
.end method

.method private applyStyleRecord(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Landroid/text/SpannableStringBuilder;)V
    .locals 12
    .param p1, "parsableByteArray"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "cueText"    # Landroid/text/SpannableStringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 175
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/16 v6, 0xc

    if-lt v0, v6, :cond_0

    move v0, v2

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->assertTrue(Z)V

    .line 176
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 177
    .local v3, "start":I
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 178
    .local v4, "end":I
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 179
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 180
    .local v1, "fontFace":I
    invoke-virtual {p1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 181
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 182
    .local v7, "colorRgba":I
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFace:I

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->attachFontFace(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 183
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->defaultColorRgba:I

    move-object v6, p2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->attachColor(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 184
    return-void

    .end local v1    # "fontFace":I
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v7    # "colorRgba":I
    :cond_0
    move v0, v5

    .line 175
    goto :goto_0
.end method

.method private static assertTrue(Z)V
    .locals 2
    .param p0, "checkValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 230
    if-nez p0, :cond_0

    .line 231
    new-instance v0, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;

    const-string/jumbo v1, "Unexpected subtitle format."

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    return-void
.end method

.method private static attachColor(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 3
    .param p0, "cueText"    # Landroid/text/SpannableStringBuilder;
    .param p1, "colorRgba"    # I
    .param p2, "defaultColorRgba"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "spanPriority"    # I

    .prologue
    .line 213
    if-eq p1, p2, :cond_0

    .line 214
    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v2, p1, 0x8

    or-int v0, v1, v2

    .line 215
    .local v0, "colorArgb":I
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    or-int/lit8 v2, p5, 0x21

    invoke-virtual {p0, v1, p3, p4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 218
    .end local v0    # "colorArgb":I
    :cond_0
    return-void
.end method

.method private static attachFontFace(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 7
    .param p0, "cueText"    # Landroid/text/SpannableStringBuilder;
    .param p1, "fontFace"    # I
    .param p2, "defaultFontFace"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "spanPriority"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 188
    if-eq p1, p2, :cond_2

    .line 189
    or-int/lit8 v0, p5, 0x21

    .line 190
    .local v0, "flags":I
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_3

    move v1, v3

    .line 191
    .local v1, "isBold":Z
    :goto_0
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_4

    move v2, v3

    .line 192
    .local v2, "isItalic":Z
    :goto_1
    if-eqz v1, :cond_6

    .line 193
    if-eqz v2, :cond_5

    .line 194
    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v5, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 201
    :cond_0
    :goto_2
    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_7

    .line 202
    .local v3, "isUnderlined":Z
    :goto_3
    if-eqz v3, :cond_1

    .line 203
    new-instance v5, Landroid/text/style/UnderlineSpan;

    invoke-direct {v5}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v5, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 205
    :cond_1
    if-nez v3, :cond_2

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    .line 206
    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v5, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 209
    .end local v0    # "flags":I
    .end local v1    # "isBold":Z
    .end local v2    # "isItalic":Z
    .end local v3    # "isUnderlined":Z
    :cond_2
    return-void

    .restart local v0    # "flags":I
    :cond_3
    move v1, v4

    .line 190
    goto :goto_0

    .restart local v1    # "isBold":Z
    :cond_4
    move v2, v4

    .line 191
    goto :goto_1

    .line 196
    .restart local v2    # "isItalic":Z
    :cond_5
    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v5, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 198
    :cond_6
    if-eqz v2, :cond_0

    .line 199
    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v5, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_7
    move v3, v4

    .line 201
    goto :goto_3
.end method

.method private static attachFontFamily(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 2
    .param p0, "cueText"    # Landroid/text/SpannableStringBuilder;
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "defaultFontFamily"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "spanPriority"    # I

    .prologue
    .line 223
    if-eq p1, p2, :cond_0

    .line 224
    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-direct {v0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    or-int/lit8 v1, p5, 0x21

    invoke-virtual {p0, v0, p3, p4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 227
    :cond_0
    return-void
.end method

.method private decodeInitializationData(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v4, 0x1

    const v7, 0x3f59999a    # 0.85f

    const/4 v5, 0x0

    .line 87
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 88
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    const/16 v6, 0x30

    if-eq v3, v6, :cond_0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    const/16 v6, 0x35

    if-ne v3, v6, :cond_4

    .line 89
    :cond_0
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 90
    .local v1, "initializationBytes":[B
    const/16 v3, 0x18

    aget-byte v3, v1, v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFace:I

    .line 91
    const/16 v3, 0x1a

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/16 v6, 0x1b

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v3, v6

    const/16 v6, 0x1c

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v3, v6

    const/16 v6, 0x1d

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v3, v6

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->defaultColorRgba:I

    .line 95
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x2b

    array-length v6, v1

    add-int/lit8 v6, v6, -0x2b

    invoke-direct {v0, v1, v3, v6}, Ljava/lang/String;-><init>([BII)V

    .line 96
    .local v0, "fontFamily":Ljava/lang/String;
    const-string/jumbo v3, "Serif"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "serif"

    :goto_0
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFamily:Ljava/lang/String;

    .line 98
    const/16 v3, 0x19

    aget-byte v3, v1, v3

    mul-int/lit8 v3, v3, 0x14

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->calculatedVideoTrackHeight:I

    .line 99
    aget-byte v3, v1, v5

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->customVerticalPlacement:Z

    .line 100
    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->customVerticalPlacement:Z

    if-eqz v3, :cond_3

    .line 101
    const/16 v3, 0xa

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/16 v4, 0xb

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 103
    .local v2, "requestedVerticalPlacement":I
    int-to-float v3, v2

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->calculatedVideoTrackHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    .line 104
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    const/4 v4, 0x0

    const v5, 0x3f733333    # 0.95f

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    .line 115
    .end local v0    # "fontFamily":Ljava/lang/String;
    .end local v1    # "initializationBytes":[B
    .end local v2    # "requestedVerticalPlacement":I
    :goto_2
    return-void

    .line 96
    .restart local v0    # "fontFamily":Ljava/lang/String;
    .restart local v1    # "initializationBytes":[B
    :cond_1
    const-string/jumbo v3, "sans-serif"

    goto :goto_0

    :cond_2
    move v3, v5

    .line 99
    goto :goto_1

    .line 106
    :cond_3
    iput v7, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    goto :goto_2

    .line 109
    .end local v0    # "fontFamily":Ljava/lang/String;
    .end local v1    # "initializationBytes":[B
    :cond_4
    iput v5, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFace:I

    .line 110
    const/4 v3, -0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->defaultColorRgba:I

    .line 111
    const-string/jumbo v3, "sans-serif"

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFamily:Ljava/lang/String;

    .line 112
    iput-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->customVerticalPlacement:Z

    .line 113
    iput v7, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    goto :goto_2
.end method

.method private static readSubtitleText(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Ljava/lang/String;
    .locals 4
    .param p0, "parsableByteArray"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 159
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->assertTrue(Z)V

    .line 160
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 161
    .local v1, "textLength":I
    if-nez v1, :cond_1

    .line 162
    const-string/jumbo v2, ""

    .line 170
    :goto_1
    return-object v2

    .line 159
    .end local v1    # "textLength":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 164
    .restart local v1    # "textLength":I
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lt v2, v3, :cond_3

    .line 165
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->peekChar()C

    move-result v0

    .line 166
    .local v0, "firstChar":C
    const v2, 0xfeff

    if-eq v0, v2, :cond_2

    const v2, 0xfffe

    if-ne v0, v2, :cond_3

    .line 167
    :cond_2
    const-string/jumbo v2, "UTF-16"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 170
    .end local v0    # "firstChar":C
    :cond_3
    const-string/jumbo v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method protected decode([BIZ)Lorg/telegram/messenger/exoplayer2/text/Subtitle;
    .locals 20
    .param p1, "bytes"    # [B
    .param p2, "length"    # I
    .param p3, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 120
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 121
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->readSubtitleText(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v14

    .line 122
    .local v14, "cueTextString":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    sget-object v3, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gSubtitle;->EMPTY:Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gSubtitle;

    .line 153
    :goto_0
    return-object v3

    .line 126
    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v14}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 127
    .local v2, "cueText":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFace:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/high16 v7, 0xff0000

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->attachFontFace(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 129
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->defaultColorRgba:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/high16 v7, 0xff0000

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->attachColor(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 131
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFamily:Ljava/lang/String;

    const-string/jumbo v4, "sans-serif"

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/high16 v7, 0xff0000

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->attachFontFamily(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;III)V

    .line 133
    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    .line 135
    .local v6, "verticalPlacement":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_5

    .line 136
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v16

    .line 137
    .local v16, "position":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 138
    .local v12, "atomSize":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v13

    .line 139
    .local v13, "atomType":I
    sget v3, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->TYPE_STYL:I

    if-ne v13, v3, :cond_2

    .line 140
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_2
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->assertTrue(Z)V

    .line 141
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v18

    .line 142
    .local v18, "styleRecordCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    move/from16 v0, v18

    if-ge v15, v0, :cond_3

    .line 143
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->applyStyleRecord(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Landroid/text/SpannableStringBuilder;)V

    .line 142
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 140
    .end local v15    # "i":I
    .end local v18    # "styleRecordCount":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 145
    :cond_2
    sget v3, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->TYPE_TBOX:I

    if-ne v13, v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->customVerticalPlacement:Z

    if-eqz v3, :cond_3

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_4

    const/4 v3, 0x1

    :goto_4
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->assertTrue(Z)V

    .line 147
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v17

    .line 148
    .local v17, "requestedVerticalPlacement":I
    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->calculatedVideoTrackHeight:I

    int-to-float v4, v4

    div-float v6, v3, v4

    .line 149
    const/4 v3, 0x0

    const v4, 0x3f733333    # 0.95f

    invoke-static {v6, v3, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result v6

    .line 151
    .end local v17    # "requestedVerticalPlacement":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    add-int v4, v16, v12

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_1

    .line 146
    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    .line 153
    .end local v12    # "atomSize":I
    .end local v13    # "atomType":I
    .end local v16    # "position":I
    :cond_5
    new-instance v19, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gSubtitle;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/text/Cue;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/high16 v10, -0x80000000

    const/4 v11, 0x1

    move-object v4, v2

    invoke-direct/range {v3 .. v11}, Lorg/telegram/messenger/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gSubtitle;-><init>(Lorg/telegram/messenger/exoplayer2/text/Cue;)V

    move-object/from16 v3, v19

    goto/16 :goto_0
.end method
