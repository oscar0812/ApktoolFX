.class Lorg/telegram/messenger/SecretChatHelper$6$1$1;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SecretChatHelper$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/SecretChatHelper$6$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SecretChatHelper$6$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/messenger/SecretChatHelper$6$1;

    .prologue
    .line 1057
    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$6$1$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1060
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/SecretChatHelper$6$1$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$6$1;

    iget-object v2, v2, Lorg/telegram/messenger/SecretChatHelper$6$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$6;

    iget-wide v2, v2, Lorg/telegram/messenger/SecretChatHelper$6;->val$did:J

    const v5, 0x7fffffff

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/NotificationsController;->processReadMessages(Landroid/util/SparseArray;JIIZ)V

    .line 1061
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1062
    .local v7, "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$6$1$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$6$1;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$6$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$6;

    iget-wide v0, v0, Lorg/telegram/messenger/SecretChatHelper$6;->val$did:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/NotificationsController;->processDialogsUpdateRead(Ljava/util/HashMap;)V

    .line 1064
    return-void
.end method
