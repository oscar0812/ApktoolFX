.class Lorg/telegram/messenger/ImageLoader$8;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader;->httpFileLoadError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;

.field final synthetic val$location:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 1964
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$8;->this$0:Lorg/telegram/messenger/ImageLoader;

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$8;->val$location:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1967
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$8;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$8;->val$location:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 1968
    .local v0, "img":Lorg/telegram/messenger/ImageLoader$CacheImage;
    if-nez v0, :cond_0

    .line 1975
    :goto_0
    return-void

    .line 1971
    :cond_0
    iget-object v1, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    .line 1972
    .local v1, "oldTask":Lorg/telegram/messenger/ImageLoader$HttpImageTask;
    new-instance v2, Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$8;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->access$300(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-result-object v4

    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->access$3900(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;I)V

    iput-object v2, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    .line 1973
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$8;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader;->access$2100(Lorg/telegram/messenger/ImageLoader;)Ljava/util/LinkedList;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1974
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$8;->this$0:Lorg/telegram/messenger/ImageLoader;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/messenger/ImageLoader;->access$600(Lorg/telegram/messenger/ImageLoader;Z)V

    goto :goto_0
.end method
