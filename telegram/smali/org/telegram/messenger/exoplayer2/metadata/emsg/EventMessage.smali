.class public final Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;
.super Ljava/lang/Object;
.source "EventMessage.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final durationMs:J

.field private hashCode:I

.field public final id:J

.field public final messageData:[B

.field public final schemeIdUri:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->durationMs:J

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->id:J

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->messageData:[B

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V
    .locals 1
    .param p1, "schemeIdUri"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "durationMs"    # J
    .param p5, "id"    # J
    .param p7, "messageData"    # [B

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    .line 69
    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->durationMs:J

    .line 70
    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->id:J

    .line 71
    iput-object p7, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->messageData:[B

    .line 72
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    if-ne p0, p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v1

    .line 101
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 102
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 104
    check-cast v0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;

    .line 105
    .local v0, "other":Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->durationMs:J

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->durationMs:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->id:J

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    .line 106
    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->messageData:[B

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->messageData:[B

    .line 107
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v2, 0x0

    .line 84
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->hashCode:I

    if-nez v1, :cond_1

    .line 85
    const/16 v0, 0x11

    .line 86
    .local v0, "result":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 87
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 88
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->durationMs:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->durationMs:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 89
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->id:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->id:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 90
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->messageData:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 91
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->hashCode:I

    .line 93
    .end local v0    # "result":I
    :cond_1
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->hashCode:I

    return v1

    .restart local v0    # "result":I
    :cond_2
    move v1, v2

    .line 86
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->durationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 122
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;->messageData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 124
    return-void
.end method
