.class public abstract Lorg/telegram/tgnet/TLRPC$DraftMessage;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DraftMessage"
.end annotation


# instance fields
.field public date:I

.field public entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public flags:I

.field public message:Ljava/lang/String;

.field public no_webpage:Z

.field public reply_to_msg_id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->entities:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DraftMessage;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$DraftMessage;
    sparse-switch p1, :sswitch_data_0

    .line 80
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 81
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in DraftMessage"

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

    .line 74
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_draftMessageEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DraftMessage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_draftMessageEmpty;-><init>()V

    .line 75
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DraftMessage;
    goto :goto_0

    .line 77
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_draftMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DraftMessage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_draftMessage;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DraftMessage;
    goto :goto_0

    .line 83
    :cond_0
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$DraftMessage;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 86
    :cond_1
    return-object v0

    .line 72
    nop

    :sswitch_data_0
    .sparse-switch
        -0x45b4513b -> :sswitch_0
        -0x2718ee1 -> :sswitch_1
    .end sparse-switch
.end method
