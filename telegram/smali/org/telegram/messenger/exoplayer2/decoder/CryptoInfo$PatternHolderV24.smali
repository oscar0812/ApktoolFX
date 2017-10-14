.class final Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo$PatternHolderV24;
.super Ljava/lang/Object;
.source "CryptoInfo.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PatternHolderV24"
.end annotation


# instance fields
.field private final frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

.field private final pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;


# direct methods
.method private constructor <init>(Landroid/media/MediaCodec$CryptoInfo;)V
    .locals 2
    .param p1, "frameworkCryptoInfo"    # Landroid/media/MediaCodec$CryptoInfo;

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo$PatternHolderV24;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    .line 137
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-direct {v0, v1, v1}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo$PatternHolderV24;->pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCodec$CryptoInfo;Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/MediaCodec$CryptoInfo;
    .param p2, "x1"    # Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo$1;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo$PatternHolderV24;-><init>(Landroid/media/MediaCodec$CryptoInfo;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo$PatternHolderV24;II)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo$PatternHolderV24;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo$PatternHolderV24;->set(II)V

    return-void
.end method

.method private set(II)V
    .locals 2
    .param p1, "blocksToEncrypt"    # I
    .param p2, "blocksToSkip"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo$PatternHolderV24;->pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    .line 142
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo$PatternHolderV24;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo$PatternHolderV24;->pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 143
    return-void
.end method
