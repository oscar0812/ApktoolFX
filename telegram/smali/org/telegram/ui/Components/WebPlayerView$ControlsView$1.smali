.class Lorg/telegram/ui/Components/WebPlayerView$ControlsView$1;
.super Ljava/lang/Object;
.source "WebPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/WebPlayerView$ControlsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    .prologue
    .line 1206
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1209
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    .line 1210
    return-void
.end method
