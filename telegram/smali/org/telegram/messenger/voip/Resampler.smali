.class public Lorg/telegram/messenger/voip/Resampler;
.super Ljava/lang/Object;
.source "Resampler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native convert44to48(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
.end method

.method public static native convert48to44(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
.end method
