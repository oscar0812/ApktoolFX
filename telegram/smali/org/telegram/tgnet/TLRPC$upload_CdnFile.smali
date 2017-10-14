.class public abstract Lorg/telegram/tgnet/TLRPC$upload_CdnFile;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "upload_CdnFile"
.end annotation


# instance fields
.field public bytes:Lorg/telegram/tgnet/NativeByteBuffer;

.field public request_token:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29850
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$upload_CdnFile;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 29855
    const/4 v0, 0x0

    .line 29856
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$upload_CdnFile;
    sparse-switch p1, :sswitch_data_0

    .line 29864
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 29865
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in upload_CdnFile"

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

    .line 29858
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$upload_CdnFile;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;-><init>()V

    .line 29859
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$upload_CdnFile;
    goto :goto_0

    .line 29861
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFileReuploadNeeded;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$upload_CdnFile;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFileReuploadNeeded;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$upload_CdnFile;
    goto :goto_0

    .line 29867
    :cond_0
    if-eqz v0, :cond_1

    .line 29868
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$upload_CdnFile;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 29870
    :cond_1
    return-object v0

    .line 29856
    nop

    :sswitch_data_0
    .sparse-switch
        -0x566035b1 -> :sswitch_0
        -0x11571b92 -> :sswitch_1
    .end sparse-switch
.end method
