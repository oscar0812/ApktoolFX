.class public abstract Lorg/telegram/tgnet/TLRPC$messages_BotResults;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "messages_BotResults"
.end annotation


# instance fields
.field public cache_time:I

.field public flags:I

.field public gallery:Z

.field public next_offset:Ljava/lang/String;

.field public query_id:J

.field public results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$BotInlineResult;",
            ">;"
        }
    .end annotation
.end field

.field public switch_pm:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

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
    .line 17260
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 17266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    .line 17268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_BotResults;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 17271
    const/4 v0, 0x0

    .line 17272
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$messages_BotResults;
    sparse-switch p1, :sswitch_data_0

    .line 17280
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 17281
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in messages_BotResults"

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

    .line 17274
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults_layer71;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_BotResults;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults_layer71;-><init>()V

    .line 17275
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_BotResults;
    goto :goto_0

    .line 17277
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_BotResults;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_BotResults;
    goto :goto_0

    .line 17283
    :cond_0
    if-eqz v0, :cond_1

    .line 17284
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 17286
    :cond_1
    return-object v0

    .line 17272
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b8357b8 -> :sswitch_1
        -0x332ca9c3 -> :sswitch_0
    .end sparse-switch
.end method
