.class Lorg/telegram/ui/Components/PhotoPaintView$26;
.super Ljava/lang/Object;
.source "PhotoPaintView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoPaintView;->detectFaces()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoPaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 1250
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView$26;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 1253
    const/4 v3, 0x0

    .line 1255
    .local v3, "faceDetector":Lcom/google/android/gms/vision/face/FaceDetector;
    :try_start_0
    new-instance v10, Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    iget-object v11, p0, Lorg/telegram/ui/Components/PhotoPaintView$26;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    .line 1256
    invoke-virtual {v10, v11}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setMode(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v10

    const/4 v11, 0x1

    .line 1257
    invoke-virtual {v10, v11}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setLandmarkType(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v10

    const/4 v11, 0x0

    .line 1258
    invoke-virtual {v10, v11}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setTrackingEnabled(Z)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->build()Lcom/google/android/gms/vision/face/FaceDetector;

    move-result-object v3

    .line 1259
    invoke-virtual {v3}, Lcom/google/android/gms/vision/face/FaceDetector;->isOperational()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1260
    const-string/jumbo v10, "face detection is not operational"

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1286
    if-eqz v3, :cond_0

    .line 1287
    invoke-virtual {v3}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    .line 1290
    :cond_0
    :goto_0
    return-void

    .line 1264
    :cond_1
    :try_start_1
    new-instance v10, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v10}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    iget-object v11, p0, Lorg/telegram/ui/Components/PhotoPaintView$26;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v11}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3100(Lorg/telegram/ui/Components/PhotoPaintView;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/vision/Frame$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v10

    iget-object v11, p0, Lorg/telegram/ui/Components/PhotoPaintView$26;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v11}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3000(Lorg/telegram/ui/Components/PhotoPaintView;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/vision/Frame$Builder;->setRotation(I)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 1267
    .local v5, "frame":Lcom/google/android/gms/vision/Frame;
    :try_start_2
    invoke-virtual {v3, v5}, Lcom/google/android/gms/vision/face/FaceDetector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 1272
    .local v4, "faces":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/gms/vision/face/Face;>;"
    :try_start_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1273
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Components/Paint/PhotoFace;>;"
    iget-object v10, p0, Lorg/telegram/ui/Components/PhotoPaintView$26;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v10}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3200(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Size;

    move-result-object v9

    .line 1274
    .local v9, "targetSize":Lorg/telegram/ui/Components/Size;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v6, v10, :cond_3

    .line 1275
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 1276
    .local v7, "key":I
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/vision/face/Face;

    .line 1277
    .local v1, "f":Lcom/google/android/gms/vision/face/Face;
    new-instance v2, Lorg/telegram/ui/Components/Paint/PhotoFace;

    iget-object v10, p0, Lorg/telegram/ui/Components/PhotoPaintView$26;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v10}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3100(Lorg/telegram/ui/Components/PhotoPaintView;)Landroid/graphics/Bitmap;

    move-result-object v10

    iget-object v11, p0, Lorg/telegram/ui/Components/PhotoPaintView$26;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v11}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3300(Lorg/telegram/ui/Components/PhotoPaintView;)Z

    move-result v11

    invoke-direct {v2, v1, v10, v9, v11}, Lorg/telegram/ui/Components/Paint/PhotoFace;-><init>(Lcom/google/android/gms/vision/face/Face;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Size;Z)V

    .line 1278
    .local v2, "face":Lorg/telegram/ui/Components/Paint/PhotoFace;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/PhotoFace;->isSufficient()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1279
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1274
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1268
    .end local v1    # "f":Lcom/google/android/gms/vision/face/Face;
    .end local v2    # "face":Lorg/telegram/ui/Components/Paint/PhotoFace;
    .end local v4    # "faces":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/gms/vision/face/Face;>;"
    .end local v6    # "i":I
    .end local v7    # "key":I
    .end local v8    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Components/Paint/PhotoFace;>;"
    .end local v9    # "targetSize":Lorg/telegram/ui/Components/Size;
    :catch_0
    move-exception v0

    .line 1269
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1286
    if-eqz v3, :cond_0

    .line 1287
    invoke-virtual {v3}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    goto :goto_0

    .line 1282
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v4    # "faces":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/gms/vision/face/Face;>;"
    .restart local v6    # "i":I
    .restart local v8    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Components/Paint/PhotoFace;>;"
    .restart local v9    # "targetSize":Lorg/telegram/ui/Components/Size;
    :cond_3
    :try_start_4
    iget-object v10, p0, Lorg/telegram/ui/Components/PhotoPaintView$26;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v10, v8}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3402(Lorg/telegram/ui/Components/PhotoPaintView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1286
    if-eqz v3, :cond_0

    .line 1287
    invoke-virtual {v3}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    goto :goto_0

    .line 1283
    .end local v4    # "faces":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/gms/vision/face/Face;>;"
    .end local v5    # "frame":Lcom/google/android/gms/vision/Frame;
    .end local v6    # "i":I
    .end local v8    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Components/Paint/PhotoFace;>;"
    .end local v9    # "targetSize":Lorg/telegram/ui/Components/Size;
    :catch_1
    move-exception v0

    .line 1284
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1286
    if-eqz v3, :cond_0

    .line 1287
    invoke-virtual {v3}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    goto :goto_0

    .line 1286
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    if-eqz v3, :cond_4

    .line 1287
    invoke-virtual {v3}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    :cond_4
    throw v10
.end method
