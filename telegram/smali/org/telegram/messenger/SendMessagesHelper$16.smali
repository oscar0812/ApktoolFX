.class final Lorg/telegram/messenger/SendMessagesHelper$16;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhotosSearch(Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog_id:J

.field final synthetic val$photos:Ljava/util/ArrayList;

.field final synthetic val$reply_to_msg:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(JLjava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .prologue
    .line 3446
    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$16;->val$dialog_id:J

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$16;->val$photos:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$16;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 31

    .prologue
    .line 3449
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/SendMessagesHelper$16;->val$dialog_id:J

    long-to-int v4, v4

    if-nez v4, :cond_7

    const/16 v19, 0x1

    .line 3450
    .local v19, "isEncrypted":Z
    :goto_0
    const/4 v11, 0x0

    .local v11, "a":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$16;->val$photos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_17

    .line 3451
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$16;->val$photos:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 3452
    .local v8, "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    iget v10, v8, Lorg/telegram/messenger/MediaController$SearchImage;->ttl:I

    .line 3453
    .local v10, "ttl":I
    iget v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    .line 3454
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 3455
    .local v9, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 3457
    .local v15, "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    iget-object v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v4, :cond_8

    .line 3458
    iget-object v15, v8, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .end local v15    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3459
    .restart local v15    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    const/4 v4, 0x1

    invoke-static {v15, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v13

    .line 3470
    .local v13, "cacheFile":Ljava/io/File;
    :goto_2
    if-nez v15, :cond_3

    .line 3471
    iget-object v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 3472
    const-string/jumbo v4, "url"

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3474
    :cond_0
    const/16 v27, 0x0

    .line 3475
    .local v27, "thumbFile":Ljava/io/File;
    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_document;

    .end local v15    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    .line 3476
    .restart local v15    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    const-wide/16 v4, 0x0

    iput-wide v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    .line 3477
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    iput v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    .line 3478
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 3479
    .local v18, "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    const-string/jumbo v4, "animation.gif"

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 3480
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3481
    iget v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    iput v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    .line 3482
    const/4 v4, 0x0

    iput v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    .line 3483
    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3484
    const-string/jumbo v4, "video/mp4"

    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 3485
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3489
    :goto_3
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3490
    move-object/from16 v27, v13

    .line 3494
    :goto_4
    if-nez v27, :cond_1

    .line 3495
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    const-string/jumbo v28, "jpg"

    move-object/from16 v0, v28

    invoke-static {v5, v0}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3496
    .local v26, "thumb":Ljava/lang/String;
    new-instance v27, Ljava/io/File;

    .end local v27    # "thumbFile":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3497
    .restart local v27    # "thumbFile":Ljava/io/File;
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3498
    const/16 v27, 0x0

    .line 3501
    .end local v26    # "thumb":Ljava/lang/String;
    :cond_1
    if-eqz v27, :cond_2

    .line 3504
    :try_start_0
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3505
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 3509
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    :goto_5
    if-eqz v12, :cond_2

    .line 3510
    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/16 v28, 0x37

    move/from16 v0, v28

    move/from16 v1, v19

    invoke-static {v12, v4, v5, v0, v1}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3511
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3517
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    :goto_6
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v4, :cond_3

    .line 3518
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3519
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 3520
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 3521
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v5, 0x0

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 3522
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3523
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "x"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 3527
    .end local v18    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    .end local v27    # "thumbFile":Ljava/io/File;
    :cond_3
    iget-object v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 3528
    iget-object v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    .line 3530
    :cond_4
    move-object/from16 v16, v15

    .line 3531
    .local v16, "documentFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    iget-object v0, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3532
    .local v22, "originalPathFinal":Ljava/lang/String;
    if-nez v13, :cond_e

    iget-object v0, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 3533
    .local v23, "pathFinal":Ljava/lang/String;
    :goto_7
    if-eqz v9, :cond_5

    iget-object v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 3534
    const-string/jumbo v4, "originalPath"

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3536
    :cond_5
    new-instance v4, Lorg/telegram/messenger/SendMessagesHelper$16$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-direct {v4, v0, v1, v2, v9}, Lorg/telegram/messenger/SendMessagesHelper$16$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$16;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3450
    .end local v9    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "cacheFile":Ljava/io/File;
    .end local v15    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v16    # "documentFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v22    # "originalPathFinal":Ljava/lang/String;
    .end local v23    # "pathFinal":Ljava/lang/String;
    :cond_6
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 3449
    .end local v8    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    .end local v10    # "ttl":I
    .end local v11    # "a":I
    .end local v19    # "isEncrypted":Z
    :cond_7
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 3461
    .restart local v8    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    .restart local v9    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "ttl":I
    .restart local v11    # "a":I
    .restart local v15    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .restart local v19    # "isEncrypted":Z
    :cond_8
    if-nez v19, :cond_9

    .line 3462
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    iget-object v0, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    move-object/from16 v28, v0

    if-nez v19, :cond_a

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, v28

    invoke-virtual {v5, v0, v4}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$Document;

    .line 3463
    .local v14, "doc":Lorg/telegram/tgnet/TLRPC$Document;
    instance-of v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v4, :cond_9

    move-object v15, v14

    .line 3464
    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3467
    .end local v14    # "doc":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    const-string/jumbo v28, "jpg"

    move-object/from16 v0, v28

    invoke-static {v5, v0}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 3468
    .local v20, "md5":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v13, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v13    # "cacheFile":Ljava/io/File;
    goto/16 :goto_2

    .line 3462
    .end local v13    # "cacheFile":Ljava/io/File;
    .end local v20    # "md5":Ljava/lang/String;
    :cond_a
    const/4 v4, 0x4

    goto :goto_9

    .line 3487
    .restart local v13    # "cacheFile":Ljava/io/File;
    .restart local v18    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    .restart local v27    # "thumbFile":Ljava/io/File;
    :cond_b
    const-string/jumbo v4, "image/gif"

    iput-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    goto/16 :goto_3

    .line 3492
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 3507
    :cond_d
    :try_start_1
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v28, 0x42b40000    # 90.0f

    const/high16 v29, 0x42b40000    # 90.0f

    const/16 v30, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v4, v5, v0, v1, v2}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    .restart local v12    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_5

    .line 3513
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v17

    .line 3514
    .local v17, "e":Ljava/lang/Exception;
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 3532
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v18    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    .end local v27    # "thumbFile":Ljava/io/File;
    .restart local v16    # "documentFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    .restart local v22    # "originalPathFinal":Ljava/lang/String;
    :cond_e
    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_7

    .line 3543
    .end local v9    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "cacheFile":Ljava/io/File;
    .end local v15    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v16    # "documentFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v22    # "originalPathFinal":Ljava/lang/String;
    :cond_f
    const/16 v21, 0x1

    .line 3544
    .local v21, "needDownloadHttp":Z
    const/16 v24, 0x0

    .line 3545
    .local v24, "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    if-nez v19, :cond_10

    if-nez v10, :cond_10

    .line 3546
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    iget-object v0, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    move-object/from16 v28, v0

    if-nez v19, :cond_16

    const/4 v4, 0x0

    :goto_a
    move-object/from16 v0, v28

    invoke-virtual {v5, v0, v4}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v24

    .end local v24    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    check-cast v24, Lorg/telegram/tgnet/TLRPC$TL_photo;

    .line 3548
    .restart local v24    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    :cond_10
    if-nez v24, :cond_13

    .line 3549
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    const-string/jumbo v28, "jpg"

    move-object/from16 v0, v28

    invoke-static {v5, v0}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 3550
    .restart local v20    # "md5":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v13, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3551
    .restart local v13    # "cacheFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v28, 0x0

    cmp-long v4, v4, v28

    if-eqz v4, :cond_11

    .line 3552
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v4

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v28, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v4, v5, v0}, Lorg/telegram/messenger/SendMessagesHelper;->generatePhotoSizes(Ljava/lang/String;Landroid/net/Uri;)Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-result-object v24

    .line 3553
    if-eqz v24, :cond_11

    .line 3554
    const/16 v21, 0x0

    .line 3557
    :cond_11
    if-nez v24, :cond_13

    .line 3558
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    const-string/jumbo v28, "jpg"

    move-object/from16 v0, v28

    invoke-static {v5, v0}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 3559
    new-instance v13, Ljava/io/File;

    .end local v13    # "cacheFile":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v13, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3560
    .restart local v13    # "cacheFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 3561
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v4

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v28, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v4, v5, v0}, Lorg/telegram/messenger/SendMessagesHelper;->generatePhotoSizes(Ljava/lang/String;Landroid/net/Uri;)Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-result-object v24

    .line 3563
    :cond_12
    if-nez v24, :cond_13

    .line 3564
    new-instance v24, Lorg/telegram/tgnet/TLRPC$TL_photo;

    .end local v24    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    invoke-direct/range {v24 .. v24}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    .line 3565
    .restart local v24    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->date:I

    .line 3566
    new-instance v25, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct/range {v25 .. v25}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    .line 3567
    .local v25, "photoSize":Lorg/telegram/tgnet/TLRPC$TL_photoSize;
    iget v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->w:I

    .line 3568
    iget v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->h:I

    .line 3569
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->size:I

    .line 3570
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3571
    const-string/jumbo v4, "x"

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->type:Ljava/lang/String;

    .line 3572
    move-object/from16 v0, v24

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3576
    .end local v13    # "cacheFile":Ljava/io/File;
    .end local v20    # "md5":Ljava/lang/String;
    .end local v25    # "photoSize":Lorg/telegram/tgnet/TLRPC$TL_photoSize;
    :cond_13
    if-eqz v24, :cond_6

    .line 3577
    iget-object v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    if-eqz v4, :cond_14

    .line 3578
    iget-object v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    .line 3580
    :cond_14
    move-object/from16 v6, v24

    .line 3581
    .local v6, "photoFinal":Lorg/telegram/tgnet/TLRPC$TL_photo;
    move/from16 v7, v21

    .line 3582
    .local v7, "needDownloadHttpFinal":Z
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 3583
    .restart local v9    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    if-eqz v4, :cond_15

    .line 3584
    const-string/jumbo v4, "originalPath"

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3586
    :cond_15
    new-instance v4, Lorg/telegram/messenger/SendMessagesHelper$16$2;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/messenger/SendMessagesHelper$16$2;-><init>(Lorg/telegram/messenger/SendMessagesHelper$16;Lorg/telegram/tgnet/TLRPC$TL_photo;ZLorg/telegram/messenger/MediaController$SearchImage;Ljava/util/HashMap;I)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    .line 3546
    .end local v6    # "photoFinal":Lorg/telegram/tgnet/TLRPC$TL_photo;
    .end local v7    # "needDownloadHttpFinal":Z
    .end local v9    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_16
    const/4 v4, 0x3

    goto/16 :goto_a

    .line 3595
    .end local v8    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    .end local v10    # "ttl":I
    .end local v21    # "needDownloadHttp":Z
    .end local v24    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    :cond_17
    return-void
.end method
