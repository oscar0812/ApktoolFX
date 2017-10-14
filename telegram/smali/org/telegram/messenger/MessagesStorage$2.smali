.class Lorg/telegram/messenger/MessagesStorage$2;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->cleanup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$isLogin:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 582
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$2;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagesStorage$2;->val$isLogin:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$2;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->access$200(Lorg/telegram/messenger/MessagesStorage;)V

    .line 586
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$2;->this$0:Lorg/telegram/messenger/MessagesStorage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->openDatabase(Z)V

    .line 587
    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesStorage$2;->val$isLogin:Z

    if-eqz v0, :cond_0

    .line 588
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$2$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$2$1;-><init>(Lorg/telegram/messenger/MessagesStorage$2;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 595
    :cond_0
    return-void
.end method
