.class Lorg/telegram/messenger/MediaController$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 426
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MediaController;->access$000(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioRecord;

    move-result-object v19

    if-eqz v19, :cond_6

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MediaController;->access$100(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MediaController;->access$100(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v19

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 433
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MediaController;->access$100(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v19

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 438
    :goto_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MediaController;->access$000(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioRecord;

    move-result-object v19

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v12

    .line 440
    .local v12, "len":I
    if-lez v12, :cond_8

    .line 441
    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 442
    const-wide/16 v20, 0x0

    .line 444
    .local v20, "sum":D
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MediaController;->access$300(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v22

    div-int/lit8 v19, v12, 0x2

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v14, v22, v24

    .line 445
    .local v14, "newSamplesCount":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MediaController;->access$300(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    long-to-double v0, v14

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v7, v0

    .line 446
    .local v7, "currentPart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    sub-int v13, v19, v7

    .line 448
    .local v13, "newPart":I
    if-eqz v7, :cond_1

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v22, v0

    div-float v18, v19, v22

    .line 450
    .local v18, "sampleStep":F
    const/4 v6, 0x0

    .line 451
    .local v6, "currentNum":F
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1
    if-ge v2, v7, :cond_1

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v22

    float-to-int v0, v6

    move/from16 v23, v0

    aget-short v22, v22, v23

    aput-short v22, v19, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    add-float v6, v6, v18

    .line 451
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 435
    .end local v2    # "a":I
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    .end local v6    # "currentNum":F
    .end local v7    # "currentPart":I
    .end local v12    # "len":I
    .end local v13    # "newPart":I
    .end local v14    # "newSamplesCount":J
    .end local v18    # "sampleStep":F
    .end local v20    # "sum":D
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MediaController;->access$200(Lorg/telegram/messenger/MediaController;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 436
    .restart local v3    # "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    .line 456
    .restart local v7    # "currentPart":I
    .restart local v12    # "len":I
    .restart local v13    # "newPart":I
    .restart local v14    # "newSamplesCount":J
    .restart local v20    # "sum":D
    :cond_1
    move v6, v7

    .line 457
    .local v6, "currentNum":I
    const/16 v16, 0x0

    .line 458
    .local v16, "nextNum":F
    int-to-float v0, v12

    move/from16 v19, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v19, v19, v22

    int-to-float v0, v13

    move/from16 v22, v0

    div-float v18, v19, v22

    .line 459
    .restart local v18    # "sampleStep":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    :try_start_1
    div-int/lit8 v19, v12, 0x2

    move/from16 v0, v19

    if-ge v11, v0, :cond_4

    .line 460
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v17

    .line 461
    .local v17, "peak":S
    const/16 v19, 0x9c4

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 462
    mul-int v19, v17, v17

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    .line 464
    :cond_2
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v11, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_3

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v19

    aput-short v17, v19, v6

    .line 466
    add-float v16, v16, v18

    .line 467
    add-int/lit8 v6, v6, 0x1

    .line 459
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 470
    .end local v17    # "peak":S
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v14, v15}, Lorg/telegram/messenger/MediaController;->access$302(Lorg/telegram/messenger/MediaController;J)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 474
    .end local v6    # "currentNum":I
    .end local v7    # "currentPart":I
    .end local v11    # "i":I
    .end local v13    # "newPart":I
    .end local v14    # "newSamplesCount":J
    .end local v16    # "nextNum":F
    .end local v18    # "sampleStep":F
    :goto_3
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 475
    int-to-double v0, v12

    move-wide/from16 v22, v0

    div-double v22, v20, v22

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 476
    .local v4, "amplitude":D
    move-object v9, v3

    .line 477
    .local v9, "finalBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v19

    move/from16 v0, v19

    if-eq v12, v0, :cond_7

    const/4 v10, 0x1

    .line 478
    .local v10, "flush":Z
    :goto_4
    if-eqz v12, :cond_5

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MediaController;->access$900(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v19

    new-instance v22, Lorg/telegram/messenger/MediaController$1$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v10}, Lorg/telegram/messenger/MediaController$1$1;-><init>(Lorg/telegram/messenger/MediaController$1;Ljava/nio/ByteBuffer;Z)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 508
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MediaController;->access$800(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/MediaController;->access$1000(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 509
    new-instance v19, Lorg/telegram/messenger/MediaController$1$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v5}, Lorg/telegram/messenger/MediaController$1$2;-><init>(Lorg/telegram/messenger/MediaController$1;D)V

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 520
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    .end local v4    # "amplitude":D
    .end local v9    # "finalBuffer":Ljava/nio/ByteBuffer;
    .end local v10    # "flush":Z
    .end local v12    # "len":I
    .end local v20    # "sum":D
    :cond_6
    :goto_5
    return-void

    .line 471
    .restart local v3    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v12    # "len":I
    .restart local v20    # "sum":D
    :catch_0
    move-exception v8

    .line 472
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 477
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "amplitude":D
    .restart local v9    # "finalBuffer":Ljava/nio/ByteBuffer;
    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    .line 516
    .end local v4    # "amplitude":D
    .end local v9    # "finalBuffer":Ljava/nio/ByteBuffer;
    .end local v20    # "sum":D
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MediaController;->access$100(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/MediaController;->access$1200(Lorg/telegram/messenger/MediaController;)I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->access$1300(Lorg/telegram/messenger/MediaController;I)V

    goto :goto_5
.end method
