.class final Lorg/telegram/messenger/MediaController$27;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cancelled:[Z

.field final synthetic val$finalProgress:Lorg/telegram/ui/ActionBar/AlertDialog;

.field final synthetic val$mime:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$sourceFile:Ljava/io/File;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/io/File;[ZLorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3431
    iput p1, p0, Lorg/telegram/messenger/MediaController$27;->val$type:I

    iput-object p2, p0, Lorg/telegram/messenger/MediaController$27;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/MediaController$27;->val$sourceFile:Ljava/io/File;

    iput-object p4, p0, Lorg/telegram/messenger/MediaController$27;->val$cancelled:[Z

    iput-object p5, p0, Lorg/telegram/messenger/MediaController$27;->val$finalProgress:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p6, p0, Lorg/telegram/messenger/MediaController$27;->val$mime:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 3436
    :try_start_0
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MediaController$27;->val$type:I

    if-nez v7, :cond_8

    .line 3437
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->generatePicturePath()Ljava/io/File;

    move-result-object v15

    .line 3465
    .local v15, "destFile":Ljava/io/File;
    :cond_0
    :goto_0
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 3466
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    .line 3468
    :cond_1
    const/4 v3, 0x0

    .line 3469
    .local v3, "source":Ljava/nio/channels/FileChannel;
    const/4 v2, 0x0

    .line 3470
    .local v2, "destination":Ljava/nio/channels/FileChannel;
    const/16 v23, 0x1

    .line 3471
    .local v23, "result":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v8

    const-wide/16 v10, 0x1f4

    sub-long v20, v8, v10

    .line 3473
    .local v20, "lastProgress":J
    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/MediaController$27;->val$sourceFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 3474
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 3475
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v24

    .line 3476
    .local v24, "size":J
    const-wide/16 v4, 0x0

    .local v4, "a":J
    :goto_1
    cmp-long v7, v4, v24

    if-gez v7, :cond_2

    .line 3477
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MediaController$27;->val$cancelled:[Z

    const/4 v8, 0x0

    aget-boolean v7, v7, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_c

    .line 3503
    :cond_2
    if-eqz v3, :cond_3

    .line 3504
    :try_start_2
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 3510
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 3511
    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 3517
    .end local v4    # "a":J
    .end local v24    # "size":J
    :cond_4
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MediaController$27;->val$cancelled:[Z

    const/4 v8, 0x0

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_5

    .line 3518
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 3519
    const/16 v23, 0x0

    .line 3522
    :cond_5
    if-eqz v23, :cond_6

    .line 3523
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MediaController$27;->val$type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_11

    .line 3524
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v8, "download"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/DownloadManager;

    .line 3525
    .local v6, "downloadManager":Landroid/app/DownloadManager;
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController$27;->val$mime:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v12

    const/4 v14, 0x1

    invoke-virtual/range {v6 .. v14}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 3533
    .end local v2    # "destination":Ljava/nio/channels/FileChannel;
    .end local v3    # "source":Ljava/nio/channels/FileChannel;
    .end local v6    # "downloadManager":Landroid/app/DownloadManager;
    .end local v15    # "destFile":Ljava/io/File;
    .end local v20    # "lastProgress":J
    .end local v23    # "result":Z
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MediaController$27;->val$finalProgress:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v7, :cond_7

    .line 3534
    new-instance v7, Lorg/telegram/messenger/MediaController$27$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lorg/telegram/messenger/MediaController$27$2;-><init>(Lorg/telegram/messenger/MediaController$27;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3545
    :cond_7
    return-void

    .line 3438
    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MediaController$27;->val$type:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    .line 3439
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->generateVideoPath()Ljava/io/File;

    move-result-object v15

    .restart local v15    # "destFile":Ljava/io/File;
    goto/16 :goto_0

    .line 3442
    .end local v15    # "destFile":Ljava/io/File;
    :cond_9
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MediaController$27;->val$type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_a

    .line 3443
    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .line 3447
    .local v16, "dir":Ljava/io/File;
    :goto_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdir()Z

    .line 3448
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MediaController$27;->val$name:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3449
    .restart local v15    # "destFile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3450
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MediaController$27;->val$name:Ljava/lang/String;

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    .line 3451
    .local v18, "idx":I
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_6
    const/16 v7, 0xa

    if-ge v4, v7, :cond_0

    .line 3453
    const/4 v7, -0x1

    move/from16 v0, v18

    if-eq v0, v7, :cond_b

    .line 3454
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/MediaController$27;->val$name:Ljava/lang/String;

    const/4 v9, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/MediaController$27;->val$name:Ljava/lang/String;

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 3458
    .local v19, "newName":Ljava/lang/String;
    :goto_7
    new-instance v15, Ljava/io/File;

    .end local v15    # "destFile":Ljava/io/File;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3459
    .restart local v15    # "destFile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3451
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 3445
    .end local v4    # "a":I
    .end local v15    # "destFile":Ljava/io/File;
    .end local v16    # "dir":Ljava/io/File;
    .end local v18    # "idx":I
    .end local v19    # "newName":Ljava/lang/String;
    :cond_a
    sget-object v7, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .restart local v16    # "dir":Ljava/io/File;
    goto :goto_5

    .line 3456
    .restart local v4    # "a":I
    .restart local v15    # "destFile":Ljava/io/File;
    .restart local v18    # "idx":I
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/MediaController$27;->val$name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v19

    .restart local v19    # "newName":Ljava/lang/String;
    goto :goto_7

    .line 3480
    .end local v16    # "dir":Ljava/io/File;
    .end local v18    # "idx":I
    .end local v19    # "newName":Ljava/lang/String;
    .restart local v2    # "destination":Ljava/nio/channels/FileChannel;
    .restart local v3    # "source":Ljava/nio/channels/FileChannel;
    .local v4, "a":J
    .restart local v20    # "lastProgress":J
    .restart local v23    # "result":Z
    .restart local v24    # "size":J
    :cond_c
    const-wide/16 v8, 0x1000

    sub-long v10, v24, v4

    :try_start_6
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 3481
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MediaController$27;->val$finalProgress:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v7, :cond_d

    .line 3482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x1f4

    sub-long/2addr v8, v10

    cmp-long v7, v20, v8

    if-gtz v7, :cond_d

    .line 3483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 3484
    long-to-float v7, v4

    move-wide/from16 v0, v24

    long-to-float v8, v0

    div-float/2addr v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    float-to-int v0, v7

    move/from16 v22, v0

    .line 3485
    .local v22, "progress":I
    new-instance v7, Lorg/telegram/messenger/MediaController$27$1;

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v7, v0, v1}, Lorg/telegram/messenger/MediaController$27$1;-><init>(Lorg/telegram/messenger/MediaController$27;I)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3476
    .end local v22    # "progress":I
    :cond_d
    const-wide/16 v8, 0x1000

    add-long/2addr v4, v8

    goto/16 :goto_1

    .line 3498
    .end local v4    # "a":J
    .end local v24    # "size":J
    :catch_0
    move-exception v17

    .line 3499
    .local v17, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3500
    const/16 v23, 0x0

    .line 3503
    if-eqz v3, :cond_e

    .line 3504
    :try_start_8
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 3510
    :cond_e
    :goto_8
    if-eqz v2, :cond_4

    .line 3511
    :try_start_9
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_3

    .line 3513
    :catch_1
    move-exception v7

    goto/16 :goto_3

    .line 3502
    .end local v17    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 3503
    if-eqz v3, :cond_f

    .line 3504
    :try_start_a
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 3510
    :cond_f
    :goto_9
    if-eqz v2, :cond_10

    .line 3511
    :try_start_b
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 3515
    :cond_10
    :goto_a
    :try_start_c
    throw v7
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 3530
    .end local v2    # "destination":Ljava/nio/channels/FileChannel;
    .end local v3    # "source":Ljava/nio/channels/FileChannel;
    .end local v15    # "destFile":Ljava/io/File;
    .end local v20    # "lastProgress":J
    .end local v23    # "result":Z
    :catch_2
    move-exception v17

    .line 3531
    .restart local v17    # "e":Ljava/lang/Exception;
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 3527
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v2    # "destination":Ljava/nio/channels/FileChannel;
    .restart local v3    # "source":Ljava/nio/channels/FileChannel;
    .restart local v15    # "destFile":Ljava/io/File;
    .restart local v20    # "lastProgress":J
    .restart local v23    # "result":Z
    :cond_11
    :try_start_d
    invoke-static {v15}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Landroid/net/Uri;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_4

    .line 3506
    .restart local v4    # "a":J
    .restart local v24    # "size":J
    :catch_3
    move-exception v7

    goto/16 :goto_2

    .line 3513
    :catch_4
    move-exception v7

    goto/16 :goto_3

    .line 3506
    .end local v4    # "a":J
    .end local v24    # "size":J
    .restart local v17    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v7

    goto :goto_8

    .end local v17    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v8

    goto :goto_9

    .line 3513
    :catch_7
    move-exception v8

    goto :goto_a
.end method
