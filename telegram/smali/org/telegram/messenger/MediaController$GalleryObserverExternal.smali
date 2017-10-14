.class Lorg/telegram/messenger/MediaController$GalleryObserverExternal;
.super Landroid/database/ContentObserver;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GalleryObserverExternal"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/MediaController;)V
    .locals 1

    .prologue
    .line 607
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$GalleryObserverExternal;->this$0:Lorg/telegram/messenger/MediaController;

    .line 608
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 609
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 613
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 614
    invoke-static {}, Lorg/telegram/messenger/MediaController;->access$1600()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 615
    invoke-static {}, Lorg/telegram/messenger/MediaController;->access$1600()Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 617
    :cond_0
    new-instance v0, Lorg/telegram/messenger/MediaController$GalleryObserverExternal$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$GalleryObserverExternal$1;-><init>(Lorg/telegram/messenger/MediaController$GalleryObserverExternal;)V

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$1602(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 624
    return-void
.end method
