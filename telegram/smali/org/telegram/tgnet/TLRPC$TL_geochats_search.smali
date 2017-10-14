.class public Lorg/telegram/tgnet/TLRPC$TL_geochats_search;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_geochats_search"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

.field public limit:I

.field public max_date:I

.field public max_id:I

.field public min_date:I

.field public offset:I

.field public peer:Lorg/telegram/tgnet/TLRPC$TL_inputGeoChat;

.field public q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24942
    const v0, -0x30323bb3

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_geochats_search;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24941
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
    .line 24954
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$geochats_Messages;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$geochats_Messages;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 24958
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_geochats_search;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24959
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_search;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputGeoChat;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoChat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 24960
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_search;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 24961
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$MessagesFilter;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 24962
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_search;->min_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24963
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_search;->max_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24964
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_search;->offset:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24965
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_search;->max_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24966
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_search;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24967
    return-void
.end method
