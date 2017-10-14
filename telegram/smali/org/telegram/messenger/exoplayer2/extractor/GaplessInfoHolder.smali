.class public final Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;
.super Ljava/lang/Object;
.source "GaplessInfoHolder.java"


# static fields
.field private static final GAPLESS_COMMENT_ID:Ljava/lang/String; = "iTunSMPB"

.field private static final GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

.field public static final GAPLESS_INFO_ID3_FRAME_PREDICATE:Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;


# instance fields
.field public encoderDelay:I

.field public encoderPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->GAPLESS_INFO_ID3_FRAME_PREDICATE:Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    .line 43
    const-string/jumbo v0, "^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})"

    .line 44
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 63
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 64
    return-void
.end method

.method private setFromComment(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 111
    const-string/jumbo v5, "iTunSMPB"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v3

    .line 114
    :cond_1
    sget-object v5, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 115
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 117
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 118
    .local v0, "encoderDelay":I
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 119
    .local v1, "encoderPadding":I
    if-gtz v0, :cond_2

    if-lez v1, :cond_0

    .line 120
    :cond_2
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 121
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 122
    goto :goto_0

    .line 124
    .end local v0    # "encoderDelay":I
    .end local v1    # "encoderPadding":I
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public hasGaplessInfo()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 135
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFromMetadata(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)Z
    .locals 5
    .param p1, "metadata"    # Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    .prologue
    .line 90
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 91
    invoke-virtual {p1, v2}, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;->get(I)Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    .line 92
    .local v1, "entry":Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;
    instance-of v3, v1, Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 93
    check-cast v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;

    .line 94
    .local v0, "commentFrame":Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;
    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;->description:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;->text:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->setFromComment(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    const/4 v3, 0x1

    .line 99
    .end local v0    # "commentFrame":Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;
    .end local v1    # "entry":Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;
    :goto_1
    return v3

    .line 90
    .restart local v1    # "entry":Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "entry":Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setFromXingHeaderValue(I)Z
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 73
    shr-int/lit8 v0, p1, 0xc

    .line 74
    .local v0, "encoderDelay":I
    and-int/lit16 v1, p1, 0xfff

    .line 75
    .local v1, "encoderPadding":I
    if-gtz v0, :cond_0

    if-lez v1, :cond_1

    .line 76
    :cond_0
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 77
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 78
    const/4 v2, 0x1

    .line 80
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
