.class Lorg/telegram/messenger/ImageLoader$HttpImageTask$2$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader$HttpImageTask$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/ImageLoader$HttpImageTask$2;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask$2;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/messenger/ImageLoader$HttpImageTask$2;

    .prologue
    .line 453
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask$2$1;->this$2:Lorg/telegram/messenger/ImageLoader$HttpImageTask$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 456
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask$2$1;->this$2:Lorg/telegram/messenger/ImageLoader$HttpImageTask$2;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$HttpImageTask$2;->val$result:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask$2$1;->this$2:Lorg/telegram/messenger/ImageLoader$HttpImageTask$2;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$HttpImageTask$2;->this$1:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->access$300(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask$2$1;->this$2:Lorg/telegram/messenger/ImageLoader$HttpImageTask$2;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$HttpImageTask$2;->this$1:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->access$300(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0
.end method
