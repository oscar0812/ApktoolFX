.class final Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;
.super Ljava/lang/Object;
.source "CachedContentIndex.java"


# static fields
.field public static final FILE_NAME:Ljava/lang/String; = "cached_content_index.exi"

.field private static final FLAG_ENCRYPTED_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CachedContentIndex"

.field private static final VERSION:I = 0x1


# instance fields
.field private final atomicFile:Lorg/telegram/messenger/exoplayer2/util/AtomicFile;

.field private bufferedOutputStream:Lorg/telegram/messenger/exoplayer2/util/ReusableBufferedOutputStream;

.field private changed:Z

.field private final cipher:Ljavax/crypto/Cipher;

.field private final idToKey:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final keyToContent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;",
            ">;"
        }
    .end annotation
.end field

.field private final secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;-><init>(Ljava/io/File;[B)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/io/File;[B)V
    .locals 4
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "secretKey"    # [B

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-eqz p2, :cond_1

    .line 88
    array-length v1, p2

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 90
    :try_start_0
    const-string/jumbo v1, "AES/CBC/PKCS5PADDING"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->cipher:Ljavax/crypto/Cipher;

    .line 91
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v1, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    .line 100
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    .line 101
    new-instance v1, Lorg/telegram/messenger/exoplayer2/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "cached_content_index.exi"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer2/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->atomicFile:Lorg/telegram/messenger/exoplayer2/util/AtomicFile;

    .line 102
    return-void

    .line 88
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 96
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_1
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->cipher:Ljavax/crypto/Cipher;

    .line 97
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_1

    .line 92
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private add(Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;)V
    .locals 3
    .param p1, "cachedContent"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    .prologue
    .line 327
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->id:I

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    return-void
.end method

.method private addNew(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "length"    # J

    .prologue
    .line 338
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->getNewId(Landroid/util/SparseArray;)I

    move-result v1

    .line 339
    .local v1, "id":I
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;-><init>(ILjava/lang/String;J)V

    .line 340
    .local v0, "cachedContent":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->addNew(Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;)V

    .line 341
    return-object v0
.end method

.method public static getNewId(Landroid/util/SparseArray;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "idToKey":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 352
    .local v1, "size":I
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 353
    .local v0, "id":I
    :goto_0
    if-gez v0, :cond_0

    .line 355
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    .line 356
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 361
    :cond_0
    return v0

    .line 352
    .end local v0    # "id":I
    :cond_1
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 355
    .restart local v0    # "id":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private readFile()Z
    .locals 15

    .prologue
    .line 226
    const/4 v7, 0x0

    .line 228
    .local v7, "input":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v9, Ljava/io/BufferedInputStream;

    iget-object v12, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->atomicFile:Lorg/telegram/messenger/exoplayer2/util/AtomicFile;

    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer2/util/AtomicFile;->openRead()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 229
    .local v9, "inputStream":Ljava/io/InputStream;
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    .end local v7    # "input":Ljava/io/DataInputStream;
    .local v8, "input":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v11

    .line 231
    .local v11, "version":I
    const/4 v12, 0x1

    if-eq v11, v12, :cond_2

    .line 233
    const/4 v12, 0x0

    .line 272
    if-eqz v8, :cond_0

    .line 273
    invoke-static {v8}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_0
    move-object v7, v8

    .line 276
    .end local v8    # "input":Ljava/io/DataInputStream;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v11    # "version":I
    .restart local v7    # "input":Ljava/io/DataInputStream;
    :cond_1
    :goto_0
    return v12

    .line 236
    .end local v7    # "input":Ljava/io/DataInputStream;
    .restart local v8    # "input":Ljava/io/DataInputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "version":I
    :cond_2
    :try_start_2
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 237
    .local v3, "flags":I
    and-int/lit8 v12, v3, 0x1

    if-eqz v12, :cond_5

    .line 238
    iget-object v12, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->cipher:Ljavax/crypto/Cipher;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v12, :cond_4

    .line 239
    const/4 v12, 0x0

    .line 272
    if-eqz v8, :cond_3

    .line 273
    invoke-static {v8}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_3
    move-object v7, v8

    .line 239
    .end local v8    # "input":Ljava/io/DataInputStream;
    .restart local v7    # "input":Ljava/io/DataInputStream;
    goto :goto_0

    .line 241
    .end local v7    # "input":Ljava/io/DataInputStream;
    .restart local v8    # "input":Ljava/io/DataInputStream;
    :cond_4
    const/16 v12, 0x10

    :try_start_3
    new-array v6, v12, [B

    .line 242
    .local v6, "initializationVector":[B
    invoke-virtual {v8, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 243
    new-instance v10, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v10, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 245
    .local v10, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    :try_start_4
    iget-object v12, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->cipher:Ljavax/crypto/Cipher;

    const/4 v13, 0x2

    iget-object v14, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v12, v13, v14, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_4
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 249
    :try_start_5
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v12, Ljavax/crypto/CipherInputStream;

    iget-object v13, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v12, v9, v13}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v7, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 256
    .end local v6    # "initializationVector":[B
    .end local v8    # "input":Ljava/io/DataInputStream;
    .end local v10    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v7    # "input":Ljava/io/DataInputStream;
    :goto_1
    :try_start_6
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 257
    .local v1, "count":I
    const/4 v4, 0x0

    .line 258
    .local v4, "hashCode":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v1, :cond_7

    .line 259
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    invoke-direct {v0, v7}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;-><init>(Ljava/io/DataInputStream;)V

    .line 260
    .local v0, "cachedContent":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->add(Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;)V

    .line 261
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->headerHashCode()I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v12

    add-int/2addr v4, v12

    .line 258
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 246
    .end local v0    # "cachedContent":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    .end local v1    # "count":I
    .end local v4    # "hashCode":I
    .end local v5    # "i":I
    .end local v7    # "input":Ljava/io/DataInputStream;
    .restart local v6    # "initializationVector":[B
    .restart local v8    # "input":Ljava/io/DataInputStream;
    .restart local v10    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    :catch_0
    move-exception v12

    move-object v2, v12

    .line 247
    .local v2, "e":Ljava/security/GeneralSecurityException;
    :goto_3
    :try_start_7
    new-instance v12, Ljava/lang/IllegalStateException;

    invoke-direct {v12, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v12
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 266
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    .end local v3    # "flags":I
    .end local v6    # "initializationVector":[B
    .end local v10    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v11    # "version":I
    :catch_1
    move-exception v2

    move-object v7, v8

    .line 267
    .end local v8    # "input":Ljava/io/DataInputStream;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "input":Ljava/io/DataInputStream;
    :goto_4
    const/4 v12, 0x0

    .line 272
    if-eqz v7, :cond_1

    .line 273
    invoke-static {v7}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 251
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "input":Ljava/io/DataInputStream;
    .restart local v3    # "flags":I
    .restart local v8    # "input":Ljava/io/DataInputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "version":I
    :cond_5
    :try_start_8
    iget-object v12, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->cipher:Ljavax/crypto/Cipher;

    if-eqz v12, :cond_6

    .line 252
    const/4 v12, 0x1

    iput-boolean v12, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->changed:Z
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_6
    move-object v7, v8

    .end local v8    # "input":Ljava/io/DataInputStream;
    .restart local v7    # "input":Ljava/io/DataInputStream;
    goto :goto_1

    .line 263
    .restart local v1    # "count":I
    .restart local v4    # "hashCode":I
    .restart local v5    # "i":I
    :cond_7
    :try_start_9
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v12

    if-eq v12, v4, :cond_8

    .line 264
    const/4 v12, 0x0

    .line 272
    if-eqz v7, :cond_1

    .line 273
    invoke-static {v7}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 272
    :cond_8
    if-eqz v7, :cond_9

    .line 273
    invoke-static {v7}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 276
    :cond_9
    const/4 v12, 0x1

    goto :goto_0

    .line 268
    .end local v1    # "count":I
    .end local v3    # "flags":I
    .end local v4    # "hashCode":I
    .end local v5    # "i":I
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v11    # "version":I
    :catch_2
    move-exception v2

    .line 269
    .local v2, "e":Ljava/io/IOException;
    :goto_5
    :try_start_a
    const-string/jumbo v12, "CachedContentIndex"

    const-string/jumbo v13, "Error reading cache content index file."

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 270
    const/4 v12, 0x0

    .line 272
    if-eqz v7, :cond_1

    .line 273
    invoke-static {v7}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 272
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_6
    if-eqz v7, :cond_a

    .line 273
    invoke-static {v7}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_a
    throw v12

    .line 246
    .end local v7    # "input":Ljava/io/DataInputStream;
    .restart local v3    # "flags":I
    .restart local v6    # "initializationVector":[B
    .restart local v8    # "input":Ljava/io/DataInputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v11    # "version":I
    :catch_3
    move-exception v12

    move-object v2, v12

    goto :goto_3

    .line 272
    .end local v3    # "flags":I
    .end local v6    # "initializationVector":[B
    .end local v10    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v11    # "version":I
    :catchall_1
    move-exception v12

    move-object v7, v8

    .end local v8    # "input":Ljava/io/DataInputStream;
    .restart local v7    # "input":Ljava/io/DataInputStream;
    goto :goto_6

    .line 268
    .end local v7    # "input":Ljava/io/DataInputStream;
    .restart local v8    # "input":Ljava/io/DataInputStream;
    :catch_4
    move-exception v2

    move-object v7, v8

    .end local v8    # "input":Ljava/io/DataInputStream;
    .restart local v7    # "input":Ljava/io/DataInputStream;
    goto :goto_5

    .line 266
    .end local v9    # "inputStream":Ljava/io/InputStream;
    :catch_5
    move-exception v2

    goto :goto_4
.end method

.method private writeFile()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 280
    const/4 v6, 0x0

    .line 282
    .local v6, "output":Ljava/io/DataOutputStream;
    :try_start_0
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->atomicFile:Lorg/telegram/messenger/exoplayer2/util/AtomicFile;

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer2/util/AtomicFile;->startWrite()Ljava/io/OutputStream;

    move-result-object v8

    .line 283
    .local v8, "outputStream":Ljava/io/OutputStream;
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->bufferedOutputStream:Lorg/telegram/messenger/exoplayer2/util/ReusableBufferedOutputStream;

    if-nez v9, :cond_0

    .line 284
    new-instance v9, Lorg/telegram/messenger/exoplayer2/util/ReusableBufferedOutputStream;

    invoke-direct {v9, v8}, Lorg/telegram/messenger/exoplayer2/util/ReusableBufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v9, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->bufferedOutputStream:Lorg/telegram/messenger/exoplayer2/util/ReusableBufferedOutputStream;

    .line 288
    :goto_0
    new-instance v7, Ljava/io/DataOutputStream;

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->bufferedOutputStream:Lorg/telegram/messenger/exoplayer2/util/ReusableBufferedOutputStream;

    invoke-direct {v7, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    .end local v6    # "output":Ljava/io/DataOutputStream;
    .local v7, "output":Ljava/io/DataOutputStream;
    const/4 v9, 0x1

    :try_start_1
    invoke-virtual {v7, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 291
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->cipher:Ljavax/crypto/Cipher;

    if-eqz v9, :cond_1

    .line 292
    .local v2, "flags":I
    :goto_1
    invoke-virtual {v7, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 294
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->cipher:Ljavax/crypto/Cipher;

    if-eqz v9, :cond_3

    .line 295
    const/16 v9, 0x10

    new-array v4, v9, [B

    .line 296
    .local v4, "initializationVector":[B
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-virtual {v9, v4}, Ljava/util/Random;->nextBytes([B)V

    .line 297
    invoke-virtual {v7, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 298
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 300
    .local v5, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    :try_start_2
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->cipher:Ljavax/crypto/Cipher;

    const/4 v10, 0x1

    iget-object v11, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v9, v10, v11, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 304
    :try_start_3
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 305
    new-instance v6, Ljava/io/DataOutputStream;

    new-instance v9, Ljavax/crypto/CipherOutputStream;

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->bufferedOutputStream:Lorg/telegram/messenger/exoplayer2/util/ReusableBufferedOutputStream;

    iget-object v11, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v9, v10, v11}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v6, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 308
    .end local v4    # "initializationVector":[B
    .end local v5    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v7    # "output":Ljava/io/DataOutputStream;
    .restart local v6    # "output":Ljava/io/DataOutputStream;
    :goto_2
    :try_start_4
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 309
    const/4 v3, 0x0

    .line 310
    .local v3, "hashCode":I
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    .line 311
    .local v0, "cachedContent":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 312
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->headerHashCode()I

    move-result v10

    add-int/2addr v3, v10

    .line 313
    goto :goto_3

    .line 286
    .end local v0    # "cachedContent":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    .end local v2    # "flags":I
    .end local v3    # "hashCode":I
    :cond_0
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->bufferedOutputStream:Lorg/telegram/messenger/exoplayer2/util/ReusableBufferedOutputStream;

    invoke-virtual {v9, v8}, Lorg/telegram/messenger/exoplayer2/util/ReusableBufferedOutputStream;->reset(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 319
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 320
    .local v1, "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    new-instance v9, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {v9, v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/io/IOException;)V

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 322
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_5
    invoke-static {v6}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v9

    .line 291
    .end local v6    # "output":Ljava/io/DataOutputStream;
    .restart local v7    # "output":Ljava/io/DataOutputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 301
    .restart local v2    # "flags":I
    .restart local v4    # "initializationVector":[B
    .restart local v5    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    :catch_1
    move-exception v9

    move-object v1, v9

    .line 302
    .local v1, "e":Ljava/security/GeneralSecurityException;
    :goto_6
    :try_start_6
    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-direct {v9, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 319
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    .end local v2    # "flags":I
    .end local v4    # "initializationVector":[B
    .end local v5    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    :catch_2
    move-exception v1

    move-object v6, v7

    .end local v7    # "output":Ljava/io/DataOutputStream;
    .restart local v6    # "output":Ljava/io/DataOutputStream;
    goto :goto_4

    .line 314
    .restart local v2    # "flags":I
    .restart local v3    # "hashCode":I
    :cond_2
    :try_start_7
    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 315
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->atomicFile:Lorg/telegram/messenger/exoplayer2/util/AtomicFile;

    invoke-virtual {v9, v6}, Lorg/telegram/messenger/exoplayer2/util/AtomicFile;->endWrite(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 318
    const/4 v6, 0x0

    .line 322
    invoke-static {v6}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 324
    return-void

    .line 301
    .end local v3    # "hashCode":I
    .end local v6    # "output":Ljava/io/DataOutputStream;
    .restart local v4    # "initializationVector":[B
    .restart local v5    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v7    # "output":Ljava/io/DataOutputStream;
    :catch_3
    move-exception v9

    move-object v1, v9

    goto :goto_6

    .line 322
    .end local v2    # "flags":I
    .end local v4    # "initializationVector":[B
    .end local v5    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "output":Ljava/io/DataOutputStream;
    .restart local v6    # "output":Ljava/io/DataOutputStream;
    goto :goto_5

    .end local v6    # "output":Ljava/io/DataOutputStream;
    .restart local v2    # "flags":I
    .restart local v7    # "output":Ljava/io/DataOutputStream;
    :cond_3
    move-object v6, v7

    .end local v7    # "output":Ljava/io/DataOutputStream;
    .restart local v6    # "output":Ljava/io/DataOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public add(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    .line 131
    .local v0, "cachedContent":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    if-nez v0, :cond_0

    .line 132
    const-wide/16 v2, -0x1

    invoke-direct {p0, p1, v2, v3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->addNew(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    .line 134
    :cond_0
    return-object v0
.end method

.method addNew(Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;)V
    .locals 1
    .param p1, "cachedContent"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->add(Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;)V

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->changed:Z

    .line 335
    return-void
.end method

.method public assignIdForKey(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->add(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->id:I

    return v0
.end method

.method public get(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    return-object v0
.end method

.method public getAll()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    .line 222
    .local v0, "cachedContent":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    if-nez v0, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->getLength()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getKeyForId(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public load()V
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->changed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 107
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->readFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->atomicFile:Lorg/telegram/messenger/exoplayer2/util/AtomicFile;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/AtomicFile;->delete()V

    .line 109
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 110
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 112
    :cond_0
    return-void

    .line 106
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeEmpty()V
    .locals 5

    .prologue
    .line 179
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 180
    .local v1, "cachedContentToBeRemoved":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    .line 181
    .local v0, "cachedContent":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    .end local v0    # "cachedContent":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    :cond_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 186
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->removeEmpty(Ljava/lang/String;)V

    goto :goto_1

    .line 188
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public removeEmpty(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    .line 170
    .local v0, "cachedContent":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->isEmpty()Z

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 172
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 173
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->changed:Z

    .line 175
    :cond_0
    return-void
.end method

.method public setContentLength(Ljava/lang/String;J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "length"    # J

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    .line 206
    .local v0, "cachedContent":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->getLength()J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->setLength(J)V

    .line 209
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->changed:Z

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->addNew(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    goto :goto_0
.end method

.method public store()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 116
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->changed:Z

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->writeFile()V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->changed:Z

    goto :goto_0
.end method
