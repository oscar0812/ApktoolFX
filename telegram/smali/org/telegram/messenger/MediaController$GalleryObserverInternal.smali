.class Lorg/telegram/messenger/MediaController$GalleryObserverInternal;
.super Landroid/database/ContentObserver;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GalleryObserverInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/MediaController;)V
    .locals 1

    .prologue
    .line 578
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;->this$0:Lorg/telegram/messenger/MediaController;

    .line 579
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 580
    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/MediaController$GalleryObserverInternal;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController$GalleryObserverInternal;

    .prologue
    .line 577
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;->scheduleReloadRunnable()V

    return-void
.end method

.method private scheduleReloadRunnable()V
    .locals 4

    .prologue
    .line 583
    new-instance v0, Lorg/telegram/messenger/MediaController$GalleryObserverInternal$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$GalleryObserverInternal$1;-><init>(Lorg/telegram/messenger/MediaController$GalleryObserverInternal;)V

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$1602(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 594
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 598
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 599
    invoke-static {}, Lorg/telegram/messenger/MediaController;->access$1600()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 600
    invoke-static {}, Lorg/telegram/messenger/MediaController;->access$1600()Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 602
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;->scheduleReloadRunnable()V

    .line 603
    return-void
.end method
