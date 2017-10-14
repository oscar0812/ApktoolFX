.class Lorg/telegram/messenger/SendMessagesHelper$17$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SendMessagesHelper$17;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$17;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/SendMessagesHelper$17;

    .prologue
    .line 3617
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$17$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3620
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$17$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/SendMessagesHelper$17$1$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$17$1;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3633
    return-void
.end method
