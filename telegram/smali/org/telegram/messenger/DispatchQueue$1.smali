.class Lorg/telegram/messenger/DispatchQueue$1;
.super Landroid/os/Handler;
.source "DispatchQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/DispatchQueue;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/DispatchQueue;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/DispatchQueue;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/DispatchQueue;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/messenger/DispatchQueue$1;->this$0:Lorg/telegram/messenger/DispatchQueue;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueue$1;->this$0:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/DispatchQueue;->handleMessage(Landroid/os/Message;)V

    .line 86
    return-void
.end method
