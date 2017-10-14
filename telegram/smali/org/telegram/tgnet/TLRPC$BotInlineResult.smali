.class public abstract Lorg/telegram/tgnet/TLRPC$BotInlineResult;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BotInlineResult"
.end annotation


# instance fields
.field public content_type:Ljava/lang/String;

.field public content_url:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field public duration:I

.field public flags:I

.field public h:I

.field public id:Ljava/lang/String;

.field public photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public query_id:J

.field public send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

.field public thumb_url:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public w:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4336
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 4355
    const/4 v0, 0x0

    .line 4356
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    sparse-switch p1, :sswitch_data_0

    .line 4364
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 4365
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in BotInlineResult"

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

    .line 4358
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;-><init>()V

    .line 4359
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    goto :goto_0

    .line 4361
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    goto :goto_0

    .line 4367
    :cond_0
    if-eqz v0, :cond_1

    .line 4368
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 4370
    :cond_1
    return-object v0

    .line 4356
    nop

    :sswitch_data_0
    .sparse-switch
        -0x64145147 -> :sswitch_0
        0x17db940b -> :sswitch_1
    .end sparse-switch
.end method
