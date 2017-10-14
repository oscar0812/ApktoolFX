.class final Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$Mode;,
        Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;,
        Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;,
        Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VorbisUtil"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static iLog(I)I
    .locals 1
    .param p0, "x"    # I

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "val":I
    :goto_0
    if-lez p0, :cond_0

    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    return v0
.end method

.method private static mapType1QuantValues(JJ)J
    .locals 6
    .param p0, "entries"    # J
    .param p2, "dimension"    # J

    .prologue
    .line 407
    long-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    long-to-double v4, p2

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method private static readBook(Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;)Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;
    .locals 20
    .param p0, "bitArray"    # Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 346
    const/16 v2, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    const v16, 0x564342

    move/from16 v0, v16

    if-eq v2, v0, :cond_0

    .line 347
    new-instance v2, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 348
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->getPosition()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 350
    :cond_0
    const/16 v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v3

    .line 351
    .local v3, "dimensions":I
    const/16 v2, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    .line 352
    .local v4, "entries":I
    new-array v5, v4, [J

    .line 354
    .local v5, "lengthMap":[J
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v7

    .line 355
    .local v7, "isOrdered":Z
    if-nez v7, :cond_3

    .line 356
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v9

    .line 357
    .local v9, "isSparse":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v2, v5

    if-ge v8, v2, :cond_5

    .line 358
    if-eqz v9, :cond_2

    .line 359
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 360
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v0, v2

    move-wide/from16 v16, v0

    aput-wide v16, v5, v8

    .line 357
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 362
    :cond_1
    const-wide/16 v16, 0x0

    aput-wide v16, v5, v8

    goto :goto_1

    .line 365
    :cond_2
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v0, v2

    move-wide/from16 v16, v0

    aput-wide v16, v5, v8

    goto :goto_1

    .line 369
    .end local v8    # "i":I
    .end local v9    # "isSparse":Z
    :cond_3
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v11, v2, 0x1

    .line 370
    .local v11, "length":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    array-length v2, v5

    if-ge v8, v2, :cond_5

    .line 371
    sub-int v2, v4, v8

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v14

    .line 372
    .local v14, "num":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_3
    if-ge v10, v14, :cond_4

    array-length v2, v5

    if-ge v8, v2, :cond_4

    .line 373
    int-to-long v0, v11

    move-wide/from16 v16, v0

    aput-wide v16, v5, v8

    .line 372
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 375
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 376
    goto :goto_2

    .line 379
    .end local v10    # "j":I
    .end local v11    # "length":I
    .end local v14    # "num":I
    :cond_5
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    .line 380
    .local v6, "lookupType":I
    const/4 v2, 0x2

    if-le v6, v2, :cond_6

    .line 381
    new-instance v2, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "lookup type greater than 2 not decodable: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 382
    :cond_6
    const/4 v2, 0x1

    if-eq v6, v2, :cond_7

    const/4 v2, 0x2

    if-ne v6, v2, :cond_8

    .line 383
    :cond_7
    const/16 v2, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 384
    const/16 v2, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 385
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v15, v2, 0x1

    .line 386
    .local v15, "valueBits":I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 388
    const/4 v2, 0x1

    if-ne v6, v2, :cond_a

    .line 389
    if-eqz v3, :cond_9

    .line 390
    int-to-long v0, v4

    move-wide/from16 v16, v0

    int-to-long v0, v3

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->mapType1QuantValues(JJ)J

    move-result-wide v12

    .line 398
    .local v12, "lookupValuesCount":J
    :goto_4
    int-to-long v0, v15

    move-wide/from16 v16, v0

    mul-long v16, v16, v12

    move-wide/from16 v0, v16

    long-to-int v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 400
    .end local v12    # "lookupValuesCount":J
    .end local v15    # "valueBits":I
    :cond_8
    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;-><init>(II[JIZ)V

    return-object v2

    .line 392
    .restart local v15    # "valueBits":I
    :cond_9
    const-wide/16 v12, 0x0

    .restart local v12    # "lookupValuesCount":J
    goto :goto_4

    .line 395
    .end local v12    # "lookupValuesCount":J
    :cond_a
    mul-int v2, v4, v3

    int-to-long v12, v2

    .restart local v12    # "lookupValuesCount":J
    goto :goto_4
.end method

.method private static readFloors(Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;)V
    .locals 18
    .param p0, "bitArray"    # Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 292
    const/4 v15, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v15

    add-int/lit8 v4, v15, 0x1

    .line 293
    .local v4, "floorCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_7

    .line 294
    const/16 v15, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    .line 295
    .local v6, "floorType":I
    packed-switch v6, :pswitch_data_0

    .line 340
    new-instance v15, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "floor type greater than 1 not decodable: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 297
    :pswitch_0
    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 298
    const/16 v15, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 299
    const/16 v15, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 300
    const/4 v15, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 301
    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 302
    const/4 v15, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v15

    add-int/lit8 v5, v15, 0x1

    .line 303
    .local v5, "floorNumberOfBooks":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v5, :cond_6

    .line 304
    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 303
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 308
    .end local v5    # "floorNumberOfBooks":I
    .end local v9    # "j":I
    :pswitch_1
    const/4 v15, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v13

    .line 309
    .local v13, "partitions":I
    const/4 v11, -0x1

    .line 310
    .local v11, "maximumClass":I
    new-array v12, v13, [I

    .line 311
    .local v12, "partitionClassList":[I
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_2
    if-ge v9, v13, :cond_1

    .line 312
    const/4 v15, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v15

    aput v15, v12, v9

    .line 313
    aget v15, v12, v9

    if-le v15, v11, :cond_0

    .line 314
    aget v11, v12, v9

    .line 311
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 317
    :cond_1
    add-int/lit8 v15, v11, 0x1

    new-array v1, v15, [I

    .line 318
    .local v1, "classDimensions":[I
    const/4 v9, 0x0

    :goto_3
    array-length v15, v1

    if-ge v9, v15, :cond_4

    .line 319
    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    aput v15, v1, v9

    .line 320
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    .line 321
    .local v2, "classSubclasses":I
    if-lez v2, :cond_2

    .line 322
    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 324
    :cond_2
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_4
    const/4 v15, 0x1

    shl-int/2addr v15, v2

    if-ge v10, v15, :cond_3

    .line 325
    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 324
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 318
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 328
    .end local v2    # "classSubclasses":I
    .end local v10    # "k":I
    :cond_4
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 329
    const/4 v15, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v14

    .line 330
    .local v14, "rangeBits":I
    const/4 v3, 0x0

    .line 331
    .local v3, "count":I
    const/4 v9, 0x0

    const/4 v10, 0x0

    .restart local v10    # "k":I
    :goto_5
    if-ge v9, v13, :cond_6

    .line 332
    aget v8, v12, v9

    .line 333
    .local v8, "idx":I
    aget v15, v1, v8

    add-int/2addr v3, v15

    .line 334
    :goto_6
    if-ge v10, v3, :cond_5

    .line 335
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 334
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 331
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 293
    .end local v1    # "classDimensions":[I
    .end local v3    # "count":I
    .end local v8    # "idx":I
    .end local v10    # "k":I
    .end local v11    # "maximumClass":I
    .end local v12    # "partitionClassList":[I
    .end local v13    # "partitions":I
    .end local v14    # "rangeBits":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 343
    .end local v6    # "floorType":I
    .end local v9    # "j":I
    :cond_7
    return-void

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static readMappings(ILorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;)V
    .locals 11
    .param p0, "channels"    # I
    .param p1, "bitArray"    # Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/16 v9, 0x8

    .line 218
    const/4 v6, 0x6

    invoke-virtual {p1, v6}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 219
    .local v4, "mappingsCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_5

    .line 220
    const/16 v6, 0x10

    invoke-virtual {p1, v6}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v3

    .line 221
    .local v3, "mappingType":I
    packed-switch v3, :pswitch_data_0

    .line 254
    const-string/jumbo v6, "VorbisUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mapping type other than 0 not supported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    :pswitch_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 225
    invoke-virtual {p1, v10}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/lit8 v5, v6, 0x1

    .line 230
    .local v5, "submaps":I
    :goto_1
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 231
    invoke-virtual {p1, v9}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/lit8 v0, v6, 0x1

    .line 232
    .local v0, "couplingSteps":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 233
    add-int/lit8 v6, p0, -0x1

    invoke-static {v6}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v6

    invoke-virtual {p1, v6}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 234
    add-int/lit8 v6, p0, -0x1

    invoke-static {v6}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v6

    invoke-virtual {p1, v6}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 227
    .end local v0    # "couplingSteps":I
    .end local v2    # "j":I
    .end local v5    # "submaps":I
    :cond_1
    const/4 v5, 0x1

    .restart local v5    # "submaps":I
    goto :goto_1

    .line 239
    :cond_2
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    if-eqz v6, :cond_3

    .line 240
    new-instance v6, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v7, "to reserved bits must be zero after mapping coupling steps"

    invoke-direct {v6, v7}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 242
    :cond_3
    const/4 v6, 0x1

    if-le v5, v6, :cond_4

    .line 243
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_3
    if-ge v2, p0, :cond_4

    .line 244
    invoke-virtual {p1, v10}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 243
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 247
    .end local v2    # "j":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_4
    if-ge v2, v5, :cond_0

    .line 248
    invoke-virtual {p1, v9}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 249
    invoke-virtual {p1, v9}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 250
    invoke-virtual {p1, v9}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 257
    .end local v2    # "j":I
    .end local v3    # "mappingType":I
    .end local v5    # "submaps":I
    :cond_5
    return-void

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static readModes(Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;)[Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$Mode;
    .locals 9
    .param p0, "bitArray"    # Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;

    .prologue
    const/16 v8, 0x10

    .line 204
    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 205
    .local v3, "modeCount":I
    new-array v4, v3, [Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$Mode;

    .line 206
    .local v4, "modes":[Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$Mode;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 207
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v0

    .line 208
    .local v0, "blockFlag":Z
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    .line 209
    .local v6, "windowType":I
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    .line 210
    .local v5, "transformType":I
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    .line 211
    .local v2, "mapping":I
    new-instance v7, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$Mode;

    invoke-direct {v7, v0, v6, v5, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$Mode;-><init>(ZIII)V

    aput-object v7, v4, v1

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    .end local v0    # "blockFlag":Z
    .end local v2    # "mapping":I
    .end local v5    # "transformType":I
    .end local v6    # "windowType":I
    :cond_0
    return-object v4
.end method

.method private static readResidues(Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;)V
    .locals 14
    .param p0, "bitArray"    # Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x6

    const/16 v12, 0x18

    const/16 v11, 0x8

    .line 260
    invoke-virtual {p0, v13}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v9

    add-int/lit8 v7, v9, 0x1

    .line 261
    .local v7, "residueCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_6

    .line 262
    const/16 v9, 0x10

    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v8

    .line 263
    .local v8, "residueType":I
    const/4 v9, 0x2

    if-le v8, v9, :cond_0

    .line 264
    new-instance v9, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v10, "residueType greater than 2 is not decodable"

    invoke-direct {v9, v10}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 266
    :cond_0
    invoke-virtual {p0, v12}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 267
    invoke-virtual {p0, v12}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 268
    invoke-virtual {p0, v12}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 269
    invoke-virtual {p0, v13}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v9

    add-int/lit8 v1, v9, 0x1

    .line 270
    .local v1, "classifications":I
    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 271
    new-array v0, v1, [I

    .line 272
    .local v0, "cascade":[I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 273
    const/4 v2, 0x0

    .line 274
    .local v2, "highBits":I
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    .line 275
    .local v6, "lowBits":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 276
    const/4 v9, 0x5

    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    .line 278
    :cond_1
    mul-int/lit8 v9, v2, 0x8

    add-int/2addr v9, v6

    aput v9, v0, v4

    .line 272
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 280
    .end local v2    # "highBits":I
    .end local v6    # "lowBits":I
    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_5

    .line 281
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_3
    if-ge v5, v11, :cond_4

    .line 282
    aget v9, v0, v4

    const/4 v10, 0x1

    shl-int/2addr v10, v5

    and-int/2addr v9, v10

    if-eqz v9, :cond_3

    .line 283
    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 281
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 280
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 261
    .end local v5    # "k":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 289
    .end local v0    # "cascade":[I
    .end local v1    # "classifications":I
    .end local v4    # "j":I
    .end local v8    # "residueType":I
    :cond_6
    return-void
.end method

.method public static readVorbisCommentHeader(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;
    .locals 10
    .param p0, "headerData"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {v7, p0, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)Z

    .line 93
    const/4 v5, 0x7

    .line 95
    .local v5, "length":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v8

    long-to-int v4, v8

    .line 96
    .local v4, "len":I
    add-int/lit8 v5, v5, 0x4

    .line 97
    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, "vendor":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v5, v7, 0xb

    .line 100
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v0

    .line 101
    .local v0, "commentListLen":J
    long-to-int v7, v0

    new-array v2, v7, [Ljava/lang/String;

    .line 102
    .local v2, "comments":[Ljava/lang/String;
    add-int/lit8 v5, v5, 0x4

    .line 103
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    int-to-long v8, v3

    cmp-long v7, v8, v0

    if-gez v7, :cond_0

    .line 104
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v8

    long-to-int v4, v8

    .line 105
    add-int/lit8 v5, v5, 0x4

    .line 106
    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    .line 107
    aget-object v7, v2, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_1

    .line 110
    new-instance v7, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v8, "framing bit expected to be set"

    invoke-direct {v7, v8}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 112
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 113
    new-instance v7, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;

    invoke-direct {v7, v6, v2, v5}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object v7
.end method

.method public static readVorbisIdentificationHeader(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;
    .locals 20
    .param p0, "headerData"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v2, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)Z

    .line 61
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v3

    .line 62
    .local v3, "version":J
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 63
    .local v5, "channels":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v6

    .line 64
    .local v6, "sampleRate":J
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v8

    .line 65
    .local v8, "bitrateMax":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v9

    .line 66
    .local v9, "bitrateNominal":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v10

    .line 68
    .local v10, "bitrateMin":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v15

    .line 69
    .local v15, "blockSize":I
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    and-int/lit8 v2, v15, 0xf

    int-to-double v0, v2

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v11, v0

    .line 70
    .local v11, "blockSize0":I
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    and-int/lit16 v2, v15, 0xf0

    shr-int/lit8 v2, v2, 0x4

    int-to-double v0, v2

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v12, v0

    .line 72
    .local v12, "blockSize1":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_0

    const/4 v13, 0x1

    .line 74
    .local v13, "framingFlag":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    .line 76
    .local v14, "data":[B
    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    invoke-direct/range {v2 .. v14}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;-><init>(JIJIIIIIZ[B)V

    return-object v2

    .line 72
    .end local v13    # "framingFlag":Z
    .end local v14    # "data":[B
    :cond_0
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public static readVorbisModes(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)[Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$Mode;
    .locals 7
    .param p0, "headerData"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "channels"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-static {v5, p0, v6}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)Z

    .line 177
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 179
    .local v3, "numberOfBooks":I
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {v0, v5}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;-><init>([B)V

    .line 180
    .local v0, "bitArray":Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 182
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 183
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->readBook(Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;)Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_0
    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 187
    .local v4, "timeCount":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    .line 188
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    if-eqz v5, :cond_1

    .line 189
    new-instance v5, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v6, "placeholder of time domain transforms not zeroed out"

    invoke-direct {v5, v6}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 187
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 192
    :cond_2
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->readFloors(Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;)V

    .line 193
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->readResidues(Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;)V

    .line 194
    invoke-static {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->readMappings(ILorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;)V

    .line 196
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->readModes(Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;)[Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$Mode;

    move-result-object v2

    .line 197
    .local v2, "modes":[Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$Mode;
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v5

    if-nez v5, :cond_3

    .line 198
    new-instance v5, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v6, "framing bit after modes not set as expected"

    invoke-direct {v5, v6}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 200
    :cond_3
    return-object v2
.end method

.method public static verifyVorbisHeaderCapturePattern(ILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)Z
    .locals 3
    .param p0, "headerType"    # I
    .param p1, "header"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "quiet"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_2

    .line 130
    if-eqz p2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "too short header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    if-eq v1, p0, :cond_3

    .line 138
    if-nez p2, :cond_0

    .line 141
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expected header type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v2, 0x76

    if-ne v1, v2, :cond_4

    .line 146
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_4

    .line 147
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_4

    .line 148
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v2, 0x62

    if-ne v1, v2, :cond_4

    .line 149
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v2, 0x69

    if-ne v1, v2, :cond_4

    .line 150
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v2, 0x73

    if-eq v1, v2, :cond_5

    .line 151
    :cond_4
    if-nez p2, :cond_0

    .line 154
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "expected characters \'vorbis\'"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
