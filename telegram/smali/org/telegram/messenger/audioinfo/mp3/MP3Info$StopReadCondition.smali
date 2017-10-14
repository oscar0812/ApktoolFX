.class interface abstract Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;
.super Ljava/lang/Object;
.source "MP3Info.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/audioinfo/mp3/MP3Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "StopReadCondition"
.end annotation


# virtual methods
.method public abstract stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
