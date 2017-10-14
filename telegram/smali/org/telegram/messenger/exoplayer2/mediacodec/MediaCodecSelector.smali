.class public interface abstract Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;
.super Ljava/lang/Object;
.source "MediaCodecSelector.java"


# static fields
.field public static final DEFAULT:Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;

    return-void
.end method


# virtual methods
.method public abstract getDecoderInfo(Ljava/lang/String;Z)Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method public abstract getPassthroughDecoderInfo()Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method
