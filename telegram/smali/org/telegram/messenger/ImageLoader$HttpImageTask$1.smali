.class Lorg/telegram/messenger/ImageLoader$HttpImageTask$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader$HttpImageTask;->reportProgress(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

.field final synthetic val$progress:F


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;F)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    .prologue
    .line 292
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask$1;->this$1:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    iput p2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask$1;->val$progress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask$1;->this$1:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$100(Lorg/telegram/messenger/ImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask$1;->this$1:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->access$300(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    iget v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask$1;->val$progress:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    new-instance v0, Lorg/telegram/messenger/ImageLoader$HttpImageTask$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$1$1;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask$1;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 302
    return-void
.end method
