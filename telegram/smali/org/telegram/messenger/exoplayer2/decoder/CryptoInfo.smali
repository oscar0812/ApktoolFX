.class public final Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;
.super Ljava/lang/Object;
.source "CryptoInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo$PatternHolderV24;
    }
.end annotation


# instance fields
.field private final frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

.field public iv:[B

.field public key:[B

.field public mode:I

.field public numBytesOfClearData:[I

.field public numBytesOfEncryptedData:[I

.field public numSubSamples:I

.field public patternBlocksToEncrypt:I

.field public patternBlocksToSkip:I

.field private final patternHolder:Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo$PatternHolderV24;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->newFrameworkCryptoInfoV16()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    .line 66
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo$PatternHolderV24;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0, v2, v1}, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo$PatternHolderV24;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo$1;)V

    move-object v1, v0

    :cond_0
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->patternHolder:Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo$PatternHolderV24;

    .line 67
    return-void

    :cond_1
    move-object v0, v1

    .line 65
    goto :goto_0
.end method

.method private newFrameworkCryptoInfoV16()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 111
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    return-object v0
.end method

.method private updateFrameworkCryptoInfoV16()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->numSubSamples:I

    iput v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 119
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 120
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 121
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->key:[B

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 122
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->iv:[B

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 123
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->mode:I

    iput v1, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 124
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->patternHolder:Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo$PatternHolderV24;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->patternBlocksToEncrypt:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->patternBlocksToSkip:I

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo$PatternHolderV24;->access$100(Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo$PatternHolderV24;II)V

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method public getFrameworkCryptoInfoV16()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public set(I[I[I[B[BI)V
    .locals 2
    .param p1, "numSubSamples"    # I
    .param p2, "numBytesOfClearData"    # [I
    .param p3, "numBytesOfEncryptedData"    # [I
    .param p4, "key"    # [B
    .param p5, "iv"    # [B
    .param p6, "mode"    # I

    .prologue
    const/4 v0, 0x0

    .line 74
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->numSubSamples:I

    .line 75
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    .line 76
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    .line 77
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->key:[B

    .line 78
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->iv:[B

    .line 79
    iput p6, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->mode:I

    .line 80
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->patternBlocksToEncrypt:I

    .line 81
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->patternBlocksToSkip:I

    .line 82
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 83
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->updateFrameworkCryptoInfoV16()V

    .line 85
    :cond_0
    return-void
.end method

.method public setPattern(II)V
    .locals 2
    .param p1, "patternBlocksToEncrypt"    # I
    .param p2, "patternBlocksToSkip"    # I

    .prologue
    .line 88
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->patternBlocksToEncrypt:I

    .line 89
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->patternBlocksToSkip:I

    .line 90
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->patternHolder:Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo$PatternHolderV24;

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo$PatternHolderV24;->access$100(Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo$PatternHolderV24;II)V

    .line 93
    :cond_0
    return-void
.end method
