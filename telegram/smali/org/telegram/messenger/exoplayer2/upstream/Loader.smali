.class public final Lorg/telegram/messenger/exoplayer2/upstream/Loader;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;,
        Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;,
        Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;,
        Lorg/telegram/messenger/exoplayer2/upstream/Loader$UnexpectedLoaderException;
    }
.end annotation


# static fields
.field public static final DONT_RETRY:I = 0x2

.field public static final DONT_RETRY_FATAL:I = 0x3

.field private static final MSG_CANCEL:I = 0x1

.field private static final MSG_END_OF_SOURCE:I = 0x2

.field private static final MSG_FATAL_ERROR:I = 0x4

.field private static final MSG_IO_EXCEPTION:I = 0x3

.field private static final MSG_START:I = 0x0

.field public static final RETRY:I = 0x0

.field public static final RETRY_RESET_ERROR_COUNT:I = 0x1


# instance fields
.field private currentTask:Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask",
            "<+",
            "Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadExecutorService:Ljava/util/concurrent/ExecutorService;

.field private fatalError:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Util;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer2/upstream/Loader;)Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->currentTask:Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/messenger/exoplayer2/upstream/Loader;Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;)Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/upstream/Loader;
    .param p1, "x1"    # Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;

    .prologue
    .line 33
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->currentTask:Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;

    return-object p1
.end method

.method static synthetic access$102(Lorg/telegram/messenger/exoplayer2/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/upstream/Loader;
    .param p1, "x1"    # Ljava/io/IOException;

    .prologue
    .line 33
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->fatalError:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer2/upstream/Loader;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method public cancelLoading()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->currentTask:Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->cancel(Z)V

    .line 180
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->currentTask:Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->maybeThrowError(I)V

    .line 212
    return-void
.end method

.method public maybeThrowError(I)V
    .locals 2
    .param p1, "minRetryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->fatalError:Ljava/io/IOException;

    throw v0

    .line 218
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->currentTask:Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->currentTask:Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->currentTask:Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;

    iget p1, v1, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->defaultMinRetryCount:I

    .end local p1    # "minRetryCount":I
    :cond_1
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->maybeThrowError(I)V

    .line 222
    :cond_2
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->release(Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method

.method public release(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "postLoadAction"    # Ljava/lang/Runnable;

    .prologue
    .line 198
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->currentTask:Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->currentTask:Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->cancel(Z)V

    .line 201
    :cond_0
    if-eqz p1, :cond_1

    .line 202
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 204
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 205
    return-void
.end method

.method public startLoading(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;I)J
    .locals 8
    .param p3, "defaultMinRetryCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;",
            ">(TT;",
            "Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback",
            "<TT;>;I)J"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "loadable":Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;, "TT;"
    .local p2, "callback":Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;, "Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback<TT;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 162
    .local v2, "looper":Landroid/os/Looper;
    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 164
    .local v6, "startTimeMs":J
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/Loader;Landroid/os/Looper;Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;IJ)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/exoplayer2/upstream/Loader$LoadTask;->start(J)V

    .line 165
    return-wide v6

    .line 162
    .end local v6    # "startTimeMs":J
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
