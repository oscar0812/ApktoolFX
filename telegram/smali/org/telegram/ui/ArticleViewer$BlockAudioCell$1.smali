.class Lorg/telegram/ui/ArticleViewer$BlockAudioCell$1;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$BlockAudioCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

.field final synthetic val$this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$BlockAudioCell;Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    .prologue
    .line 4078
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell$1;->val$this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekBarDrag(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 4081
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->access$9600(Lorg/telegram/ui/ArticleViewer$BlockAudioCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4086
    :goto_0
    return-void

    .line 4084
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->access$9600(Lorg/telegram/ui/ArticleViewer$BlockAudioCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iput p1, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 4085
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->access$9600(Lorg/telegram/ui/ArticleViewer$BlockAudioCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    goto :goto_0
.end method
