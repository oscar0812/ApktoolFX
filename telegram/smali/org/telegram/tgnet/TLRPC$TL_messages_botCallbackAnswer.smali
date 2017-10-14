.class public Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_botCallbackAnswer"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public alert:Z

.field public cache_time:I

.field public flags:I

.field public has_url:Z

.field public message:Ljava/lang/String;

.field public native_ui:Z

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1088
    const v0, 0x36585ea4

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1087
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 1099
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->constructor:I

    if-eq v1, p1, :cond_1

    .line 1100
    if-eqz p2, :cond_0

    .line 1101
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_messages_botCallbackAnswer"

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

    .line 1103
    :cond_0
    const/4 v0, 0x0

    .line 1108
    :goto_0
    return-object v0

    .line 1106
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;-><init>()V

    .line 1107
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

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

    .line 1112
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    .line 1113
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->alert:Z

    .line 1114
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->has_url:Z

    .line 1115
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->native_ui:Z

    .line 1116
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1117
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->message:Ljava/lang/String;

    .line 1119
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 1120
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->url:Ljava/lang/String;

    .line 1122
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->cache_time:I

    .line 1123
    return-void

    :cond_2
    move v0, v2

    .line 1113
    goto :goto_0

    :cond_3
    move v0, v2

    .line 1114
    goto :goto_1

    :cond_4
    move v1, v2

    .line 1115
    goto :goto_2
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 1126
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1127
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->alert:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    .line 1128
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->has_url:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    or-int/lit8 v0, v0, 0x8

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    .line 1129
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->native_ui:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    .line 1130
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1131
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 1134
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 1135
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 1137
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->cache_time:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1138
    return-void

    .line 1127
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_0

    .line 1128
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, -0x9

    goto :goto_1

    .line 1129
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_2
.end method
