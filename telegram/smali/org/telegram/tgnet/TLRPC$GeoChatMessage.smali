.class public abstract Lorg/telegram/tgnet/TLRPC$GeoChatMessage;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GeoChatMessage"
.end annotation


# instance fields
.field public action:Lorg/telegram/tgnet/TLRPC$MessageAction;

.field public chat_id:I

.field public date:I

.field public from_id:I

.field public id:I

.field public media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9571
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$GeoChatMessage;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 9581
    const/4 v0, 0x0

    .line 9582
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$GeoChatMessage;
    sparse-switch p1, :sswitch_data_0

    .line 9593
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 9594
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in GeoChatMessage"

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

    .line 9584
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_geoChatMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$GeoChatMessage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_geoChatMessage;-><init>()V

    .line 9585
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$GeoChatMessage;
    goto :goto_0

    .line 9587
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_geoChatMessageService;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$GeoChatMessage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_geoChatMessageService;-><init>()V

    .line 9588
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$GeoChatMessage;
    goto :goto_0

    .line 9590
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_geoChatMessageEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$GeoChatMessage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_geoChatMessageEmpty;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$GeoChatMessage;
    goto :goto_0

    .line 9596
    :cond_0
    if-eqz v0, :cond_1

    .line 9597
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$GeoChatMessage;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 9599
    :cond_1
    return-object v0

    .line 9582
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2cb05db2 -> :sswitch_1
        0x4505f8e1 -> :sswitch_0
        0x60311a9b -> :sswitch_2
    .end sparse-switch
.end method
