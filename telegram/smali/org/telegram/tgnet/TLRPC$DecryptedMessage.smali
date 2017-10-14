.class public abstract Lorg/telegram/tgnet/TLRPC$DecryptedMessage;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DecryptedMessage"
.end annotation


# instance fields
.field public action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

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

.field public media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

.field public message:Ljava/lang/String;

.field public random_bytes:[B

.field public random_id:J

.field public reply_to_random_id:J

.field public ttl:I

.field public via_bot_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10385
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 10393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->entities:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DecryptedMessage;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 10398
    const/4 v0, 0x0

    .line 10399
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessage;
    sparse-switch p1, :sswitch_data_0

    .line 10416
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 10417
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in DecryptedMessage"

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

    .line 10401
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;-><init>()V

    .line 10402
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessage;
    goto :goto_0

    .line 10404
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    .line 10405
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessage;
    goto :goto_0

    .line 10407
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;-><init>()V

    .line 10408
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessage;
    goto :goto_0

    .line 10410
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer8;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer8;-><init>()V

    .line 10411
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessage;
    goto :goto_0

    .line 10413
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessage;
    goto :goto_0

    .line 10419
    :cond_0
    if-eqz v0, :cond_1

    .line 10420
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 10422
    :cond_1
    return-object v0

    .line 10399
    nop

    :sswitch_data_0
    .sparse-switch
        -0x55b7cd83 -> :sswitch_2
        0x1f814f1f -> :sswitch_3
        0x204d3878 -> :sswitch_0
        0x36b091de -> :sswitch_4
        0x73164160 -> :sswitch_1
    .end sparse-switch
.end method
