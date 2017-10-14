.class Lorg/telegram/messenger/MediaController$InternalObserver;
.super Landroid/database/ContentObserver;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/MediaController;)V
    .locals 1

    .prologue
    .line 554
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$InternalObserver;->this$0:Lorg/telegram/messenger/MediaController;

    .line 555
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 556
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 560
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 561
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$InternalObserver;->this$0:Lorg/telegram/messenger/MediaController;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->access$1500(Lorg/telegram/messenger/MediaController;Landroid/net/Uri;)V

    .line 562
    return-void
.end method
