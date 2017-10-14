.class final Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder$1;
.super Ljava/lang/Object;
.source "GaplessInfoHolder.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IIIII)Z
    .locals 2
    .param p1, "majorVersion"    # I
    .param p2, "id0"    # I
    .param p3, "id1"    # I
    .param p4, "id2"    # I
    .param p5, "id3"    # I

    .prologue
    const/16 v1, 0x4d

    .line 38
    const/16 v0, 0x43

    if-ne p2, v0, :cond_1

    const/16 v0, 0x4f

    if-ne p3, v0, :cond_1

    if-ne p4, v1, :cond_1

    if-eq p5, v1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
