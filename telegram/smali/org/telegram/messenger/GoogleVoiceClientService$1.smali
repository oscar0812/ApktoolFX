.class Lorg/telegram/messenger/GoogleVoiceClientService$1;
.super Ljava/lang/Object;
.source "GoogleVoiceClientService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/GoogleVoiceClientService;->performAction(Landroid/content/Intent;ZLandroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/GoogleVoiceClientService;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/GoogleVoiceClientService;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/GoogleVoiceClientService;

    .prologue
    .line 23
    iput-object p1, p0, Lorg/telegram/messenger/GoogleVoiceClientService$1;->this$0:Lorg/telegram/messenger/GoogleVoiceClientService;

    iput-object p2, p0, Lorg/telegram/messenger/GoogleVoiceClientService$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 27
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    .line 28
    iget-object v0, p0, Lorg/telegram/messenger/GoogleVoiceClientService$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "text":Ljava/lang/String;
    iget-object v0, p0, Lorg/telegram/messenger/GoogleVoiceClientService$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v2, "com.google.android.voicesearch.extra.RECIPIENT_CONTACT_URI"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 30
    .local v10, "contactUri":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 31
    iget-object v0, p0, Lorg/telegram/messenger/GoogleVoiceClientService$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v2, "com.google.android.voicesearch.extra.RECIPIENT_CONTACT_CHAT_ID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 32
    .local v12, "id":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 33
    .local v13, "uid":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v14

    .line 34
    .local v14, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v14, :cond_0

    .line 35
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, v13}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v14

    .line 36
    if-eqz v14, :cond_0

    .line 37
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v14, v2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 40
    :cond_0
    if-eqz v14, :cond_1

    .line 41
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/ContactsController;->markAsContacted(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget v2, v14, Lorg/telegram/tgnet/TLRPC$User;->id:I

    int-to-long v2, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1    # "text":Ljava/lang/String;
    .end local v10    # "contactUri":Ljava/lang/String;
    .end local v12    # "id":Ljava/lang/String;
    .end local v13    # "uid":I
    .end local v14    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v11

    .line 46
    .local v11, "e":Ljava/lang/Exception;
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
