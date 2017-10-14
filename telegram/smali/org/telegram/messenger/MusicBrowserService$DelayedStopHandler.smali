.class Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;
.super Landroid/os/Handler;
.source "MusicBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MusicBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedStopHandler"
.end annotation


# instance fields
.field private final mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/telegram/messenger/MusicBrowserService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/MusicBrowserService;)V
    .locals 1
    .param p1, "service"    # Lorg/telegram/messenger/MusicBrowserService;

    .prologue
    .line 575
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 576
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    .line 577
    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/MusicBrowserService;Lorg/telegram/messenger/MusicBrowserService$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/messenger/MusicBrowserService;
    .param p2, "x1"    # Lorg/telegram/messenger/MusicBrowserService$1;

    .prologue
    .line 572
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;-><init>(Lorg/telegram/messenger/MusicBrowserService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 581
    iget-object v2, p0, Lorg/telegram/messenger/MusicBrowserService$DelayedStopHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MusicBrowserService;

    .line 582
    .local v1, "service":Lorg/telegram/messenger/MusicBrowserService;
    if-eqz v1, :cond_0

    .line 583
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 584
    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v2

    if-nez v2, :cond_1

    .line 590
    .end local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_0
    :goto_0
    return-void

    .line 587
    .restart local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_1
    invoke-virtual {v1}, Lorg/telegram/messenger/MusicBrowserService;->stopSelf()V

    .line 588
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/messenger/MusicBrowserService;->access$1602(Lorg/telegram/messenger/MusicBrowserService;Z)Z

    goto :goto_0
.end method
