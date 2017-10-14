.class Lorg/telegram/messenger/ImageLoader$11$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ImageLoader$11;

.field final synthetic val$newTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader$11;Lorg/telegram/messenger/ImageLoader$HttpFileTask;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/ImageLoader$11;

    .prologue
    .line 2095
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$11$1;->this$1:Lorg/telegram/messenger/ImageLoader$11;

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$11$1;->val$newTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2098
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$11$1;->this$1:Lorg/telegram/messenger/ImageLoader$11;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$11;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$4400(Lorg/telegram/messenger/ImageLoader;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$11$1;->val$newTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2099
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$11$1;->this$1:Lorg/telegram/messenger/ImageLoader$11;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$11;->this$0:Lorg/telegram/messenger/ImageLoader;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/ImageLoader;->access$200(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    .line 2100
    return-void
.end method
