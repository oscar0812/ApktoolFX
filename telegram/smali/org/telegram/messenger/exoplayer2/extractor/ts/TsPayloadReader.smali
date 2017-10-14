.class public interface abstract Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;,
        Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;,
        Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;,
        Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;
    }
.end annotation


# virtual methods
.method public abstract consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)V
.end method

.method public abstract init(Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
.end method

.method public abstract seek()V
.end method
