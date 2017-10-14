.class public Lorg/telegram/tgnet/SerializedData;
.super Lorg/telegram/tgnet/AbstractSerializedData;
.source "SerializedData.java"


# instance fields
.field private in:Ljava/io/DataInputStream;

.field private inbuf:Ljava/io/ByteArrayInputStream;

.field protected isOut:Z

.field private justCalc:Z

.field private len:I

.field private out:Ljava/io/DataOutputStream;

.field private outbuf:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/telegram/tgnet/AbstractSerializedData;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->isOut:Z

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    .line 30
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/SerializedData;->outbuf:Ljava/io/ByteArrayOutputStream;

    .line 31
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->outbuf:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/telegram/tgnet/AbstractSerializedData;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->isOut:Z

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    .line 44
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/tgnet/SerializedData;->outbuf:Ljava/io/ByteArrayOutputStream;

    .line 45
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->outbuf:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-direct {p0}, Lorg/telegram/tgnet/AbstractSerializedData;-><init>()V

    .line 21
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/tgnet/SerializedData;->isOut:Z

    .line 26
    iput-boolean v4, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    .line 91
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 92
    .local v1, "is":Ljava/io/FileInputStream;
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v0, v2, [B

    .line 93
    .local v0, "data":[B
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 94
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 96
    iput-boolean v4, p0, Lorg/telegram/tgnet/SerializedData;->isOut:Z

    .line 97
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v2, p0, Lorg/telegram/tgnet/SerializedData;->inbuf:Ljava/io/ByteArrayInputStream;

    .line 98
    new-instance v2, Ljava/io/DataInputStream;

    iget-object v3, p0, Lorg/telegram/tgnet/SerializedData;->inbuf:Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    .line 99
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "calculate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Lorg/telegram/tgnet/AbstractSerializedData;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->isOut:Z

    .line 26
    iput-boolean v2, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/SerializedData;->outbuf:Ljava/io/ByteArrayOutputStream;

    .line 37
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->outbuf:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    .line 39
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    .line 40
    iput v2, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    .line 41
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Lorg/telegram/tgnet/AbstractSerializedData;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->isOut:Z

    .line 26
    iput-boolean v2, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    .line 49
    iput-boolean v2, p0, Lorg/telegram/tgnet/SerializedData;->isOut:Z

    .line 50
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/tgnet/SerializedData;->inbuf:Ljava/io/ByteArrayInputStream;

    .line 51
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->inbuf:Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    .line 52
    iput v2, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    .line 53
    return-void
.end method

.method private writeInt32(ILjava/io/DataOutputStream;)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "out"    # Ljava/io/DataOutputStream;

    .prologue
    .line 111
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 112
    mul-int/lit8 v2, v1, 0x8

    shr-int v2, p1, v2

    :try_start_0
    invoke-virtual {p2, v2}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "write int32 error"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private writeInt64(JLjava/io/DataOutputStream;)V
    .locals 5
    .param p1, "x"    # J
    .param p3, "out"    # Ljava/io/DataOutputStream;

    .prologue
    .line 129
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 130
    mul-int/lit8 v2, v1, 0x8

    shr-long v2, p1, v2

    long-to-int v2, v2

    :try_start_0
    invoke-virtual {p3, v2}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "write int64 error"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->inbuf:Ljava/io/ByteArrayInputStream;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->inbuf:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/tgnet/SerializedData;->inbuf:Ljava/io/ByteArrayInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 67
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->outbuf:Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_2

    .line 74
    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->outbuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 75
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/tgnet/SerializedData;->outbuf:Ljava/io/ByteArrayOutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 81
    :cond_2
    :goto_2
    :try_start_3
    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_3

    .line 82
    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 83
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 88
    :cond_3
    :goto_3
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 70
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 78
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 86
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v0, :cond_1

    .line 289
    iget-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->isOut:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->outbuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 291
    :goto_0
    return v0

    .line 289
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->inbuf:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    goto :goto_0

    .line 291
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    goto :goto_0
.end method

.method public readBool(Z)Z
    .locals 3
    .param p1, "exception"    # Z

    .prologue
    const/4 v1, 0x0

    .line 326
    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v0

    .line 327
    .local v0, "consructor":I
    const v2, -0x668d8a4b

    if-ne v0, v2, :cond_1

    .line 328
    const/4 v1, 0x1

    .line 337
    :cond_0
    :goto_0
    return v1

    .line 329
    :cond_1
    const v2, -0x438668c9

    if-eq v0, v2, :cond_0

    .line 332
    if-eqz p1, :cond_2

    .line 333
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Not bool value!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    :cond_2
    const-string/jumbo v2, "Not bool value!"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public readByteArray(Z)[B
    .locals 7
    .param p1, "exception"    # Z

    .prologue
    .line 391
    const/4 v4, 0x1

    .line 392
    .local v4, "sl":I
    :try_start_0
    iget-object v5, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v3

    .line 393
    .local v3, "l":I
    iget v5, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    .line 394
    const/16 v5, 0xfe

    if-lt v3, v5, :cond_0

    .line 395
    iget-object v5, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->read()I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->read()I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    or-int v3, v5, v6

    .line 396
    iget v5, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v5, v5, 0x3

    iput v5, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    .line 397
    const/4 v4, 0x4

    .line 399
    :cond_0
    new-array v0, v3, [B

    .line 400
    .local v0, "b":[B
    iget-object v5, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v5, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 401
    iget v5, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    .line 402
    move v2, v4

    .line 403
    .local v2, "i":I
    :goto_0
    add-int v5, v3, v2

    rem-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    .line 404
    iget-object v5, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    .line 405
    iget v5, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/telegram/tgnet/SerializedData;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 409
    .end local v0    # "b":[B
    .end local v2    # "i":I
    .end local v3    # "l":I
    :catch_0
    move-exception v1

    .line 410
    .local v1, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_1

    .line 411
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "read byte array error"

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 413
    :cond_1
    const-string/jumbo v5, "read byte array error"

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 416
    const/4 v0, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v0
.end method

.method public readByteBuffer(Z)Lorg/telegram/tgnet/NativeByteBuffer;
    .locals 1
    .param p1, "exception"    # Z

    .prologue
    .line 475
    const/4 v0, 0x0

    return-object v0
.end method

.method public readBytes([BZ)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "exception"    # Z

    .prologue
    .line 342
    :try_start_0
    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1, p1}, Ljava/io/DataInputStream;->read([B)I

    .line 343
    iget v1, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    array-length v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/tgnet/SerializedData;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p2, :cond_0

    .line 346
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "read bytes error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 348
    :cond_0
    const-string/jumbo v1, "read bytes error"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public readData(IZ)[B
    .locals 1
    .param p1, "count"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 354
    new-array v0, p1, [B

    .line 355
    .local v0, "arr":[B
    invoke-virtual {p0, v0, p2}, Lorg/telegram/tgnet/SerializedData;->readBytes([BZ)V

    .line 356
    return-object v0
.end method

.method public readDouble(Z)D
    .locals 4
    .param p1, "exception"    # Z

    .prologue
    .line 421
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/SerializedData;->readInt64(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 429
    :goto_0
    return-wide v2

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_0

    .line 424
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "read double error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 426
    :cond_0
    const-string/jumbo v1, "read double error"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 429
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public readInt32(Z)I
    .locals 5
    .param p1, "exception"    # Z

    .prologue
    .line 434
    const/4 v1, 0x0

    .line 435
    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 436
    :try_start_0
    iget-object v3, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v3

    mul-int/lit8 v4, v2, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 437
    iget v3, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/telegram/tgnet/SerializedData;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_0

    .line 442
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "read int32 error"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 444
    :cond_0
    const-string/jumbo v3, "read int32 error"

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 447
    const/4 v1, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    :cond_1
    return v1
.end method

.method public readInt64(Z)J
    .locals 7
    .param p1, "exception"    # Z

    .prologue
    .line 452
    const-wide/16 v2, 0x0

    .line 453
    .local v2, "i":J
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    const/16 v4, 0x8

    if-ge v1, v4, :cond_1

    .line 454
    :try_start_0
    iget-object v4, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v4

    int-to-long v4, v4

    mul-int/lit8 v6, v1, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 455
    iget v4, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/telegram/tgnet/SerializedData;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_0

    .line 460
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "read int64 error"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 462
    :cond_0
    const-string/jumbo v4, "read int64 error"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 465
    const-wide/16 v2, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "i":J
    :cond_1
    return-wide v2
.end method

.method public readString(Z)Ljava/lang/String;
    .locals 7
    .param p1, "exception"    # Z

    .prologue
    .line 361
    const/4 v4, 0x1

    .line 362
    .local v4, "sl":I
    :try_start_0
    iget-object v5, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v3

    .line 363
    .local v3, "l":I
    iget v5, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    .line 364
    const/16 v5, 0xfe

    if-lt v3, v5, :cond_0

    .line 365
    iget-object v5, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->read()I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->read()I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    or-int v3, v5, v6

    .line 366
    iget v5, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v5, v5, 0x3

    iput v5, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    .line 367
    const/4 v4, 0x4

    .line 369
    :cond_0
    new-array v0, v3, [B

    .line 370
    .local v0, "b":[B
    iget-object v5, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v5, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 371
    iget v5, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    .line 372
    move v2, v4

    .line 373
    .local v2, "i":I
    :goto_0
    add-int v5, v3, v2

    rem-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1

    .line 374
    iget-object v5, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    .line 375
    iget v5, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 378
    :cond_1
    new-instance v5, Ljava/lang/String;

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    .end local v0    # "b":[B
    .end local v2    # "i":I
    .end local v3    # "l":I
    :goto_1
    return-object v5

    .line 379
    :catch_0
    move-exception v1

    .line 380
    .local v1, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_2

    .line 381
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "read string error"

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 383
    :cond_2
    const-string/jumbo v5, "read string error"

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 386
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected set([B)V
    .locals 2
    .param p1, "newData"    # [B

    .prologue
    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->isOut:Z

    .line 296
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/tgnet/SerializedData;->inbuf:Ljava/io/ByteArrayInputStream;

    .line 297
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->inbuf:Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    .line 298
    return-void
.end method

.method public skip(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 305
    if-nez p1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v1, :cond_2

    .line 309
    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    if-eqz v1, :cond_0

    .line 311
    :try_start_0
    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1, p1}, Ljava/io/DataInputStream;->skipBytes(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 317
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget v1, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    goto :goto_0
.end method

.method public toByteArray()[B
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->outbuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public writeBool(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 138
    iget-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v0, :cond_1

    .line 139
    if-eqz p1, :cond_0

    .line 140
    const v0, -0x668d8a4b

    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 147
    :goto_0
    return-void

    .line 142
    :cond_0
    const v0, -0x438668c9

    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    goto :goto_0

    .line 145
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    goto :goto_0
.end method

.method public writeByte(B)V
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 187
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v1, :cond_0

    .line 188
    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 195
    :goto_0
    return-void

    .line 190
    :cond_0
    iget v1, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/tgnet/SerializedData;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "write byte error"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeByte(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 175
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v1, :cond_0

    .line 176
    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    int-to-byte v2, p1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 183
    :goto_0
    return-void

    .line 178
    :cond_0
    iget v1, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/tgnet/SerializedData;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "write byte error"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeByteArray([B)V
    .locals 5
    .param p1, "b"    # [B

    .prologue
    const/16 v4, 0xfd

    .line 199
    :try_start_0
    array-length v2, p1

    if-gt v2, v4, :cond_2

    .line 200
    iget-boolean v2, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v2, :cond_0

    .line 201
    iget-object v2, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 215
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v2, :cond_4

    .line 216
    iget-object v2, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 220
    :goto_1
    array-length v2, p1

    if-gt v2, v4, :cond_5

    const/4 v1, 0x1

    .line 221
    .local v1, "i":I
    :goto_2
    array-length v2, p1

    add-int/2addr v2, v1

    rem-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 222
    iget-boolean v2, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v2, :cond_6

    .line 223
    iget-object v2, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 227
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 203
    .end local v1    # "i":I
    :cond_0
    iget v2, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/tgnet/SerializedData;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "write byte array error"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 232
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 206
    :cond_2
    :try_start_1
    iget-boolean v2, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v2, :cond_3

    .line 207
    iget-object v2, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    const/16 v3, 0xfe

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 208
    iget-object v2, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 209
    iget-object v2, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    array-length v3, p1

    shr-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 210
    iget-object v2, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    array-length v3, p1

    shr-int/lit8 v3, v3, 0x10

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_0

    .line 212
    :cond_3
    iget v2, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    goto :goto_0

    .line 218
    :cond_4
    iget v2, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    array-length v3, p1

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    goto :goto_1

    .line 220
    :cond_5
    const/4 v1, 0x4

    goto :goto_2

    .line 225
    .restart local v1    # "i":I
    :cond_6
    iget v2, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/tgnet/SerializedData;->len:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public writeByteArray([BII)V
    .locals 5
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    const/16 v4, 0xfd

    .line 244
    if-gt p3, v4, :cond_2

    .line 245
    :try_start_0
    iget-boolean v2, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v2, :cond_0

    .line 246
    iget-object v2, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->write(I)V

    .line 260
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v2, :cond_4

    .line 261
    iget-object v2, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 265
    :goto_1
    if-gt p3, v4, :cond_5

    const/4 v1, 0x1

    .line 266
    .local v1, "i":I
    :goto_2
    add-int v2, p3, v1

    rem-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 267
    iget-boolean v2, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v2, :cond_6

    .line 268
    iget-object v2, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 272
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 248
    .end local v1    # "i":I
    :cond_0
    iget v2, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/tgnet/SerializedData;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "write byte array error"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 277
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 251
    :cond_2
    :try_start_1
    iget-boolean v2, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v2, :cond_3

    .line 252
    iget-object v2, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    const/16 v3, 0xfe

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 253
    iget-object v2, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->write(I)V

    .line 254
    iget-object v2, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    shr-int/lit8 v3, p3, 0x8

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 255
    iget-object v2, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    shr-int/lit8 v3, p3, 0x10

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_0

    .line 257
    :cond_3
    iget v2, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    goto :goto_0

    .line 263
    :cond_4
    iget v2, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/2addr v2, p3

    iput v2, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    goto :goto_1

    .line 265
    :cond_5
    const/4 v1, 0x4

    goto :goto_2

    .line 270
    .restart local v1    # "i":I
    :cond_6
    iget v2, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/tgnet/SerializedData;->len:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public writeByteBuffer(Lorg/telegram/tgnet/NativeByteBuffer;)V
    .locals 0
    .param p1, "buffer"    # Lorg/telegram/tgnet/NativeByteBuffer;

    .prologue
    .line 471
    return-void
.end method

.method public writeBytes([B)V
    .locals 3
    .param p1, "b"    # [B

    .prologue
    .line 151
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v1, :cond_0

    .line 152
    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 159
    :goto_0
    return-void

    .line 154
    :cond_0
    iget v1, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    array-length v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/tgnet/SerializedData;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "write raw error"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeBytes([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 163
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v1, :cond_0

    .line 164
    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 171
    :goto_0
    return-void

    .line 166
    :cond_0
    iget v1, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/telegram/tgnet/SerializedData;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "write bytes error"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeDouble(D)V
    .locals 5
    .param p1, "d"    # D

    .prologue
    .line 281
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/telegram/tgnet/SerializedData;->writeInt64(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "write double error"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeInt32(I)V
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 102
    iget-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    invoke-direct {p0, p1, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(ILjava/io/DataOutputStream;)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    goto :goto_0
.end method

.method public writeInt64(J)V
    .locals 1
    .param p1, "i"    # J

    .prologue
    .line 120
    iget-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt64(JLjava/io/DataOutputStream;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 236
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/tgnet/SerializedData;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "write string error"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
