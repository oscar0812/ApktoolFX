.class Lorg/telegram/messenger/MessagesController$63$1$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$63$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/MessagesController$63$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$63$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/messenger/MessagesController$63$1;

    .prologue
    .line 3566
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$63$1$1;->this$2:Lorg/telegram/messenger/MessagesController$63$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3569
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$63$1$1;->this$2:Lorg/telegram/messenger/MessagesController$63$1;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$63$1;->this$1:Lorg/telegram/messenger/MessagesController$63;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$63;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->access$5102(Lorg/telegram/messenger/MessagesController;Z)Z

    .line 3570
    return-void
.end method
