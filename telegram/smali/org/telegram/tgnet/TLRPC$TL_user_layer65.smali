.class public Lorg/telegram/tgnet/TLRPC$TL_user_layer65;
.super Lorg/telegram/tgnet/TLRPC$TL_user;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_user_layer65"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9027
    const v0, -0x2ef26866

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9026
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/high16 v4, 0x40000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9031
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    .line 9032
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->self:Z

    .line 9033
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->contact:Z

    .line 9034
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->mutual_contact:Z

    .line 9035
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->deleted:Z

    .line 9036
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->bot:Z

    .line 9037
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const v3, 0x8000

    and-int/2addr v0, v3

    if-eqz v0, :cond_f

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->bot_chat_history:Z

    .line 9038
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const/high16 v3, 0x10000

    and-int/2addr v0, v3

    if-eqz v0, :cond_10

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->bot_nochats:Z

    .line 9039
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const/high16 v3, 0x20000

    and-int/2addr v0, v3

    if-eqz v0, :cond_11

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->verified:Z

    .line 9040
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_12

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->restricted:Z

    .line 9041
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const/high16 v3, 0x100000

    and-int/2addr v0, v3

    if-eqz v0, :cond_13

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->min:Z

    .line 9042
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v0, v3

    if-eqz v0, :cond_14

    :goto_a
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->bot_inline_geo:Z

    .line 9043
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->id:I

    .line 9044
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9045
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->access_hash:J

    .line 9047
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9048
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->first_name:Ljava/lang/String;

    .line 9050
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 9051
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->last_name:Ljava/lang/String;

    .line 9053
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 9054
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->username:Ljava/lang/String;

    .line 9056
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 9057
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->phone:Ljava/lang/String;

    .line 9059
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 9060
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 9062
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 9063
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserStatus;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 9065
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_7

    .line 9066
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->bot_info_version:I

    .line 9068
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_8

    .line 9069
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->restriction_reason:Ljava/lang/String;

    .line 9071
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 9072
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->bot_inline_placeholder:Ljava/lang/String;

    .line 9074
    :cond_9
    return-void

    :cond_a
    move v0, v2

    .line 9032
    goto/16 :goto_0

    :cond_b
    move v0, v2

    .line 9033
    goto/16 :goto_1

    :cond_c
    move v0, v2

    .line 9034
    goto/16 :goto_2

    :cond_d
    move v0, v2

    .line 9035
    goto/16 :goto_3

    :cond_e
    move v0, v2

    .line 9036
    goto/16 :goto_4

    :cond_f
    move v0, v2

    .line 9037
    goto/16 :goto_5

    :cond_10
    move v0, v2

    .line 9038
    goto/16 :goto_6

    :cond_11
    move v0, v2

    .line 9039
    goto/16 :goto_7

    :cond_12
    move v0, v2

    .line 9040
    goto/16 :goto_8

    :cond_13
    move v0, v2

    .line 9041
    goto/16 :goto_9

    :cond_14
    move v1, v2

    .line 9042
    goto/16 :goto_a
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    const/high16 v2, 0x40000

    .line 9077
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9078
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->self:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    or-int/lit16 v0, v0, 0x400

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    .line 9079
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->contact:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    or-int/lit16 v0, v0, 0x800

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    .line 9080
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->mutual_contact:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    or-int/lit16 v0, v0, 0x1000

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    .line 9081
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->deleted:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    or-int/lit16 v0, v0, 0x2000

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    .line 9082
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->bot:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    or-int/lit16 v0, v0, 0x4000

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    .line 9083
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->bot_chat_history:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const v1, 0x8000

    or-int/2addr v0, v1

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    .line 9084
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->bot_nochats:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    .line 9085
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->verified:Z

    if-eqz v0, :cond_11

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    .line 9086
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->restricted:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    or-int/2addr v0, v2

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    .line 9087
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->min:Z

    if-eqz v0, :cond_13

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    .line 9088
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->bot_inline_geo:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    :goto_a
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    .line 9089
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9090
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9091
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9092
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 9094
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9095
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->first_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9097
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 9098
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->last_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9100
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 9101
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9103
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 9104
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9106
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 9107
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 9109
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 9110
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$UserStatus;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 9112
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_7

    .line 9113
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->bot_info_version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9115
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_8

    .line 9116
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->restriction_reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9118
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 9119
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->bot_inline_placeholder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9121
    :cond_9
    return-void

    .line 9078
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit16 v0, v0, -0x401

    goto/16 :goto_0

    .line 9079
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit16 v0, v0, -0x801

    goto/16 :goto_1

    .line 9080
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit16 v0, v0, -0x1001

    goto/16 :goto_2

    .line 9081
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit16 v0, v0, -0x2001

    goto/16 :goto_3

    .line 9082
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit16 v0, v0, -0x4001

    goto/16 :goto_4

    .line 9083
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    goto/16 :goto_5

    .line 9084
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    goto/16 :goto_6

    .line 9085
    :cond_11
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const v1, -0x20001

    and-int/2addr v0, v1

    goto/16 :goto_7

    .line 9086
    :cond_12
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    goto/16 :goto_8

    .line 9087
    :cond_13
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const v1, -0x100001

    and-int/2addr v0, v1

    goto/16 :goto_9

    .line 9088
    :cond_14
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    goto/16 :goto_a
.end method
