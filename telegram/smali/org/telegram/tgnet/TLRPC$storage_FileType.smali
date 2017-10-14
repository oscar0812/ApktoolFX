.class public abstract Lorg/telegram/tgnet/TLRPC$storage_FileType;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "storage_FileType"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20483
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$storage_FileType;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 20486
    const/4 v0, 0x0

    .line 20487
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$storage_FileType;
    sparse-switch p1, :sswitch_data_0

    .line 20519
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 20520
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in storage_FileType"

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

    .line 20489
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storage_fileUnknown;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$storage_FileType;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storage_fileUnknown;-><init>()V

    .line 20490
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$storage_FileType;
    goto :goto_0

    .line 20492
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storage_fileMp4;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$storage_FileType;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storage_fileMp4;-><init>()V

    .line 20493
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$storage_FileType;
    goto :goto_0

    .line 20495
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storage_fileWebp;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$storage_FileType;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storage_fileWebp;-><init>()V

    .line 20496
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$storage_FileType;
    goto :goto_0

    .line 20498
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storage_filePng;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$storage_FileType;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storage_filePng;-><init>()V

    .line 20499
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$storage_FileType;
    goto :goto_0

    .line 20501
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storage_fileGif;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$storage_FileType;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storage_fileGif;-><init>()V

    .line 20502
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$storage_FileType;
    goto :goto_0

    .line 20504
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storage_filePdf;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$storage_FileType;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storage_filePdf;-><init>()V

    .line 20505
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$storage_FileType;
    goto :goto_0

    .line 20507
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storage_fileMp3;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$storage_FileType;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storage_fileMp3;-><init>()V

    .line 20508
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$storage_FileType;
    goto :goto_0

    .line 20510
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storage_fileJpeg;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$storage_FileType;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storage_fileJpeg;-><init>()V

    .line 20511
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$storage_FileType;
    goto :goto_0

    .line 20513
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storage_fileMov;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$storage_FileType;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storage_fileMov;-><init>()V

    .line 20514
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$storage_FileType;
    goto :goto_0

    .line 20516
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storage_filePartial;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$storage_FileType;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storage_filePartial;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$storage_FileType;
    goto :goto_0

    .line 20522
    :cond_0
    if-eqz v0, :cond_1

    .line 20523
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$storage_FileType;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 20525
    :cond_1
    return-object v0

    .line 20487
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5569c4fb -> :sswitch_0
        -0x51e1af73 -> :sswitch_5
        -0x4c315f1c -> :sswitch_1
        -0x351e5521 -> :sswitch_4
        0x7efe0e -> :sswitch_7
        0xa4f63c0 -> :sswitch_3
        0x1081464c -> :sswitch_2
        0x40bc6f52 -> :sswitch_9
        0x4b09ebbc -> :sswitch_8
        0x528a0677 -> :sswitch_6
    .end sparse-switch
.end method
