.class public final Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
.super Ljava/lang/Object;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track$Transformation;
    }
.end annotation


# static fields
.field public static final TRANSFORMATION_CEA608_CDAT:I = 0x1

.field public static final TRANSFORMATION_NONE:I


# instance fields
.field public final durationUs:J

.field public final editListDurations:[J

.field public final editListMediaTimes:[J

.field public final format:Lorg/telegram/messenger/exoplayer2/Format;

.field public final id:I

.field public final movieTimescale:J

.field public final nalUnitLengthFieldLength:I

.field public final sampleDescriptionEncryptionBoxes:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

.field public final sampleTransformation:I

.field public final timescale:J

.field public final type:I


# direct methods
.method public constructor <init>(IIJJJLorg/telegram/messenger/exoplayer2/Format;I[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "timescale"    # J
    .param p5, "movieTimescale"    # J
    .param p7, "durationUs"    # J
    .param p9, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p10, "sampleTransformation"    # I
    .param p11, "sampleDescriptionEncryptionBoxes"    # [Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .param p12, "nalUnitLengthFieldLength"    # I
    .param p13, "editListDurations"    # [J
    .param p14, "editListMediaTimes"    # [J

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->id:I

    .line 106
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->type:I

    .line 107
    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 108
    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 109
    iput-wide p7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->durationUs:J

    .line 110
    iput-object p9, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->format:Lorg/telegram/messenger/exoplayer2/Format;

    .line 111
    iput p10, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->sampleTransformation:I

    .line 112
    iput-object p11, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 113
    iput p12, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 114
    iput-object p13, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    .line 115
    iput-object p14, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    .line 116
    return-void
.end method
