.class public Lorg/telegram/tgnet/TLRPC$TL_userFull;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_userFull"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public about:Ljava/lang/String;

.field public blocked:Z

.field public bot_info:Lorg/telegram/tgnet/TLRPC$BotInfo;

.field public common_chats_count:I

.field public flags:I

.field public link:Lorg/telegram/tgnet/TLRPC$TL_contacts_link;

.field public notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

.field public phone_calls_available:Z

.field public phone_calls_private:Z

.field public profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21597
    const v0, 0xf220f3f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21596
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_userFull;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 21612
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_userFull;->constructor:I

    if-eq v1, p1, :cond_1

    .line 21613
    if-eqz p2, :cond_0

    .line 21614
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_userFull"

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

    .line 21616
    :cond_0
    const/4 v0, 0x0

    .line 21621
    :goto_0
    return-object v0

    .line 21619
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull;-><init>()V

    .line 21620
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_userFull;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

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

    .line 21625
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    .line 21626
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->blocked:Z

    .line 21627
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->phone_calls_available:Z

    .line 21628
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->phone_calls_private:Z

    .line 21629
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 21630
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 21631
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->about:Ljava/lang/String;

    .line 21633
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_contacts_link;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_contacts_link;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->link:Lorg/telegram/tgnet/TLRPC$TL_contacts_link;

    .line 21634
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 21635
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 21637
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 21638
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 21639
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$BotInfo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$BotInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->bot_info:Lorg/telegram/tgnet/TLRPC$BotInfo;

    .line 21641
    :cond_2
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->common_chats_count:I

    .line 21642
    return-void

    :cond_3
    move v0, v2

    .line 21626
    goto :goto_0

    :cond_4
    move v0, v2

    .line 21627
    goto :goto_1

    :cond_5
    move v1, v2

    .line 21628
    goto :goto_2
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 21645
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21646
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->blocked:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    .line 21647
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->phone_calls_available:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    .line 21648
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->phone_calls_private:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    .line 21649
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21650
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21651
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 21652
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->about:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 21654
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->link:Lorg/telegram/tgnet/TLRPC$TL_contacts_link;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_link;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21655
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 21656
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Photo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21658
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21659
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 21660
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->bot_info:Lorg/telegram/tgnet/TLRPC$BotInfo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$BotInfo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21662
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->common_chats_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21663
    return-void

    .line 21646
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 21647
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_1

    .line 21648
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_2
.end method
