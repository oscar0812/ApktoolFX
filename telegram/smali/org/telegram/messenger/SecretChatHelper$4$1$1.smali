.class Lorg/telegram/messenger/SecretChatHelper$4$1$1;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SecretChatHelper$4$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/SecretChatHelper$4$1;

.field final synthetic val$attachPath:Ljava/lang/String;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SecretChatHelper$4$1;Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/messenger/SecretChatHelper$4$1;

    .prologue
    .line 696
    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$4$1$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$4$1;

    iput-object p2, p0, Lorg/telegram/messenger/SecretChatHelper$4$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;

    iput-object p3, p0, Lorg/telegram/messenger/SecretChatHelper$4$1$1;->val$attachPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 699
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$4$1$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$4$1;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/SecretChatHelper;->isSecretInvisibleMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$4$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;

    iput v7, v0, Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;->date:I

    .line 702
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$4$1$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$4$1;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$4$1$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$4$1;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$4$1$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$4$1;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$4$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;->date:I

    move v8, v7

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesStorage;->updateMessageStateAndId(JLjava/lang/Integer;IIZI)[J

    .line 703
    new-instance v0, Lorg/telegram/messenger/SecretChatHelper$4$1$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/SecretChatHelper$4$1$1$1;-><init>(Lorg/telegram/messenger/SecretChatHelper$4$1$1;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 715
    return-void
.end method
