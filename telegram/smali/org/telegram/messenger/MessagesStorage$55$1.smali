.class Lorg/telegram/messenger/MessagesStorage$55$1;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage$55;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesStorage$55;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage$55;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesStorage$55;

    .prologue
    .line 3133
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$55$1;->this$1:Lorg/telegram/messenger/MessagesStorage$55;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$55$1;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3136
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$55$1;->this$1:Lorg/telegram/messenger/MessagesStorage$55;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$55;->val$callback:Lorg/telegram/messenger/MessagesStorage$IntCallback;

    iget v1, p0, Lorg/telegram/messenger/MessagesStorage$55$1;->val$result:I

    invoke-interface {v0, v1}, Lorg/telegram/messenger/MessagesStorage$IntCallback;->run(I)V

    .line 3137
    return-void
.end method
