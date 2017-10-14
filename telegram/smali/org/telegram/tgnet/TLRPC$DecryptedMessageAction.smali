.class public abstract Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DecryptedMessageAction"
.end annotation


# instance fields
.field public action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

.field public end_seq_no:I

.field public exchange_id:J

.field public g_a:[B

.field public g_b:[B

.field public key_fingerprint:J

.field public layer:I

.field public random_ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public start_seq_no:I

.field public ttl_seconds:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15510
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 15513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 15523
    const/4 v0, 0x0

    .line 15524
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    sparse-switch p1, :sswitch_data_0

    .line 15565
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 15566
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in DecryptedMessageAction"

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

    .line 15526
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;-><init>()V

    .line 15527
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_0

    .line 15529
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;-><init>()V

    .line 15530
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_0

    .line 15532
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;-><init>()V

    .line 15533
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_0

    .line 15535
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionCommitKey;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionCommitKey;-><init>()V

    .line 15536
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_0

    .line 15538
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAbortKey;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAbortKey;-><init>()V

    .line 15539
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_0

    .line 15541
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionFlushHistory;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionFlushHistory;-><init>()V

    .line 15542
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_0

    .line 15544
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionTyping;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionTyping;-><init>()V

    .line 15545
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_0

    .line 15547
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAcceptKey;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAcceptKey;-><init>()V

    .line 15548
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_0

    .line 15550
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionReadMessages;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionReadMessages;-><init>()V

    .line 15551
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_0

    .line 15553
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionResend;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionResend;-><init>()V

    .line 15554
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_0

    .line 15556
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionRequestKey;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionRequestKey;-><init>()V

    .line 15557
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_0

    .line 15559
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;-><init>()V

    .line 15560
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_0

    .line 15562
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNoop;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNoop;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_0

    .line 15568
    :cond_0
    if-eqz v0, :cond_1

    .line 15569
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 15571
    :cond_1
    return-object v0

    .line 15524
    nop

    :sswitch_data_0
    .sparse-switch
        -0x753e0b8b -> :sswitch_b
        -0x5e8cc514 -> :sswitch_0
        -0x57d0229d -> :sswitch_c
        -0x334d89bf -> :sswitch_6
        -0x22fa1395 -> :sswitch_4
        -0x13d1f465 -> :sswitch_3
        -0xcfb777d -> :sswitch_1
        -0xc369ee5 -> :sswitch_a
        0xc4f40be -> :sswitch_8
        0x511110b0 -> :sswitch_9
        0x65614304 -> :sswitch_2
        0x6719e45c -> :sswitch_5
        0x6fe1735b -> :sswitch_7
    .end sparse-switch
.end method
