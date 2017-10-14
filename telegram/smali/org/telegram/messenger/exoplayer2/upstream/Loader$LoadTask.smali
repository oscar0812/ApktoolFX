.class final Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;
.super Landroid/os/Handler;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LoadTask"


# instance fields
.field private final callback:Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private currentError:Ljava/io/IOException;

.field public final defaultMinRetryCount:I

.field private errorCount:I

.field private volatile executorThread:Ljava/lang/Thread;

.field private final loadable:Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile released:Z

.field private final startTimeMs:J

.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/upstream/Loader;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/Loader;Landroid/os/Looper;Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;IJ)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .param p5, "defaultMinRetryCount"    # I
    .param p6, "startTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback",
            "<TT;>;IJ)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;, "Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    .local p3, "loadable":Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;, "TT;"
    .local p4, "callback":Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;, "Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback<TT;>;"
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->this$0:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    .line 244
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 245
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->loadable:Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;

    .line 246
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->callback:Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;

    .line 247
    iput p5, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->defaultMinRetryCount:I

    .line 248
    iput-wide p6, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->startTimeMs:J

    .line 249
    return-void
.end method

.method private execute()V
    .locals 2

    .prologue
    .line 371
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;, "Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    .line 372
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->this$0:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->access$200(Lorg/telegram/messenger/exoplayer2/upstream/Loader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->this$0:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->access$000(Lorg/telegram/messenger/exoplayer2/upstream/Loader;)Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 373
    return-void
.end method

.method private finish()V
    .locals 2

    .prologue
    .line 376
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;, "Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->this$0:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->access$002(Lorg/telegram/messenger/exoplayer2/upstream/Loader;Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;)Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;

    .line 377
    return-void
.end method

.method private getRetryDelayMillis()J
    .locals 2

    .prologue
    .line 380
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;, "Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->errorCount:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public cancel(Z)V
    .locals 7
    .param p1, "released"    # Z

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;, "Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 268
    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->released:Z

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    .line 270
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->removeMessages(I)V

    .line 272
    if-nez p1, :cond_0

    .line 273
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z

    .line 281
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 282
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->finish()V

    .line 283
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 284
    .local v2, "nowMs":J
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->callback:Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->loadable:Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->startTimeMs:J

    sub-long v4, v2, v4

    invoke-interface/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;->onLoadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJZ)V

    .line 286
    .end local v2    # "nowMs":J
    :cond_1
    return-void

    .line 276
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->loadable:Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;->cancelLoad()V

    .line 277
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;, "Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 333
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-eqz v0, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_2

    .line 337
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->execute()V

    goto :goto_0

    .line 340
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 341
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 343
    :cond_3
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->finish()V

    .line 344
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 345
    .local v2, "nowMs":J
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->startTimeMs:J

    sub-long v4, v2, v0

    .line 346
    .local v4, "durationMs":J
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->loadable:Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;->isLoadCanceled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 347
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->callback:Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->loadable:Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;

    invoke-interface/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;->onLoadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJZ)V

    goto :goto_0

    .line 350
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 352
    :pswitch_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->callback:Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->loadable:Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;

    invoke-interface/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;->onLoadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJZ)V

    goto :goto_0

    .line 355
    :pswitch_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->callback:Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->loadable:Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;->onLoadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJ)V

    goto :goto_0

    .line 358
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/io/IOException;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    .line 359
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->callback:Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->loadable:Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    invoke-interface/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;->onLoadError(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I

    move-result v7

    .line 360
    .local v7, "retryAction":I
    const/4 v0, 0x3

    if-ne v7, v0, :cond_5

    .line 361
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->this$0:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->access$102(Lorg/telegram/messenger/exoplayer2/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_0

    .line 362
    :cond_5
    const/4 v0, 0x2

    if-eq v7, v0, :cond_0

    .line 363
    if-ne v7, v8, :cond_6

    move v0, v8

    :goto_1
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->errorCount:I

    .line 364
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->getRetryDelayMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->start(J)V

    goto :goto_0

    .line 363
    :cond_6
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->errorCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 350
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public maybeThrowError(I)V
    .locals 1
    .param p1, "minRetryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;, "Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->errorCount:I

    if-le v0, p1, :cond_0

    .line 253
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    throw v0

    .line 255
    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;, "Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 291
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    .line 292
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->loadable:Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;->isLoadCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "load:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->loadable:Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    .line 295
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->loadable:Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;->load()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :try_start_2
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->endSection()V

    .line 300
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-nez v1, :cond_1

    .line 301
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z

    .line 329
    :cond_1
    :goto_0
    return-void

    .line 297
    :catchall_0
    move-exception v1

    invoke-static {}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->endSection()V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-nez v1, :cond_1

    .line 305
    invoke-virtual {p0, v4, v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 307
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->loadable:Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;->isLoadCanceled()Z

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 310
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-nez v1, :cond_1

    .line 311
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 313
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "LoadTask"

    const-string/jumbo v2, "Unexpected exception loading stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-nez v1, :cond_1

    .line 317
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, v4, v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 319
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Error;
    const-string/jumbo v1, "LoadTask"

    const-string/jumbo v2, "Unexpected error loading stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-nez v1, :cond_2

    .line 325
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 327
    :cond_2
    throw v0
.end method

.method public start(J)V
    .locals 5
    .param p1, "delayMillis"    # J

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;, "Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask<TT;>;"
    const/4 v1, 0x0

    .line 258
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->this$0:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->access$000(Lorg/telegram/messenger/exoplayer2/upstream/Loader;)Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 259
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->this$0:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-static {v0, p0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->access$002(Lorg/telegram/messenger/exoplayer2/upstream/Loader;Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;)Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;

    .line 260
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 261
    invoke-virtual {p0, v1, p1, p2}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->sendEmptyMessageDelayed(IJ)Z

    .line 265
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 258
    goto :goto_0

    .line 263
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->execute()V

    goto :goto_1
.end method
