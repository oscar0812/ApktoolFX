.class Lorg/telegram/messenger/FileLoader$6;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileLoader;

.field final synthetic val$cacheType:I

.field final synthetic val$document:Lorg/telegram/tgnet/TLRPC$Document;

.field final synthetic val$force:Z

.field final synthetic val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field final synthetic val$locationExt:Ljava/lang/String;

.field final synthetic val$locationSize:I

.field final synthetic val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;ZII)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 369
    iput-object p1, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    iput-object p2, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object p3, p0, Lorg/telegram/messenger/FileLoader$6;->val$locationExt:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object p5, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    iput-boolean p6, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    iput p7, p0, Lorg/telegram/messenger/FileLoader$6;->val$locationSize:I

    iput p8, p0, Lorg/telegram/messenger/FileLoader$6;->val$cacheType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 372
    const/4 v2, 0x0

    .line 373
    .local v2, "fileName":Ljava/lang/String;
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v11, :cond_2

    .line 374
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v12, p0, Lorg/telegram/messenger/FileLoader$6;->val$locationExt:Ljava/lang/String;

    invoke-static {v11, v12}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 380
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    const-string/jumbo v11, "-2147483648"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 539
    :cond_1
    :goto_1
    return-void

    .line 375
    :cond_2
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v11, :cond_3

    .line 376
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 377
    :cond_3
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v11, :cond_0

    .line 378
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 385
    :cond_4
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$900(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/FileLoadOperation;

    .line 386
    .local v7, "operation":Lorg/telegram/messenger/FileLoadOperation;
    if-eqz v7, :cond_9

    .line 387
    iget-boolean v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    if-eqz v11, :cond_1

    .line 388
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lorg/telegram/messenger/FileLoadOperation;->setForceRequest(Z)V

    .line 390
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVoiceWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 391
    :cond_5
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v0

    .line 397
    .local v0, "downloadQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/FileLoadOperation;>;"
    :goto_2
    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 399
    .local v5, "index":I
    if-lez v5, :cond_1

    .line 400
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 401
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v7}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 392
    .end local v0    # "downloadQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/FileLoadOperation;>;"
    .end local v5    # "index":I
    :cond_6
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v11, :cond_7

    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isImageWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 393
    :cond_7
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v0

    .restart local v0    # "downloadQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/FileLoadOperation;>;"
    goto :goto_2

    .line 395
    .end local v0    # "downloadQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/FileLoadOperation;>;"
    :cond_8
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v0

    .restart local v0    # "downloadQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/FileLoadOperation;>;"
    goto :goto_2

    .line 408
    .end local v0    # "downloadQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/FileLoadOperation;>;"
    :cond_9
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v9

    .line 409
    .local v9, "tempDir":Ljava/io/File;
    move-object v8, v9

    .line 410
    .local v8, "storeDir":Ljava/io/File;
    const/4 v10, 0x4

    .line 412
    .local v10, "type":I
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v11, :cond_c

    .line 413
    new-instance v7, Lorg/telegram/messenger/FileLoadOperation;

    .end local v7    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v12, p0, Lorg/telegram/messenger/FileLoader$6;->val$locationExt:Ljava/lang/String;

    iget v13, p0, Lorg/telegram/messenger/FileLoader$6;->val$locationSize:I

    invoke-direct {v7, v11, v12, v13}, Lorg/telegram/messenger/FileLoadOperation;-><init>(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;I)V

    .line 414
    .restart local v7    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    const/4 v10, 0x0

    .line 436
    :cond_a
    :goto_3
    iget v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$cacheType:I

    if-nez v11, :cond_13

    .line 437
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-virtual {v11, v10}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v8

    .line 441
    :cond_b
    :goto_4
    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/FileLoadOperation;->setPaths(Ljava/io/File;Ljava/io/File;)V

    .line 443
    move-object v3, v2

    .line 444
    .local v3, "finalFileName":Ljava/lang/String;
    move v4, v10

    .line 445
    .local v4, "finalType":I
    new-instance v1, Lorg/telegram/messenger/FileLoader$6$1;

    invoke-direct {v1, p0, v3, v4}, Lorg/telegram/messenger/FileLoader$6$1;-><init>(Lorg/telegram/messenger/FileLoader$6;Ljava/lang/String;I)V

    .line 469
    .local v1, "fileLoadOperationDelegate":Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;
    invoke-virtual {v7, v1}, Lorg/telegram/messenger/FileLoadOperation;->setDelegate(Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;)V

    .line 500
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$900(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v11

    invoke-virtual {v11, v2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget-boolean v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    if-eqz v11, :cond_14

    const/4 v6, 0x3

    .line 502
    .local v6, "maxCount":I
    :goto_5
    const/4 v11, 0x1

    if-ne v10, v11, :cond_17

    .line 503
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1100(Lorg/telegram/messenger/FileLoader;)I

    move-result v11

    if-ge v11, v6, :cond_15

    .line 504
    invoke-virtual {v7}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 505
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1108(Lorg/telegram/messenger/FileLoader;)I

    goto/16 :goto_1

    .line 415
    .end local v1    # "fileLoadOperationDelegate":Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;
    .end local v3    # "finalFileName":Ljava/lang/String;
    .end local v4    # "finalType":I
    .end local v6    # "maxCount":I
    :cond_c
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v11, :cond_f

    .line 416
    new-instance v7, Lorg/telegram/messenger/FileLoadOperation;

    .end local v7    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {v7, v11}, Lorg/telegram/messenger/FileLoadOperation;-><init>(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 417
    .restart local v7    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 418
    const/4 v10, 0x1

    goto :goto_3

    .line 419
    :cond_d
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 420
    const/4 v10, 0x2

    goto :goto_3

    .line 422
    :cond_e
    const/4 v10, 0x3

    goto :goto_3

    .line 424
    :cond_f
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v11, :cond_a

    .line 425
    new-instance v7, Lorg/telegram/messenger/FileLoadOperation;

    .end local v7    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-direct {v7, v11}, Lorg/telegram/messenger/FileLoadOperation;-><init>(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)V

    .line 426
    .restart local v7    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVoiceWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 427
    const/4 v10, 0x1

    goto :goto_3

    .line 428
    :cond_10
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVideoWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 429
    const/4 v10, 0x2

    goto :goto_3

    .line 430
    :cond_11
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isImageWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 431
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 433
    :cond_12
    const/4 v10, 0x3

    goto/16 :goto_3

    .line 438
    :cond_13
    iget v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$cacheType:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_b

    .line 439
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lorg/telegram/messenger/FileLoadOperation;->setEncryptFile(Z)V

    goto/16 :goto_4

    .line 501
    .restart local v1    # "fileLoadOperationDelegate":Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;
    .restart local v3    # "finalFileName":Ljava/lang/String;
    .restart local v4    # "finalType":I
    :cond_14
    const/4 v6, 0x1

    goto :goto_5

    .line 508
    .restart local v6    # "maxCount":I
    :cond_15
    iget-boolean v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    if-eqz v11, :cond_16

    .line 509
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v7}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 511
    :cond_16
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 514
    :cond_17
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v11, :cond_1a

    .line 515
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1300(Lorg/telegram/messenger/FileLoader;)I

    move-result v11

    if-ge v11, v6, :cond_18

    .line 516
    invoke-virtual {v7}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 517
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1308(Lorg/telegram/messenger/FileLoader;)I

    goto/16 :goto_1

    .line 520
    :cond_18
    iget-boolean v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    if-eqz v11, :cond_19

    .line 521
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v7}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 523
    :cond_19
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 527
    :cond_1a
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1500(Lorg/telegram/messenger/FileLoader;)I

    move-result v11

    if-ge v11, v6, :cond_1b

    .line 528
    invoke-virtual {v7}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 529
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1508(Lorg/telegram/messenger/FileLoader;)I

    goto/16 :goto_1

    .line 532
    :cond_1b
    iget-boolean v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    if-eqz v11, :cond_1c

    .line 533
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v7}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 535
    :cond_1c
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
