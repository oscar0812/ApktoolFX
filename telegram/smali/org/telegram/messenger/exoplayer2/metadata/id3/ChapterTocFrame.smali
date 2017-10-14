.class public final Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;
.super Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
.source "ChapterTocFrame.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Ljava/lang/String; = "CTOC"


# instance fields
.field public final children:[Ljava/lang/String;

.field public final elementId:Ljava/lang/String;

.field public final isOrdered:Z

.field public final isRoot:Z

.field private final subFrames:[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 46
    const-string/jumbo v2, "CTOC"

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->isRoot:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->isOrdered:Z

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, "subFrameCount":I
    new-array v2, v1, [Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->subFrames:[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_2

    .line 54
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->subFrames:[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    const-class v2, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    aput-object v2, v3, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v1    # "subFrameCount":I
    :cond_0
    move v2, v4

    .line 48
    goto :goto_0

    :cond_1
    move v3, v4

    .line 49
    goto :goto_1

    .line 56
    .restart local v0    # "i":I
    .restart local v1    # "subFrameCount":I
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;)V
    .locals 1
    .param p1, "elementId"    # Ljava/lang/String;
    .param p2, "isRoot"    # Z
    .param p3, "isOrdered"    # Z
    .param p4, "children"    # [Ljava/lang/String;
    .param p5, "subFrames"    # [Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    .prologue
    .line 37
    const-string/jumbo v0, "CTOC"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    .line 39
    iput-boolean p2, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->isRoot:Z

    .line 40
    iput-boolean p3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->isOrdered:Z

    .line 41
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->subFrames:[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    if-ne p0, p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v1

    .line 77
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 78
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 80
    check-cast v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;

    .line 81
    .local v0, "other":Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;
    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->isRoot:Z

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->isRoot:Z

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->isOrdered:Z

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->isOrdered:Z

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    .line 83
    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    .line 84
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->subFrames:[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->subFrames:[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    .line 85
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
    .line 69
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->subFrames:[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSubFrameCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->subFrames:[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 90
    const/16 v0, 0x11

    .line 91
    .local v0, "result":I
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->isRoot:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 92
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->isOrdered:Z

    if-eqz v4, :cond_2

    :goto_1
    add-int v0, v1, v2

    .line 93
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_0
    add-int v0, v1, v3

    .line 94
    return v0

    :cond_1
    move v1, v3

    .line 91
    goto :goto_0

    :cond_2
    move v2, v3

    .line 92
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 99
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->isRoot:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 101
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->isOrdered:Z

    if-eqz v1, :cond_1

    :goto_1
    int-to-byte v1, v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 102
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->subFrames:[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->subFrames:[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 105
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;->subFrames:[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    :cond_0
    move v1, v3

    .line 100
    goto :goto_0

    :cond_1
    move v2, v3

    .line 101
    goto :goto_1

    .line 107
    .restart local v0    # "i":I
    :cond_2
    return-void
.end method
