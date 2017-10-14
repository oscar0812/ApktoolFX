.class Lorg/telegram/messenger/MediaController$ExternalObserver;
.super Landroid/database/ContentObserver;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExternalObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/MediaController;)V
    .locals 1

    .prologue
    .line 566
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$ExternalObserver;->this$0:Lorg/telegram/messenger/MediaController;

    .line 567
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 568
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 572
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 573
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$ExternalObserver;->this$0:Lorg/telegram/messenger/MediaController;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->access$1500(Lorg/telegram/messenger/MediaController;Landroid/net/Uri;)V

    .line 574
    return-void
.end method
