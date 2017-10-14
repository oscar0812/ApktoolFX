.class public Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;
.super Lorg/telegram/tgnet/TLRPC$TL_messageService;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageService_layer48"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29049
    const v0, -0x3f9469f9

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29048
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

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

    .line 29053
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    .line 29054
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->unread:Z

    .line 29055
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->out:Z

    .line 29056
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->mentioned:Z

    .line 29057
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->media_unread:Z

    .line 29058
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->silent:Z

    .line 29059
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_7

    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->post:Z

    .line 29060
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->id:I

    .line 29061
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 29062
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->from_id:I

    .line 29064
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 29065
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->from_id:I

    if-nez v0, :cond_1

    .line 29066
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v0, :cond_8

    .line 29067
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->from_id:I

    .line 29072
    :cond_1
    :goto_6
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->date:I

    .line 29073
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageAction;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 29074
    return-void

    :cond_2
    move v0, v2

    .line 29054
    goto :goto_0

    :cond_3
    move v0, v2

    .line 29055
    goto :goto_1

    :cond_4
    move v0, v2

    .line 29056
    goto :goto_2

    :cond_5
    move v0, v2

    .line 29057
    goto :goto_3

    :cond_6
    move v0, v2

    .line 29058
    goto :goto_4

    :cond_7
    move v1, v2

    .line 29059
    goto :goto_5

    .line 29069
    :cond_8
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->from_id:I

    goto :goto_6
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 29077
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 29078
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->unread:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    .line 29079
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->out:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    .line 29080
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->mentioned:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    .line 29081
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->media_unread:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    .line 29082
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->silent:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    or-int/lit16 v0, v0, 0x2000

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    .line 29083
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->post:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    or-int/lit16 v0, v0, 0x4000

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    .line 29084
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 29085
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 29086
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 29087
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->from_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 29089
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 29090
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 29091
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$MessageAction;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 29092
    return-void

    .line 29078
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 29079
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_1

    .line 29080
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_2

    .line 29081
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_3

    .line 29082
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit16 v0, v0, -0x2001

    goto :goto_4

    .line 29083
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit16 v0, v0, -0x4001

    goto :goto_5
.end method
