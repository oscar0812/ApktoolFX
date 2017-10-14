.class public Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;
.super Lorg/telegram/tgnet/TLRPC$TL_channel;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channel_layer48"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19988
    const v0, 0x4b1b7506    # 1.0188038E7f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19987
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_channel;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19991
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    .line 19992
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->creator:Z

    .line 19993
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->kicked:Z

    .line 19994
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->left:Z

    .line 19995
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->moderator:Z

    .line 19996
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->broadcast:Z

    .line 19997
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->verified:Z

    .line 19998
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->megagroup:Z

    .line 19999
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->restricted:Z

    .line 20000
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->democracy:Z

    .line 20001
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    :goto_9
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->signatures:Z

    .line 20002
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->id:I

    .line 20003
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->access_hash:J

    .line 20004
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->title:Ljava/lang/String;

    .line 20005
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    .line 20006
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->username:Ljava/lang/String;

    .line 20008
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 20009
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->date:I

    .line 20010
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->version:I

    .line 20011
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    .line 20012
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->restriction_reason:Ljava/lang/String;

    .line 20014
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 19992
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 19993
    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 19994
    goto/16 :goto_2

    :cond_5
    move v0, v2

    .line 19995
    goto/16 :goto_3

    :cond_6
    move v0, v2

    .line 19996
    goto :goto_4

    :cond_7
    move v0, v2

    .line 19997
    goto :goto_5

    :cond_8
    move v0, v2

    .line 19998
    goto :goto_6

    :cond_9
    move v0, v2

    .line 19999
    goto :goto_7

    :cond_a
    move v0, v2

    .line 20000
    goto :goto_8

    :cond_b
    move v1, v2

    .line 20001
    goto :goto_9
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 20017
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20018
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->creator:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    .line 20019
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->kicked:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    .line 20020
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->left:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    or-int/lit8 v0, v0, 0x4

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    .line 20021
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->moderator:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    .line 20022
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->broadcast:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    .line 20023
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->verified:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    or-int/lit16 v0, v0, 0x80

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    .line 20024
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->megagroup:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    or-int/lit16 v0, v0, 0x100

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    .line 20025
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->restricted:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    or-int/lit16 v0, v0, 0x200

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    .line 20026
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->democracy:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    or-int/lit16 v0, v0, 0x400

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    .line 20027
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->signatures:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    or-int/lit16 v0, v0, 0x800

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    .line 20028
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20029
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20030
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 20031
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 20032
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    .line 20033
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 20035
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20036
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20037
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20038
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    .line 20039
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->restriction_reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 20041
    :cond_1
    return-void

    .line 20018
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto/16 :goto_0

    .line 20019
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto/16 :goto_1

    .line 20020
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit8 v0, v0, -0x5

    goto/16 :goto_2

    .line 20021
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto/16 :goto_3

    .line 20022
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto/16 :goto_4

    .line 20023
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit16 v0, v0, -0x81

    goto/16 :goto_5

    .line 20024
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit16 v0, v0, -0x101

    goto/16 :goto_6

    .line 20025
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit16 v0, v0, -0x201

    goto :goto_7

    .line 20026
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit16 v0, v0, -0x401

    goto :goto_8

    .line 20027
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit16 v0, v0, -0x801

    goto :goto_9
.end method
