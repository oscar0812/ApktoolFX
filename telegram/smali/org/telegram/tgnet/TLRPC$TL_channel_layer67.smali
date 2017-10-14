.class public Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;
.super Lorg/telegram/tgnet/TLRPC$TL_channel;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channel_layer67"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20113
    const v0, -0x5eb235ae

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20112
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

    .line 20116
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    .line 20117
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->creator:Z

    .line 20118
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->kicked:Z

    .line 20119
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->left:Z

    .line 20120
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->moderator:Z

    .line 20121
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->broadcast:Z

    .line 20122
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->verified:Z

    .line 20123
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->megagroup:Z

    .line 20124
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_a

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->restricted:Z

    .line 20125
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_b

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->democracy:Z

    .line 20126
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_c

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->signatures:Z

    .line 20127
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_d

    :goto_a
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->min:Z

    .line 20128
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->id:I

    .line 20129
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 20130
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->access_hash:J

    .line 20132
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->title:Ljava/lang/String;

    .line 20133
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    .line 20134
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->username:Ljava/lang/String;

    .line 20136
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 20137
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->date:I

    .line 20138
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->version:I

    .line 20139
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    .line 20140
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->restriction_reason:Ljava/lang/String;

    .line 20142
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 20117
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 20118
    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 20119
    goto/16 :goto_2

    :cond_6
    move v0, v2

    .line 20120
    goto/16 :goto_3

    :cond_7
    move v0, v2

    .line 20121
    goto/16 :goto_4

    :cond_8
    move v0, v2

    .line 20122
    goto/16 :goto_5

    :cond_9
    move v0, v2

    .line 20123
    goto :goto_6

    :cond_a
    move v0, v2

    .line 20124
    goto :goto_7

    :cond_b
    move v0, v2

    .line 20125
    goto :goto_8

    :cond_c
    move v0, v2

    .line 20126
    goto :goto_9

    :cond_d
    move v1, v2

    .line 20127
    goto :goto_a
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 20145
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20146
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->creator:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    .line 20147
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->kicked:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    .line 20148
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->left:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    or-int/lit8 v0, v0, 0x4

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    .line 20149
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->moderator:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    .line 20150
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->broadcast:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    .line 20151
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->verified:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    or-int/lit16 v0, v0, 0x80

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    .line 20152
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->megagroup:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    or-int/lit16 v0, v0, 0x100

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    .line 20153
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->restricted:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    or-int/lit16 v0, v0, 0x200

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    .line 20154
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->democracy:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    or-int/lit16 v0, v0, 0x400

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    .line 20155
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->signatures:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    or-int/lit16 v0, v0, 0x800

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    .line 20156
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->min:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    or-int/lit16 v0, v0, 0x1000

    :goto_a
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    .line 20157
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20158
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20159
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 20160
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 20162
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 20163
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    .line 20164
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 20166
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20167
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20168
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20169
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    .line 20170
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->restriction_reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 20172
    :cond_2
    return-void

    .line 20146
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto/16 :goto_0

    .line 20147
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto/16 :goto_1

    .line 20148
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit8 v0, v0, -0x5

    goto/16 :goto_2

    .line 20149
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto/16 :goto_3

    .line 20150
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto/16 :goto_4

    .line 20151
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, -0x81

    goto/16 :goto_5

    .line 20152
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, -0x101

    goto/16 :goto_6

    .line 20153
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, -0x201

    goto/16 :goto_7

    .line 20154
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, -0x401

    goto/16 :goto_8

    .line 20155
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, -0x801

    goto/16 :goto_9

    .line 20156
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, -0x1001

    goto/16 :goto_a
.end method
