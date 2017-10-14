.class final Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;
.super Ljava/lang/Object;
.source "DefaultEbmlReader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;
    }
.end annotation


# static fields
.field private static final ELEMENT_STATE_READ_CONTENT:I = 0x2

.field private static final ELEMENT_STATE_READ_CONTENT_SIZE:I = 0x1

.field private static final ELEMENT_STATE_READ_ID:I = 0x0

.field private static final MAX_ID_BYTES:I = 0x4

.field private static final MAX_INTEGER_ELEMENT_SIZE_BYTES:I = 0x8

.field private static final MAX_LENGTH_BYTES:I = 0x8

.field private static final VALID_FLOAT32_ELEMENT_SIZE_BYTES:I = 0x4

.field private static final VALID_FLOAT64_ELEMENT_SIZE_BYTES:I = 0x8


# instance fields
.field private elementContentSize:J

.field private elementId:I

.field private elementState:I

.field private final masterElementsStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;",
            ">;"
        }
    .end annotation
.end field

.field private output:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;

.field private final scratch:[B

.field private final varintReader:Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    .line 43
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    .line 44
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;

    return-void
.end method

.method private maybeResyncToNextLevel1Element(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)J
    .locals 6
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 149
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 151
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    invoke-interface {p1, v2, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 152
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    aget-byte v2, v2, v4

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->parseUnsignedVarintLength(I)I

    move-result v1

    .line 153
    .local v1, "varintLength":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-gt v1, v5, :cond_0

    .line 154
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    invoke-static {v2, v1, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->assembleVarint([BIZ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 155
    .local v0, "potentialId":I
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;

    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;->isLevel1Element(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-interface {p1, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 157
    int-to-long v2, v0

    return-wide v2

    .line 160
    .end local v0    # "potentialId":I
    :cond_0
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0
.end method

.method private readFloat(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;I)D
    .locals 5
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p2, "byteLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->readInteger(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;I)J

    move-result-wide v2

    .line 196
    .local v2, "integerValue":J
    const/4 v4, 0x4

    if-ne p2, v4, :cond_0

    .line 197
    long-to-int v4, v2

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    float-to-double v0, v4

    .line 201
    .local v0, "floatValue":D
    :goto_0
    return-wide v0

    .line 199
    .end local v0    # "floatValue":D
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .restart local v0    # "floatValue":D
    goto :goto_0
.end method

.method private readInteger(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;I)J
    .locals 8
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p2, "byteLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    const/4 v4, 0x0

    invoke-interface {p1, v1, v4, p2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 176
    const-wide/16 v2, 0x0

    .line 177
    .local v2, "value":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 178
    const/16 v1, 0x8

    shl-long v4, v2, v1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    or-long v2, v4, v6

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    return-wide v2
.end method

.method private readString(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;I)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p2, "byteLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 215
    if-nez p2, :cond_0

    .line 216
    const-string/jumbo v1, ""

    .line 220
    :goto_0
    return-object v1

    .line 218
    :cond_0
    new-array v0, p2, [B

    .line 219
    .local v0, "stringBytes":[B
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 220
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method


# virtual methods
.method public init(Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;)V
    .locals 0
    .param p1, "eventHandler"    # Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;

    .prologue
    .line 53
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;

    .line 54
    return-void
.end method

.method public read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 11
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 67
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->access$000(Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;)J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-ltz v0, :cond_1

    .line 69
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->access$100(Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;)I

    move-result v0

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;->endMasterElement(I)V

    .line 70
    const/4 v0, 0x1

    .line 125
    :goto_2
    return v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 73
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    if-nez v0, :cond_4

    .line 74
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v0, p1, v1, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->readUnsignedVarint(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;ZZI)J

    move-result-wide v8

    .line 75
    .local v8, "result":J
    const-wide/16 v0, -0x2

    cmp-long v0, v8, v0

    if-nez v0, :cond_2

    .line 76
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->maybeResyncToNextLevel1Element(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v8

    .line 78
    :cond_2
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_3

    .line 79
    const/4 v0, 0x0

    goto :goto_2

    .line 82
    :cond_3
    long-to-int v0, v8

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 86
    .end local v8    # "result":J
    :cond_4
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x8

    invoke-virtual {v0, p1, v1, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->readUnsignedVarint(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;ZZI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    .line 88
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 91
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;->getElementType(I)I

    move-result v10

    .line 92
    .local v10, "type":I
    packed-switch v10, :pswitch_data_0

    .line 131
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid element type "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :pswitch_0
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    .line 95
    .local v2, "elementContentPosition":J
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    add-long v6, v2, v0

    .line 96
    .local v6, "elementEndPosition":J
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    const/4 v5, 0x0

    invoke-direct {v1, v4, v6, v7, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;-><init>(IJLorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$1;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;->startMasterElement(IJJ)V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 99
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 101
    .end local v2    # "elementContentPosition":J
    .end local v6    # "elementEndPosition":J
    :pswitch_1
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/16 v4, 0x8

    cmp-long v0, v0, v4

    if-lez v0, :cond_6

    .line 102
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid integer size: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v4, v4

    invoke-direct {p0, p1, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->readInteger(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;I)J

    move-result-wide v4

    invoke-interface {v0, v1, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;->integerElement(IJ)V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 106
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 108
    :pswitch_2
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/16 v4, 0x4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/16 v4, 0x8

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    .line 110
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid float size: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_7
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v4, v4

    invoke-direct {p0, p1, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->readFloat(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;I)D

    move-result-wide v4

    invoke-interface {v0, v1, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;->floatElement(ID)V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 114
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 116
    :pswitch_3
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v0, v4

    if-lez v0, :cond_8

    .line 117
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "String element size: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_8
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v4, v4

    invoke-direct {p0, p1, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->readString(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;->stringElement(ILjava/lang/String;)V

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 121
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 123
    :pswitch_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v4, v4

    invoke-interface {v0, v1, v4, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;->binaryElement(IILorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 125
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 127
    :pswitch_5
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    goto/16 :goto_1

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 59
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 60
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->reset()V

    .line 61
    return-void
.end method
