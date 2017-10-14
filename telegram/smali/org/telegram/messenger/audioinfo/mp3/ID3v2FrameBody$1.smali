.class final Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$1;
.super Ljava/lang/ThreadLocal;
.source "ID3v2FrameBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$1;->initialValue()Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;-><init>(I)V

    return-object v0
.end method
