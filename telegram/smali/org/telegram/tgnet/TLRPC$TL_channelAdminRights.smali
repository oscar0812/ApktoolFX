.class public Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelAdminRights"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public add_admins:Z

.field public ban_users:Z

.field public change_info:Z

.field public delete_messages:Z

.field public edit_messages:Z

.field public flags:I

.field public invite_link:Z

.field public invite_users:Z

.field public pin_messages:Z

.field public post_messages:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19733
    const v0, 0x5d7ceba5

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19732
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 19747
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->constructor:I

    if-eq v1, p1, :cond_1

    .line 19748
    if-eqz p2, :cond_0

    .line 19749
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_channelAdminRights"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19751
    :cond_0
    const/4 v0, 0x0

    .line 19756
    :goto_0
    return-object v0

    .line 19754
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;-><init>()V

    .line 19755
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19760
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    .line 19761
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->change_info:Z

    .line 19762
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->post_messages:Z

    .line 19763
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->edit_messages:Z

    .line 19764
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->delete_messages:Z

    .line 19765
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->ban_users:Z

    .line 19766
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_users:Z

    .line 19767
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_link:Z

    .line 19768
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->pin_messages:Z

    .line 19769
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    :goto_8
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->add_admins:Z

    .line 19770
    return-void

    :cond_0
    move v0, v2

    .line 19761
    goto :goto_0

    :cond_1
    move v0, v2

    .line 19762
    goto :goto_1

    :cond_2
    move v0, v2

    .line 19763
    goto :goto_2

    :cond_3
    move v0, v2

    .line 19764
    goto :goto_3

    :cond_4
    move v0, v2

    .line 19765
    goto :goto_4

    :cond_5
    move v0, v2

    .line 19766
    goto :goto_5

    :cond_6
    move v0, v2

    .line 19767
    goto :goto_6

    :cond_7
    move v0, v2

    .line 19768
    goto :goto_7

    :cond_8
    move v1, v2

    .line 19769
    goto :goto_8
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 19773
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19774
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->change_info:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    .line 19775
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->post_messages:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    .line 19776
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->edit_messages:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    or-int/lit8 v0, v0, 0x4

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    .line 19777
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->delete_messages:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    or-int/lit8 v0, v0, 0x8

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    .line 19778
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->ban_users:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    .line 19779
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_users:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    .line 19780
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_link:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    or-int/lit8 v0, v0, 0x40

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    .line 19781
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->pin_messages:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    or-int/lit16 v0, v0, 0x80

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    .line 19782
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->add_admins:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    or-int/lit16 v0, v0, 0x200

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    .line 19783
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19784
    return-void

    .line 19774
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 19775
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_1

    .line 19776
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_2

    .line 19777
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    and-int/lit8 v0, v0, -0x9

    goto :goto_3

    .line 19778
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_4

    .line 19779
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_5

    .line 19780
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    and-int/lit8 v0, v0, -0x41

    goto :goto_6

    .line 19781
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    and-int/lit16 v0, v0, -0x81

    goto :goto_7

    .line 19782
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->flags:I

    and-int/lit16 v0, v0, -0x201

    goto :goto_8
.end method
