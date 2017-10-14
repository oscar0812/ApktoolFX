.class Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1$1;
.super Ljava/lang/Object;
.source "WebPlayerView.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1;

    .prologue
    .line 744
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1$1;->this$2:Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 744
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 747
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1$1;->this$2:Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->access$1300(Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1$1;->this$2:Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1;

    iget-object v1, v1, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->access$1300(Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1$1;->this$2:Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;

    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->access$1400(Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/signature/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 748
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1$1;->this$2:Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->access$1500(Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 749
    return-void
.end method
