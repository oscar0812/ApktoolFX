.class Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PatReader"
.end annotation


# instance fields
.field private final patScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)V
    .locals 2

    .prologue
    .line 319
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    .line 321
    return-void
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 10
    .param p1, "sectionData"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    const/16 v9, 0xd

    .line 331
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 332
    .local v4, "tableId":I
    if-eqz v4, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    const/4 v5, 0x7

    invoke-virtual {p1, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 341
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    div-int/lit8 v2, v5, 0x4

    .line 342
    .local v2, "programCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 343
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v6, 0x4

    invoke-virtual {p1, v5, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;I)V

    .line 344
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 345
    .local v3, "programNumber":I
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 346
    if-nez v3, :cond_2

    .line 347
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 342
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 349
    :cond_2
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 350
    .local v1, "pid":I
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$000(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;

    new-instance v7, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-direct {v7, v8, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;I)V

    invoke-direct {v6, v7}, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;)V

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 351
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$108(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)I

    goto :goto_2

    .line 354
    .end local v1    # "pid":I
    .end local v3    # "programNumber":I
    :cond_3
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$200(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 355
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$000(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method public init(Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0
    .param p1, "timestampAdjuster"    # Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;
    .param p2, "extractorOutput"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
    .param p3, "idGenerator"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .prologue
    .line 327
    return-void
.end method
