.class Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder$1;
.super Ljava/lang/Thread;
.source "SimpleDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;-><init>([Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;[Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    .prologue
    .line 63
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder$1;, "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder$1;"
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder$1;->this$0:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder$1;, "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder$1;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder$1;->this$0:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->access$000(Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;)V

    .line 67
    return-void
.end method
