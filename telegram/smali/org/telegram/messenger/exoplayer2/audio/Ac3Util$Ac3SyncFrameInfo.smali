.class public final Lorg/telegram/messenger/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ac3SyncFrameInfo"
.end annotation


# instance fields
.field public final channelCount:I

.field public final frameSize:I

.field public final mimeType:Ljava/lang/String;

.field public final sampleCount:I

.field public final sampleRate:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "channelCount"    # I
    .param p3, "sampleRate"    # I
    .param p4, "frameSize"    # I
    .param p5, "sampleCount"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->mimeType:Ljava/lang/String;

    .line 61
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->channelCount:I

    .line 62
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->sampleRate:I

    .line 63
    iput p4, p0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->frameSize:I

    .line 64
    iput p5, p0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->sampleCount:I

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIILorg/telegram/messenger/exoplayer2/audio/Ac3Util$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Lorg/telegram/messenger/exoplayer2/audio/Ac3Util$1;

    .prologue
    .line 34
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method
