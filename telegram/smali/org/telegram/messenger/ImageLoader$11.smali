.class Lorg/telegram/messenger/ImageLoader$11;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader;->runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;

.field final synthetic val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 2085
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$11;->this$0:Lorg/telegram/messenger/ImageLoader;

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    iput p3, p0, Lorg/telegram/messenger/ImageLoader$11;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 2088
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    if-eqz v5, :cond_0

    .line 2089
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->access$4010(Lorg/telegram/messenger/ImageLoader;)I

    .line 2091
    :cond_0
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    if-eqz v5, :cond_1

    .line 2092
    iget v5, p0, Lorg/telegram/messenger/ImageLoader$11;->val$reason:I

    if-ne v5, v11, :cond_3

    .line 2093
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4100(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2094
    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    invoke-static {v6}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$000(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    invoke-static {v7}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4200(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    invoke-static {v8}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4300(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v5, v6, v7, v8}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 2095
    .local v1, "newTask":Lorg/telegram/messenger/ImageLoader$HttpFileTask;
    new-instance v3, Lorg/telegram/messenger/ImageLoader$11$1;

    invoke-direct {v3, p0, v1}, Lorg/telegram/messenger/ImageLoader$11$1;-><init>(Lorg/telegram/messenger/ImageLoader$11;Lorg/telegram/messenger/ImageLoader$HttpFileTask;)V

    .line 2102
    .local v3, "runnable":Ljava/lang/Runnable;
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->access$4500(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    invoke-static {v6}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$000(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2103
    const-wide/16 v6, 0x3e8

    invoke-static {v3, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2115
    .end local v1    # "newTask":Lorg/telegram/messenger/ImageLoader$HttpFileTask;
    .end local v3    # "runnable":Ljava/lang/Runnable;
    :cond_1
    :goto_0
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->access$4000(Lorg/telegram/messenger/ImageLoader;)I

    move-result v5

    if-ge v5, v9, :cond_5

    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->access$4400(Lorg/telegram/messenger/ImageLoader;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2116
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->access$4400(Lorg/telegram/messenger/ImageLoader;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    .line 2117
    .local v4, "task":Lorg/telegram/messenger/ImageLoader$HttpFileTask;
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Void;

    aput-object v12, v6, v10

    aput-object v12, v6, v11

    aput-object v12, v6, v9

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2118
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->access$4008(Lorg/telegram/messenger/ImageLoader;)I

    goto :goto_0

    .line 2105
    .end local v4    # "task":Lorg/telegram/messenger/ImageLoader$HttpFileTask;
    :cond_2
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->access$4600(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    invoke-static {v6}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$000(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2106
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    invoke-static {v8}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$000(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 2108
    :cond_3
    iget v5, p0, Lorg/telegram/messenger/ImageLoader$11;->val$reason:I

    if-ne v5, v9, :cond_1

    .line 2109
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->access$4600(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    invoke-static {v6}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$000(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2110
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    invoke-static {v7}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$000(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    invoke-static {v7}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4300(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2111
    .local v0, "file":Ljava/io/File;
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4200(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2112
    .local v2, "result":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoaded:I

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    invoke-static {v8}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$000(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    aput-object v2, v7, v11

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2111
    .end local v2    # "result":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4200(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2120
    .end local v0    # "file":Ljava/io/File;
    :cond_5
    return-void
.end method
