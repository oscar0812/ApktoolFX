.class Lorg/telegram/ui/Components/WebPlayerView$2$1$1;
.super Ljava/lang/Object;
.source "WebPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/WebPlayerView$2$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/WebPlayerView$2$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/WebPlayerView$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/Components/WebPlayerView$2$1;

    .prologue
    .line 1122
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$2$1$1;->this$2:Lorg/telegram/ui/Components/WebPlayerView$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$2$1$1;->this$2:Lorg/telegram/ui/Components/WebPlayerView$2$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$2$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3600(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->onInlineSurfaceTextureReady()V

    .line 1126
    return-void
.end method
