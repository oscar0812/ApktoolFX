.class Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->removeTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;

    .prologue
    .line 515
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$1;->this$1:Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$1;->this$1:Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$800(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$1;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    return-void
.end method
