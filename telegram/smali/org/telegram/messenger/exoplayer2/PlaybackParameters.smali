.class public final Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
.super Ljava/lang/Object;
.source "PlaybackParameters.java"


# static fields
.field public static final DEFAULT:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;


# instance fields
.field public final pitch:F

.field private final scaledUsPerMs:I

.field public final speed:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 26
    new-instance v0, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    invoke-direct {v0, v1, v1}, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;-><init>(FF)V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;->DEFAULT:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .param p1, "speed"    # F
    .param p2, "pitch"    # F

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;->speed:F

    .line 48
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;->pitch:F

    .line 49
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;->scaledUsPerMs:I

    .line 50
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    if-ne p0, p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v1

    .line 68
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 69
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 71
    check-cast v0, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .line 72
    .local v0, "other":Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;->speed:F

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;->speed:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;->pitch:F

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;->pitch:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getSpeedAdjustedDurationUs(J)J
    .locals 3
    .param p1, "timeMs"    # J

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;->scaledUsPerMs:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 77
    const/16 v0, 0x11

    .line 78
    .local v0, "result":I
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;->speed:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 79
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;->pitch:F

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 80
    return v0
.end method
