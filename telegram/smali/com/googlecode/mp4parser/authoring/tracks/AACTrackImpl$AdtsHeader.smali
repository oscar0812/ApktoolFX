.class Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl$AdtsHeader;
.super Ljava/lang/Object;
.source "AACTrackImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdtsHeader"
.end annotation


# instance fields
.field bufferFullness:I

.field channelconfig:I

.field copyrightStart:I

.field copyrightedStream:I

.field frameLength:I

.field home:I

.field layer:I

.field mpegVersion:I

.field numAacFramesPerAdtsFrame:I

.field original:I

.field profile:I

.field protectionAbsent:I

.field sampleFrequencyIndex:I

.field sampleRate:I

.field final synthetic this$0:Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;


# direct methods
.method constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl$AdtsHeader;->this$0:Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getSize()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl$AdtsHeader;->protectionAbsent:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    add-int/lit8 v0, v0, 0x7

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
