.class Lorg/telegram/messenger/audioinfo/mp3/MP3Info$1;
.super Ljava/lang/Object;
.source "MP3Info.java"

# interfaces
.implements Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/audioinfo/mp3/MP3Info;-><init>(Ljava/io/InputStream;JLjava/util/logging/Level;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final stopPosition:J

.field final synthetic this$0:Lorg/telegram/messenger/audioinfo/mp3/MP3Info;

.field final synthetic val$fileLength:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/audioinfo/mp3/MP3Info;J)V
    .locals 4
    .param p1, "this$0"    # Lorg/telegram/messenger/audioinfo/mp3/MP3Info;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$1;->this$0:Lorg/telegram/messenger/audioinfo/mp3/MP3Info;

    iput-wide p2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$1;->val$fileLength:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iget-wide v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$1;->val$fileLength:J

    const-wide/16 v2, 0x80

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$1;->stopPosition:J

    return-void
.end method


# virtual methods
.method public stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z
    .locals 4
    .param p1, "data"    # Lorg/telegram/messenger/audioinfo/mp3/MP3Input;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$1;->stopPosition:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->isID3v1StartPosition(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
