.class Lorg/telegram/messenger/GcmPushListenerService$1$1;
.super Ljava/lang/Object;
.source "GcmPushListenerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/GcmPushListenerService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/GcmPushListenerService$1;

.field final synthetic val$updates:Lorg/telegram/tgnet/TLRPC$TL_updates;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/GcmPushListenerService$1;Lorg/telegram/tgnet/TLRPC$TL_updates;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/GcmPushListenerService$1;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/telegram/messenger/GcmPushListenerService$1$1;->this$1:Lorg/telegram/messenger/GcmPushListenerService$1;

    iput-object p2, p0, Lorg/telegram/messenger/GcmPushListenerService$1$1;->val$updates:Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 78
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/GcmPushListenerService$1$1;->val$updates:Lorg/telegram/tgnet/TLRPC$TL_updates;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 79
    return-void
.end method
