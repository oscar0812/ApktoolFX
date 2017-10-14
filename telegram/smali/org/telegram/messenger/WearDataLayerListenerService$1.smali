.class Lorg/telegram/messenger/WearDataLayerListenerService$1;
.super Ljava/lang/Object;
.source "WearDataLayerListenerService.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/WearDataLayerListenerService;->onChannelOpened(Lcom/google/android/gms/wearable/Channel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/WearDataLayerListenerService;

.field final synthetic val$barrier:Ljava/util/concurrent/CyclicBarrier;

.field final synthetic val$photo:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/WearDataLayerListenerService;Ljava/io/File;Ljava/util/concurrent/CyclicBarrier;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/WearDataLayerListenerService;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/telegram/messenger/WearDataLayerListenerService$1;->this$0:Lorg/telegram/messenger/WearDataLayerListenerService;

    iput-object p2, p0, Lorg/telegram/messenger/WearDataLayerListenerService$1;->val$photo:Ljava/io/File;

    iput-object p3, p0, Lorg/telegram/messenger/WearDataLayerListenerService$1;->val$barrier:Ljava/util/concurrent/CyclicBarrier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 67
    sget v0, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    if-ne p1, v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "file loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p2, v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 69
    aget-object v0, p2, v2

    iget-object v1, p0, Lorg/telegram/messenger/WearDataLayerListenerService$1;->val$photo:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string/jumbo v0, "LOADED USER PHOTO"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 72
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/WearDataLayerListenerService$1;->val$barrier:Ljava/util/concurrent/CyclicBarrier;

    const-wide/16 v2, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CyclicBarrier;->await(JLjava/util/concurrent/TimeUnit;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    goto :goto_0
.end method
