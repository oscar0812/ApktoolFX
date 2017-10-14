.class final Lorg/telegram/messenger/SendMessagesHelper$19;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingVideo(Ljava/lang/String;JJIILorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$caption:Ljava/lang/CharSequence;

.field final synthetic val$dialog_id:J

.field final synthetic val$duration:J

.field final synthetic val$estimatedSize:J

.field final synthetic val$height:I

.field final synthetic val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$ttl:I

.field final synthetic val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

.field final synthetic val$videoPath:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(JLorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JIIIJLjava/lang/CharSequence;Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .prologue
    .line 3874
    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$dialog_id:J

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    iput-wide p5, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$duration:J

    iput p7, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$ttl:I

    iput p8, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$height:I

    iput p9, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$width:I

    iput-wide p10, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$estimatedSize:J

    iput-object p12, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$caption:Ljava/lang/CharSequence;

    iput-object p13, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 34

    .prologue
    .line 3878
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$dialog_id:J

    long-to-int v3, v10

    if-nez v3, :cond_6

    const/16 v24, 0x1

    .line 3880
    .local v24, "isEncrypted":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-boolean v3, v3, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    if-eqz v3, :cond_7

    const/16 v25, 0x1

    .line 3881
    .local v25, "isRound":Z
    :goto_1
    const/4 v2, 0x0

    .line 3882
    .local v2, "thumb":Landroid/graphics/Bitmap;
    const/16 v33, 0x0

    .line 3884
    .local v33, "thumbKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    const-string/jumbo v4, "mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v25, :cond_1b

    .line 3885
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 3886
    .local v28, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 3887
    .local v26, "originalPath":Ljava/lang/String;
    new-instance v32, Ljava/io/File;

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3888
    .local v32, "temp":Ljava/io/File;
    const-wide/16 v30, 0x0

    .line 3890
    .local v30, "startTime":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3891
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v3, :cond_2

    .line 3892
    if-nez v25, :cond_1

    .line 3893
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$duration:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v10, v4, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v10, v4, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-boolean v3, v3, Lorg/telegram/messenger/VideoEditedInfo;->muted:Z

    if-eqz v3, :cond_8

    const-string/jumbo v3, "_m"

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3894
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v3, v3, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v4, v4, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    if-ne v3, v4, :cond_1

    .line 3895
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v4, v4, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3898
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v10, v3, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-ltz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v0, v3, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    move-wide/from16 v30, v0

    .line 3900
    :cond_2
    :goto_3
    const/16 v20, 0x0

    .line 3901
    .local v20, "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    if-nez v24, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$ttl:I

    if-nez v3, :cond_3

    .line 3902
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    if-nez v24, :cond_a

    const/4 v3, 0x2

    :goto_4
    move-object/from16 v0, v26

    invoke-virtual {v4, v0, v3}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v20

    .end local v20    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    check-cast v20, Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3904
    .restart local v20    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    :cond_3
    if-nez v20, :cond_11

    .line 3905
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    move-wide/from16 v0, v30

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->access$1200(Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3906
    if-nez v2, :cond_4

    .line 3907
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3909
    :cond_4
    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x42b40000    # 90.0f

    const/16 v10, 0x37

    move/from16 v0, v24

    invoke-static {v2, v3, v4, v10, v0}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v29

    .line 3910
    .local v29, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v2, :cond_5

    if-eqz v29, :cond_5

    .line 3911
    if-eqz v25, :cond_e

    .line 3912
    if-eqz v24, :cond_c

    .line 3913
    const/4 v3, 0x7

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v4, v10, :cond_b

    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 3914
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v10, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "@%d_%d_b2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    int-to-float v11, v11

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x1

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    int-to-float v11, v11

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    .line 3923
    :cond_5
    :goto_6
    new-instance v20, Lorg/telegram/tgnet/TLRPC$TL_document;

    .end local v20    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    invoke-direct/range {v20 .. v20}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    .line 3924
    .restart local v20    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3925
    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v3, :cond_f

    .line 3926
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    move-object/from16 v0, v20

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3927
    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v4, "s"

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 3931
    :goto_7
    const-string/jumbo v3, "video/mp4"

    move-object/from16 v0, v20

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 3932
    const/4 v3, 0x0

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 3934
    if-eqz v24, :cond_14

    .line 3935
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$dialog_id:J

    const/16 v3, 0x20

    shr-long/2addr v10, v3

    long-to-int v0, v10

    move/from16 v23, v0

    .line 3936
    .local v23, "high_id":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v21

    .line 3937
    .local v21, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v21, :cond_10

    .line 4007
    .end local v20    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v21    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v23    # "high_id":I
    .end local v26    # "originalPath":Ljava/lang/String;
    .end local v28    # "path":Ljava/lang/String;
    .end local v29    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v30    # "startTime":J
    .end local v32    # "temp":Ljava/io/File;
    :goto_8
    return-void

    .line 3878
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    .end local v24    # "isEncrypted":Z
    .end local v25    # "isRound":Z
    .end local v33    # "thumbKey":Ljava/lang/String;
    :cond_6
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 3880
    .restart local v24    # "isEncrypted":Z
    :cond_7
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 3893
    .restart local v2    # "thumb":Landroid/graphics/Bitmap;
    .restart local v25    # "isRound":Z
    .restart local v26    # "originalPath":Ljava/lang/String;
    .restart local v28    # "path":Ljava/lang/String;
    .restart local v30    # "startTime":J
    .restart local v32    # "temp":Ljava/io/File;
    .restart local v33    # "thumbKey":Ljava/lang/String;
    :cond_8
    const-string/jumbo v3, ""

    goto/16 :goto_2

    .line 3898
    :cond_9
    const-wide/16 v30, 0x0

    goto/16 :goto_3

    .line 3902
    .restart local v20    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    :cond_a
    const/4 v3, 0x5

    goto/16 :goto_4

    .line 3913
    .restart local v29    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_b
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 3916
    :cond_c
    const/4 v3, 0x3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v4, v10, :cond_d

    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 3917
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v10, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "@%d_%d_b"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    int-to-float v11, v11

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x1

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    int-to-float v11, v11

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_6

    .line 3916
    :cond_d
    const/4 v4, 0x1

    goto :goto_9

    .line 3920
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 3929
    :cond_f
    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v4, "s"

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto/16 :goto_7

    .line 3940
    .restart local v21    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .restart local v23    # "high_id":I
    :cond_10
    move-object/from16 v0, v21

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v3

    const/16 v4, 0x42

    if-lt v3, v4, :cond_13

    .line 3941
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    .line 3948
    .end local v21    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v23    # "high_id":I
    .local v18, "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    :goto_a
    move/from16 v0, v25

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->round_message:Z

    .line 3949
    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3950
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    invoke-virtual {v3}, Lorg/telegram/messenger/VideoEditedInfo;->needConvert()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3951
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-boolean v3, v3, Lorg/telegram/messenger/VideoEditedInfo;->muted:Z

    if-eqz v3, :cond_15

    .line 3952
    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3953
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v0, v18

    invoke-static {v3, v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->access$1300(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V

    .line 3954
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v0, v18

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    iput v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    .line 3955
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v0, v18

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    iput v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    .line 3956
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v3, v3, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 3957
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v3, v3, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    .line 3968
    :goto_b
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$estimatedSize:J

    long-to-int v3, v10

    move-object/from16 v0, v20

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    .line 3969
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "-2147483648_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 3970
    .local v22, "fileName":Ljava/lang/String;
    sget v3, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 3971
    new-instance v19, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3972
    .local v19, "cacheFile":Ljava/io/File;
    const/4 v3, 0x0

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 3973
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    .line 3981
    .end local v18    # "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    .end local v19    # "cacheFile":Ljava/io/File;
    .end local v22    # "fileName":Ljava/lang/String;
    .end local v29    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_11
    :goto_c
    move-object/from16 v7, v20

    .line 3982
    .local v7, "videoFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    move-object/from16 v27, v26

    .line 3983
    .local v27, "originalPathFinal":Ljava/lang/String;
    move-object/from16 v8, v28

    .line 3984
    .local v8, "finalPath":Ljava/lang/String;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 3985
    .local v9, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v5, v2

    .line 3986
    .local v5, "thumbFinal":Landroid/graphics/Bitmap;
    move-object/from16 v6, v33

    .line 3987
    .local v6, "thumbKeyFinal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$caption:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1a

    .line 3988
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$caption:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    .line 3992
    :goto_d
    if-eqz v26, :cond_12

    .line 3993
    const-string/jumbo v3, "originalPath"

    move-object/from16 v0, v26

    invoke-virtual {v9, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3995
    :cond_12
    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$19$1;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/messenger/SendMessagesHelper$19$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$19;Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    .line 3943
    .end local v5    # "thumbFinal":Landroid/graphics/Bitmap;
    .end local v6    # "thumbKeyFinal":Ljava/lang/String;
    .end local v7    # "videoFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v8    # "finalPath":Ljava/lang/String;
    .end local v9    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v27    # "originalPathFinal":Ljava/lang/String;
    .restart local v21    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .restart local v23    # "high_id":I
    .restart local v29    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_13
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo_layer65;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo_layer65;-><init>()V

    .restart local v18    # "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    goto/16 :goto_a

    .line 3946
    .end local v18    # "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    .end local v21    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v23    # "high_id":I
    :cond_14
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    .restart local v18    # "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    goto/16 :goto_a

    .line 3959
    :cond_15
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$duration:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-int v3, v10

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->duration:I

    .line 3960
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v3, v3, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v3, v3, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_17

    .line 3961
    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$height:I

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 3962
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$width:I

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    goto/16 :goto_b

    .line 3964
    :cond_17
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$width:I

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 3965
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$height:I

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    goto/16 :goto_b

    .line 3975
    :cond_18
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 3976
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v3, v10

    move-object/from16 v0, v20

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    .line 3978
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-static {v3, v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->access$1300(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V

    goto/16 :goto_c

    .line 3990
    .end local v18    # "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    .end local v29    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v5    # "thumbFinal":Landroid/graphics/Bitmap;
    .restart local v6    # "thumbKeyFinal":Ljava/lang/String;
    .restart local v7    # "videoFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    .restart local v8    # "finalPath":Ljava/lang/String;
    .restart local v9    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v27    # "originalPathFinal":Ljava/lang/String;
    :cond_1a
    const-string/jumbo v3, ""

    iput-object v3, v7, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    goto/16 :goto_d

    .line 4005
    .end local v5    # "thumbFinal":Landroid/graphics/Bitmap;
    .end local v6    # "thumbKeyFinal":Ljava/lang/String;
    .end local v7    # "videoFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v8    # "finalPath":Ljava/lang/String;
    .end local v9    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v26    # "originalPath":Ljava/lang/String;
    .end local v27    # "originalPathFinal":Ljava/lang/String;
    .end local v28    # "path":Ljava/lang/String;
    .end local v30    # "startTime":J
    .end local v32    # "temp":Ljava/io/File;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$dialog_id:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$caption:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-static/range {v10 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->access$1000(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;)Z

    goto/16 :goto_8
.end method
