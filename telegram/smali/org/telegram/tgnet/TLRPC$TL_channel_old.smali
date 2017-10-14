.class public Lorg/telegram/tgnet/TLRPC$TL_channel_old;
.super Lorg/telegram/tgnet/TLRPC$TL_channel;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channel_old"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20176
    const v0, 0x678e9587

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20175
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

    .line 20179
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    .line 20180
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->creator:Z

    .line 20181
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->kicked:Z

    .line 20182
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->left:Z

    .line 20183
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->moderator:Z

    .line 20184
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->broadcast:Z

    .line 20185
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->verified:Z

    .line 20186
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->megagroup:Z

    .line 20187
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    :goto_7
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->explicit_content:Z

    .line 20188
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->id:I

    .line 20189
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->access_hash:J

    .line 20190
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->title:Ljava/lang/String;

    .line 20191
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    .line 20192
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->username:Ljava/lang/String;

    .line 20194
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 20195
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->date:I

    .line 20196
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->version:I

    .line 20197
    return-void

    :cond_1
    move v0, v2

    .line 20180
    goto :goto_0

    :cond_2
    move v0, v2

    .line 20181
    goto :goto_1

    :cond_3
    move v0, v2

    .line 20182
    goto :goto_2

    :cond_4
    move v0, v2

    .line 20183
    goto :goto_3

    :cond_5
    move v0, v2

    .line 20184
    goto :goto_4

    :cond_6
    move v0, v2

    .line 20185
    goto :goto_5

    :cond_7
    move v0, v2

    .line 20186
    goto :goto_6

    :cond_8
    move v1, v2

    .line 20187
    goto :goto_7
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 20200
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20201
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->creator:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    .line 20202
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->kicked:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    .line 20203
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->left:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    or-int/lit8 v0, v0, 0x4

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    .line 20204
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->moderator:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    .line 20205
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->broadcast:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    .line 20206
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->verified:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    or-int/lit16 v0, v0, 0x80

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    .line 20207
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->megagroup:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    or-int/lit16 v0, v0, 0x100

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    .line 20208
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->explicit_content:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    or-int/lit16 v0, v0, 0x200

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    .line 20209
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20210
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20211
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 20212
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 20213
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    .line 20214
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 20216
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20217
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20218
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20219
    return-void

    .line 20201
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 20202
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_1

    .line 20203
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_2

    .line 20204
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_3

    .line 20205
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_4

    .line 20206
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit16 v0, v0, -0x81

    goto :goto_5

    .line 20207
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit16 v0, v0, -0x101

    goto :goto_6

    .line 20208
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit16 v0, v0, -0x201

    goto :goto_7
.end method
