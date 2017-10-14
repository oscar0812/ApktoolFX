.class Lorg/telegram/messenger/MediaController$AudioBuffer;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioBuffer"
.end annotation


# instance fields
.field buffer:Ljava/nio/ByteBuffer;

.field bufferBytes:[B

.field finished:I

.field pcmOffset:J

.field size:I

.field final synthetic this$0:Lorg/telegram/messenger/MediaController;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/MediaController;I)V
    .locals 1
    .param p2, "capacity"    # I

    .prologue
    .line 119
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$AudioBuffer;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$AudioBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 121
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$AudioBuffer;->bufferBytes:[B

    .line 122
    return-void
.end method
