.class Lorg/telegram/messenger/SecretChatHelper$4$1;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SecretChatHelper$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SecretChatHelper$4;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SecretChatHelper$4;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/SecretChatHelper$4;

    .prologue
    .line 654
    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 11
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/16 v8, 0x10

    .line 657
    if-nez p2, :cond_3

    .line 658
    iget-object v6, p0, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v6, v6, Lorg/telegram/messenger/SecretChatHelper$4;->val$req:Lorg/telegram/tgnet/TLRPC$DecryptedMessage;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;

    if-eqz v6, :cond_3

    .line 659
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v7, v7, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v1

    .line 660
    .local v1, "currentChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v1, :cond_0

    .line 661
    iget-object v6, p0, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v1, v6, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 664
    :cond_0
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    if-nez v6, :cond_1

    .line 665
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->calcAuthKeyHash([B)[B

    move-result-object v6

    iput-object v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    .line 668
    :cond_1
    iget v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v6

    const/16 v7, 0x2e

    if-lt v6, v7, :cond_2

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    array-length v6, v6

    if-ne v6, v8, :cond_2

    .line 670
    :try_start_0
    iget-object v6, p0, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v6, v6, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v8, v8, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v8, v8

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v5

    .line 671
    .local v5, "sha256":[B
    const/16 v6, 0x24

    new-array v3, v6, [B

    .line 672
    .local v3, "key_hash":[B
    iget-object v6, p0, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v6, v6, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-static {v6, v7, v3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 673
    const/4 v6, 0x0

    const/16 v7, 0x10

    const/16 v8, 0x14

    invoke-static {v5, v6, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 674
    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    .line 675
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    .end local v3    # "key_hash":[B
    .end local v5    # "sha256":[B
    :cond_2
    :goto_0
    iget-object v6, p0, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v6, v6, Lorg/telegram/messenger/SecretChatHelper$4;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    invoke-static {v6}, Lorg/telegram/messenger/SecretChatHelper;->access$000(Lorg/telegram/messenger/SecretChatHelper;)Ljava/util/ArrayList;

    move-result-object v6

    iget v7, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 682
    iget v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    const/16 v7, 0x42

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->setMyLayerVersion(II)I

    move-result v6

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    .line 683
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChatLayer(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 686
    .end local v1    # "currentChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :cond_3
    iget-object v6, p0, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v6, v6, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v6, :cond_6

    .line 687
    if-nez p2, :cond_7

    .line 688
    iget-object v6, p0, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v6, v6, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .local v0, "attachPath":Ljava/lang/String;
    move-object v4, p1

    .line 689
    check-cast v4, Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;

    .line 690
    .local v4, "res":Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;
    iget-object v6, p0, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v6, v6, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v6}, Lorg/telegram/messenger/SecretChatHelper;->isSecretVisibleMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 691
    iget-object v6, p0, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v6, v6, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v4, Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;->date:I

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 693
    :cond_4
    iget-object v6, p0, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v6, v6, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsg:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_5

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;->file:Lorg/telegram/tgnet/TLRPC$EncryptedFile;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_encryptedFile;

    if-eqz v6, :cond_5

    .line 694
    iget-object v6, p0, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v6, v6, Lorg/telegram/messenger/SecretChatHelper$4;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    iget-object v7, p0, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v7, v7, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsg:Lorg/telegram/messenger/MessageObject;

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;->file:Lorg/telegram/tgnet/TLRPC$EncryptedFile;

    iget-object v9, p0, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v9, v9, Lorg/telegram/messenger/SecretChatHelper$4;->val$req:Lorg/telegram/tgnet/TLRPC$DecryptedMessage;

    iget-object v10, p0, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v10, v10, Lorg/telegram/messenger/SecretChatHelper$4;->val$originalPath:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9, v10}, Lorg/telegram/messenger/SecretChatHelper;->access$100(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$EncryptedFile;Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Ljava/lang/String;)V

    .line 696
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/SecretChatHelper$4$1$1;

    invoke-direct {v7, p0, v4, v0}, Lorg/telegram/messenger/SecretChatHelper$4$1$1;-><init>(Lorg/telegram/messenger/SecretChatHelper$4$1;Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 733
    .end local v0    # "attachPath":Ljava/lang/String;
    .end local v4    # "res":Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;
    :cond_6
    :goto_1
    return-void

    .line 676
    .restart local v1    # "currentChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :catch_0
    move-exception v2

    .line 677
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 718
    .end local v1    # "currentChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v7, v7, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 719
    new-instance v6, Lorg/telegram/messenger/SecretChatHelper$4$1$2;

    invoke-direct {v6, p0}, Lorg/telegram/messenger/SecretChatHelper$4$1$2;-><init>(Lorg/telegram/messenger/SecretChatHelper$4$1;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
