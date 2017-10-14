.class public final Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodeBook"
.end annotation


# instance fields
.field public final dimensions:I

.field public final entries:I

.field public final isOrdered:Z

.field public final lengthMap:[J

.field public final lookupType:I


# direct methods
.method public constructor <init>(II[JIZ)V
    .locals 0
    .param p1, "dimensions"    # I
    .param p2, "entries"    # I
    .param p3, "lengthMap"    # [J
    .param p4, "lookupType"    # I
    .param p5, "isOrdered"    # Z

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;->dimensions:I

    .line 421
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;->entries:I

    .line 422
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;->lengthMap:[J

    .line 423
    iput p4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;->lookupType:I

    .line 424
    iput-boolean p5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;->isOrdered:Z

    .line 425
    return-void
.end method
