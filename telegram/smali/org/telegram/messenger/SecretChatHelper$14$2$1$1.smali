.class Lorg/telegram/messenger/SecretChatHelper$14$2$1$1;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SecretChatHelper$14$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/messenger/SecretChatHelper$14$2$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SecretChatHelper$14$2$1;)V
    .locals 0
    .param p1, "this$3"    # Lorg/telegram/messenger/SecretChatHelper$14$2$1;

    .prologue
    .line 1829
    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$14$2$1$1;->this$3:Lorg/telegram/messenger/SecretChatHelper$14$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1832
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$14$2$1$1;->this$3:Lorg/telegram/messenger/SecretChatHelper$14$2$1;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$14$2$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$14$2;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$14$2;->this$1:Lorg/telegram/messenger/SecretChatHelper$14;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$14;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper;->delayedEncryptedChatUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1833
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$14$2$1$1;->this$3:Lorg/telegram/messenger/SecretChatHelper$14$2$1;

    iget-object v1, v1, Lorg/telegram/messenger/SecretChatHelper$14$2$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$14$2;

    iget-object v1, v1, Lorg/telegram/messenger/SecretChatHelper$14$2;->this$1:Lorg/telegram/messenger/SecretChatHelper$14;

    iget-object v1, v1, Lorg/telegram/messenger/SecretChatHelper$14;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    iget-object v1, v1, Lorg/telegram/messenger/SecretChatHelper;->delayedEncryptedChatUpdates:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 1834
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$14$2$1$1;->this$3:Lorg/telegram/messenger/SecretChatHelper$14$2$1;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$14$2$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$14$2;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$14$2;->this$1:Lorg/telegram/messenger/SecretChatHelper$14;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$14;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper;->delayedEncryptedChatUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1836
    :cond_0
    return-void
.end method
