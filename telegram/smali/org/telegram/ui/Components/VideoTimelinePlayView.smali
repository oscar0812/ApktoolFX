.class public Lorg/telegram/ui/Components/VideoTimelinePlayView;
.super Landroid/view/View;
.source "VideoTimelinePlayView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xa
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;
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

.field private delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

.field private drawableLeft:Landroid/graphics/drawable/Drawable;

.field private drawableRight:Landroid/graphics/drawable/Drawable;

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

.field private lastWidth:I

.field private maxProgressDiff:F

.field private mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

.field private minProgressDiff:F

.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private playProgress:F

.field private pressDx:F

.field private pressedLeft:Z

.field private pressedPlay:Z

.field private pressedRight:Z

.field private progressLeft:F

.field private progressRight:F

.field private rect1:Landroid/graphics/Rect;

.field private rect2:Landroid/graphics/Rect;

.field private rect3:Landroid/graphics/RectF;

.field private videoLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->sync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, -0x1000000

    const/high16 v1, 0x3f800000    # 1.0f

    .line 73
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    .line 43
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    .line 54
    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->maxProgressDiff:F

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->minProgressDiff:F

    .line 59
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint2:Landroid/graphics/Paint;

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint2:Landroid/graphics/Paint;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->drawableLeft:Landroid/graphics/drawable/Drawable;

    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->drawableLeft:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->drawableRight:Landroid/graphics/drawable/Drawable;

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->drawableRight:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/VideoTimelinePlayView;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelinePlayView;

    .prologue
    .line 33
    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameTimeOffset:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/VideoTimelinePlayView;)Landroid/media/MediaMetadataRetriever;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelinePlayView;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/VideoTimelinePlayView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelinePlayView;

    .prologue
    .line 33
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameWidth:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/VideoTimelinePlayView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelinePlayView;

    .prologue
    .line 33
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameHeight:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/VideoTimelinePlayView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelinePlayView;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/VideoTimelinePlayView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelinePlayView;

    .prologue
    .line 33
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->framesToLoad:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/VideoTimelinePlayView;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/VideoTimelinePlayView;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->reloadFrames(I)V

    return-void
.end method

.method private reloadFrames(I)V
    .locals 6
    .param p1, "frameNum"    # I

    .prologue
    const/4 v5, 0x0

    const/high16 v2, 0x41800000    # 16.0f

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-nez v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 270
    :cond_0
    if-nez p1, :cond_1

    .line 271
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->isRoundFrames:Z

    if-eqz v0, :cond_2

    .line 272
    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameWidth:I

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameHeight:I

    .line 273
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->framesToLoad:I

    .line 279
    :goto_1
    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoLength:J

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->framesToLoad:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameTimeOffset:J

    .line 281
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/VideoTimelinePlayView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$1;-><init>(Lorg/telegram/ui/Components/VideoTimelinePlayView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    .line 327
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

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

    .line 275
    :cond_2
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameHeight:I

    .line 276
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->framesToLoad:I

    .line 277
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->framesToLoad:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameWidth:I

    goto :goto_1
.end method


# virtual methods
.method public clearFrames()V
    .locals 3

    .prologue
    .line 363
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

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

    .line 364
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 368
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 369
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_2

    .line 370
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 371
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    .line 373
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->invalidate()V

    .line 374
    return-void
.end method

.method public destroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 331
    sget-object v3, Lorg/telegram/ui/Components/VideoTimelinePlayView;->sync:Ljava/lang/Object;

    monitor-enter v3

    .line 333
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v2, :cond_0

    .line 334
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 335
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

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

    .line 342
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 343
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 337
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 340
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 346
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 347
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v2, :cond_3

    .line 348
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 349
    iput-object v4, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    .line 351
    :cond_3
    return-void
.end method

.method public getLeftProgress()F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    return v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    return v0
.end method

.method public getRightProgress()F
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    return v0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 388
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v16, v2, v3

    .line 389
    .local v16, "width":I
    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int v14, v2, v3

    .line 390
    .local v14, "startX":I
    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int v12, v2, v3

    .line 392
    .local v12, "endX":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 393
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int v4, v4, v16

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    if-nez v2, :cond_1

    .line 395
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->reloadFrames(I)V

    .line 414
    :cond_0
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    .line 415
    .local v15, "top":I
    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    .line 417
    .local v11, "end":I
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v3, v2

    int-to-float v4, v15

    int-to-float v5, v14

    const/high16 v2, 0x42380000    # 46.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint2:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 418
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v12

    int-to-float v3, v2

    int-to-float v4, v15

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v2, v2, v16

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v2, v5

    int-to-float v5, v2

    const/high16 v2, 0x42380000    # 46.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint2:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 420
    int-to-float v3, v14

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v4, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v14

    int-to-float v5, v2

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 421
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v12

    int-to-float v3, v2

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v4, v2

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v12

    int-to-float v5, v2

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 422
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v14

    int-to-float v3, v2

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v4, v2

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v12

    int-to-float v5, v2

    int-to-float v6, v15

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 423
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v14

    int-to-float v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v11, v2

    int-to-float v4, v2

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v12

    int-to-float v5, v2

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 424
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v14, v3

    int-to-float v3, v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v14

    int-to-float v5, v5

    int-to-float v6, v11

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->drawableLeft:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v14, v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x42300000    # 44.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x41900000    # 18.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v14

    const/high16 v6, 0x42300000    # 44.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, 0x41900000    # 18.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    const/high16 v7, 0x41b00000    # 22.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->drawableLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v12

    int-to-float v3, v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v12

    int-to-float v5, v5

    int-to-float v6, v11

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->drawableRight:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v12

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x42300000    # 44.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x41900000    # 18.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v12

    const/high16 v6, 0x42300000    # 44.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, 0x41900000    # 18.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    const/high16 v7, 0x41b00000    # 22.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->drawableRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 436
    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    move/from16 v0, v16

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float v10, v2, v3

    .line 437
    .local v10, "cx":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v10, v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v10

    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint2:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 439
    const/high16 v2, 0x42500000    # 52.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40600000    # 3.5f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint2:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v10, v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v10

    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 443
    const/high16 v2, 0x42500000    # 52.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 444
    return-void

    .line 397
    .end local v10    # "cx":F
    .end local v11    # "end":I
    .end local v15    # "top":I
    :cond_1
    const/4 v13, 0x0

    .line 398
    .local v13, "offset":I
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_0

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 400
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_2

    .line 401
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->isRoundFrames:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameWidth:I

    div-int/lit8 v2, v2, 0x2

    :goto_1
    mul-int/2addr v2, v13

    add-int v17, v3, v2

    .line 402
    .local v17, "x":I
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    .line 403
    .local v18, "y":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->isRoundFrames:Z

    if-eqz v2, :cond_4

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect2:Landroid/graphics/Rect;

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int v3, v3, v17

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int v4, v4, v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect1:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect2:Landroid/graphics/Rect;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 410
    .end local v17    # "x":I
    .end local v18    # "y":I
    :cond_2
    :goto_2
    add-int/lit8 v13, v13, 0x1

    .line 398
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 401
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameWidth:I

    goto :goto_1

    .line 407
    .restart local v17    # "x":I
    .restart local v18    # "y":I
    :cond_4
    move/from16 v0, v17

    int-to-float v2, v0

    move/from16 v0, v18

    int-to-float v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 378
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 379
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 380
    .local v0, "widthSize":I
    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->lastWidth:I

    if-eq v1, v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->clearFrames()V

    .line 382
    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->lastWidth:I

    .line 384
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    const/4 v8, 0x0

    .line 240
    :goto_0
    return v8

    .line 121
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 122
    .local v6, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 124
    .local v7, "y":F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getMeasuredWidth()I

    move-result v8

    const/high16 v9, 0x42000000    # 32.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int v5, v8, v9

    .line 125
    .local v5, "width":I
    int-to-float v8, v5

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x41800000    # 16.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int v4, v8, v9

    .line 126
    .local v4, "startX":I
    int-to-float v8, v5

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    iget v10, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    iget v11, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x41800000    # 16.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int v3, v8, v9

    .line 127
    .local v3, "playX":I
    int-to-float v8, v5

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x41800000    # 16.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int v2, v8, v9

    .line 129
    .local v2, "endX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_7

    .line 130
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 131
    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-nez v8, :cond_1

    .line 132
    const/4 v8, 0x0

    goto :goto_0

    .line 134
    :cond_1
    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 135
    .local v0, "additionWidth":I
    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 136
    .local v1, "additionWidthPlay":I
    sub-int v8, v3, v1

    int-to-float v8, v8

    cmpg-float v8, v8, v6

    if-gtz v8, :cond_3

    add-int v8, v3, v1

    int-to-float v8, v8

    cmpg-float v8, v6, v8

    if-gtz v8, :cond_3

    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_3

    .line 137
    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz v8, :cond_2

    .line 138
    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    invoke-interface {v8}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStartDragging()V

    .line 140
    :cond_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    .line 141
    int-to-float v8, v3

    sub-float v8, v6, v8

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    .line 142
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->invalidate()V

    .line 143
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 144
    :cond_3
    sub-int v8, v4, v0

    int-to-float v8, v8

    cmpg-float v8, v8, v6

    if-gtz v8, :cond_5

    add-int v8, v4, v0

    int-to-float v8, v8

    cmpg-float v8, v6, v8

    if-gtz v8, :cond_5

    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_5

    .line 145
    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz v8, :cond_4

    .line 146
    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    invoke-interface {v8}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStartDragging()V

    .line 148
    :cond_4
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedLeft:Z

    .line 149
    int-to-float v8, v4

    sub-float v8, v6, v8

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    .line 150
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->invalidate()V

    .line 151
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 152
    :cond_5
    sub-int v8, v2, v0

    int-to-float v8, v8

    cmpg-float v8, v8, v6

    if-gtz v8, :cond_1e

    add-int v8, v2, v0

    int-to-float v8, v8

    cmpg-float v8, v6, v8

    if-gtz v8, :cond_1e

    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_1e

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_1e

    .line 153
    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz v8, :cond_6

    .line 154
    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    invoke-interface {v8}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStartDragging()V

    .line 156
    :cond_6
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedRight:Z

    .line 157
    int-to-float v8, v2

    sub-float v8, v6, v8

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    .line 158
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->invalidate()V

    .line 159
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 161
    .end local v0    # "additionWidth":I
    .end local v1    # "additionWidthPlay":I
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_e

    .line 162
    :cond_8
    iget-boolean v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedLeft:Z

    if-eqz v8, :cond_a

    .line 163
    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz v8, :cond_9

    .line 164
    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    invoke-interface {v8}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStopDragging()V

    .line 166
    :cond_9
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedLeft:Z

    .line 167
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 168
    :cond_a
    iget-boolean v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedRight:Z

    if-eqz v8, :cond_c

    .line 169
    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz v8, :cond_b

    .line 170
    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    invoke-interface {v8}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStopDragging()V

    .line 172
    :cond_b
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedRight:Z

    .line 173
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 174
    :cond_c
    iget-boolean v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    if-eqz v8, :cond_1e

    .line 175
    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz v8, :cond_d

    .line 176
    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    invoke-interface {v8}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStopDragging()V

    .line 178
    :cond_d
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    .line 179
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 181
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1e

    .line 182
    iget-boolean v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    if-eqz v8, :cond_12

    .line 183
    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    sub-float v8, v6, v8

    float-to-int v3, v8

    .line 184
    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int v8, v3, v8

    int-to-float v8, v8

    int-to-float v9, v5

    div-float/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 185
    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_11

    .line 186
    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    iput v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 190
    :cond_f
    :goto_1
    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    sub-float/2addr v8, v9

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    iget v10, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 191
    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz v8, :cond_10

    .line 192
    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    iget v10, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    iget v11, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    invoke-interface {v8, v9}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->onPlayProgressChanged(F)V

    .line 194
    :cond_10
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->invalidate()V

    .line 195
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 187
    :cond_11
    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_f

    .line 188
    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    iput v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    goto :goto_1

    .line 196
    :cond_12
    iget-boolean v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedLeft:Z

    if-eqz v8, :cond_18

    .line 197
    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    sub-float v8, v6, v8

    float-to-int v4, v8

    .line 198
    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    if-ge v4, v8, :cond_16

    .line 199
    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 203
    :cond_13
    :goto_2
    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int v8, v4, v8

    int-to-float v8, v8

    int-to-float v9, v5

    div-float/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    .line 204
    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    sub-float/2addr v8, v9

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->maxProgressDiff:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_17

    .line 205
    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->maxProgressDiff:F

    add-float/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    .line 212
    :cond_14
    :goto_3
    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz v8, :cond_15

    .line 213
    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    invoke-interface {v8, v9}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->onLeftProgressChanged(F)V

    .line 215
    :cond_15
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->invalidate()V

    .line 216
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 200
    :cond_16
    if-le v4, v2, :cond_13

    .line 201
    move v4, v2

    goto :goto_2

    .line 206
    :cond_17
    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->minProgressDiff:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_14

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    sub-float/2addr v8, v9

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->minProgressDiff:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_14

    .line 207
    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->minProgressDiff:F

    sub-float/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    .line 208
    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_14

    .line 209
    const/4 v8, 0x0

    iput v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    goto :goto_3

    .line 217
    :cond_18
    iget-boolean v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedRight:Z

    if-eqz v8, :cond_1e

    .line 218
    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    sub-float v8, v6, v8

    float-to-int v2, v8

    .line 219
    if-ge v2, v4, :cond_1c

    .line 220
    move v2, v4

    .line 224
    :cond_19
    :goto_4
    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int v8, v2, v8

    int-to-float v8, v8

    int-to-float v9, v5

    div-float/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    .line 225
    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    sub-float/2addr v8, v9

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->maxProgressDiff:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1d

    .line 226
    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->maxProgressDiff:F

    sub-float/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    .line 233
    :cond_1a
    :goto_5
    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz v8, :cond_1b

    .line 234
    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    invoke-interface {v8, v9}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->onRightProgressChanged(F)V

    .line 236
    :cond_1b
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->invalidate()V

    .line 237
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 221
    :cond_1c
    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v8, v5

    if-le v2, v8, :cond_19

    .line 222
    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int v2, v5, v8

    goto :goto_4

    .line 227
    :cond_1d
    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->minProgressDiff:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_1a

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    sub-float/2addr v8, v9

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->minProgressDiff:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1a

    .line 228
    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    iget v9, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->minProgressDiff:F

    add-float/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    .line 229
    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1a

    .line 230
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    goto :goto_5

    .line 240
    :cond_1e
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    .prologue
    .line 263
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    .line 264
    return-void
.end method

.method public setMaxProgressDiff(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 101
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->maxProgressDiff:F

    .line 102
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->maxProgressDiff:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 103
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->maxProgressDiff:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    .line 104
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->invalidate()V

    .line 106
    :cond_0
    return-void
.end method

.method public setMinProgressDiff(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 97
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->minProgressDiff:F

    .line 98
    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 358
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 359
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->invalidate()V

    .line 360
    return-void
.end method

.method public setRoundFrames(Z)V
    .locals 5
    .param p1, "value"    # Z

    .prologue
    const/high16 v4, 0x42280000    # 42.0f

    const/high16 v2, 0x41600000    # 14.0f

    .line 109
    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->isRoundFrames:Z

    .line 110
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->isRoundFrames:Z

    if-eqz v0, :cond_0

    .line 111
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

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect1:Landroid/graphics/Rect;

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect2:Landroid/graphics/Rect;

    .line 114
    :cond_0
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->destroy()V

    .line 249
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 250
    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    .line 251
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    .line 253
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 254
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "duration":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoLength:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v0    # "duration":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->invalidate()V

    .line 260
    return-void

    .line 256
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
