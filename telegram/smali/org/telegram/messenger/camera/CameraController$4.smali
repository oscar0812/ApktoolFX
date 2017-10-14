.class Lorg/telegram/messenger/camera/CameraController$4;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController;->takePicture(Ljava/io/File;Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraController;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$info:Lorg/telegram/messenger/camera/CameraInfo;

.field final synthetic val$path:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraController;Ljava/io/File;Lorg/telegram/messenger/camera/CameraInfo;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/camera/CameraController;

    .prologue
    .line 339
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$4;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$4;->val$path:Ljava/io/File;

    iput-object p3, p0, Lorg/telegram/messenger/camera/CameraController$4;->val$info:Lorg/telegram/messenger/camera/CameraInfo;

    iput-object p4, p0, Lorg/telegram/messenger/camera/CameraController$4;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 14
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v1, v2

    float-to-int v13, v1

    .line 344
    .local v13, "size":I
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%s@%d_%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraController$4;->val$path:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 346
    .local v8, "key":Ljava/lang/String;
    :try_start_0
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 347
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 348
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 349
    iget v1, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v1, v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 350
    .local v11, "scaleFactor":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v11, v1

    if-gez v1, :cond_0

    .line 351
    const/high16 v11, 0x3f800000    # 1.0f

    .line 353
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 354
    float-to-int v1, v11

    iput v1, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 355
    const/4 v1, 0x1

    iput-boolean v1, v9, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 356
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 361
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "scaleFactor":F
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$4;->val$info:Lorg/telegram/messenger/camera/CameraInfo;

    iget v1, v1, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v1, :cond_3

    .line 363
    :try_start_2
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 364
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-static {p1}, Lorg/telegram/messenger/camera/CameraController;->access$200([B)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 365
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 366
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/Bitmaps;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 367
    .local v12, "scaled":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 368
    new-instance v10, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$4;->val$path:Ljava/io/File;

    invoke-direct {v10, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 369
    .local v10, "outputStream":Ljava/io/FileOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    invoke-virtual {v12, v1, v2, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 370
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    .line 371
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 372
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 373
    if-eqz v12, :cond_1

    .line 374
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2, v8}, Lorg/telegram/messenger/ImageLoader;->putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;)V

    .line 376
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$4;->val$callback:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 377
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$4;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 398
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .end local v12    # "scaled":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    return-void

    .line 357
    :catch_0
    move-exception v7

    .line 358
    .local v7, "e":Ljava/lang/Throwable;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 380
    .end local v7    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    .line 381
    .restart local v7    # "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 384
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_3
    new-instance v10, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$4;->val$path:Ljava/io/File;

    invoke-direct {v10, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 385
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v10, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 386
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    .line 387
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 388
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 389
    if-eqz v0, :cond_4

    .line 390
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2, v8}, Lorg/telegram/messenger/ImageLoader;->putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 395
    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$4;->val$callback:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 396
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$4;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 392
    :catch_2
    move-exception v7

    .line 393
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method
