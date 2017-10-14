.class public final Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;
.super Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
.source "ApicFrame.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Ljava/lang/String; = "APIC"


# instance fields
.field public final description:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field public final pictureData:[B

.field public final pictureType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 44
    const-string/jumbo v0, "APIC"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->pictureType:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[B)V
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "pictureType"    # I
    .param p4, "pictureData"    # [B

    .prologue
    .line 36
    const-string/jumbo v0, "APIC"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    .line 39
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->pictureType:I

    .line 40
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    if-ne p0, p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v1

    .line 56
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 57
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 59
    check-cast v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;

    .line 60
    .local v0, "other":Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->pictureType:I

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->pictureType:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    .line 61
    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    .line 62
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 67
    const/16 v0, 0x11

    .line 68
    .local v0, "result":I
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->pictureType:I

    add-int/lit16 v0, v1, 0x20f

    .line 69
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 70
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 71
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 72
    return v0

    :cond_1
    move v1, v2

    .line 69
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->pictureType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 81
    return-void
.end method
