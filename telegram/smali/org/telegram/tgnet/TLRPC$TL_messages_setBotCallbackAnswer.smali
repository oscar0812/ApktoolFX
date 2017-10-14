.class public Lorg/telegram/tgnet/TLRPC$TL_messages_setBotCallbackAnswer;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_setBotCallbackAnswer"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public alert:Z

.field public cache_time:I

.field public flags:I

.field public message:Ljava/lang/String;

.field public query_id:J

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26083
    const v0, -0x2a70ecf6

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_setBotCallbackAnswer;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26082
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 26093
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 26097
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_setBotCallbackAnswer;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26098
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setBotCallbackAnswer;->alert:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setBotCallbackAnswer;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setBotCallbackAnswer;->flags:I

    .line 26099
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setBotCallbackAnswer;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26100
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setBotCallbackAnswer;->query_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 26101
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setBotCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 26102
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setBotCallbackAnswer;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 26104
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setBotCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 26105
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setBotCallbackAnswer;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 26107
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setBotCallbackAnswer;->cache_time:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26108
    return-void

    .line 26098
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setBotCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_0
.end method
