.class public final Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;
.super Ljava/lang/Object;
.source "AudioCapabilities.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static final DEFAULT_AUDIO_CAPABILITIES:Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;


# instance fields
.field private final maxChannelCount:I

.field private final supportedEncodings:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 36
    new-instance v0, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v3, v1, v2

    invoke-direct {v0, v1, v3}, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;-><init>([II)V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

    return-void
.end method

.method constructor <init>([II)V
    .locals 1
    .param p1, "supportedEncodings"    # [I
    .param p2, "maxChannelCount"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-eqz p1, :cond_0

    .line 73
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    .line 74
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 78
    :goto_0
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;->maxChannelCount:I

    .line 79
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    goto :goto_0
.end method

.method public static getCapabilities(Landroid/content/Context;)Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;->getCapabilities(Landroid/content/Intent;)Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

    move-result-object v0

    return-object v0
.end method

.method static getCapabilities(Landroid/content/Intent;)Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 53
    if-eqz p0, :cond_0

    const-string/jumbo v0, "android.media.extra.AUDIO_PLUG_STATE"

    invoke-virtual {p0, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 54
    :cond_0
    sget-object v0, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

    .line 56
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

    const-string/jumbo v1, "android.media.extra.ENCODINGS"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    const-string/jumbo v2, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 57
    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;-><init>([II)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    if-ne p0, p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 103
    :cond_1
    instance-of v3, p1, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

    if-nez v3, :cond_2

    move v1, v2

    .line 104
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 106
    check-cast v0, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

    .line 107
    .local v0, "audioCapabilities":Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;->maxChannelCount:I

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;->maxChannelCount:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getMaxChannelCount()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;->maxChannelCount:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 113
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;->maxChannelCount:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public supportsEncoding(I)Z
    .locals 1
    .param p1, "encoding"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AudioCapabilities[maxChannelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;->maxChannelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", supportedEncodings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;->supportedEncodings:[I

    .line 119
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    return-object v0
.end method
