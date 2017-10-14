.class public Lorg/telegram/messenger/SecretChatHelper;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;
    }
.end annotation


# static fields
.field public static final CURRENT_SECRET_CHAT_LAYER:I = 0x42

.field private static volatile Instance:Lorg/telegram/messenger/SecretChatHelper;


# instance fields
.field private acceptingChats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;"
        }
    .end annotation
.end field

.field public delayedEncryptedChatUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Update;",
            ">;"
        }
    .end annotation
.end field

.field private pendingEncMessagesToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private secretHolesQueue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private sendingNotifyLayer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private startingSecretChat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/SecretChatHelper;->Instance:Lorg/telegram/messenger/SecretChatHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->sendingNotifyLayer:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->delayedEncryptedChatUpdates:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/SecretChatHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/SecretChatHelper;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->sendingNotifyLayer:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$EncryptedFile;Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/SecretChatHelper;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "x2"    # Lorg/telegram/tgnet/TLRPC$EncryptedFile;
    .param p3, "x3"    # Lorg/telegram/tgnet/TLRPC$DecryptedMessage;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/SecretChatHelper;->updateMediaPaths(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$EncryptedFile;Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/SecretChatHelper;IIIJLorg/telegram/tgnet/TLRPC$EncryptedChat;)Lorg/telegram/tgnet/TLRPC$Message;
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/SecretChatHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # J
    .param p6, "x5"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    .line 34
    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/SecretChatHelper;->createDeleteMessage(IIIJLorg/telegram/tgnet/TLRPC$EncryptedChat;)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/SecretChatHelper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/SecretChatHelper;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$402(Lorg/telegram/messenger/SecretChatHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/SecretChatHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z

    return p1
.end method

.method private applyPeerLayer(Lorg/telegram/tgnet/TLRPC$EncryptedChat;I)V
    .locals 8
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "newPeerLayer"    # I

    .prologue
    const/16 v5, 0x10

    .line 743
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v0

    .line 744
    .local v0, "currentPeerLayer":I
    if-gt p2, v0, :cond_0

    .line 770
    :goto_0
    return-void

    .line 747
    :cond_0
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    array-length v4, v4

    if-ne v4, v5, :cond_1

    const/16 v4, 0x2e

    if-lt v0, v4, :cond_1

    .line 749
    :try_start_0
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    const/4 v5, 0x0

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v6, v6

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v3

    .line 750
    .local v3, "sha256":[B
    const/16 v4, 0x24

    new-array v2, v4, [B

    .line 751
    .local v2, "key_hash":[B
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 752
    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x14

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 753
    iput-object v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    .line 754
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    .end local v2    # "key_hash":[B
    .end local v3    # "sha256":[B
    :cond_1
    :goto_1
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4, p2}, Lorg/telegram/messenger/AndroidUtilities;->setPeerLayerVersion(II)I

    move-result v4

    iput v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    .line 760
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChatLayer(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 761
    const/16 v4, 0x42

    if-ge v0, v4, :cond_2

    .line 762
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendNotifyLayerMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 764
    :cond_2
    new-instance v4, Lorg/telegram/messenger/SecretChatHelper$5;

    invoke-direct {v4, p0, p1}, Lorg/telegram/messenger/SecretChatHelper$5;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 755
    :catch_0
    move-exception v1

    .line 756
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private createDeleteMessage(IIIJLorg/telegram/tgnet/TLRPC$EncryptedChat;)Lorg/telegram/tgnet/TLRPC$Message;
    .locals 6
    .param p1, "mid"    # I
    .param p2, "seq_out"    # I
    .param p3, "seq_in"    # I
    .param p4, "random_id"    # J
    .param p6, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    const/4 v4, 0x1

    .line 1249
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 1250
    .local v0, "newMsg":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 1251
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 1252
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1253
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    .line 1254
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    .line 1255
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->unread:Z

    .line 1256
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->out:Z

    .line 1257
    const/16 v1, 0x100

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 1258
    iget v1, p6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v2, v1

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    .line 1259
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1260
    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->send_state:I

    .line 1261
    iput p3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->seq_in:I

    .line 1262
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->seq_out:I

    .line 1263
    iget v1, p6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1264
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, p6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 1268
    :goto_0
    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    .line 1269
    iput-wide p4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->random_id:J

    .line 1270
    return-object v0

    .line 1266
    :cond_0
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, p6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    goto :goto_0
.end method

.method private createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;
    .locals 7
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "decryptedMessage"    # Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 123
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 125
    .local v6, "newMsg":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;-><init>()V

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 126
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 127
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v0

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    .line 128
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v0

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    .line 129
    iput-boolean v3, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->unread:Z

    .line 130
    iput-boolean v3, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->out:Z

    .line 131
    const/16 v0, 0x100

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 132
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v4, v0

    const/16 v0, 0x20

    shl-long/2addr v4, v0

    iput-wide v4, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    .line 133
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 134
    iput v3, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->send_state:I

    .line 135
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    if-ne v0, v4, :cond_1

    .line 136
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 140
    :goto_0
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-eqz v0, :cond_2

    .line 141
    :cond_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    .line 145
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v4

    iput-wide v4, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->random_id:J

    .line 146
    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v1, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    move v4, v3

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 152
    return-object v6

    .line 138
    .end local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    :cond_1
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    goto :goto_0

    .line 143
    :cond_2
    iput v2, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    goto :goto_1
.end method

.method public static getInstance()Lorg/telegram/messenger/SecretChatHelper;
    .locals 4

    .prologue
    .line 80
    sget-object v0, Lorg/telegram/messenger/SecretChatHelper;->Instance:Lorg/telegram/messenger/SecretChatHelper;

    .line 81
    .local v0, "localInstance":Lorg/telegram/messenger/SecretChatHelper;
    if-nez v0, :cond_1

    .line 82
    const-class v3, Lorg/telegram/messenger/SecretChatHelper;

    monitor-enter v3

    .line 83
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/SecretChatHelper;->Instance:Lorg/telegram/messenger/SecretChatHelper;

    .line 84
    if-nez v0, :cond_0

    .line 85
    new-instance v1, Lorg/telegram/messenger/SecretChatHelper;

    invoke-direct {v1}, Lorg/telegram/messenger/SecretChatHelper;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/messenger/SecretChatHelper;
    .local v1, "localInstance":Lorg/telegram/messenger/SecretChatHelper;
    :try_start_1
    sput-object v1, Lorg/telegram/messenger/SecretChatHelper;->Instance:Lorg/telegram/messenger/SecretChatHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 87
    .end local v1    # "localInstance":Lorg/telegram/messenger/SecretChatHelper;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/SecretChatHelper;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 89
    :cond_1
    return-object v0

    .line 87
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/SecretChatHelper;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/SecretChatHelper;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/SecretChatHelper;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/SecretChatHelper;
    goto :goto_0
.end method

.method public static isSecretInvisibleMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 533
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSecretVisibleMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 529
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resendMessages(IILorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 2
    .param p1, "startSeq"    # I
    .param p2, "endSeq"    # I
    .param p3, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    .line 1274
    if-eqz p3, :cond_0

    sub-int v0, p2, p1

    if-gez v0, :cond_1

    .line 1360
    :cond_0
    :goto_0
    return-void

    .line 1277
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/SecretChatHelper$7;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/telegram/messenger/SecretChatHelper$7;-><init>(Lorg/telegram/messenger/SecretChatHelper;ILorg/telegram/tgnet/TLRPC$EncryptedChat;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private updateMediaPaths(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$EncryptedFile;Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Ljava/lang/String;)V
    .locals 15
    .param p1, "newMsgObj"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "file"    # Lorg/telegram/tgnet/TLRPC$EncryptedFile;
    .param p3, "decryptedMessage"    # Lorg/telegram/tgnet/TLRPC$DecryptedMessage;
    .param p4, "originalPath"    # Ljava/lang/String;

    .prologue
    .line 474
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    .line 475
    .local v13, "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz p2, :cond_0

    .line 476
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v2, :cond_1

    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_1

    .line 477
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iget-object v4, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 478
    .local v14, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 479
    .local v11, "fileName":Ljava/lang/String;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;-><init>()V

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 480
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    .line 481
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->iv:[B

    .line 482
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p2

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->dc_id:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    .line 483
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->id:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    .line 484
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->access_hash:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    .line 485
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p2

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->key_fingerprint:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 487
    .local v12, "fileName2":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 488
    .local v8, "cacheFile":Ljava/io/File;
    invoke-static {v14}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v9

    .line 489
    .local v9, "cacheFile2":Ljava/io/File;
    invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 490
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v5, 0x1

    invoke-virtual {v2, v11, v12, v4, v5}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCache(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Z)V

    .line 491
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v3, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 526
    .end local v3    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v8    # "cacheFile":Ljava/io/File;
    .end local v9    # "cacheFile2":Ljava/io/File;
    .end local v11    # "fileName":Ljava/lang/String;
    .end local v12    # "fileName2":Ljava/lang/String;
    .end local v14    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v2, :cond_0

    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_0

    .line 497
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 498
    .local v10, "document":Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 499
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->id:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 500
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->access_hash:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 501
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v4, v10, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 502
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    .line 503
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v10, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 504
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->size:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 505
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    .line 506
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    .line 507
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v10, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 508
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->dc_id:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 509
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$Document;->caption:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$Document;->caption:Ljava/lang/String;

    :goto_1
    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$Document;->caption:Ljava/lang/String;

    .line 511
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 512
    new-instance v8, Ljava/io/File;

    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 513
    .restart local v8    # "cacheFile":Ljava/io/File;
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v9

    .line 514
    .restart local v9    # "cacheFile2":Ljava/io/File;
    invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 515
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    .line 516
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    .line 517
    const-string/jumbo v2, ""

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 521
    .end local v8    # "cacheFile":Ljava/io/File;
    .end local v9    # "cacheFile2":Ljava/io/File;
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .restart local v3    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    goto/16 :goto_0

    .line 509
    .end local v3    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    :cond_3
    const-string/jumbo v2, ""

    goto :goto_1
.end method


# virtual methods
.method public acceptSecretChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 3
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    .line 1633
    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Ljava/util/HashMap;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1739
    :goto_0
    return-void

    .line 1636
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Ljava/util/HashMap;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1637
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;-><init>()V

    .line 1638
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;
    const/16 v1, 0x100

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->random_length:I

    .line 1639
    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->version:I

    .line 1640
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/SecretChatHelper$13;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/SecretChatHelper$13;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public checkSecretHoles(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;)V
    .locals 13
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1363
    .local p2, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Ljava/util/HashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 1364
    .local v10, "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;>;"
    if-nez v10, :cond_1

    .line 1404
    :cond_0
    :goto_0
    return-void

    .line 1367
    :cond_1
    new-instance v0, Lorg/telegram/messenger/SecretChatHelper$8;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/SecretChatHelper$8;-><init>(Lorg/telegram/messenger/SecretChatHelper;)V

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1379
    const/4 v12, 0x0

    .line 1380
    .local v12, "update":Z
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1381
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;

    .line 1382
    .local v9, "holder":Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;
    iget-object v0, v9, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    if-eq v0, v1, :cond_2

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    iget-object v1, v9, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_4

    .line 1383
    :cond_2
    iget-object v0, v9, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->layer:I

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->applyPeerLayer(Lorg/telegram/tgnet/TLRPC$EncryptedChat;I)V

    .line 1384
    iget-object v0, v9, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    .line 1385
    iget-object v0, v9, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->in_seq_no:I

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->in_seq_no:I

    .line 1386
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1387
    add-int/lit8 v8, v8, -0x1

    .line 1388
    const/4 v12, 0x1

    .line 1390
    iget-object v2, v9, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->file:Lorg/telegram/tgnet/TLRPC$EncryptedFile;

    iget v3, v9, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->date:I

    iget-wide v4, v9, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->random_id:J

    iget-object v0, v9, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->message:Lorg/telegram/tgnet/TLRPC$DecryptedMessage;

    iget-boolean v7, v9, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->new_key_used:Z

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/SecretChatHelper;->processDecryptedObject(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$EncryptedFile;IJLorg/telegram/tgnet/TLObject;Z)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v11

    .line 1391
    .local v11, "message":Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v11, :cond_3

    .line 1392
    invoke-virtual {p2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1380
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1398
    .end local v9    # "holder":Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;
    .end local v11    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1399
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Ljava/util/HashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    :cond_5
    if-eqz v12, :cond_0

    .line 1402
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChatSeq(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    goto :goto_0
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->sendingNotifyLayer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 95
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 96
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->delayedEncryptedChatUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 97
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z

    .line 100
    return-void
.end method

.method public declineSecretChat(I)V
    .locals 3
    .param p1, "chat_id"    # I

    .prologue
    .line 1622
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_discardEncryption;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_discardEncryption;-><init>()V

    .line 1623
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_discardEncryption;
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_discardEncryption;->chat_id:I

    .line 1624
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/SecretChatHelper$12;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/SecretChatHelper$12;-><init>(Lorg/telegram/messenger/SecretChatHelper;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1630
    return-void
.end method

.method protected decryptMessage(Lorg/telegram/tgnet/TLRPC$EncryptedMessage;)Ljava/util/ArrayList;
    .locals 27
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$EncryptedMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$EncryptedMessage;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1407
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->chat_id:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getEncryptedChatDB(IZ)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v11

    .line 1408
    .local v11, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v11, :cond_0

    instance-of v2, v11, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    if-eqz v2, :cond_1

    .line 1409
    :cond_0
    const/16 v24, 0x0

    .line 1528
    :goto_0
    return-object v24

    .line 1413
    :cond_1
    :try_start_0
    new-instance v17, Lorg/telegram/tgnet/NativeByteBuffer;

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->bytes:[B

    array-length v2, v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 1414
    .local v17, "is":Lorg/telegram/tgnet/NativeByteBuffer;
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->bytes:[B

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    .line 1415
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    .line 1416
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt64(Z)J

    move-result-wide v14

    .line 1417
    .local v14, "fingerprint":J
    const/16 v19, 0x0

    .line 1418
    .local v19, "keyToDecrypt":[B
    const/4 v9, 0x0

    .line 1419
    .local v9, "new_key_used":Z
    iget-wide v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_fingerprint:J

    cmp-long v2, v2, v14

    if-nez v2, :cond_4

    .line 1420
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    move-object/from16 v19, v0

    .line 1426
    :cond_2
    :goto_1
    if-eqz v19, :cond_13

    .line 1427
    const/16 v2, 0x10

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->readData(IZ)[B

    move-result-object v22

    .line 1428
    .local v22, "messageKey":[B
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessageKeyData;->generateMessageKeyData([B[BZ)Lorg/telegram/messenger/MessageKeyData;

    move-result-object v18

    .line 1430
    .local v18, "keyData":Lorg/telegram/messenger/MessageKeyData;
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/messenger/MessageKeyData;->aesKey:[B

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/MessageKeyData;->aesIv:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v26

    add-int/lit8 v8, v26, -0x18

    invoke-static/range {v2 .. v8}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    .line 1432
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v21

    .line 1433
    .local v21, "len":I
    if-ltz v21, :cond_3

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v2

    add-int/lit8 v2, v2, -0x1c

    move/from16 v0, v21

    if-le v0, v2, :cond_5

    .line 1434
    :cond_3
    const/16 v24, 0x0

    goto :goto_0

    .line 1421
    .end local v18    # "keyData":Lorg/telegram/messenger/MessageKeyData;
    .end local v21    # "len":I
    .end local v22    # "messageKey":[B
    :cond_4
    iget-wide v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    cmp-long v2, v2, v14

    if-nez v2, :cond_2

    .line 1422
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    move-object/from16 v19, v0

    .line 1423
    const/4 v9, 0x1

    goto :goto_1

    .line 1436
    .restart local v18    # "keyData":Lorg/telegram/messenger/MessageKeyData;
    .restart local v21    # "len":I
    .restart local v22    # "messageKey":[B
    :cond_5
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x18

    add-int/lit8 v4, v21, 0x4

    add-int/lit8 v4, v4, 0x18

    move-object/from16 v0, v17

    iget-object v5, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/Utilities;->computeSHA1(Ljava/nio/ByteBuffer;II)[B

    move-result-object v23

    .line 1437
    .local v23, "messageKeyFull":[B
    const/4 v2, 0x0

    move-object/from16 v0, v23

    array-length v3, v0

    add-int/lit8 v3, v3, -0x10

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v2, v1, v3}, Lorg/telegram/messenger/Utilities;->arraysEquals([BI[BI)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1438
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1441
    :cond_6
    invoke-static {}, Lorg/telegram/tgnet/TLClassStore;->Instance()Lorg/telegram/tgnet/TLClassStore;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3, v4}, Lorg/telegram/tgnet/TLClassStore;->TLdeserialize(Lorg/telegram/tgnet/NativeByteBuffer;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object v8

    .line 1443
    .local v8, "object":Lorg/telegram/tgnet/TLObject;
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 1444
    if-nez v9, :cond_7

    iget v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v2

    const/16 v3, 0x14

    if-lt v2, v3, :cond_7

    .line 1445
    iget-short v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    iput-short v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    .line 1447
    :cond_7
    instance-of v2, v8, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    if-eqz v2, :cond_11

    .line 1448
    move-object v0, v8

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    move-object/from16 v20, v0

    .line 1449
    .local v20, "layer":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    if-nez v2, :cond_8

    iget v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    if-nez v2, :cond_8

    .line 1450
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 1451
    const/4 v2, 0x1

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    .line 1452
    const/4 v2, -0x2

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    .line 1457
    :cond_8
    :goto_2
    move-object/from16 v0, v20

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->random_bytes:[B

    array-length v2, v2

    const/16 v3, 0xf

    if-ge v2, v3, :cond_a

    .line 1458
    const-string/jumbo v2, "got random bytes less than needed"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1459
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1454
    :cond_9
    const/4 v2, -0x1

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1524
    .end local v8    # "object":Lorg/telegram/tgnet/TLObject;
    .end local v9    # "new_key_used":Z
    .end local v14    # "fingerprint":J
    .end local v17    # "is":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v18    # "keyData":Lorg/telegram/messenger/MessageKeyData;
    .end local v19    # "keyToDecrypt":[B
    .end local v20    # "layer":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;
    .end local v21    # "len":I
    .end local v22    # "messageKey":[B
    .end local v23    # "messageKeyFull":[B
    :catch_0
    move-exception v13

    .line 1525
    .local v13, "e":Ljava/lang/Exception;
    invoke-static {v13}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1528
    .end local v13    # "e":Ljava/lang/Exception;
    :goto_3
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1461
    .restart local v8    # "object":Lorg/telegram/tgnet/TLObject;
    .restart local v9    # "new_key_used":Z
    .restart local v14    # "fingerprint":J
    .restart local v17    # "is":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v18    # "keyData":Lorg/telegram/messenger/MessageKeyData;
    .restart local v19    # "keyToDecrypt":[B
    .restart local v20    # "layer":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;
    .restart local v21    # "len":I
    .restart local v22    # "messageKey":[B
    .restart local v23    # "messageKeyFull":[B
    :cond_a
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "current chat in_seq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " out_seq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "got message with in_seq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->in_seq_no:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " out_seq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1463
    move-object/from16 v0, v20

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    iget v3, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    if-gt v2, v3, :cond_b

    .line 1464
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1466
    :cond_b
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    move-object/from16 v0, v20

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    if-eq v2, v3, :cond_e

    iget v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    move-object/from16 v0, v20

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    add-int/lit8 v3, v3, -0x2

    if-eq v2, v3, :cond_e

    .line 1467
    const-string/jumbo v2, "got hole"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1468
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Ljava/util/HashMap;

    iget v3, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 1469
    .local v10, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;>;"
    if-nez v10, :cond_c

    .line 1470
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1471
    .restart local v10    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Ljava/util/HashMap;

    iget v3, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    :cond_c
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_d

    .line 1474
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Ljava/util/HashMap;

    iget v3, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    new-instance v25, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    invoke-direct/range {v25 .. v25}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;-><init>()V

    .line 1476
    .local v25, "newChat":Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    move-object/from16 v0, v25

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->id:I

    .line 1477
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    move-object/from16 v0, v25

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->user_id:I

    .line 1478
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    move-object/from16 v0, v25

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->auth_key:[B

    .line 1479
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    move-object/from16 v0, v25

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->key_create_date:I

    .line 1480
    iget-short v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    move-object/from16 v0, v25

    iput-short v2, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->key_use_count_in:S

    .line 1481
    iget-short v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    move-object/from16 v0, v25

    iput-short v2, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->key_use_count_out:S

    .line 1482
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    move-object/from16 v0, v25

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->seq_in:I

    .line 1483
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    move-object/from16 v0, v25

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->seq_out:I

    .line 1484
    new-instance v2, Lorg/telegram/messenger/SecretChatHelper$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v2, v0, v1}, Lorg/telegram/messenger/SecretChatHelper$9;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1492
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/SecretChatHelper;->declineSecretChat(I)V

    .line 1493
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1496
    .end local v25    # "newChat":Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;
    :cond_d
    new-instance v16, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;

    invoke-direct/range {v16 .. v16}, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;-><init>()V

    .line 1497
    .local v16, "holder":Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    .line 1498
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->file:Lorg/telegram/tgnet/TLRPC$EncryptedFile;

    move-object/from16 v0, v16

    iput-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->file:Lorg/telegram/tgnet/TLRPC$EncryptedFile;

    .line 1499
    move-object/from16 v0, p1

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->random_id:J

    move-object/from16 v0, v16

    iput-wide v2, v0, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->random_id:J

    .line 1500
    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->date:I

    move-object/from16 v0, v16

    iput v2, v0, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->date:I

    .line 1501
    move-object/from16 v0, v16

    iput-boolean v9, v0, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->new_key_used:Z

    .line 1502
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1503
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1505
    .end local v10    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;>;"
    .end local v16    # "holder":Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;
    :cond_e
    move-object/from16 v0, v20

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->layer:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lorg/telegram/messenger/SecretChatHelper;->applyPeerLayer(Lorg/telegram/tgnet/TLRPC$EncryptedChat;I)V

    .line 1506
    move-object/from16 v0, v20

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    .line 1507
    move-object/from16 v0, v20

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->in_seq_no:I

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->in_seq_no:I

    .line 1508
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v11}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChatSeq(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1509
    move-object/from16 v0, v20

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->message:Lorg/telegram/tgnet/TLRPC$DecryptedMessage;

    .line 1513
    .end local v20    # "layer":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;
    :cond_f
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1514
    .local v24, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->file:Lorg/telegram/tgnet/TLRPC$EncryptedFile;

    move-object/from16 v0, p1

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->date:I

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->random_id:J

    move-object/from16 v2, p0

    move-object v3, v11

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/SecretChatHelper;->processDecryptedObject(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$EncryptedFile;IJLorg/telegram/tgnet/TLObject;Z)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v12

    .line 1515
    .local v12, "decryptedMessage":Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v12, :cond_10

    .line 1516
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1518
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v11, v1}, Lorg/telegram/messenger/SecretChatHelper;->checkSecretHoles(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1510
    .end local v12    # "decryptedMessage":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v24    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    :cond_11
    instance-of v2, v8, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    if-eqz v2, :cond_12

    move-object v0, v8

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    move-object v2, v0

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;

    if-nez v2, :cond_f

    .line 1511
    :cond_12
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1521
    .end local v8    # "object":Lorg/telegram/tgnet/TLObject;
    .end local v18    # "keyData":Lorg/telegram/messenger/MessageKeyData;
    .end local v21    # "len":I
    .end local v22    # "messageKey":[B
    .end local v23    # "messageKeyFull":[B
    :cond_13
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 1522
    const-string/jumbo v2, "fingerprint mismatch %x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method protected performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V
    .locals 9
    .param p1, "req"    # Lorg/telegram/tgnet/TLRPC$DecryptedMessage;
    .param p2, "newMsgObj"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p3, "chat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p4, "encryptedFile"    # Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    .param p5, "originalPath"    # Ljava/lang/String;
    .param p6, "newMsg"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 537
    if-eqz p1, :cond_0

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v0, :cond_0

    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;

    if-nez v0, :cond_0

    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;

    if-eqz v0, :cond_1

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/SendMessagesHelper;->putToSendingMessages(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 541
    sget-object v8, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/SecretChatHelper$4;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p6

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/SecretChatHelper$4;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public processAcceptedSecretChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 13
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    .line 1557
    new-instance v9, Ljava/math/BigInteger;

    const/4 v10, 0x1

    sget-object v11, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1558
    .local v9, "p":Ljava/math/BigInteger;
    new-instance v5, Ljava/math/BigInteger;

    const/4 v10, 0x1

    iget-object v11, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a_or_b:[B

    invoke-direct {v5, v10, v11}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1560
    .local v5, "i_authKey":Ljava/math/BigInteger;
    invoke-static {v5, v9}, Lorg/telegram/messenger/Utilities;->isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1561
    iget v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {p0, v10}, Lorg/telegram/messenger/SecretChatHelper;->declineSecretChat(I)V

    .line 1619
    :goto_0
    return-void

    .line 1565
    :cond_0
    new-instance v10, Ljava/math/BigInteger;

    const/4 v11, 0x1

    iget-object v12, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    invoke-direct {v10, v11, v12}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v5, v10, v9}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 1567
    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 1568
    .local v1, "authKey":[B
    array-length v10, v1

    const/16 v11, 0x100

    if-le v10, v11, :cond_2

    .line 1569
    const/16 v10, 0x100

    new-array v4, v10, [B

    .line 1570
    .local v4, "correctedAuth":[B
    array-length v10, v1

    add-int/lit16 v10, v10, -0x100

    const/4 v11, 0x0

    const/16 v12, 0x100

    invoke-static {v1, v10, v4, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1571
    move-object v1, v4

    .line 1580
    .end local v4    # "correctedAuth":[B
    :cond_1
    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v2

    .line 1581
    .local v2, "authKeyHash":[B
    const/16 v10, 0x8

    new-array v3, v10, [B

    .line 1582
    .local v3, "authKeyId":[B
    array-length v10, v2

    add-int/lit8 v10, v10, -0x8

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-static {v2, v10, v3, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1583
    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v6

    .line 1584
    .local v6, "fingerprint":J
    iget-wide v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_fingerprint:J

    cmp-long v10, v10, v6

    if-nez v10, :cond_4

    .line 1585
    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    .line 1586
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v10

    iput v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    .line 1587
    const/4 v10, -0x2

    iput v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    .line 1588
    const/4 v10, 0x1

    iput v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    .line 1589
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v10

    invoke-virtual {v10, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1590
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    .line 1591
    new-instance v10, Lorg/telegram/messenger/SecretChatHelper$10;

    invoke-direct {v10, p0, p1}, Lorg/telegram/messenger/SecretChatHelper$10;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1572
    .end local v2    # "authKeyHash":[B
    .end local v3    # "authKeyId":[B
    .end local v6    # "fingerprint":J
    :cond_2
    array-length v10, v1

    const/16 v11, 0x100

    if-ge v10, v11, :cond_1

    .line 1573
    const/16 v10, 0x100

    new-array v4, v10, [B

    .line 1574
    .restart local v4    # "correctedAuth":[B
    const/4 v10, 0x0

    array-length v11, v1

    rsub-int v11, v11, 0x100

    array-length v12, v1

    invoke-static {v1, v10, v4, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1575
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    array-length v10, v1

    rsub-int v10, v10, 0x100

    if-ge v0, v10, :cond_3

    .line 1576
    const/4 v10, 0x0

    aput-byte v10, v1, v0

    .line 1575
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1578
    :cond_3
    move-object v1, v4

    goto :goto_1

    .line 1599
    .end local v0    # "a":I
    .end local v4    # "correctedAuth":[B
    .restart local v2    # "authKeyHash":[B
    .restart local v3    # "authKeyId":[B
    .restart local v6    # "fingerprint":J
    :cond_4
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;-><init>()V

    .line 1600
    .local v8, "newChat":Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;
    iget v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v10, v8, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->id:I

    .line 1601
    iget v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    iput v10, v8, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->user_id:I

    .line 1602
    iget-object v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    iput-object v10, v8, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->auth_key:[B

    .line 1603
    iget v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    iput v10, v8, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->key_create_date:I

    .line 1604
    iget-short v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    iput-short v10, v8, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->key_use_count_in:S

    .line 1605
    iget-short v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    iput-short v10, v8, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->key_use_count_out:S

    .line 1606
    iget v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    iput v10, v8, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->seq_in:I

    .line 1607
    iget v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    iput v10, v8, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->seq_out:I

    .line 1608
    iget v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    iput v10, v8, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->admin_id:I

    .line 1609
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v10

    invoke-virtual {v10, v8}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1610
    new-instance v10, Lorg/telegram/messenger/SecretChatHelper$11;

    invoke-direct {v10, p0, v8}, Lorg/telegram/messenger/SecretChatHelper$11;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1617
    iget v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {p0, v10}, Lorg/telegram/messenger/SecretChatHelper;->declineSecretChat(I)V

    goto/16 :goto_0
.end method

.method public processDecryptedObject(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$EncryptedFile;IJLorg/telegram/tgnet/TLObject;Z)Lorg/telegram/tgnet/TLRPC$Message;
    .locals 38
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "file"    # Lorg/telegram/tgnet/TLRPC$EncryptedFile;
    .param p3, "date"    # I
    .param p4, "random_id"    # J
    .param p6, "object"    # Lorg/telegram/tgnet/TLObject;
    .param p7, "new_key_used"    # Z

    .prologue
    .line 773
    if-eqz p6, :cond_4c

    .line 774
    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    move/from16 v24, v0

    .line 775
    .local v24, "from_id":I
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move/from16 v0, v24

    if-ne v0, v4, :cond_0

    .line 776
    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    move/from16 v24, v0

    .line 779
    :cond_0
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v5, 0x14

    if-lt v4, v5, :cond_1

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_1

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_1

    move-object/from16 v0, p1

    iget-short v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    const/16 v5, 0x78

    if-lt v4, v5, :cond_1

    .line 780
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/SecretChatHelper;->requestNewSecretChatKey(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 783
    :cond_1
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_7

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_7

    if-nez p7, :cond_7

    .line 784
    const/16 v4, 0x100

    new-array v4, v4, [B

    move-object/from16 v0, p1

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 785
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 786
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 800
    :cond_2
    :goto_0
    move-object/from16 v0, p6

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v4, :cond_28

    move-object/from16 v18, p6

    .line 801
    check-cast v18, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 803
    .local v18, "decryptedMessage":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v5, 0x11

    if-lt v4, v5, :cond_8

    .line 804
    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .line 805
    .local v29, "newMessage":Lorg/telegram/tgnet/TLRPC$TL_message;
    move-object/from16 v0, v18

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->ttl:I

    .line 806
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->entities:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->entities:Ljava/util/ArrayList;

    .line 811
    :goto_1
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->message:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    .line 812
    move/from16 v0, p3

    move-object/from16 v1, v29

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    .line 813
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->local_id:I

    .line 814
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 815
    move/from16 v0, v24

    move-object/from16 v1, v29

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    .line 816
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 817
    move-wide/from16 v0, p4

    move-object/from16 v2, v29

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_message;->random_id:J

    .line 818
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v5

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 819
    const/4 v4, 0x1

    move-object/from16 v0, v29

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->unread:Z

    .line 820
    const/16 v4, 0x300

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 821
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 822
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->via_bot_name:Ljava/lang/String;

    .line 823
    move-object/from16 v0, v29

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit16 v4, v4, 0x800

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 825
    :cond_3
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v4, v4

    const/16 v7, 0x20

    shl-long/2addr v4, v7

    move-object/from16 v0, v29

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    .line 826
    move-object/from16 v0, v18

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->reply_to_random_id:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_4

    .line 827
    move-object/from16 v0, v18

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->reply_to_random_id:J

    move-object/from16 v0, v29

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->reply_to_random_id:J

    .line 828
    move-object/from16 v0, v29

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 830
    :cond_4
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    if-eqz v4, :cond_5

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;

    if-eqz v4, :cond_9

    .line 831
    :cond_5
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1245
    .end local v18    # "decryptedMessage":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    .end local v24    # "from_id":I
    .end local v29    # "newMessage":Lorg/telegram/tgnet/TLRPC$TL_message;
    :cond_6
    :goto_2
    return-object v29

    .line 787
    .restart local v24    # "from_id":I
    :cond_7
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_2

    if-eqz p7, :cond_2

    .line 788
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_fingerprint:J

    .line 789
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    move-object/from16 v0, p1

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    .line 790
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    move-object/from16 v0, p1

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    .line 791
    const/16 v4, 0x100

    new-array v4, v4, [B

    move-object/from16 v0, p1

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 792
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 793
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-short v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    .line 794
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-short v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    .line 795
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 797
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    goto/16 :goto_0

    .line 808
    .restart local v18    # "decryptedMessage":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    :cond_8
    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 809
    .restart local v29    # "newMessage":Lorg/telegram/tgnet/TLRPC$TL_message;
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->ttl:I

    goto/16 :goto_1

    .line 832
    :cond_9
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;

    if-eqz v4, :cond_a

    .line 833
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 834
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 835
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->url:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    goto/16 :goto_2

    .line 836
    :cond_a
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaContact;

    if-eqz v4, :cond_b

    .line 837
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;-><init>()V

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 838
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->last_name:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    .line 839
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->first_name:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    .line 840
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->phone_number:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    .line 841
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->user_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    goto/16 :goto_2

    .line 842
    :cond_b
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaGeoPoint;

    if-eqz v4, :cond_c

    .line 843
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 844
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 845
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->lat:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 846
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->_long:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    goto/16 :goto_2

    .line 847
    :cond_c
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    if-eqz v4, :cond_11

    .line 848
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    if-eqz v4, :cond_d

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    array-length v4, v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_d

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    if-eqz v4, :cond_d

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    array-length v4, v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_e

    .line 849
    :cond_d
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 851
    :cond_e
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 852
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v5, v5, 0x3

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 853
    move-object/from16 v0, v29

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    if-eqz v4, :cond_10

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    :goto_3
    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 854
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_photo;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 855
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v0, v29

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Photo;->date:I

    .line 856
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb:[B

    move-object/from16 v37, v0

    .line 857
    .local v37, "thumb":[B
    if-eqz v37, :cond_f

    move-object/from16 v0, v37

    array-length v4, v0

    if-eqz v4, :cond_f

    move-object/from16 v0, v37

    array-length v4, v0

    const/16 v5, 0x1770

    if-gt v4, v5, :cond_f

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    const/16 v5, 0x64

    if-gt v4, v5, :cond_f

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    const/16 v5, 0x64

    if-gt v4, v5, :cond_f

    .line 858
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;-><init>()V

    .line 859
    .local v36, "small":Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    move-object/from16 v0, v36

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;->w:I

    .line 860
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    move-object/from16 v0, v36

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;->h:I

    .line 861
    move-object/from16 v0, v37

    move-object/from16 v1, v36

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;->bytes:[B

    .line 862
    const-string/jumbo v4, "s"

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;->type:Ljava/lang/String;

    .line 863
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 864
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    .end local v36    # "small":Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;
    :cond_f
    new-instance v16, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct/range {v16 .. v16}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    .line 868
    .local v16, "big":Lorg/telegram/tgnet/TLRPC$TL_photoSize;
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    move-object/from16 v0, v16

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->w:I

    .line 869
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    move-object/from16 v0, v16

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->h:I

    .line 870
    const-string/jumbo v4, "x"

    move-object/from16 v0, v16

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->type:Ljava/lang/String;

    .line 871
    move-object/from16 v0, p2

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->size:I

    move-object/from16 v0, v16

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->size:I

    .line 872
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;-><init>()V

    move-object/from16 v0, v16

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 873
    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    .line 874
    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->iv:[B

    .line 875
    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p2

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->dc_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    .line 876
    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    .line 877
    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    .line 878
    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p2

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->key_fingerprint:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    .line 879
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 853
    .end local v16    # "big":Lorg/telegram/tgnet/TLRPC$TL_photoSize;
    .end local v37    # "thumb":[B
    :cond_10
    const-string/jumbo v4, ""

    goto/16 :goto_3

    .line 880
    :cond_11
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    if-eqz v4, :cond_17

    .line 881
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    if-eqz v4, :cond_12

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    array-length v4, v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_12

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    if-eqz v4, :cond_12

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    array-length v4, v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_13

    .line 882
    :cond_12
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 884
    :cond_13
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 885
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v5, v5, 0x3

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 886
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 887
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    .line 888
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    .line 889
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->dc_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 890
    move-object/from16 v0, v29

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    if-eqz v4, :cond_15

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    :goto_4
    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 891
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move/from16 v0, p3

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 892
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->size:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 893
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 894
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 895
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 896
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-nez v4, :cond_14

    .line 897
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string/jumbo v5, "video/mp4"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 899
    :cond_14
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;->thumb:[B

    move-object/from16 v37, v0

    .line 900
    .restart local v37    # "thumb":[B
    if-eqz v37, :cond_16

    move-object/from16 v0, v37

    array-length v4, v0

    if-eqz v4, :cond_16

    move-object/from16 v0, v37

    array-length v4, v0

    const/16 v5, 0x1770

    if-gt v4, v5, :cond_16

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    const/16 v5, 0x64

    if-gt v4, v5, :cond_16

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    const/16 v5, 0x64

    if-gt v4, v5, :cond_16

    .line 901
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 902
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, v37

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    .line 903
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 904
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 905
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "s"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 906
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 911
    :goto_5
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    .line 912
    .local v12, "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 913
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    .line 914
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->duration:I

    .line 915
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    move-object/from16 v0, v29

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->ttl:I

    if-eqz v4, :cond_6

    .line 917
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v29

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->ttl:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->ttl:I

    goto/16 :goto_2

    .line 890
    .end local v12    # "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    .end local v37    # "thumb":[B
    :cond_15
    const-string/jumbo v4, ""

    goto/16 :goto_4

    .line 908
    .restart local v37    # "thumb":[B
    :cond_16
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 909
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "s"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto :goto_5

    .line 919
    .end local v37    # "thumb":[B
    :cond_17
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    if-eqz v4, :cond_20

    .line 920
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    if-eqz v4, :cond_18

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    array-length v4, v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_18

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    if-eqz v4, :cond_18

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    array-length v4, v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_19

    .line 921
    :cond_18
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 923
    :cond_19
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 924
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v5, v5, 0x3

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 925
    move-object/from16 v0, v29

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    if-eqz v4, :cond_1c

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    :goto_6
    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 926
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 927
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 928
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 929
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move/from16 v0, p3

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 930
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;

    if-eqz v4, :cond_1d

    .line 931
    new-instance v19, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 932
    .local v19, "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->file_name:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 933
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    .end local v19    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    :goto_7
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 938
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    if-eqz v4, :cond_1e

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    move-object/from16 v0, p2

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->size:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_8
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 939
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    .line 940
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    .line 941
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-nez v4, :cond_1a

    .line 942
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string/jumbo v5, ""

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 944
    :cond_1a
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    move-object/from16 v37, v0

    .line 945
    .restart local v37    # "thumb":[B
    if-eqz v37, :cond_1f

    move-object/from16 v0, v37

    array-length v4, v0

    if-eqz v4, :cond_1f

    move-object/from16 v0, v37

    array-length v4, v0

    const/16 v5, 0x1770

    if-gt v4, v5, :cond_1f

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    const/16 v5, 0x64

    if-gt v4, v5, :cond_1f

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    const/16 v5, 0x64

    if-gt v4, v5, :cond_1f

    .line 946
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 947
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, v37

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    .line 948
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 949
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 950
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "s"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 951
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 956
    :goto_9
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->dc_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 957
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/MessageObject;->isRoundVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 958
    :cond_1b
    const/4 v4, 0x1

    move-object/from16 v0, v29

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media_unread:Z

    goto/16 :goto_2

    .line 925
    .end local v37    # "thumb":[B
    :cond_1c
    const-string/jumbo v4, ""

    goto/16 :goto_6

    .line 935
    :cond_1d
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    goto/16 :goto_7

    .line 938
    :cond_1e
    move-object/from16 v0, p2

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->size:I

    goto/16 :goto_8

    .line 953
    .restart local v37    # "thumb":[B
    :cond_1f
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 954
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "s"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto :goto_9

    .line 960
    .end local v37    # "thumb":[B
    :cond_20
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    if-eqz v4, :cond_21

    .line 961
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 962
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v5, v5, 0x3

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 963
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string/jumbo v5, ""

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 964
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 965
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 966
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 967
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->date:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 968
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    .line 969
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 970
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->dc_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 971
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 972
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 973
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 974
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string/jumbo v5, ""

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto/16 :goto_2

    .line 976
    :cond_21
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio;

    if-eqz v4, :cond_26

    .line 977
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    if-eqz v4, :cond_22

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    array-length v4, v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_22

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    if-eqz v4, :cond_22

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    array-length v4, v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_23

    .line 978
    :cond_22
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 980
    :cond_23
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 981
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v5, v5, 0x3

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 982
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 983
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    .line 984
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    .line 985
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 986
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 987
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move/from16 v0, p3

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 988
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->size:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 989
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->dc_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 990
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 991
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 992
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "s"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 993
    move-object/from16 v0, v29

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    if-eqz v4, :cond_25

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    :goto_a
    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 994
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-nez v4, :cond_24

    .line 995
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string/jumbo v5, "audio/ogg"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 997
    :cond_24
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 998
    .local v11, "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    iput v4, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    .line 999
    const/4 v4, 0x1

    iput-boolean v4, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->voice:Z

    .line 1000
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    move-object/from16 v0, v29

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->ttl:I

    if-eqz v4, :cond_6

    .line 1002
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v29

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->ttl:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->ttl:I

    goto/16 :goto_2

    .line 993
    .end local v11    # "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    :cond_25
    const-string/jumbo v4, ""

    goto :goto_a

    .line 1004
    :cond_26
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;

    if-eqz v4, :cond_27

    .line 1005
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1006
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 1007
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->lat:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 1008
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->_long:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 1009
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->title:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    .line 1010
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->address:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    .line 1011
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->provider:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    .line 1012
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->venue_id:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    .line 1013
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string/jumbo v5, ""

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_type:Ljava/lang/String;

    goto/16 :goto_2

    .line 1015
    :cond_27
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 1018
    .end local v18    # "decryptedMessage":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    .end local v29    # "newMessage":Lorg/telegram/tgnet/TLRPC$TL_message;
    :cond_28
    move-object/from16 v0, p6

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    if-eqz v4, :cond_4b

    move-object/from16 v35, p6

    .line 1019
    check-cast v35, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    .line 1020
    .local v35, "serviceMessage":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-nez v4, :cond_29

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-eqz v4, :cond_2e

    .line 1021
    :cond_29
    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 1022
    .local v29, "newMessage":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-eqz v4, :cond_2d

    .line 1023
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;-><init>()V

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 1024
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->ttl_seconds:I

    if-ltz v4, :cond_2a

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->ttl_seconds:I

    const v5, 0x1e13380

    if-le v4, v5, :cond_2b

    .line 1025
    :cond_2a
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    const v5, 0x1e13380

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->ttl_seconds:I

    .line 1027
    :cond_2b
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->ttl_seconds:I

    move-object/from16 v0, p1

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    .line 1028
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v0, v35

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 1029
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChatTTL(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1034
    :cond_2c
    :goto_b
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    .line 1035
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1036
    const/4 v4, 0x1

    move-object/from16 v0, v29

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->unread:Z

    .line 1037
    const/16 v4, 0x100

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 1038
    move/from16 v0, p3

    move-object/from16 v1, v29

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    .line 1039
    move/from16 v0, v24

    move-object/from16 v1, v29

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    .line 1040
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1041
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v5

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 1042
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v4, v4

    const/16 v7, 0x20

    shl-long/2addr v4, v7

    move-object/from16 v0, v29

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    goto/16 :goto_2

    .line 1030
    :cond_2d
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-eqz v4, :cond_2c

    .line 1031
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;-><init>()V

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 1032
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v0, v35

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    goto :goto_b

    .line 1044
    .end local v29    # "newMessage":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    :cond_2e
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionFlushHistory;

    if-eqz v4, :cond_2f

    .line 1045
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v4, v4

    const/16 v7, 0x20

    shl-long v20, v4, v7

    .line 1046
    .local v20, "did":J
    new-instance v4, Lorg/telegram/messenger/SecretChatHelper$6;

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v4, v0, v1, v2}, Lorg/telegram/messenger/SecretChatHelper$6;-><init>(Lorg/telegram/messenger/SecretChatHelper;J)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1073
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 1074
    .end local v20    # "did":J
    :cond_2f
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;

    if-eqz v4, :cond_31

    .line 1075
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_30

    .line 1076
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1078
    :cond_30
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 1079
    :cond_31
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionReadMessages;

    if-eqz v4, :cond_33

    .line 1080
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_32

    .line 1081
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v6

    .line 1082
    .local v6, "time":I
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    const/4 v8, 0x1

    move-object/from16 v0, v35

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    move v7, v6

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->createTaskForSecretChat(IIIILjava/util/ArrayList;)V

    .line 1245
    .end local v6    # "time":I
    .end local v24    # "from_id":I
    .end local v35    # "serviceMessage":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    :cond_32
    :goto_c
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 1084
    .restart local v24    # "from_id":I
    .restart local v35    # "serviceMessage":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    :cond_33
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;

    if-eqz v4, :cond_34

    .line 1085
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->layer:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->applyPeerLayer(Lorg/telegram/tgnet/TLRPC$EncryptedChat;I)V

    goto :goto_c

    .line 1086
    :cond_34
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionRequestKey;

    if-eqz v4, :cond_3c

    .line 1087
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_36

    .line 1088
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    move-object/from16 v0, v35

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_35

    .line 1089
    const-string/jumbo v4, "we already have request key with higher exchange_id"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1090
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 1092
    :cond_35
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v8, v9}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    .line 1096
    :cond_36
    const/16 v4, 0x100

    new-array v0, v4, [B

    move-object/from16 v34, v0

    .line 1097
    .local v34, "salt":[B
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1098
    new-instance v33, Ljava/math/BigInteger;

    const/4 v4, 0x1

    sget-object v5, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    move-object/from16 v0, v33

    invoke-direct {v0, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1099
    .local v33, "p":Ljava/math/BigInteger;
    sget v4, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v26

    .line 1100
    .local v26, "g_b":Ljava/math/BigInteger;
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    move-object/from16 v0, v34

    invoke-direct {v4, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v26

    .line 1101
    new-instance v25, Ljava/math/BigInteger;

    const/4 v4, 0x1

    move-object/from16 v0, v35

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->g_a:[B

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1103
    .local v25, "g_a":Ljava/math/BigInteger;
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lorg/telegram/messenger/Utilities;->isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v4

    if-nez v4, :cond_37

    .line 1104
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v8, v9}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    .line 1105
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 1108
    :cond_37
    invoke-virtual/range {v26 .. v26}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v27

    .line 1109
    .local v27, "g_b_bytes":[B
    move-object/from16 v0, v27

    array-length v4, v0

    const/16 v5, 0x100

    if-le v4, v5, :cond_38

    .line 1110
    const/16 v4, 0x100

    new-array v0, v4, [B

    move-object/from16 v17, v0

    .line 1111
    .local v17, "correctedAuth":[B
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v7, 0x100

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-static {v0, v4, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1112
    move-object/from16 v27, v17

    .line 1115
    .end local v17    # "correctedAuth":[B
    :cond_38
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    move-object/from16 v0, v34

    invoke-direct {v4, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    .line 1117
    invoke-virtual/range {v25 .. v25}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v13

    .line 1118
    .local v13, "authKey":[B
    array-length v4, v13

    const/16 v5, 0x100

    if-le v4, v5, :cond_3a

    .line 1119
    const/16 v4, 0x100

    new-array v0, v4, [B

    move-object/from16 v17, v0

    .line 1120
    .restart local v17    # "correctedAuth":[B
    array-length v4, v13

    add-int/lit16 v4, v4, -0x100

    const/4 v5, 0x0

    const/16 v7, 0x100

    move-object/from16 v0, v17

    invoke-static {v13, v4, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1121
    move-object/from16 v13, v17

    .line 1130
    .end local v17    # "correctedAuth":[B
    :cond_39
    :goto_d
    invoke-static {v13}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v14

    .line 1131
    .local v14, "authKeyHash":[B
    const/16 v4, 0x8

    new-array v15, v4, [B

    .line 1132
    .local v15, "authKeyId":[B
    array-length v4, v14

    add-int/lit8 v4, v4, -0x8

    const/4 v5, 0x0

    const/16 v7, 0x8

    invoke-static {v14, v4, v15, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1134
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 1135
    move-object/from16 v0, p1

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 1136
    invoke-static {v15}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v4

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 1137
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a_or_b:[B

    .line 1139
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1141
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendAcceptKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_c

    .line 1122
    .end local v14    # "authKeyHash":[B
    .end local v15    # "authKeyId":[B
    :cond_3a
    array-length v4, v13

    const/16 v5, 0x100

    if-ge v4, v5, :cond_39

    .line 1123
    const/16 v4, 0x100

    new-array v0, v4, [B

    move-object/from16 v17, v0

    .line 1124
    .restart local v17    # "correctedAuth":[B
    const/4 v4, 0x0

    array-length v5, v13

    rsub-int v5, v5, 0x100

    array-length v7, v13

    move-object/from16 v0, v17

    invoke-static {v13, v4, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1125
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_e
    array-length v4, v13

    rsub-int v4, v4, 0x100

    if-ge v10, v4, :cond_3b

    .line 1126
    const/4 v4, 0x0

    aput-byte v4, v13, v10

    .line 1125
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 1128
    :cond_3b
    move-object/from16 v13, v17

    goto :goto_d

    .line 1142
    .end local v10    # "a":I
    .end local v13    # "authKey":[B
    .end local v17    # "correctedAuth":[B
    .end local v25    # "g_a":Ljava/math/BigInteger;
    .end local v26    # "g_b":Ljava/math/BigInteger;
    .end local v27    # "g_b_bytes":[B
    .end local v33    # "p":Ljava/math/BigInteger;
    .end local v34    # "salt":[B
    :cond_3c
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAcceptKey;

    if-eqz v4, :cond_43

    .line 1143
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    move-object/from16 v0, v35

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_42

    .line 1145
    new-instance v33, Ljava/math/BigInteger;

    const/4 v4, 0x1

    sget-object v5, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    move-object/from16 v0, v33

    invoke-direct {v0, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1146
    .restart local v33    # "p":Ljava/math/BigInteger;
    new-instance v28, Ljava/math/BigInteger;

    const/4 v4, 0x1

    move-object/from16 v0, v35

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->g_b:[B

    move-object/from16 v0, v28

    invoke-direct {v0, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1148
    .local v28, "i_authKey":Ljava/math/BigInteger;
    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lorg/telegram/messenger/Utilities;->isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 1149
    const/16 v4, 0x100

    new-array v4, v4, [B

    move-object/from16 v0, p1

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 1150
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 1151
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 1152
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1154
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v8, v9}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    .line 1155
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 1158
    :cond_3d
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    invoke-direct {v4, v5, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v28

    .line 1160
    invoke-virtual/range {v28 .. v28}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v13

    .line 1161
    .restart local v13    # "authKey":[B
    array-length v4, v13

    const/16 v5, 0x100

    if-le v4, v5, :cond_3f

    .line 1162
    const/16 v4, 0x100

    new-array v0, v4, [B

    move-object/from16 v17, v0

    .line 1163
    .restart local v17    # "correctedAuth":[B
    array-length v4, v13

    add-int/lit16 v4, v4, -0x100

    const/4 v5, 0x0

    const/16 v7, 0x100

    move-object/from16 v0, v17

    invoke-static {v13, v4, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1164
    move-object/from16 v13, v17

    .line 1173
    .end local v17    # "correctedAuth":[B
    :cond_3e
    :goto_f
    invoke-static {v13}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v14

    .line 1174
    .restart local v14    # "authKeyHash":[B
    const/16 v4, 0x8

    new-array v15, v4, [B

    .line 1175
    .restart local v15    # "authKeyId":[B
    array-length v4, v14

    add-int/lit8 v4, v4, -0x8

    const/4 v5, 0x0

    const/16 v7, 0x8

    invoke-static {v14, v4, v15, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1176
    invoke-static {v15}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v22

    .line 1177
    .local v22, "fingerprint":J
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->key_fingerprint:J

    cmp-long v4, v4, v22

    if-nez v4, :cond_41

    .line 1178
    move-object/from16 v0, p1

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 1179
    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 1180
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1181
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendCommitKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_c

    .line 1165
    .end local v14    # "authKeyHash":[B
    .end local v15    # "authKeyId":[B
    .end local v22    # "fingerprint":J
    :cond_3f
    array-length v4, v13

    const/16 v5, 0x100

    if-ge v4, v5, :cond_3e

    .line 1166
    const/16 v4, 0x100

    new-array v0, v4, [B

    move-object/from16 v17, v0

    .line 1167
    .restart local v17    # "correctedAuth":[B
    const/4 v4, 0x0

    array-length v5, v13

    rsub-int v5, v5, 0x100

    array-length v7, v13

    move-object/from16 v0, v17

    invoke-static {v13, v4, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1168
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_10
    array-length v4, v13

    rsub-int v4, v4, 0x100

    if-ge v10, v4, :cond_40

    .line 1169
    const/4 v4, 0x0

    aput-byte v4, v13, v10

    .line 1168
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    .line 1171
    :cond_40
    move-object/from16 v13, v17

    goto :goto_f

    .line 1183
    .end local v10    # "a":I
    .end local v17    # "correctedAuth":[B
    .restart local v14    # "authKeyHash":[B
    .restart local v15    # "authKeyId":[B
    .restart local v22    # "fingerprint":J
    :cond_41
    const/16 v4, 0x100

    new-array v4, v4, [B

    move-object/from16 v0, p1

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 1184
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 1185
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 1186
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1187
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v8, v9}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    goto/16 :goto_c

    .line 1190
    .end local v13    # "authKey":[B
    .end local v14    # "authKeyHash":[B
    .end local v15    # "authKeyId":[B
    .end local v22    # "fingerprint":J
    .end local v28    # "i_authKey":Ljava/math/BigInteger;
    .end local v33    # "p":Ljava/math/BigInteger;
    :cond_42
    const/16 v4, 0x100

    new-array v4, v4, [B

    move-object/from16 v0, p1

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 1191
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 1192
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 1193
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1194
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v8, v9}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    goto/16 :goto_c

    .line 1196
    :cond_43
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionCommitKey;

    if-eqz v4, :cond_45

    .line 1197
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    move-object/from16 v0, v35

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_44

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    move-object/from16 v0, v35

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->key_fingerprint:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_44

    .line 1198
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_fingerprint:J

    move-wide/from16 v30, v0

    .line 1199
    .local v30, "old_fingerpring":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    move-object/from16 v32, v0

    .line 1200
    .local v32, "old_key":[B
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_fingerprint:J

    .line 1201
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    move-object/from16 v0, p1

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    .line 1202
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    move-object/from16 v0, p1

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    .line 1203
    move-object/from16 v0, v32

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 1204
    move-wide/from16 v0, v30

    move-object/from16 v2, p1

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 1205
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-short v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    .line 1206
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-short v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    .line 1207
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 1209
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1211
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendNoopMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_c

    .line 1213
    .end local v30    # "old_fingerpring":J
    .end local v32    # "old_key":[B
    :cond_44
    const/16 v4, 0x100

    new-array v4, v4, [B

    move-object/from16 v0, p1

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 1214
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 1215
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 1216
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1217
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v8, v9}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    goto/16 :goto_c

    .line 1219
    :cond_45
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAbortKey;

    if-eqz v4, :cond_46

    .line 1220
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    move-object/from16 v0, v35

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_32

    .line 1221
    const/16 v4, 0x100

    new-array v4, v4, [B

    move-object/from16 v0, p1

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 1222
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 1223
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 1224
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    goto/16 :goto_c

    .line 1226
    :cond_46
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNoop;

    if-nez v4, :cond_32

    .line 1228
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionResend;

    if-eqz v4, :cond_4a

    .line 1229
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->end_seq_no:I

    move-object/from16 v0, p1

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->in_seq_no:I

    if-lt v4, v5, :cond_47

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->end_seq_no:I

    move-object/from16 v0, v35

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->start_seq_no:I

    if-ge v4, v5, :cond_48

    .line 1230
    :cond_47
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 1232
    :cond_48
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->start_seq_no:I

    move-object/from16 v0, p1

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->in_seq_no:I

    if-ge v4, v5, :cond_49

    .line 1233
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object/from16 v0, p1

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->in_seq_no:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->start_seq_no:I

    .line 1235
    :cond_49
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->start_seq_no:I

    move-object/from16 v0, v35

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->end_seq_no:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v5, v1}, Lorg/telegram/messenger/SecretChatHelper;->resendMessages(IILorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    goto/16 :goto_c

    .line 1237
    :cond_4a
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 1240
    .end local v35    # "serviceMessage":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    :cond_4b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1243
    .end local v24    # "from_id":I
    :cond_4c
    const-string/jumbo v4, "unknown TLObject"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto/16 :goto_c
.end method

.method protected processPendingEncMessages()V
    .locals 3

    .prologue
    .line 103
    iget-object v2, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 105
    .local v1, "pendingEncMessagesToDeleteCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v2, Lorg/telegram/messenger/SecretChatHelper$1;

    invoke-direct {v2, p0, v1}, Lorg/telegram/messenger/SecretChatHelper$1;-><init>(Lorg/telegram/messenger/SecretChatHelper;Ljava/util/ArrayList;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 117
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeletedByRandoms(Ljava/util/ArrayList;)V

    .line 118
    iget-object v2, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 120
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v1    # "pendingEncMessagesToDeleteCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    return-void
.end method

.method protected processUpdateEncryption(Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 12
    .param p1, "update"    # Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "usersDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    const/4 v11, 0x0

    .line 176
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;->chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 177
    .local v5, "newChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    iget v8, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v8, v8

    const/16 v10, 0x20

    shl-long v2, v8, v10

    .line 178
    .local v2, "dialog_id":J
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget v9, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v8, v9, v11}, Lorg/telegram/messenger/MessagesController;->getEncryptedChatDB(IZ)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v4

    .line 180
    .local v4, "existingChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    instance-of v8, v5, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;

    if-eqz v8, :cond_3

    if-nez v4, :cond_3

    .line 181
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    .line 182
    .local v7, "user_id":I
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 183
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    .line 185
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 186
    .local v6, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v6, :cond_1

    .line 187
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v6, Lorg/telegram/tgnet/TLRPC$User;

    .line 189
    .restart local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    iput v7, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    .line 190
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 191
    .local v0, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 192
    iput v11, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 193
    iput v11, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 194
    iget v8, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;->date:I

    iput v8, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 195
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v8, v5, v11}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    .line 196
    new-instance v8, Lorg/telegram/messenger/SecretChatHelper$2;

    invoke-direct {v8, p0, v0}, Lorg/telegram/messenger/SecretChatHelper$2;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$TL_dialog;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 205
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    invoke-virtual {v8, v5, v6, v0}, Lorg/telegram/messenger/MessagesStorage;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_dialog;)V

    .line 206
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/telegram/messenger/SecretChatHelper;->acceptSecretChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 239
    .end local v0    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v7    # "user_id":I
    :cond_2
    :goto_0
    return-void

    .line 207
    :cond_3
    instance-of v8, v5, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v8, :cond_6

    .line 208
    if-eqz v4, :cond_5

    instance-of v8, v4, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;

    if-eqz v8, :cond_5

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v8, :cond_4

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v8, v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 209
    :cond_4
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    .line 210
    iget v8, v4, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    .line 211
    invoke-virtual {p0, v5}, Lorg/telegram/messenger/SecretChatHelper;->processAcceptedSecretChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    goto :goto_0

    .line 212
    :cond_5
    if-nez v4, :cond_2

    iget-boolean v8, p0, Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z

    if-eqz v8, :cond_2

    .line 213
    iget-object v8, p0, Lorg/telegram/messenger/SecretChatHelper;->delayedEncryptedChatUpdates:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_6
    move-object v1, v4

    .line 217
    .local v1, "exist":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v1, :cond_7

    .line 218
    iget v8, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    .line 219
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    .line 220
    iget v8, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    .line 221
    iget-short v8, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    iput-short v8, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    .line 222
    iget-short v8, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    iput-short v8, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    .line 223
    iget v8, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    .line 224
    iget v8, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    .line 225
    iget v8, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    .line 226
    iget v8, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    .line 228
    :cond_7
    new-instance v8, Lorg/telegram/messenger/SecretChatHelper$3;

    invoke-direct {v8, p0, v1, v5}, Lorg/telegram/messenger/SecretChatHelper$3;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public requestNewSecretChatKey(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 9
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x100

    .line 1532
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v5, 0x14

    if-ge v4, v5, :cond_0

    .line 1554
    :goto_0
    return-void

    .line 1535
    :cond_0
    new-array v3, v7, [B

    .line 1536
    .local v3, "salt":[B
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1538
    sget v4, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 1539
    .local v2, "i_g_a":Ljava/math/BigInteger;
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v8, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v5, Ljava/math/BigInteger;

    sget-object v6, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    invoke-direct {v5, v8, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v2, v4, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 1540
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 1541
    .local v1, "g_a":[B
    array-length v4, v1

    if-le v4, v7, :cond_1

    .line 1542
    new-array v0, v7, [B

    .line 1543
    .local v0, "correctedAuth":[B
    const/4 v4, 0x0

    invoke-static {v1, v8, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1544
    move-object v1, v0

    .line 1547
    .end local v0    # "correctedAuth":[B
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v4

    iput-wide v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 1548
    iput-object v3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    .line 1549
    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a:[B

    .line 1551
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1553
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendRequestKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_0
.end method

.method public sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V
    .locals 9
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "resendMessage"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p3, "excange_id"    # J

    .prologue
    const/4 v4, 0x0

    .line 375
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    .line 394
    :goto_0
    return-void

    .line 379
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    .line 382
    .local v1, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    if-eqz p2, :cond_1

    .line 383
    move-object v2, p2

    .line 384
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 391
    :goto_1
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    .line 393
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 386
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAbortKey;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAbortKey;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 387
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-wide p3, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    .line 389
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_1
.end method

.method public sendAcceptKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "resendMessage"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/4 v4, 0x0

    .line 328
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 332
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    .line 335
    .local v1, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    if-eqz p2, :cond_1

    .line 336
    move-object v2, p2

    .line 337
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 346
    :goto_1
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    .line 348
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 339
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAcceptKey;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAcceptKey;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 340
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    .line 341
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->key_fingerprint:J

    .line 342
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a_or_b:[B

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->g_b:[B

    .line 344
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_1
.end method

.method public sendClearHistoryMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "resendMessage"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/4 v4, 0x0

    .line 262
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 265
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    .line 268
    .local v1, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    if-eqz p2, :cond_1

    .line 269
    move-object v2, p2

    .line 270
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 275
    :goto_1
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    .line 277
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 272
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionFlushHistory;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionFlushHistory;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 273
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_1
.end method

.method public sendCommitKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "resendMessage"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/4 v4, 0x0

    .line 352
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 356
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    .line 359
    .local v1, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    if-eqz p2, :cond_1

    .line 360
    move-object v2, p2

    .line 361
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 369
    :goto_1
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    .line 371
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 363
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionCommitKey;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionCommitKey;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 364
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    .line 365
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->key_fingerprint:J

    .line 367
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_1
.end method

.method public sendMessagesDeleteMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p3, "resendMessage"    # Lorg/telegram/tgnet/TLRPC$Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 242
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 245
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    .line 248
    .local v1, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    if-eqz p3, :cond_1

    .line 249
    move-object v2, p3

    .line 250
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 256
    :goto_1
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    .line 258
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 252
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 253
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    .line 254
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_1
.end method

.method public sendMessagesReadMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p3, "resendMessage"    # Lorg/telegram/tgnet/TLRPC$Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 156
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 159
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    .line 162
    .local v1, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    if-eqz p3, :cond_1

    .line 163
    move-object v2, p3

    .line 164
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 170
    :goto_1
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    .line 172
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 166
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionReadMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionReadMessages;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 167
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    .line 168
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_1
.end method

.method public sendNoopMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "resendMessage"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/4 v4, 0x0

    .line 397
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    .line 414
    :goto_0
    return-void

    .line 401
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    .line 404
    .local v1, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    if-eqz p2, :cond_1

    .line 405
    move-object v2, p2

    .line 406
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 411
    :goto_1
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    .line 413
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 408
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNoop;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNoop;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 409
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_1
.end method

.method public sendNotifyLayerMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "resendMessage"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/4 v4, 0x0

    .line 281
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->sendingNotifyLayer:Ljava/util/ArrayList;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->sendingNotifyLayer:Ljava/util/ArrayList;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    .line 291
    .local v1, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    if-eqz p2, :cond_2

    .line 292
    move-object v2, p2

    .line 293
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 299
    :goto_1
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    .line 301
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 295
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 296
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    const/16 v3, 0x42

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->layer:I

    .line 297
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_1
.end method

.method public sendRequestKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "resendMessage"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/4 v4, 0x0

    .line 305
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 309
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    .line 312
    .local v1, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    if-eqz p2, :cond_1

    .line 313
    move-object v2, p2

    .line 314
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 322
    :goto_1
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    .line 324
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 316
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionRequestKey;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionRequestKey;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 317
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    .line 318
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a:[B

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->g_a:[B

    .line 320
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_1
.end method

.method public sendScreenshotMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 12
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p3, "resendMessage"    # Lorg/telegram/tgnet/TLRPC$Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 445
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    .line 471
    :goto_0
    return-void

    .line 449
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    .line 453
    .local v1, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    if-eqz p3, :cond_1

    .line 454
    move-object v2, p3

    .line 455
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 468
    :goto_1
    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    .line 470
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 457
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 458
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    .line 459
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    .line 461
    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    new-instance v7, Lorg/telegram/messenger/MessageObject;

    invoke-direct {v7, v2, v4, v5}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 462
    .local v7, "newMsgObj":Lorg/telegram/messenger/MessageObject;
    iget-object v0, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v3, 0x1

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 463
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v8, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-virtual {v0, v10, v11, v8}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    .line 466
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public sendTTLMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 12
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "resendMessage"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 417
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    .line 442
    :goto_0
    return-void

    .line 421
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    .line 424
    .local v1, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    if-eqz p2, :cond_1

    .line 425
    move-object v2, p2

    .line 426
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 439
    :goto_1
    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    .line 441
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 428
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 429
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->ttl_seconds:I

    .line 430
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    .line 432
    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    new-instance v7, Lorg/telegram/messenger/MessageObject;

    invoke-direct {v7, v2, v4, v5}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 433
    .local v7, "newMsgObj":Lorg/telegram/messenger/MessageObject;
    iget-object v0, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v3, 0x1

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 434
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .local v8, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-virtual {v0, v10, v11, v8}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    .line 437
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public startSecretChat(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1742
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1897
    :cond_0
    :goto_0
    return-void

    .line 1745
    :cond_1
    iput-boolean v3, p0, Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z

    .line 1746
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-direct {v0, p1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 1747
    .local v0, "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    const-string/jumbo v3, "Loading"

    const v4, 0x7f07035a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1748
    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1749
    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 1750
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;-><init>()V

    .line 1751
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;
    const/16 v3, 0x100

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->random_length:I

    .line 1752
    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->version:I

    .line 1753
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/SecretChatHelper$14;

    invoke-direct {v4, p0, p1, v0, p2}, Lorg/telegram/messenger/SecretChatHelper$14;-><init>(Lorg/telegram/messenger/SecretChatHelper;Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$User;)V

    const/4 v5, 0x2

    invoke-virtual {v3, v1, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v2

    .line 1881
    .local v2, "reqId":I
    const/4 v3, -0x2

    const-string/jumbo v4, "Cancel"

    const v5, 0x7f0700f4

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/SecretChatHelper$15;

    invoke-direct {v5, p0, v2}, Lorg/telegram/messenger/SecretChatHelper$15;-><init>(Lorg/telegram/messenger/SecretChatHelper;I)V

    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1893
    :try_start_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1894
    :catch_0
    move-exception v3

    goto :goto_0
.end method
