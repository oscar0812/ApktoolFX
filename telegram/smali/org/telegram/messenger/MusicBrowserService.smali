.class public Lorg/telegram/messenger/MusicBrowserService;
.super Landroid/service/media/MediaBrowserService;
.source "MusicBrowserService.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;,
        Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;
    }
.end annotation


# static fields
.field public static final ACTION_CMD:Ljava/lang/String; = "com.example.android.mediabrowserservice.ACTION_CMD"

.field public static final CMD_NAME:Ljava/lang/String; = "CMD_NAME"

.field public static final CMD_PAUSE:Ljava/lang/String; = "CMD_PAUSE"

.field private static final MEDIA_ID_ROOT:Ljava/lang/String; = "__ROOT__"

.field private static final SLOT_RESERVATION_QUEUE:Ljava/lang/String; = "com.google.android.gms.car.media.ALWAYS_RESERVE_SPACE_FOR.ACTION_QUEUE"

.field private static final SLOT_RESERVATION_SKIP_TO_NEXT:Ljava/lang/String; = "com.google.android.gms.car.media.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

.field private static final SLOT_RESERVATION_SKIP_TO_PREV:Ljava/lang/String; = "com.google.android.gms.car.media.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

.field private static final STOP_DELAY:I = 0x7530


# instance fields
.field private bitmapRect:Landroid/graphics/RectF;

.field private chats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation
.end field

.field private chatsLoaded:Z

.field private delayedStopHandler:Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;

.field private dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lastSelectedDialog:I

.field private loadingChats:Z

.field private mediaSession:Landroid/media/session/MediaSession;

.field private musicObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private musicQueues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private roundPaint:Landroid/graphics/Paint;

.field private serviceStarted:Z

.field private users:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/service/media/MediaBrowserService;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->dialogs:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->users:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->chats:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->musicObjects:Ljava/util/HashMap;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->musicQueues:Ljava/util/HashMap;

    .line 84
    new-instance v0, Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;-><init>(Lorg/telegram/messenger/MusicBrowserService;Lorg/telegram/messenger/MusicBrowserService$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->delayedStopHandler:Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/MusicBrowserService;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MusicBrowserService;

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:I

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/messenger/MusicBrowserService;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MusicBrowserService;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:I

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MusicBrowserService;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/MusicBrowserService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MusicBrowserService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MusicBrowserService;->updatePlaybackState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/MusicBrowserService;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MusicBrowserService;

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/telegram/messenger/MusicBrowserService;->handlePlayRequest()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/MusicBrowserService;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MusicBrowserService;

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/telegram/messenger/MusicBrowserService;->handlePauseRequest()V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/MusicBrowserService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MusicBrowserService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MusicBrowserService;->handleStopRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1602(Lorg/telegram/messenger/MusicBrowserService;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MusicBrowserService;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lorg/telegram/messenger/MusicBrowserService;->serviceStarted:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MusicBrowserService;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->dialogs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MusicBrowserService;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->musicObjects:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MusicBrowserService;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->musicQueues:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MusicBrowserService;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->users:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MusicBrowserService;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->chats:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/messenger/MusicBrowserService;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MusicBrowserService;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lorg/telegram/messenger/MusicBrowserService;->chatsLoaded:Z

    return p1
.end method

.method static synthetic access$802(Lorg/telegram/messenger/MusicBrowserService;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MusicBrowserService;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lorg/telegram/messenger/MusicBrowserService;->loadingChats:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/messenger/MusicBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MusicBrowserService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/service/media/MediaBrowserService$Result;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MusicBrowserService;->loadChildrenImpl(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    return-void
.end method

.method private createRoundBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 336
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 337
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x2

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 338
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 339
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 341
    .local v4, "result":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 342
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 343
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, v0, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 344
    .local v5, "shader":Landroid/graphics/BitmapShader;
    iget-object v6, p0, Lorg/telegram/messenger/MusicBrowserService;->roundPaint:Landroid/graphics/Paint;

    if-nez v6, :cond_0

    .line 345
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lorg/telegram/messenger/MusicBrowserService;->roundPaint:Landroid/graphics/Paint;

    .line 346
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/MusicBrowserService;->bitmapRect:Landroid/graphics/RectF;

    .line 348
    :cond_0
    iget-object v6, p0, Lorg/telegram/messenger/MusicBrowserService;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 349
    iget-object v6, p0, Lorg/telegram/messenger/MusicBrowserService;->bitmapRect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 350
    iget-object v6, p0, Lorg/telegram/messenger/MusicBrowserService;->bitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/messenger/MusicBrowserService;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "result":Landroid/graphics/Bitmap;
    .end local v5    # "shader":Landroid/graphics/BitmapShader;
    :goto_0
    return-object v4

    .line 353
    :catch_0
    move-exception v2

    .line 354
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 356
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getAvailableActions()J
    .locals 6

    .prologue
    .line 508
    const-wide/16 v0, 0xc04

    .line 509
    .local v0, "actions":J
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    .line 510
    .local v2, "playingMessageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :cond_1

    .line 511
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v3

    if-nez v3, :cond_0

    .line 512
    const-wide/16 v4, 0x2

    or-long/2addr v0, v4

    .line 514
    :cond_0
    const-wide/16 v4, 0x10

    or-long/2addr v0, v4

    .line 515
    const-wide/16 v4, 0x20

    or-long/2addr v0, v4

    .line 517
    :cond_1
    return-wide v0
.end method

.method private handlePauseRequest()V
    .locals 4

    .prologue
    .line 561
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    .line 562
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->delayedStopHandler:Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 563
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->delayedStopHandler:Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 564
    return-void
.end method

.method private handlePlayRequest()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 532
    iget-object v4, p0, Lorg/telegram/messenger/MusicBrowserService;->delayedStopHandler:Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 533
    iget-boolean v4, p0, Lorg/telegram/messenger/MusicBrowserService;->serviceStarted:Z

    if-nez v4, :cond_0

    .line 534
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/telegram/messenger/MusicBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lorg/telegram/messenger/MusicBrowserService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/MusicBrowserService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 535
    iput-boolean v7, p0, Lorg/telegram/messenger/MusicBrowserService;->serviceStarted:Z

    .line 538
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v4}, Landroid/media/session/MediaSession;->isActive()Z

    move-result v4

    if-nez v4, :cond_1

    .line 539
    iget-object v4, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v4, v7}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 542
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    .line 543
    .local v3, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-nez v3, :cond_2

    .line 558
    :goto_0
    return-void

    .line 546
    :cond_2
    new-instance v2, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v2}, Landroid/media/MediaMetadata$Builder;-><init>()V

    .line 547
    .local v2, "builder":Landroid/media/MediaMetadata$Builder;
    const-string/jumbo v4, "android.media.metadata.DURATION"

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v6, v5

    invoke-virtual {v2, v4, v6, v7}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 548
    const-string/jumbo v4, "android.media.metadata.ARTIST"

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 549
    const-string/jumbo v4, "android.media.metadata.TITLE"

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 550
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController;->getAudioInfo()Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v0

    .line 551
    .local v0, "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    if-eqz v0, :cond_3

    .line 552
    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCover()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 553
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 554
    const-string/jumbo v4, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v2, v4, v1}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    .line 557
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v2}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    goto :goto_0
.end method

.method private handleStopRequest(Ljava/lang/String;)V
    .locals 5
    .param p1, "withError"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 521
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->delayedStopHandler:Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 522
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->delayedStopHandler:Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v4, v2, v3}, Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 523
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MusicBrowserService;->updatePlaybackState(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Lorg/telegram/messenger/MusicBrowserService;->stopSelf()V

    .line 525
    iput-boolean v4, p0, Lorg/telegram/messenger/MusicBrowserService;->serviceStarted:Z

    .line 526
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 527
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 528
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 529
    return-void
.end method

.method private loadChildrenImpl(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 15
    .param p1, "parentMediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p2, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v9, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    const-string/jumbo v12, "__ROOT__"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 276
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_0
    iget-object v12, p0, Lorg/telegram/messenger/MusicBrowserService;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_8

    .line 277
    iget-object v12, p0, Lorg/telegram/messenger/MusicBrowserService;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 278
    .local v7, "did":I
    new-instance v12, Landroid/media/MediaDescription$Builder;

    invoke-direct {v12}, Landroid/media/MediaDescription$Builder;-><init>()V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "__CHAT_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object v5

    .line 279
    .local v5, "builder":Landroid/media/MediaDescription$Builder;
    const/4 v3, 0x0

    .line 280
    .local v3, "avatar":Lorg/telegram/tgnet/TLRPC$FileLocation;
    if-lez v7, :cond_5

    .line 281
    iget-object v12, p0, Lorg/telegram/messenger/MusicBrowserService;->users:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$User;

    .line 282
    .local v11, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v11, :cond_4

    .line 283
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v12, v13}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    .line 284
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v12, :cond_0

    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v12, v12, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    if-eqz v12, :cond_0

    .line 285
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v3, v12, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 301
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_0
    :goto_1
    const/4 v4, 0x0

    .line 302
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    .line 303
    const/4 v12, 0x1

    invoke-static {v3, v12}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v12

    invoke-direct {p0, v12}, Lorg/telegram/messenger/MusicBrowserService;->createRoundBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 304
    if-eqz v4, :cond_1

    .line 305
    invoke-virtual {v5, v4}, Landroid/media/MediaDescription$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;

    .line 308
    :cond_1
    if-eqz v3, :cond_2

    if-nez v4, :cond_3

    .line 309
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "android.resource://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lorg/telegram/messenger/MusicBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "/drawable/contact_blue"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/media/MediaDescription$Builder;->setIconUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    .line 311
    :cond_3
    new-instance v12, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-virtual {v5}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object v13

    const/4 v14, 0x1

    invoke-direct {v12, v13, v14}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 288
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4
    const-string/jumbo v12, "DELETED USER"

    invoke-virtual {v5, v12}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    goto :goto_1

    .line 291
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5
    iget-object v12, p0, Lorg/telegram/messenger/MusicBrowserService;->chats:Ljava/util/HashMap;

    neg-int v13, v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 292
    .local v6, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v6, :cond_6

    .line 293
    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v5, v12}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    .line 294
    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v12, :cond_0

    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v12, v12, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    if-eqz v12, :cond_0

    .line 295
    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v3, v12, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_1

    .line 298
    :cond_6
    const-string/jumbo v12, "DELETED CHAT"

    invoke-virtual {v5, v12}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    goto/16 :goto_1

    .line 313
    .end local v1    # "a":I
    .end local v3    # "avatar":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v5    # "builder":Landroid/media/MediaDescription$Builder;
    .end local v6    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v7    # "did":I
    :cond_7
    if-eqz p1, :cond_8

    const-string/jumbo v12, "__CHAT_"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 314
    const/4 v7, 0x0

    .line 316
    .restart local v7    # "did":I
    :try_start_0
    const-string/jumbo v12, "__CHAT_"

    const-string/jumbo v13, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 320
    :goto_2
    iget-object v12, p0, Lorg/telegram/messenger/MusicBrowserService;->musicObjects:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 321
    .local v2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-eqz v2, :cond_8

    .line 322
    const/4 v1, 0x0

    .restart local v1    # "a":I
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_8

    .line 323
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject;

    .line 324
    .local v10, "messageObject":Lorg/telegram/messenger/MessageObject;
    new-instance v12, Landroid/media/MediaDescription$Builder;

    invoke-direct {v12}, Landroid/media/MediaDescription$Builder;-><init>()V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object v5

    .line 325
    .restart local v5    # "builder":Landroid/media/MediaDescription$Builder;
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    .line 326
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    .line 327
    new-instance v12, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-virtual {v5}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object v13

    const/4 v14, 0x2

    invoke-direct {v12, v13, v14}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 317
    .end local v1    # "a":I
    .end local v2    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v5    # "builder":Landroid/media/MediaDescription$Builder;
    .end local v10    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :catch_0
    move-exception v8

    .line 318
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 331
    .end local v7    # "did":I
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_8
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V

    .line 332
    return-void
.end method

.method private updatePlaybackState(Ljava/lang/String;)V
    .locals 10
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 475
    const-wide/16 v2, -0x1

    .line 476
    .local v2, "position":J
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    .line 477
    .local v7, "playingMessageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v7, :cond_0

    .line 478
    iget v4, v7, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v2, v4

    .line 481
    :cond_0
    new-instance v4, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v4}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    invoke-direct {p0}, Lorg/telegram/messenger/MusicBrowserService;->getAvailableActions()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    .line 483
    .local v0, "stateBuilder":Landroid/media/session/PlaybackState$Builder;
    if-nez v7, :cond_2

    .line 484
    const/4 v1, 0x1

    .line 493
    .local v1, "state":I
    :goto_0
    if-eqz p1, :cond_1

    .line 494
    invoke-virtual {v0, p1}, Landroid/media/session/PlaybackState$Builder;->setErrorMessage(Ljava/lang/CharSequence;)Landroid/media/session/PlaybackState$Builder;

    .line 495
    const/4 v1, 0x7

    .line 497
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    .line 498
    if-eqz v7, :cond_5

    .line 499
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObjectNum()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/media/session/PlaybackState$Builder;->setActiveQueueItemId(J)Landroid/media/session/PlaybackState$Builder;

    .line 504
    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 505
    return-void

    .line 486
    .end local v1    # "state":I
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController;->isDownloadingCurrentMessage()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 487
    const/4 v1, 0x6

    .restart local v1    # "state":I
    goto :goto_0

    .line 489
    .end local v1    # "state":I
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v1, 0x2

    .restart local v1    # "state":I
    :goto_2
    goto :goto_0

    .end local v1    # "state":I
    :cond_4
    const/4 v1, 0x3

    goto :goto_2

    .line 501
    .restart local v1    # "state":I
    :cond_5
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/media/session/PlaybackState$Builder;->setActiveQueueItemId(J)Landroid/media/session/PlaybackState$Builder;

    goto :goto_1
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 568
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/MusicBrowserService;->updatePlaybackState(Ljava/lang/String;)V

    .line 569
    invoke-direct {p0}, Lorg/telegram/messenger/MusicBrowserService;->handlePlayRequest()V

    .line 570
    return-void
.end method

.method public onCreate()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 88
    invoke-super {p0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    .line 89
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    .line 91
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string/jumbo v5, "auto_lastSelectedDialog"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:I

    .line 93
    new-instance v4, Landroid/media/session/MediaSession;

    const-string/jumbo v5, "MusicService"

    invoke-direct {v4, p0, v5}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    .line 94
    iget-object v4, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v4}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/MusicBrowserService;->setSessionToken(Landroid/media/session/MediaSession$Token;)V

    .line 95
    iget-object v4, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    new-instance v5, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;

    invoke-direct {v5, p0, v8}, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;-><init>(Lorg/telegram/messenger/MusicBrowserService;Lorg/telegram/messenger/MusicBrowserService$1;)V

    invoke-virtual {v4, v5}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 96
    iget-object v4, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 98
    invoke-virtual {p0}, Lorg/telegram/messenger/MusicBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 99
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v2, "intent":Landroid/content/Intent;
    const/16 v4, 0x63

    const/high16 v5, 0x8000000

    invoke-static {v0, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 101
    .local v3, "pi":Landroid/app/PendingIntent;
    iget-object v4, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v4, v3}, Landroid/media/session/MediaSession;->setSessionActivity(Landroid/app/PendingIntent;)V

    .line 103
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v1, "extras":Landroid/os/Bundle;
    const-string/jumbo v4, "com.google.android.gms.car.media.ALWAYS_RESERVE_SPACE_FOR.ACTION_QUEUE"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    const-string/jumbo v4, "com.google.android.gms.car.media.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    const-string/jumbo v4, "com.google.android.gms.car.media.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    iget-object v4, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v4, v1}, Landroid/media/session/MediaSession;->setExtras(Landroid/os/Bundle;)V

    .line 109
    invoke-direct {p0, v8}, Lorg/telegram/messenger/MusicBrowserService;->updatePlaybackState(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v4, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 112
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStarted:I

    invoke-virtual {v4, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 113
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v4, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 114
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, v1}, Lorg/telegram/messenger/MusicBrowserService;->handleStopRequest(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->delayedStopHandler:Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    .line 137
    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
    .locals 3
    .param p1, "clientPackageName"    # Ljava/lang/String;
    .param p2, "clientUid"    # I
    .param p3, "rootHints"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 141
    if-eqz p1, :cond_0

    const/16 v0, 0x3e8

    if-eq v0, p2, :cond_1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eq v0, p2, :cond_1

    const-string/jumbo v0, "com.google.android.mediasimulator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.google.android.projection.gearhead"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 144
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/service/media/MediaBrowserService$BrowserRoot;

    const-string/jumbo v2, "__ROOT__"

    invoke-direct {v0, v2, v1}, Landroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 2
    .param p1, "parentMediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p2, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;>;"
    iget-boolean v0, p0, Lorg/telegram/messenger/MusicBrowserService;->chatsLoaded:Z

    if-nez v0, :cond_1

    .line 150
    invoke-virtual {p2}, Landroid/service/media/MediaBrowserService$Result;->detach()V

    .line 151
    iget-boolean v0, p0, Lorg/telegram/messenger/MusicBrowserService;->loadingChats:Z

    if-eqz v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/MusicBrowserService;->loadingChats:Z

    .line 155
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/MusicBrowserService$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MusicBrowserService$1;-><init>(Lorg/telegram/messenger/MusicBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 268
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MusicBrowserService;->loadChildrenImpl(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "startIntent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method
