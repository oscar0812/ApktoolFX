.class Lorg/telegram/messenger/SendMessagesHelper$5$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$5;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SendMessagesHelper$5;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$5;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/SendMessagesHelper$5;

    .prologue
    .line 1115
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$5$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$5$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$5;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$5;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1119
    return-void
.end method
