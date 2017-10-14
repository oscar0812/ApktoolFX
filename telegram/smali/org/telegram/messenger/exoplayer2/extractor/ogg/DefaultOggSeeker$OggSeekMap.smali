.class Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OggSeekMap"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;
    .param p2, "x1"    # Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$1;

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;)V

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 4

    .prologue
    .line 232
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->access$200(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;)Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->access$400(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->convertGranuleToTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition(J)J
    .locals 9
    .param p1, "timeUs"    # J

    .prologue
    .line 223
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->access$100(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v0

    .line 227
    :goto_0
    return-wide v0

    .line 226
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->access$200(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;)Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->convertTimeToGranule(J)J

    move-result-wide v4

    .line 227
    .local v4, "granule":J
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->access$100(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v2

    const-wide/16 v6, 0x7530

    invoke-static/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->access$300(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;JJJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method
