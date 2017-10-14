.class Lorg/telegram/messenger/ImageLoader$HttpImageTask$5$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader$HttpImageTask$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/ImageLoader$HttpImageTask$5;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask$5;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/messenger/ImageLoader$HttpImageTask$5;

    .prologue
    .line 485
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask$5$1;->this$2:Lorg/telegram/messenger/ImageLoader$HttpImageTask$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 488
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask$5$1;->this$2:Lorg/telegram/messenger/ImageLoader$HttpImageTask$5;

    iget-object v4, v4, Lorg/telegram/messenger/ImageLoader$HttpImageTask$5;->this$1:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->access$300(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 489
    return-void
.end method
