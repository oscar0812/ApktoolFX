.class Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$2;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;

.field final synthetic val$bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;

    .prologue
    .line 575
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$2;->this$1:Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$2;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$2;->val$bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 578
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$2;->this$1:Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->access$900(Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;)V

    .line 580
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$2;->val$key:Ljava/lang/String;

    .line 581
    .local v0, "kf":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$2;->this$1:Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->access$1000(Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$2;->this$1:Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->access$1000(Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 584
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messageThumbGenerated:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$2;->val$bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 595
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$2;->this$1:Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader;->access$1100(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$2;->val$bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 596
    return-void
.end method
