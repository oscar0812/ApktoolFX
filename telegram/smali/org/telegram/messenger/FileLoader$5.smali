.class Lorg/telegram/messenger/FileLoader$5;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileLoader;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$result:[Ljava/lang/Boolean;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoader;[Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 328
    iput-object p1, p0, Lorg/telegram/messenger/FileLoader$5;->this$0:Lorg/telegram/messenger/FileLoader;

    iput-object p2, p0, Lorg/telegram/messenger/FileLoader$5;->val$result:[Ljava/lang/Boolean;

    iput-object p3, p0, Lorg/telegram/messenger/FileLoader$5;->val$fileName:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/FileLoader$5;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 331
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$5;->val$result:[Ljava/lang/Boolean;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$5;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->access$900(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$5;->val$fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 332
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$5;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 333
    return-void
.end method
