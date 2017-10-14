.class public Lorg/telegram/tgnet/TLRPC$TL_geochats_getRecents;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_geochats_getRecents"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public limit:I

.field public offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24859
    const v0, -0x1ebd8191

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_geochats_getRecents;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24858
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
    .line 24865
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$geochats_Messages;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$geochats_Messages;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 24869
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_geochats_getRecents;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24870
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_getRecents;->offset:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24871
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_getRecents;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24872
    return-void
.end method
