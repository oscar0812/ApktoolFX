.class public interface abstract Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;
.super Ljava/lang/Object;
.source "TransferListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onBytesTransferred(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I)V"
        }
    .end annotation
.end method

.method public abstract onTransferEnd(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method

.method public abstract onTransferStart(Ljava/lang/Object;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;",
            ")V"
        }
    .end annotation
.end method
