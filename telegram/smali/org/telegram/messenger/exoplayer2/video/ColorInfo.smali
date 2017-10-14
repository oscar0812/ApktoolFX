.class public final Lorg/telegram/messenger/exoplayer2/video/ColorInfo;
.super Ljava/lang/Object;
.source "ColorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/telegram/messenger/exoplayer2/video/ColorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field private hashCode:I

.field public final hdrStaticInfo:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/video/ColorInfo$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 0
    .param p1, "colorSpace"    # I
    .param p2, "colorRange"    # I
    .param p3, "colorTransfer"    # I
    .param p4, "hdrStaticInfo"    # [B

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->colorSpace:I

    .line 70
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->colorRange:I

    .line 71
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->colorTransfer:I

    .line 72
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    .line 73
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->colorSpace:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->colorRange:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->colorTransfer:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 81
    .local v0, "hasHdrStaticInfo":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    .line 82
    return-void

    .line 80
    .end local v0    # "hasHdrStaticInfo":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 81
    .restart local v0    # "hasHdrStaticInfo":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    if-ne p0, p1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v1

    .line 90
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 91
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 93
    check-cast v0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;

    .line 94
    .local v0, "other":Lorg/telegram/messenger/exoplayer2/video/ColorInfo;
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->colorSpace:I

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->colorSpace:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->colorRange:I

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->colorRange:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->colorTransfer:I

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->colorTransfer:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    .line 96
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    .line 97
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 110
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->hashCode:I

    if-nez v1, :cond_0

    .line 111
    const/16 v0, 0x11

    .line 112
    .local v0, "result":I
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->colorSpace:I

    add-int/lit16 v0, v1, 0x20f

    .line 113
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->colorRange:I

    add-int v0, v1, v2

    .line 114
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->colorTransfer:I

    add-int v0, v1, v2

    .line 115
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 116
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->hashCode:I

    .line 118
    .end local v0    # "result":I
    :cond_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->hashCode:I

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ColorInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->colorSpace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->colorRange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->colorTransfer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 128
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->colorSpace:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->colorRange:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->colorTransfer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 135
    :cond_0
    return-void

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
