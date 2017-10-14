.class public Lorg/telegram/tgnet/TLRPC$TL_chat_old2;
.super Lorg/telegram/tgnet/TLRPC$TL_chat;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_chat_old2"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19897
    const v0, 0x7312bc48

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19896
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_chat;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19900
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    .line 19901
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->creator:Z

    .line 19902
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->kicked:Z

    .line 19903
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->left:Z

    .line 19904
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->admins_enabled:Z

    .line 19905
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->admin:Z

    .line 19906
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->deactivated:Z

    .line 19907
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->id:I

    .line 19908
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->title:Ljava/lang/String;

    .line 19909
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 19910
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->participants_count:I

    .line 19911
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->date:I

    .line 19912
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->version:I

    .line 19913
    return-void

    :cond_0
    move v0, v2

    .line 19901
    goto :goto_0

    :cond_1
    move v0, v2

    .line 19902
    goto :goto_1

    :cond_2
    move v0, v2

    .line 19903
    goto :goto_2

    :cond_3
    move v0, v2

    .line 19904
    goto :goto_3

    :cond_4
    move v0, v2

    .line 19905
    goto :goto_4

    :cond_5
    move v1, v2

    .line 19906
    goto :goto_5
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 19916
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19917
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->creator:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    .line 19918
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->kicked:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    .line 19919
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->left:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    or-int/lit8 v0, v0, 0x4

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    .line 19920
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->admins_enabled:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    or-int/lit8 v0, v0, 0x8

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    .line 19921
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->admin:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    .line 19922
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->deactivated:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    .line 19923
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19924
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19925
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 19926
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 19927
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->participants_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19928
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19929
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19930
    return-void

    .line 19917
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 19918
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_1

    .line 19919
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_2

    .line 19920
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, -0x9

    goto :goto_3

    .line 19921
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_4

    .line 19922
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_5
.end method
