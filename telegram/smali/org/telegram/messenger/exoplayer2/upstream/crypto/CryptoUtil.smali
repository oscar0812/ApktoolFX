.class final Lorg/telegram/messenger/exoplayer2/upstream/crypto/CryptoUtil;
.super Ljava/lang/Object;
.source "CryptoUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFNV64Hash(Ljava/lang/String;)J
    .locals 8
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 31
    if-nez p0, :cond_1

    .line 32
    const-wide/16 v0, 0x0

    .line 41
    :cond_0
    return-wide v0

    .line 35
    :cond_1
    const-wide/16 v0, 0x0

    .line 36
    .local v0, "hash":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 37
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-long v4, v3

    xor-long/2addr v0, v4

    .line 39
    const/4 v3, 0x1

    shl-long v4, v0, v3

    const/4 v3, 0x4

    shl-long v6, v0, v3

    add-long/2addr v4, v6

    const/4 v3, 0x5

    shl-long v6, v0, v3

    add-long/2addr v4, v6

    const/4 v3, 0x7

    shl-long v6, v0, v3

    add-long/2addr v4, v6

    const/16 v3, 0x8

    shl-long v6, v0, v3

    add-long/2addr v4, v6

    const/16 v3, 0x28

    shl-long v6, v0, v3

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 36
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
