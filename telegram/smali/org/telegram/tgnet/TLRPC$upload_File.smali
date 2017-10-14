.class public abstract Lorg/telegram/tgnet/TLRPC$upload_File;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "upload_File"
.end annotation


# instance fields
.field public bytes:Lorg/telegram/tgnet/NativeByteBuffer;

.field public cdn_file_hashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;",
            ">;"
        }
    .end annotation
.end field

.field public dc_id:I

.field public encryption_iv:[B

.field public encryption_key:[B

.field public file_token:[B

.field public mtime:I

.field public type:Lorg/telegram/tgnet/TLRPC$storage_FileType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29820
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 29828
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$upload_File;->cdn_file_hashes:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$upload_File;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 29831
    const/4 v0, 0x0

    .line 29832
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$upload_File;
    sparse-switch p1, :sswitch_data_0

    .line 29840
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 29841
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in upload_File"

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

    .line 29834
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$upload_File;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;-><init>()V

    .line 29835
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$upload_File;
    goto :goto_0

    .line 29837
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$upload_File;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$upload_File;
    goto :goto_0

    .line 29843
    :cond_0
    if-eqz v0, :cond_1

    .line 29844
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$upload_File;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 29846
    :cond_1
    return-object v0

    .line 29832
    nop

    :sswitch_data_0
    .sparse-switch
        -0x15ad01a6 -> :sswitch_1
        0x96a18d5 -> :sswitch_0
    .end sparse-switch
.end method
