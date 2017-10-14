.class public abstract Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "updates_ChannelDifference"
.end annotation


# instance fields
.field public chats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation
.end field

.field public flags:I

.field public isFinal:Z

.field public messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;"
        }
    .end annotation
.end field

.field public new_messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;"
        }
    .end annotation
.end field

.field public other_updates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Update;",
            ">;"
        }
    .end annotation
.end field

.field public pts:I

.field public read_inbox_max_id:I

.field public read_outbox_max_id:I

.field public timeout:I

.field public top_message:I

.field public unread_count:I

.field public unread_mentions_count:I

.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17541
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 17546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->new_messages:Ljava/util/ArrayList;

    .line 17547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->other_updates:Ljava/util/ArrayList;

    .line 17548
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->chats:Ljava/util/ArrayList;

    .line 17549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->users:Ljava/util/ArrayList;

    .line 17555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->messages:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 17558
    const/4 v0, 0x0

    .line 17559
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;
    sparse-switch p1, :sswitch_data_0

    .line 17570
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 17571
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in updates_ChannelDifference"

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

    .line 17561
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;-><init>()V

    .line 17562
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;
    goto :goto_0

    .line 17564
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;-><init>()V

    .line 17565
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;
    goto :goto_0

    .line 17567
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;
    goto :goto_0

    .line 17573
    :cond_0
    if-eqz v0, :cond_1

    .line 17574
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 17576
    :cond_1
    return-object v0

    .line 17559
    nop

    :sswitch_data_0
    .sparse-switch
        0x2064674e -> :sswitch_1
        0x3e11affb -> :sswitch_0
        0x6a9d7b35 -> :sswitch_2
    .end sparse-switch
.end method
