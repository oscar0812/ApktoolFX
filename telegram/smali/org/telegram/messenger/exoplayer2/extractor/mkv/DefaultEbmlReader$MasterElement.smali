.class final Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;
.super Ljava/lang/Object;
.source "DefaultEbmlReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MasterElement"
.end annotation


# instance fields
.field private final elementEndPosition:J

.field private final elementId:I


# direct methods
.method private constructor <init>(IJ)V
    .locals 0
    .param p1, "elementId"    # I
    .param p2, "elementEndPosition"    # J

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->elementId:I

    .line 234
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->elementEndPosition:J

    .line 235
    return-void
.end method

.method synthetic constructor <init>(IJLorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # J
    .param p4, "x2"    # Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$1;

    .prologue
    .line 227
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;-><init>(IJ)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    .prologue
    .line 227
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->elementEndPosition:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    .prologue
    .line 227
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->elementId:I

    return v0
.end method
