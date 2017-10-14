.class Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;
.super Landroid/os/Handler;
.source "InstantCameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/InstantCameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncoderHandler"
.end annotation


# instance fields
.field private mWeakEncoder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 1
    .param p1, "encoder"    # Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    .prologue
    .line 1238
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1239
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;->mWeakEncoder:Ljava/lang/ref/WeakReference;

    .line 1240
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .prologue
    .line 1283
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1284
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "inputMessage"    # Landroid/os/Message;

    .prologue
    .line 1244
    iget v6, p1, Landroid/os/Message;->what:I

    .line 1245
    .local v6, "what":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1247
    .local v3, "obj":Ljava/lang/Object;
    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;->mWeakEncoder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    .line 1248
    .local v2, "encoder":Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;
    if-nez v2, :cond_0

    .line 1280
    :goto_0
    return-void

    .line 1252
    :cond_0
    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 1255
    :pswitch_0
    :try_start_0
    const-string/jumbo v7, "start encoder"

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1256
    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3400(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1257
    :catch_0
    move-exception v1

    .line 1258
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1259
    const/4 v7, 0x0

    invoke-static {v2, v7}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3500(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;I)V

    .line 1260
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 1265
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_1
    const-string/jumbo v7, "stop encoder"

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1266
    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v7}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3500(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;I)V

    goto :goto_0

    .line 1270
    :pswitch_2
    iget v7, p1, Landroid/os/Message;->arg1:I

    int-to-long v8, v7

    const/16 v7, 0x20

    shl-long/2addr v8, v7

    iget v7, p1, Landroid/os/Message;->arg2:I

    int-to-long v10, v7

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    or-long v4, v8, v10

    .line 1271
    .local v4, "timestamp":J
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 1272
    .local v0, "cameraId":Ljava/lang/Integer;
    invoke-static {v2, v4, v5, v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3600(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;JLjava/lang/Integer;)V

    goto :goto_0

    .line 1276
    .end local v0    # "cameraId":Ljava/lang/Integer;
    .end local v4    # "timestamp":J
    :pswitch_3
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    invoke-static {v2, v7}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3700(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V

    goto :goto_0

    .line 1252
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
