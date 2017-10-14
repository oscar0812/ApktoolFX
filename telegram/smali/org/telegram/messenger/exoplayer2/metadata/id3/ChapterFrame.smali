.class public final Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;
.super Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
.source "ChapterFrame.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Ljava/lang/String; = "CHAP"


# instance fields
.field public final chapterId:Ljava/lang/String;

.field public final endOffset:J

.field public final endTimeMs:I

.field public final startOffset:J

.field public final startTimeMs:I

.field private final subFrames:[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 55
    const-string/jumbo v2, "CHAP"

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->startTimeMs:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->endTimeMs:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->startOffset:J

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->endOffset:J

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    .local v1, "subFrameCount":I
    new-array v2, v1, [Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 64
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    const-class v2, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    aput-object v2, v3, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJJ[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;)V
    .locals 2
    .param p1, "chapterId"    # Ljava/lang/String;
    .param p2, "startTimeMs"    # I
    .param p3, "endTimeMs"    # I
    .param p4, "startOffset"    # J
    .param p6, "endOffset"    # J
    .param p8, "subFrames"    # [Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    .prologue
    .line 45
    const-string/jumbo v0, "CHAP"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    .line 47
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->startTimeMs:I

    .line 48
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->endTimeMs:I

    .line 49
    iput-wide p4, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->startOffset:J

    .line 50
    iput-wide p6, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->endOffset:J

    .line 51
    iput-object p8, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    .line 52
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    if-ne p0, p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v1

    .line 87
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 88
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 90
    check-cast v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;

    .line 91
    .local v0, "other":Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->startTimeMs:I

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->startTimeMs:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->endTimeMs:I

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->endTimeMs:I

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->startOffset:J

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->startOffset:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->endOffset:J

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->endOffset:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    .line 95
    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    .line 96
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getSubFrame(I)Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSubFrameCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 101
    const/16 v0, 0x11

    .line 102
    .local v0, "result":I
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->startTimeMs:I

    add-int/lit16 v0, v1, 0x20f

    .line 103
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->endTimeMs:I

    add-int v0, v1, v2

    .line 104
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->startOffset:J

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 105
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->endOffset:J

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 106
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 107
    return v0

    .line 106
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->startTimeMs:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->endTimeMs:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->startOffset:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 116
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->endOffset:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 117
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 119
    .local v0, "subFrame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "subFrame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    :cond_0
    return-void
.end method
