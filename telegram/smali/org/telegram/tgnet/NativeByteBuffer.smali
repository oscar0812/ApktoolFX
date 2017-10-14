.class public Lorg/telegram/tgnet/NativeByteBuffer;
.super Lorg/telegram/tgnet/AbstractSerializedData;
.source "NativeByteBuffer.java"


# static fields
.field private static final addressWrapper:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/telegram/tgnet/NativeByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected address:I

.field public buffer:Ljava/nio/ByteBuffer;

.field private justCalc:Z

.field private len:I

.field public reused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer$1;

    invoke-direct {v0}, Lorg/telegram/tgnet/NativeByteBuffer$1;-><init>()V

    sput-object v0, Lorg/telegram/tgnet/NativeByteBuffer;->addressWrapper:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/telegram/tgnet/AbstractSerializedData;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    .line 47
    if-ltz p1, :cond_1

    .line 48
    invoke-static {p1}, Lorg/telegram/tgnet/NativeByteBuffer;->native_getFreeBuffer(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->address:I

    .line 49
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->address:I

    if-eqz v0, :cond_0

    .line 50
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->address:I

    invoke-static {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->native_getJavaByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 51
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 52
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 53
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 58
    :cond_0
    return-void

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "invalid NativeByteBuffer size"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(IZ)V
    .locals 1
    .param p1, "address"    # I
    .param p2, "wrap"    # Z

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/telegram/tgnet/AbstractSerializedData;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    .line 44
    return-void
.end method

.method synthetic constructor <init>(IZLorg/telegram/tgnet/NativeByteBuffer$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/telegram/tgnet/NativeByteBuffer$1;

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "calculate"    # Z

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/telegram/tgnet/AbstractSerializedData;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    .line 61
    iput-boolean p1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    .line 62
    return-void
.end method

.method public static native native_getFreeBuffer(I)I
.end method

.method public static native native_getJavaByteBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public static native native_limit(I)I
.end method

.method public static native native_position(I)I
.end method

.method public static native native_reuse(I)V
.end method

.method public static wrap(I)Lorg/telegram/tgnet/NativeByteBuffer;
    .locals 4
    .param p0, "address"    # I

    .prologue
    .line 24
    sget-object v2, Lorg/telegram/tgnet/NativeByteBuffer;->addressWrapper:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/NativeByteBuffer;

    .line 25
    .local v1, "result":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz p0, :cond_2

    .line 26
    iget-boolean v2, v1, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    if-nez v2, :cond_0

    .line 27
    const-string/jumbo v2, "forgot to reuse?"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 29
    :cond_0
    iput p0, v1, Lorg/telegram/tgnet/NativeByteBuffer;->address:I

    .line 30
    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    .line 31
    invoke-static {p0}, Lorg/telegram/tgnet/NativeByteBuffer;->native_getJavaByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 32
    iget-object v2, v1, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p0}, Lorg/telegram/tgnet/NativeByteBuffer;->native_limit(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 33
    invoke-static {p0}, Lorg/telegram/tgnet/NativeByteBuffer;->native_position(I)I

    move-result v0

    .line 34
    .local v0, "position":I
    iget-object v2, v1, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-gt v0, v2, :cond_1

    .line 35
    iget-object v2, v1, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 37
    :cond_1
    iget-object v2, v1, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 39
    .end local v0    # "position":I
    :cond_2
    return-object v1
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public compact()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 98
    return-void
.end method

.method public getIntFromByte(B)I
    .locals 0
    .param p1, "b"    # B

    .prologue
    .line 319
    if-ltz p1, :cond_0

    .end local p1    # "b":B
    :goto_0
    return p1

    .restart local p1    # "b":B
    :cond_0
    add-int/lit16 p1, p1, 0x100

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public hasRemaining()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 326
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    goto :goto_0
.end method

.method public limit()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public limit(I)V
    .locals 1
    .param p1, "limit"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 82
    return-void
.end method

.method public position()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public position(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 70
    return-void
.end method

.method public put(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buff"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 86
    return-void
.end method

.method public readBool(Z)Z
    .locals 3
    .param p1, "exception"    # Z

    .prologue
    const/4 v1, 0x0

    .line 358
    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v0

    .line 359
    .local v0, "consructor":I
    const v2, -0x668d8a4b

    if-ne v0, v2, :cond_1

    .line 360
    const/4 v1, 0x1

    .line 369
    :cond_0
    :goto_0
    return v1

    .line 361
    :cond_1
    const v2, -0x438668c9

    if-eq v0, v2, :cond_0

    .line 364
    if-eqz p1, :cond_2

    .line 365
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Not bool value!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    :cond_2
    const-string/jumbo v2, "Not bool value!"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public readByteArray(Z)[B
    .locals 7
    .param p1, "exception"    # Z

    .prologue
    .line 431
    const/4 v4, 0x1

    .line 432
    .local v4, "sl":I
    :try_start_0
    iget-object v5, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    invoke-virtual {p0, v5}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v3

    .line 433
    .local v3, "l":I
    const/16 v5, 0xfe

    if-lt v3, v5, :cond_0

    .line 434
    iget-object v5, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    invoke-virtual {p0, v5}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    invoke-virtual {p0, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    invoke-virtual {p0, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    or-int v3, v5, v6

    .line 435
    const/4 v4, 0x4

    .line 437
    :cond_0
    new-array v0, v3, [B

    .line 438
    .local v0, "b":[B
    iget-object v5, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 439
    move v2, v4

    .line 440
    .local v2, "i":I
    :goto_0
    add-int v5, v3, v2

    rem-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    .line 441
    iget-object v5, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    .end local v0    # "b":[B
    .end local v2    # "i":I
    .end local v3    # "l":I
    :catch_0
    move-exception v1

    .line 446
    .local v1, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_1

    .line 447
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "read byte array error"

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 449
    :cond_1
    const-string/jumbo v5, "read byte array error"

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 452
    const/4 v5, 0x0

    new-array v0, v5, [B

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v0
.end method

.method public readByteBuffer(Z)Lorg/telegram/tgnet/NativeByteBuffer;
    .locals 8
    .param p1, "exception"    # Z

    .prologue
    .line 457
    const/4 v5, 0x1

    .line 458
    .local v5, "sl":I
    :try_start_0
    iget-object v6, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    invoke-virtual {p0, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v3

    .line 459
    .local v3, "l":I
    const/16 v6, 0xfe

    if-lt v3, v6, :cond_0

    .line 460
    iget-object v6, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    invoke-virtual {p0, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v6

    iget-object v7, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    invoke-virtual {p0, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    invoke-virtual {p0, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v7

    shl-int/lit8 v7, v7, 0x10

    or-int v3, v6, v7

    .line 461
    const/4 v5, 0x4

    .line 463
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-direct {v0, v3}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 464
    .local v0, "b":Lorg/telegram/tgnet/NativeByteBuffer;
    iget-object v6, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 465
    .local v4, "old":I
    iget-object v6, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 466
    iget-object v6, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 467
    iget-object v6, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 468
    iget-object v6, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 469
    move v2, v5

    .line 470
    .local v2, "i":I
    :goto_0
    add-int v6, v3, v2

    rem-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_2

    .line 471
    iget-object v6, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 475
    .end local v0    # "b":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "i":I
    .end local v3    # "l":I
    .end local v4    # "old":I
    :catch_0
    move-exception v1

    .line 476
    .local v1, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_1

    .line 477
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "read byte array error"

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 479
    :cond_1
    const-string/jumbo v6, "read byte array error"

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 482
    const/4 v0, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v0
.end method

.method public readBytes([BZ)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "exception"    # Z

    .prologue
    .line 387
    :try_start_0
    iget-object v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p2, :cond_0

    .line 390
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "read raw error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 392
    :cond_0
    const-string/jumbo v1, "read raw error"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public readData(IZ)[B
    .locals 1
    .param p1, "count"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 398
    new-array v0, p1, [B

    .line 399
    .local v0, "arr":[B
    invoke-virtual {p0, v0, p2}, Lorg/telegram/tgnet/NativeByteBuffer;->readBytes([BZ)V

    .line 400
    return-object v0
.end method

.method public readDouble(Z)D
    .locals 4
    .param p1, "exception"    # Z

    .prologue
    .line 487
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt64(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 495
    :goto_0
    return-wide v2

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_0

    .line 490
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "read double error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 492
    :cond_0
    const-string/jumbo v1, "read double error"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 495
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public readInt32(Z)I
    .locals 3
    .param p1, "exception"    # Z

    .prologue
    .line 346
    :try_start_0
    iget-object v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 354
    :goto_0
    return v1

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_0

    .line 349
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "read int32 error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 351
    :cond_0
    const-string/jumbo v1, "read int32 error"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 354
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readInt64(Z)J
    .locals 4
    .param p1, "exception"    # Z

    .prologue
    .line 374
    :try_start_0
    iget-object v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 382
    :goto_0
    return-wide v2

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_0

    .line 377
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "read int64 error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 379
    :cond_0
    const-string/jumbo v1, "read int64 error"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 382
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public readString(Z)Ljava/lang/String;
    .locals 7
    .param p1, "exception"    # Z

    .prologue
    .line 405
    const/4 v4, 0x1

    .line 406
    .local v4, "sl":I
    :try_start_0
    iget-object v5, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    invoke-virtual {p0, v5}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v3

    .line 407
    .local v3, "l":I
    const/16 v5, 0xfe

    if-lt v3, v5, :cond_0

    .line 408
    iget-object v5, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    invoke-virtual {p0, v5}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    invoke-virtual {p0, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    invoke-virtual {p0, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    or-int v3, v5, v6

    .line 409
    const/4 v4, 0x4

    .line 411
    :cond_0
    new-array v0, v3, [B

    .line 412
    .local v0, "b":[B
    iget-object v5, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 413
    move v2, v4

    .line 414
    .local v2, "i":I
    :goto_0
    add-int v5, v3, v2

    rem-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1

    .line 415
    iget-object v5, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    .line 416
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 418
    :cond_1
    new-instance v5, Ljava/lang/String;

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    .end local v0    # "b":[B
    .end local v2    # "i":I
    .end local v3    # "l":I
    :goto_1
    return-object v5

    .line 419
    :catch_0
    move-exception v1

    .line 420
    .local v1, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_2

    .line 421
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "read string error"

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 423
    :cond_2
    const-string/jumbo v5, "read string error"

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 426
    const-string/jumbo v5, ""

    goto :goto_1
.end method

.method public reuse()V
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->address:I

    if-eqz v0, :cond_0

    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    .line 501
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->address:I

    invoke-static {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->native_reuse(I)V

    .line 503
    :cond_0
    return-void
.end method

.method public rewind()V
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public skip(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 330
    if-nez p1, :cond_0

    .line 338
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_1

    .line 334
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 336
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    goto :goto_0
.end method

.method public writeBool(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 129
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_1

    .line 130
    if-eqz p1, :cond_0

    .line 131
    const v0, -0x668d8a4b

    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 138
    :goto_0
    return-void

    .line 133
    :cond_0
    const v0, -0x438668c9

    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    goto :goto_0

    .line 136
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    goto :goto_0
.end method

.method public writeByte(B)V
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 170
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v1, :cond_0

    .line 171
    iget-object v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 178
    :goto_0
    return-void

    .line 173
    :cond_0
    iget v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "write byte error"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeByte(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 165
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeByte(B)V

    .line 166
    return-void
.end method

.method public writeByteArray([B)V
    .locals 5
    .param p1, "b"    # [B

    .prologue
    const/16 v4, 0xfd

    .line 227
    :try_start_0
    array-length v2, p1

    if-gt v2, v4, :cond_2

    .line 228
    iget-boolean v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v2, :cond_0

    .line 229
    iget-object v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    array-length v3, p1

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 243
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v2, :cond_4

    .line 244
    iget-object v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 248
    :goto_1
    array-length v2, p1

    if-gt v2, v4, :cond_5

    const/4 v1, 0x1

    .line 249
    .local v1, "i":I
    :goto_2
    array-length v2, p1

    add-int/2addr v2, v1

    rem-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 250
    iget-boolean v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v2, :cond_6

    .line 251
    iget-object v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 255
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 231
    .end local v1    # "i":I
    :cond_0
    iget v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "write byte array error"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 260
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 234
    :cond_2
    :try_start_1
    iget-boolean v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v2, :cond_3

    .line 235
    iget-object v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 236
    iget-object v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    array-length v3, p1

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 237
    iget-object v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    array-length v3, p1

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 238
    iget-object v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    array-length v3, p1

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 240
    :cond_3
    iget v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    goto :goto_0

    .line 246
    :cond_4
    iget v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    array-length v3, p1

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    goto :goto_1

    .line 248
    :cond_5
    const/4 v1, 0x4

    goto :goto_2

    .line 253
    .restart local v1    # "i":I
    :cond_6
    iget v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
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

    .line 190
    if-gt p3, v4, :cond_2

    .line 191
    :try_start_0
    iget-boolean v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v2, :cond_0

    .line 192
    iget-object v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte v3, p3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 206
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v2, :cond_4

    .line 207
    iget-object v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 211
    :goto_1
    if-gt p3, v4, :cond_5

    const/4 v1, 0x1

    .line 212
    .local v1, "i":I
    :goto_2
    add-int v2, p3, v1

    rem-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 213
    iget-boolean v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v2, :cond_6

    .line 214
    iget-object v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 218
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 194
    .end local v1    # "i":I
    :cond_0
    iget v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "write byte array error"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 197
    :cond_2
    :try_start_1
    iget-boolean v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v2, :cond_3

    .line 198
    iget-object v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 199
    iget-object v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte v3, p3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 200
    iget-object v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    shr-int/lit8 v3, p3, 0x8

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 201
    iget-object v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    shr-int/lit8 v3, p3, 0x10

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 203
    :cond_3
    iget v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    goto :goto_0

    .line 209
    :cond_4
    iget v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/2addr v2, p3

    iput v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    goto :goto_1

    .line 211
    :cond_5
    const/4 v1, 0x4

    goto :goto_2

    .line 216
    .restart local v1    # "i":I
    :cond_6
    iget v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public writeByteBuffer(Lorg/telegram/tgnet/NativeByteBuffer;)V
    .locals 6
    .param p1, "b"    # Lorg/telegram/tgnet/NativeByteBuffer;

    .prologue
    const/16 v5, 0xfd

    .line 272
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v2

    .line 273
    .local v2, "l":I
    if-gt v2, v5, :cond_2

    .line 274
    iget-boolean v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v3, :cond_0

    .line 275
    iget-object v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte v4, v2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 289
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v3, :cond_4

    .line 290
    invoke-virtual {p1}, Lorg/telegram/tgnet/NativeByteBuffer;->rewind()V

    .line 291
    iget-object v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v4, p1, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 295
    :goto_1
    if-gt v2, v5, :cond_5

    const/4 v1, 0x1

    .line 296
    .local v1, "i":I
    :goto_2
    add-int v3, v2, v1

    rem-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 297
    iget-boolean v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v3, :cond_6

    .line 298
    iget-object v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 302
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 277
    .end local v1    # "i":I
    :cond_0
    iget v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    .end local v2    # "l":I
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 280
    .restart local v2    # "l":I
    :cond_2
    :try_start_1
    iget-boolean v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v3, :cond_3

    .line 281
    iget-object v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 282
    iget-object v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte v4, v2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 283
    iget-object v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 284
    iget-object v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    shr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 286
    :cond_3
    iget v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    goto :goto_0

    .line 293
    :cond_4
    iget v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    goto :goto_1

    .line 295
    :cond_5
    const/4 v1, 0x4

    goto :goto_2

    .line 300
    .restart local v1    # "i":I
    :cond_6
    iget v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public writeBytes(Lorg/telegram/tgnet/NativeByteBuffer;)V
    .locals 2
    .param p1, "b"    # Lorg/telegram/tgnet/NativeByteBuffer;

    .prologue
    .line 310
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-eqz v0, :cond_0

    .line 311
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    invoke-virtual {p1}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    .line 316
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/tgnet/NativeByteBuffer;->rewind()V

    .line 314
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public writeBytes([B)V
    .locals 3
    .param p1, "b"    # [B

    .prologue
    .line 142
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v1, :cond_0

    .line 143
    iget-object v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 150
    :goto_0
    return-void

    .line 145
    :cond_0
    iget v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    array-length v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
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
    .line 154
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v1, :cond_0

    .line 155
    iget-object v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 162
    :goto_0
    return-void

    .line 157
    :cond_0
    iget v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "write raw error"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeDouble(D)V
    .locals 5
    .param p1, "d"    # D

    .prologue
    .line 264
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt64(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "write double error"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeInt32(I)V
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 106
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v1, :cond_0

    .line 107
    iget-object v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 114
    :goto_0
    return-void

    .line 109
    :cond_0
    iget v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "write int32 error"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeInt64(J)V
    .locals 3
    .param p1, "x"    # J

    .prologue
    .line 118
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_0
    iget v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "write int64 error"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 182
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "write string error"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
