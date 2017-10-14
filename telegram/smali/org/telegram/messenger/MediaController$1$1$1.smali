.class Lorg/telegram/messenger/MediaController$1$1$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/MediaController$1$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/messenger/MediaController$1$1;

    .prologue
    .line 499
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$1$1$1;->this$2:Lorg/telegram/messenger/MediaController$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$1$1$1;->this$2:Lorg/telegram/messenger/MediaController$1$1;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$1$1;->this$1:Lorg/telegram/messenger/MediaController$1;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$100(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1$1$1;->this$2:Lorg/telegram/messenger/MediaController$1$1;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$1$1;->val$finalBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    return-void
.end method
