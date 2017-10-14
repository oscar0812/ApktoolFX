.class public Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;
.super Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_replyKeyboardHide"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5325
    const v0, -0x5fc1a47b

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5324
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 5329
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;->flags:I

    .line 5330
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;->selective:Z

    .line 5331
    return-void

    .line 5330
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 5334
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5335
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;->selective:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;->flags:I

    or-int/lit8 v0, v0, 0x4

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;->flags:I

    .line 5336
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5337
    return-void

    .line 5335
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;->flags:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_0
.end method
