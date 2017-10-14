.class public Lorg/telegram/tgnet/TLRPC$TL_auth_exportAuthorization;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_auth_exportAuthorization"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public dc_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23487
    const v0, -0x1a400033

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportAuthorization;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23486
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
    .line 23492
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_auth_exportedAuthorization;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_auth_exportedAuthorization;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 23496
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportAuthorization;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23497
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportAuthorization;->dc_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23498
    return-void
.end method
