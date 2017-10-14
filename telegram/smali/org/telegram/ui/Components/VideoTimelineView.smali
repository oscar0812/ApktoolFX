.class public Lorg/telegram/ui/Components/VideoTimelineView;
.super Landroid/view/View;
.source "VideoTimelineView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xa
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;
    }
.end annotation


# static fields
.field private static final sync:Ljava/lang/Object;


# instance fields
.field private currentTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

.field private frameHeight:I

.field private frameTimeOffset:J

.field private frameWidth:I

.field private frames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private framesToLoad:I

.field private isRoundFrames:Z

.field private maxProgressDiff:F

.field private mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

.field private minProgressDiff:F

.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private pressDx:F

.field private pressedLeft:Z

.field private pressedRight:Z

.field private progressLeft:F

.field private progressRight:F

.field private rect1:Landroid/graphics/Rect;

.field private rect2:Landroid/graphics/Rect;

.field private videoLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/VideoTimelineView;->sync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 61
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    .line 47
    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->minProgressDiff:F

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint2:Landroid/graphics/Paint;

    .line 65
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint2:Landroid/graphics/Paint;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/VideoTimelineView;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelineView;

    .prologue
    .line 28
    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameTimeOffset:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/VideoTimelineView;)Landroid/media/MediaMetadataRetriever;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelineView;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/VideoTimelineView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelineView;

    .prologue
    .line 28
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/VideoTimelineView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelineView;

    .prologue
    .line 28
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/VideoTimelineView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelineView;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/VideoTimelineView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelineView;

    .prologue
    .line 28
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/VideoTimelineView;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelineView;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/VideoTimelineView;->reloadFrames(I)V

    return-void
.end method

.method private reloadFrames(I)V
    .locals 6
    .param p1, "frameNum"    # I

    .prologue
    const/4 v5, 0x0

    const/high16 v2, 0x41800000    # 16.0f

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 220
    :cond_0
    if-nez p1, :cond_1

    .line 221
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->isRoundFrames:Z

    if-eqz v0, :cond_2

    .line 222
    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    .line 223
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    .line 229
    :goto_1
    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->videoLength:J

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameTimeOffset:J

    .line 231
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/VideoTimelineView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/VideoTimelineView$1;-><init>(Lorg/telegram/ui/Components/VideoTimelineView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v5, v2, v3

    const/4 v3, 0x2

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 225
    :cond_2
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    .line 226
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    .line 227
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I

    goto :goto_1
.end method


# virtual methods
.method public clearFrames()V
    .locals 3

    .prologue
    .line 304
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 305
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 309
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 310
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_2

    .line 311
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 312
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    .line 314
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->invalidate()V

    .line 315
    return-void
.end method

.method public destroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 281
    sget-object v3, Lorg/telegram/ui/Components/VideoTimelineView;->sync:Ljava/lang/Object;

    monitor-enter v3

    .line 283
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v2, :cond_0

    .line 284
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 285
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 292
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 287
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 290
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 296
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 297
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v2, :cond_3

    .line 298
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 299
    iput-object v4, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    .line 301
    :cond_3
    return-void
.end method

.method public getLeftProgress()F
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    return v0
.end method

.method public getRightProgress()F
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 319
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v13, v1, v2

    .line 320
    .local v13, "width":I
    int-to-float v1, v13

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v11, v1, v2

    .line 321
    .local v11, "startX":I
    int-to-float v1, v13

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v9, v1, v2

    .line 323
    .local v9, "endX":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 324
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v13

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredHeight()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 325
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    if-nez v1, :cond_1

    .line 326
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/VideoTimelineView;->reloadFrames(I)V

    .line 345
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    .line 347
    .local v12, "top":I
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v2, v1

    int-to-float v3, v12

    int-to-float v4, v11

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v12

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelineView;->paint2:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 348
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v9

    int-to-float v2, v1

    int-to-float v3, v12

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v13

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v12

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelineView;->paint2:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 350
    int-to-float v2, v11

    const/4 v3, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v11

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 351
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v9

    int-to-float v2, v1

    const/4 v3, 0x0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v9

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 352
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v11

    int-to-float v2, v1

    const/4 v3, 0x0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v9

    int-to-float v4, v1

    int-to-float v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 353
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v11

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v12

    int-to-float v3, v1

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v9

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 354
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 356
    int-to-float v1, v11

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 357
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v9

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 358
    return-void

    .line 328
    .end local v12    # "top":I
    :cond_1
    const/4 v10, 0x0

    .line 329
    .local v10, "offset":I
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_0

    .line 330
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 331
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_2

    .line 332
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/VideoTimelineView;->isRoundFrames:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I

    div-int/lit8 v1, v1, 0x2

    :goto_1
    mul-int/2addr v1, v10

    add-int v14, v2, v1

    .line 333
    .local v14, "x":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    .line 334
    .local v15, "y":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/VideoTimelineView;->isRoundFrames:Z

    if-eqz v1, :cond_4

    .line 335
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelineView;->rect2:Landroid/graphics/Rect;

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v14

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v15

    invoke-virtual {v1, v14, v15, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelineView;->rect1:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelineView;->rect2:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 341
    .end local v14    # "x":I
    .end local v15    # "y":I
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 329
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 332
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I

    goto :goto_1

    .line 338
    .restart local v14    # "x":I
    .restart local v15    # "y":I
    :cond_4
    int-to-float v1, v14

    int-to-float v2, v15

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/high16 v10, 0x41800000    # 16.0f

    const/4 v7, 0x1

    .line 98
    if-nez p1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v6

    .line 101
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 102
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 104
    .local v5, "y":F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredWidth()I

    move-result v8

    const/high16 v9, 0x42000000    # 32.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int v3, v8, v9

    .line 105
    .local v3, "width":I
    int-to-float v8, v3

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int v2, v8, v9

    .line 106
    .local v2, "startX":I
    int-to-float v8, v3

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int v1, v8, v9

    .line 108
    .local v1, "endX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_5

    .line 109
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 110
    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v8, :cond_0

    .line 113
    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 114
    .local v0, "additionWidth":I
    sub-int v8, v2, v0

    int-to-float v8, v8

    cmpg-float v8, v8, v4

    if-gtz v8, :cond_3

    add-int v8, v2, v0

    int-to-float v8, v8

    cmpg-float v8, v4, v8

    if-gtz v8, :cond_3

    cmpl-float v8, v5, v11

    if-ltz v8, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_3

    .line 115
    iget-object v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz v6, :cond_2

    .line 116
    iget-object v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    invoke-interface {v6}, Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;->didStartDragging()V

    .line 118
    :cond_2
    iput-boolean v7, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    .line 119
    int-to-float v6, v2

    sub-float v6, v4, v6

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    .line 120
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->invalidate()V

    move v6, v7

    .line 121
    goto :goto_0

    .line 122
    :cond_3
    sub-int v8, v1, v0

    int-to-float v8, v8

    cmpg-float v8, v8, v4

    if-gtz v8, :cond_0

    add-int v8, v1, v0

    int-to-float v8, v8

    cmpg-float v8, v4, v8

    if-gtz v8, :cond_0

    cmpl-float v8, v5, v11

    if-ltz v8, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_0

    .line 123
    iget-object v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz v6, :cond_4

    .line 124
    iget-object v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    invoke-interface {v6}, Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;->didStartDragging()V

    .line 126
    :cond_4
    iput-boolean v7, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    .line 127
    int-to-float v6, v1

    sub-float v6, v4, v6

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    .line 128
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->invalidate()V

    move v6, v7

    .line 129
    goto/16 :goto_0

    .line 131
    .end local v0    # "additionWidth":I
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-eq v8, v7, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_a

    .line 132
    :cond_6
    iget-boolean v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    if-eqz v8, :cond_8

    .line 133
    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz v8, :cond_7

    .line 134
    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    invoke-interface {v8}, Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;->didStopDragging()V

    .line 136
    :cond_7
    iput-boolean v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    move v6, v7

    .line 137
    goto/16 :goto_0

    .line 138
    :cond_8
    iget-boolean v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    if-eqz v8, :cond_0

    .line 139
    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz v8, :cond_9

    .line 140
    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    invoke-interface {v8}, Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;->didStopDragging()V

    .line 142
    :cond_9
    iput-boolean v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    move v6, v7

    .line 143
    goto/16 :goto_0

    .line 145
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 146
    iget-boolean v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    if-eqz v8, :cond_10

    .line 147
    iget v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    sub-float v6, v4, v6

    float-to-int v2, v6

    .line 148
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    if-ge v2, v6, :cond_e

    .line 149
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 153
    :cond_b
    :goto_1
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v2, v6

    int-to-float v6, v6

    int-to-float v8, v3

    div-float/2addr v6, v8

    iput v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    .line 154
    iget v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    sub-float/2addr v6, v8

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_f

    .line 155
    iget v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    add-float/2addr v6, v8

    iput v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    .line 162
    :cond_c
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz v6, :cond_d

    .line 163
    iget-object v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    invoke-interface {v6, v8}, Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;->onLeftProgressChanged(F)V

    .line 165
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->invalidate()V

    move v6, v7

    .line 166
    goto/16 :goto_0

    .line 150
    :cond_e
    if-le v2, v1, :cond_b

    .line 151
    move v2, v1

    goto :goto_1

    .line 156
    :cond_f
    iget v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->minProgressDiff:F

    cmpl-float v6, v6, v11

    if-eqz v6, :cond_c

    iget v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    sub-float/2addr v6, v8

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->minProgressDiff:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_c

    .line 157
    iget v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->minProgressDiff:F

    sub-float/2addr v6, v8

    iput v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    .line 158
    iget v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    cmpg-float v6, v6, v11

    if-gez v6, :cond_c

    .line 159
    iput v11, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    goto :goto_2

    .line 167
    :cond_10
    iget-boolean v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    if-eqz v8, :cond_0

    .line 168
    iget v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    sub-float v6, v4, v6

    float-to-int v1, v6

    .line 169
    if-ge v1, v2, :cond_14

    .line 170
    move v1, v2

    .line 174
    :cond_11
    :goto_3
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v1, v6

    int-to-float v6, v6

    int-to-float v8, v3

    div-float/2addr v6, v8

    iput v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    .line 175
    iget v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    sub-float/2addr v6, v8

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_15

    .line 176
    iget v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    sub-float/2addr v6, v8

    iput v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    .line 183
    :cond_12
    :goto_4
    iget-object v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz v6, :cond_13

    .line 184
    iget-object v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    invoke-interface {v6, v8}, Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;->onRightProgressChanged(F)V

    .line 186
    :cond_13
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->invalidate()V

    move v6, v7

    .line 187
    goto/16 :goto_0

    .line 171
    :cond_14
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v3

    if-le v1, v6, :cond_11

    .line 172
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int v1, v3, v6

    goto :goto_3

    .line 177
    :cond_15
    iget v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->minProgressDiff:F

    cmpl-float v6, v6, v11

    if-eqz v6, :cond_12

    iget v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    sub-float/2addr v6, v8

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->minProgressDiff:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_12

    .line 178
    iget v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->minProgressDiff:F

    add-float/2addr v6, v8

    iput v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    .line 179
    iget v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    cmpl-float v6, v6, v12

    if-lez v6, :cond_12

    .line 180
    iput v12, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    goto :goto_4
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    .prologue
    .line 213
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    .line 214
    return-void
.end method

.method public setMaxProgressDiff(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    .line 82
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 83
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    .line 84
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->invalidate()V

    .line 86
    :cond_0
    return-void
.end method

.method public setMinProgressDiff(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 77
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->minProgressDiff:F

    .line 78
    return-void
.end method

.method public setRoundFrames(Z)V
    .locals 5
    .param p1, "value"    # Z

    .prologue
    const/high16 v4, 0x42280000    # 42.0f

    const/high16 v2, 0x41600000    # 14.0f

    .line 89
    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->isRoundFrames:Z

    .line 90
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->isRoundFrames:Z

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->rect1:Landroid/graphics/Rect;

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->rect2:Landroid/graphics/Rect;

    .line 94
    :cond_0
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->destroy()V

    .line 199
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 200
    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    .line 201
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    .line 203
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "duration":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->videoLength:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v0    # "duration":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->invalidate()V

    .line 210
    return-void

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
