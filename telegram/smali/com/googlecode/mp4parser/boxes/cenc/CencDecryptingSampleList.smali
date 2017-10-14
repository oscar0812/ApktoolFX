.class public Lcom/googlecode/mp4parser/boxes/cenc/CencDecryptingSampleList;
.super Ljava/util/AbstractList;
.source "CencDecryptingSampleList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lcom/googlecode/mp4parser/authoring/Sample;",
        ">;"
    }
.end annotation


# instance fields
.field encryptionAlgo:Ljava/lang/String;

.field keys:Lcom/googlecode/mp4parser/util/RangeStartMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/googlecode/mp4parser/util/RangeStartMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljavax/crypto/SecretKey;",
            ">;"
        }
    .end annotation
.end field

.field parent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation
.end field

.field sencInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/util/RangeStartMap;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p4, "encryptionAlgo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/util/RangeStartMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljavax/crypto/SecretKey;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "keys":Lcom/googlecode/mp4parser/util/RangeStartMap;, "Lcom/googlecode/mp4parser/util/RangeStartMap<Ljava/lang/Integer;Ljavax/crypto/SecretKey;>;"
    .local p2, "parent":Ljava/util/List;, "Ljava/util/List<Lcom/googlecode/mp4parser/authoring/Sample;>;"
    .local p3, "sencInfo":Ljava/util/List;, "Ljava/util/List<Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 23
    new-instance v0, Lcom/googlecode/mp4parser/util/RangeStartMap;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/util/RangeStartMap;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/CencDecryptingSampleList;->keys:Lcom/googlecode/mp4parser/util/RangeStartMap;

    .line 36
    iput-object p3, p0, Lcom/googlecode/mp4parser/boxes/cenc/CencDecryptingSampleList;->sencInfo:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/cenc/CencDecryptingSampleList;->keys:Lcom/googlecode/mp4parser/util/RangeStartMap;

    .line 38
    iput-object p2, p0, Lcom/googlecode/mp4parser/boxes/cenc/CencDecryptingSampleList;->parent:Ljava/util/List;

    .line 39
    iput-object p4, p0, Lcom/googlecode/mp4parser/boxes/cenc/CencDecryptingSampleList;->encryptionAlgo:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/crypto/SecretKey;",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "parent":Ljava/util/List;, "Ljava/util/List<Lcom/googlecode/mp4parser/authoring/Sample;>;"
    .local p3, "sencInfo":Ljava/util/List;, "Ljava/util/List<Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;>;"
    new-instance v0, Lcom/googlecode/mp4parser/util/RangeStartMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/googlecode/mp4parser/util/RangeStartMap;-><init>(Ljava/lang/Comparable;Ljava/lang/Object;)V

    const-string/jumbo v1, "cenc"

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/googlecode/mp4parser/boxes/cenc/CencDecryptingSampleList;-><init>(Lcom/googlecode/mp4parser/util/RangeStartMap;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public get(I)Lcom/googlecode/mp4parser/authoring/Sample;
    .locals 24
    .param p1, "index"    # I

    .prologue
    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/boxes/cenc/CencDecryptingSampleList;->keys:Lcom/googlecode/mp4parser/util/RangeStartMap;

    move-object/from16 v18, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/googlecode/mp4parser/util/RangeStartMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_6

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/boxes/cenc/CencDecryptingSampleList;->parent:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/googlecode/mp4parser/authoring/Sample;

    .line 76
    .local v10, "encSample":Lcom/googlecode/mp4parser/authoring/Sample;
    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Sample;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 77
    .local v11, "encSampleBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 78
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->limit()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 79
    .local v7, "decSampleBuffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/boxes/cenc/CencDecryptingSampleList;->sencInfo:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;

    .line 80
    .local v17, "sencEntry":Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/boxes/cenc/CencDecryptingSampleList;->keys:Lcom/googlecode/mp4parser/util/RangeStartMap;

    move-object/from16 v18, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/googlecode/mp4parser/util/RangeStartMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljavax/crypto/SecretKey;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->iv:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/boxes/cenc/CencDecryptingSampleList;->getCipher(Ljavax/crypto/SecretKey;[B)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 82
    .local v4, "cipher":Ljavax/crypto/Cipher;
    :try_start_0
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->pairs:[Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->pairs:[Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_4

    .line 84
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->pairs:[Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 99
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v18

    if-lez v18, :cond_0

    .line 100
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "Decrypted sample but still data remaining: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Sample;->getSize()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    :cond_0
    invoke-virtual {v4}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 114
    :cond_1
    :goto_1
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 121
    new-instance v18, Lcom/googlecode/mp4parser/authoring/SampleImpl;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Lcom/googlecode/mp4parser/authoring/SampleImpl;-><init>(Ljava/nio/ByteBuffer;)V

    .line 123
    .end local v4    # "cipher":Ljavax/crypto/Cipher;
    .end local v7    # "decSampleBuffer":Ljava/nio/ByteBuffer;
    .end local v10    # "encSample":Lcom/googlecode/mp4parser/authoring/Sample;
    .end local v11    # "encSampleBuffer":Ljava/nio/ByteBuffer;
    .end local v17    # "sencEntry":Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;
    :goto_2
    return-object v18

    .line 84
    .restart local v4    # "cipher":Ljavax/crypto/Cipher;
    .restart local v7    # "decSampleBuffer":Ljava/nio/ByteBuffer;
    .restart local v10    # "encSample":Lcom/googlecode/mp4parser/authoring/Sample;
    .restart local v11    # "encSampleBuffer":Ljava/nio/ByteBuffer;
    .restart local v17    # "sencEntry":Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;
    :cond_2
    :try_start_1
    aget-object v16, v19, v18

    .line 85
    .local v16, "pair":Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;
    invoke-interface/range {v16 .. v16}, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;->clear()I

    move-result v5

    .line 86
    .local v5, "clearBytes":I
    invoke-interface/range {v16 .. v16}, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;->encrypted()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v12

    .line 88
    .local v12, "encrypted":I
    new-array v6, v5, [B

    .line 89
    .local v6, "clears":[B
    invoke-virtual {v11, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 90
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 91
    if-lez v12, :cond_3

    .line 92
    new-array v14, v12, [B

    .line 93
    .local v14, "encs":[B
    invoke-virtual {v11, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 94
    invoke-virtual {v4, v14}, Ljavax/crypto/Cipher;->update([B)[B

    move-result-object v8

    .line 95
    .local v8, "decr":[B
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 84
    .end local v8    # "decr":[B
    .end local v14    # "encs":[B
    :cond_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 104
    .end local v5    # "clearBytes":I
    .end local v6    # "clears":[B
    .end local v12    # "encrypted":I
    .end local v16    # "pair":Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;
    :cond_4
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->limit()I

    move-result v18

    move/from16 v0, v18

    new-array v15, v0, [B

    .line 105
    .local v15, "fullyEncryptedSample":[B
    invoke-virtual {v11, v15}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 106
    const-string/jumbo v18, "cbc1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/boxes/cenc/CencDecryptingSampleList;->encryptionAlgo:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 107
    array-length v0, v15

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x10

    mul-int/lit8 v13, v18, 0x10

    .line 108
    .local v13, "encryptedLength":I
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v15, v0, v13}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 109
    array-length v0, v15

    move/from16 v18, v0

    sub-int v18, v18, v13

    move/from16 v0, v18

    invoke-virtual {v7, v15, v13, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 115
    .end local v13    # "encryptedLength":I
    .end local v15    # "fullyEncryptedSample":[B
    :catch_0
    move-exception v9

    .line 116
    .local v9, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v18, Ljava/lang/RuntimeException;

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 110
    .end local v9    # "e":Ljavax/crypto/IllegalBlockSizeException;
    .restart local v15    # "fullyEncryptedSample":[B
    :cond_5
    :try_start_2
    const-string/jumbo v18, "cenc"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/boxes/cenc/CencDecryptingSampleList;->encryptionAlgo:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 111
    invoke-virtual {v4, v15}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 117
    .end local v15    # "fullyEncryptedSample":[B
    :catch_1
    move-exception v9

    .line 118
    .local v9, "e":Ljavax/crypto/BadPaddingException;
    new-instance v18, Ljava/lang/RuntimeException;

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 123
    .end local v4    # "cipher":Ljavax/crypto/Cipher;
    .end local v7    # "decSampleBuffer":Ljava/nio/ByteBuffer;
    .end local v9    # "e":Ljavax/crypto/BadPaddingException;
    .end local v10    # "encSample":Lcom/googlecode/mp4parser/authoring/Sample;
    .end local v11    # "encSampleBuffer":Ljava/nio/ByteBuffer;
    .end local v17    # "sencEntry":Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/boxes/cenc/CencDecryptingSampleList;->parent:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/googlecode/mp4parser/authoring/Sample;

    goto/16 :goto_2
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/cenc/CencDecryptingSampleList;->get(I)Lcom/googlecode/mp4parser/authoring/Sample;

    move-result-object v0

    return-object v0
.end method

.method getCipher(Ljavax/crypto/SecretKey;[B)Ljavax/crypto/Cipher;
    .locals 6
    .param p1, "sk"    # Ljavax/crypto/SecretKey;
    .param p2, "iv"    # [B

    .prologue
    const/4 v5, 0x0

    .line 44
    const/16 v4, 0x10

    new-array v3, v4, [B

    .line 45
    .local v3, "fullIv":[B
    array-length v4, p2

    invoke-static {p2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    :try_start_0
    const-string/jumbo v4, "cenc"

    iget-object v5, p0, Lcom/googlecode/mp4parser/boxes/cenc/CencDecryptingSampleList;->encryptionAlgo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    const-string/jumbo v4, "AES/CTR/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 50
    .local v0, "c":Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v4, p1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    move-object v1, v0

    .line 55
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .local v1, "c":Ljavax/crypto/Cipher;
    :goto_0
    return-object v1

    .line 52
    .end local v1    # "c":Ljavax/crypto/Cipher;
    :cond_0
    const-string/jumbo v4, "cbc1"

    iget-object v5, p0, Lcom/googlecode/mp4parser/boxes/cenc/CencDecryptingSampleList;->encryptionAlgo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    const-string/jumbo v4, "AES/CBC/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 54
    .restart local v0    # "c":Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v4, p1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    move-object v1, v0

    .line 55
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .restart local v1    # "c":Ljavax/crypto/Cipher;
    goto :goto_0

    .line 57
    .end local v1    # "c":Ljavax/crypto/Cipher;
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Only cenc & cbc1 is supported as encryptionAlgo"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3

    .line 59
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 61
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 62
    .local v2, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 63
    .end local v2    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v2

    .line 64
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 65
    .end local v2    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_3
    move-exception v2

    .line 66
    .local v2, "e":Ljava/security/InvalidKeyException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public size()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/CencDecryptingSampleList;->parent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
