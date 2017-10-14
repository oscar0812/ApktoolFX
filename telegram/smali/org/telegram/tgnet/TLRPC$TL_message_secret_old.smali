.class public Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;
.super Lorg/telegram/tgnet/TLRPC$TL_message_secret;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_message_secret_old"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29435
    const v0, 0x555555f8

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29434
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

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

    .line 29438
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    or-int/lit16 v0, v0, 0x100

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->flags:I

    .line 29439
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->unread:Z

    .line 29440
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->out:Z

    .line 29441
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->mentioned:Z

    .line 29442
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->media_unread:Z

    .line 29443
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->id:I

    .line 29444
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->ttl:I

    .line 29445
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->from_id:I

    .line 29446
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 29447
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->date:I

    .line 29448
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->message:Ljava/lang/String;

    .line 29449
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 29450
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->id:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->message:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->message:Ljava/lang/String;

    const-string/jumbo v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29451
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->attachPath:Ljava/lang/String;

    .line 29453
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 29439
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 29440
    goto :goto_1

    :cond_4
    move v0, v2

    .line 29441
    goto :goto_2

    :cond_5
    move v1, v2

    .line 29442
    goto :goto_3
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 29456
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 29457
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->unread:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->flags:I

    .line 29458
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->out:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->flags:I

    .line 29459
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->mentioned:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->flags:I

    .line 29460
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->media_unread:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->flags:I

    .line 29461
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 29462
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 29463
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->ttl:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 29464
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->from_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 29465
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 29466
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 29467
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 29468
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 29469
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->attachPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 29470
    return-void

    .line 29457
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 29458
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_1

    .line 29459
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_2

    .line 29460
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_3
.end method
