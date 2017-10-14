.class final Lorg/telegram/messenger/SendMessagesHelper$13;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingAudioDocuments(Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog_id:J

.field final synthetic val$messageObjects:Ljava/util/ArrayList;

.field final synthetic val$reply_to_msg:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;)V
    .locals 0

    .prologue
    .line 3058
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$13;->val$messageObjects:Ljava/util/ArrayList;

    iput-wide p2, p0, Lorg/telegram/messenger/SendMessagesHelper$13;->val$dialog_id:J

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$13;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 3061
    iget-object v11, p0, Lorg/telegram/messenger/SendMessagesHelper$13;->val$messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3062
    .local v10, "size":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v10, :cond_3

    .line 3063
    iget-object v11, p0, Lorg/telegram/messenger/SendMessagesHelper$13;->val$messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    .line 3064
    .local v7, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v11, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v11, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3065
    .local v8, "originalPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3067
    .local v4, "f":Ljava/io/File;
    iget-wide v12, p0, Lorg/telegram/messenger/SendMessagesHelper$13;->val$dialog_id:J

    long-to-int v11, v12

    if-nez v11, :cond_4

    const/4 v6, 0x1

    .line 3070
    .local v6, "isEncrypted":Z
    :goto_1
    if-eqz v8, :cond_0

    .line 3071
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "audio"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3074
    :cond_0
    const/4 v1, 0x0

    .line 3075
    .local v1, "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    if-nez v6, :cond_1

    .line 3076
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v12

    if-nez v6, :cond_5

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v12, v8, v11}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v1

    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3078
    .restart local v1    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    :cond_1
    if-nez v1, :cond_2

    .line 3079
    iget-object v11, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3082
    .restart local v1    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    :cond_2
    if-eqz v6, :cond_6

    .line 3083
    iget-wide v12, p0, Lorg/telegram/messenger/SendMessagesHelper$13;->val$dialog_id:J

    const/16 v11, 0x20

    shr-long/2addr v12, v11

    long-to-int v5, v12

    .line 3084
    .local v5, "high_id":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v3

    .line 3085
    .local v3, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v3, :cond_6

    .line 3102
    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v3    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "high_id":I
    .end local v6    # "isEncrypted":Z
    .end local v7    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v8    # "originalPath":Ljava/lang/String;
    :cond_3
    return-void

    .line 3067
    .restart local v4    # "f":Ljava/io/File;
    .restart local v7    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .restart local v8    # "originalPath":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 3076
    .restart local v1    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .restart local v6    # "isEncrypted":Z
    :cond_5
    const/4 v11, 0x4

    goto :goto_2

    .line 3090
    :cond_6
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 3091
    .local v9, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v8, :cond_7

    .line 3092
    const-string/jumbo v11, "originalPath"

    invoke-virtual {v9, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3094
    :cond_7
    move-object v2, v1

    .line 3095
    .local v2, "documentFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    new-instance v11, Lorg/telegram/messenger/SendMessagesHelper$13$1;

    invoke-direct {v11, p0, v2, v7, v9}, Lorg/telegram/messenger/SendMessagesHelper$13$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$13;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/MessageObject;Ljava/util/HashMap;)V

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3062
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
