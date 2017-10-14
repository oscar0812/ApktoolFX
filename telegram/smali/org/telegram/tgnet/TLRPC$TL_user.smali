.class public Lorg/telegram/tgnet/TLRPC$TL_user;
.super Lorg/telegram/tgnet/TLRPC$User;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_user"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8715
    const v0, 0x2e13f4c3

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_user;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8714
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$User;-><init>()V

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

    .line 8719
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    .line 8720
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_b

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->self:Z

    .line 8721
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_c

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->contact:Z

    .line 8722
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_d

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->mutual_contact:Z

    .line 8723
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_e

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->deleted:Z

    .line 8724
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_f

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot:Z

    .line 8725
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const v3, 0x8000

    and-int/2addr v0, v3

    if-eqz v0, :cond_10

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot_chat_history:Z

    .line 8726
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v3, 0x10000

    and-int/2addr v0, v3

    if-eqz v0, :cond_11

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot_nochats:Z

    .line 8727
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v3, 0x20000

    and-int/2addr v0, v3

    if-eqz v0, :cond_12

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->verified:Z

    .line 8728
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_13

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->restricted:Z

    .line 8729
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v3, 0x100000

    and-int/2addr v0, v3

    if-eqz v0, :cond_14

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->min:Z

    .line 8730
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v0, v3

    if-eqz v0, :cond_15

    :goto_a
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot_inline_geo:Z

    .line 8731
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->id:I

    .line 8732
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8733
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->access_hash:J

    .line 8735
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8736
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->first_name:Ljava/lang/String;

    .line 8738
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 8739
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->last_name:Ljava/lang/String;

    .line 8741
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 8742
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->username:Ljava/lang/String;

    .line 8744
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 8745
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->phone:Ljava/lang/String;

    .line 8747
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 8748
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 8750
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 8751
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserStatus;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 8753
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_7

    .line 8754
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot_info_version:I

    .line 8756
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_8

    .line 8757
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->restriction_reason:Ljava/lang/String;

    .line 8759
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 8760
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot_inline_placeholder:Ljava/lang/String;

    .line 8762
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 8763
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->lang_code:Ljava/lang/String;

    .line 8765
    :cond_a
    return-void

    :cond_b
    move v0, v2

    .line 8720
    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 8721
    goto/16 :goto_1

    :cond_d
    move v0, v2

    .line 8722
    goto/16 :goto_2

    :cond_e
    move v0, v2

    .line 8723
    goto/16 :goto_3

    :cond_f
    move v0, v2

    .line 8724
    goto/16 :goto_4

    :cond_10
    move v0, v2

    .line 8725
    goto/16 :goto_5

    :cond_11
    move v0, v2

    .line 8726
    goto/16 :goto_6

    :cond_12
    move v0, v2

    .line 8727
    goto/16 :goto_7

    :cond_13
    move v0, v2

    .line 8728
    goto/16 :goto_8

    :cond_14
    move v0, v2

    .line 8729
    goto/16 :goto_9

    :cond_15
    move v1, v2

    .line 8730
    goto/16 :goto_a
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    const/high16 v2, 0x40000

    .line 8768
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_user;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8769
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->self:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    or-int/lit16 v0, v0, 0x400

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    .line 8770
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->contact:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    or-int/lit16 v0, v0, 0x800

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    .line 8771
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->mutual_contact:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    or-int/lit16 v0, v0, 0x1000

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    .line 8772
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->deleted:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    or-int/lit16 v0, v0, 0x2000

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    .line 8773
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    or-int/lit16 v0, v0, 0x4000

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    .line 8774
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot_chat_history:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const v1, 0x8000

    or-int/2addr v0, v1

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    .line 8775
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot_nochats:Z

    if-eqz v0, :cond_11

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    .line 8776
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->verified:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    .line 8777
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->restricted:Z

    if-eqz v0, :cond_13

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    or-int/2addr v0, v2

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    .line 8778
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->min:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    .line 8779
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot_inline_geo:Z

    if-eqz v0, :cond_15

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    :goto_a
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    .line 8780
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8781
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8782
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8783
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 8785
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8786
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->first_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8788
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 8789
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->last_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8791
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 8792
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8794
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 8795
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8797
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 8798
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 8800
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 8801
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$UserStatus;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 8803
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_7

    .line 8804
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot_info_version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8806
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_8

    .line 8807
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->restriction_reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8809
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 8810
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot_inline_placeholder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8812
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 8813
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->lang_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8815
    :cond_a
    return-void

    .line 8769
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, -0x401

    goto/16 :goto_0

    .line 8770
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, -0x801

    goto/16 :goto_1

    .line 8771
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, -0x1001

    goto/16 :goto_2

    .line 8772
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, -0x2001

    goto/16 :goto_3

    .line 8773
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, -0x4001

    goto/16 :goto_4

    .line 8774
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    goto/16 :goto_5

    .line 8775
    :cond_11
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    goto/16 :goto_6

    .line 8776
    :cond_12
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const v1, -0x20001

    and-int/2addr v0, v1

    goto/16 :goto_7

    .line 8777
    :cond_13
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    goto/16 :goto_8

    .line 8778
    :cond_14
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const v1, -0x100001

    and-int/2addr v0, v1

    goto/16 :goto_9

    .line 8779
    :cond_15
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    goto/16 :goto_a
.end method
