.class Lorg/telegram/messenger/SecretChatHelper$14;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SecretChatHelper;->startSecretChat(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SecretChatHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SecretChatHelper;Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/SecretChatHelper;

    .prologue
    .line 1753
    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$14;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SecretChatHelper$14;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/telegram/messenger/SecretChatHelper$14;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p4, p0, Lorg/telegram/messenger/SecretChatHelper$14;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 12
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 1756
    if-nez p2, :cond_4

    move-object v5, p1

    .line 1757
    check-cast v5, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;

    .line 1758
    .local v5, "res":Lorg/telegram/tgnet/TLRPC$messages_DhConfig;
    instance-of v7, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_dhConfig;

    if-eqz v7, :cond_1

    .line 1759
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    iget v8, v5, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    invoke-static {v7, v8}, Lorg/telegram/messenger/Utilities;->isGoodPrime([BI)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1760
    new-instance v7, Lorg/telegram/messenger/SecretChatHelper$14$1;

    invoke-direct {v7, p0}, Lorg/telegram/messenger/SecretChatHelper$14$1;-><init>(Lorg/telegram/messenger/SecretChatHelper$14;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1879
    .end local v5    # "res":Lorg/telegram/tgnet/TLRPC$messages_DhConfig;
    :goto_0
    return-void

    .line 1774
    .restart local v5    # "res":Lorg/telegram/tgnet/TLRPC$messages_DhConfig;
    :cond_0
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    sput-object v7, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    .line 1775
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    sput v7, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    .line 1776
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->version:I

    sput v7, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    .line 1777
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    sget v9, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    sget-object v10, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    invoke-virtual {v7, v8, v9, v10}, Lorg/telegram/messenger/MessagesStorage;->saveSecretParams(II[B)V

    .line 1779
    :cond_1
    const/16 v7, 0x100

    new-array v6, v7, [B

    .line 1780
    .local v6, "salt":[B
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    const/16 v7, 0x100

    if-ge v0, v7, :cond_2

    .line 1781
    sget-object v7, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v7}, Ljava/security/SecureRandom;->nextDouble()D

    move-result-wide v8

    const-wide/high16 v10, 0x4070000000000000L    # 256.0

    mul-double/2addr v8, v10

    double-to-int v7, v8

    int-to-byte v7, v7

    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->random:[B

    aget-byte v8, v8, v0

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v0

    .line 1780
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1784
    :cond_2
    sget v7, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    int-to-long v8, v7

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 1785
    .local v3, "i_g_a":Ljava/math/BigInteger;
    new-instance v7, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v8, Ljava/math/BigInteger;

    const/4 v9, 0x1

    sget-object v10, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    invoke-direct {v8, v9, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v3, v7, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 1786
    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 1787
    .local v2, "g_a":[B
    array-length v7, v2

    const/16 v8, 0x100

    if-le v7, v8, :cond_3

    .line 1788
    const/16 v7, 0x100

    new-array v1, v7, [B

    .line 1789
    .local v1, "correctedAuth":[B
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x100

    invoke-static {v2, v7, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1790
    move-object v2, v1

    .line 1793
    .end local v1    # "correctedAuth":[B
    :cond_3
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestEncryption;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messages_requestEncryption;-><init>()V

    .line 1794
    .local v4, "req2":Lorg/telegram/tgnet/TLRPC$TL_messages_requestEncryption;
    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestEncryption;->g_a:[B

    .line 1795
    iget-object v7, p0, Lorg/telegram/messenger/SecretChatHelper$14;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v7

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestEncryption;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1796
    sget-object v7, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v7}, Ljava/security/SecureRandom;->nextInt()I

    move-result v7

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestEncryption;->random_id:I

    .line 1797
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v8, Lorg/telegram/messenger/SecretChatHelper$14$2;

    invoke-direct {v8, p0, v6}, Lorg/telegram/messenger/SecretChatHelper$14$2;-><init>(Lorg/telegram/messenger/SecretChatHelper$14;[B)V

    const/4 v9, 0x2

    invoke-virtual {v7, v4, v8, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_0

    .line 1864
    .end local v0    # "a":I
    .end local v2    # "g_a":[B
    .end local v3    # "i_g_a":Ljava/math/BigInteger;
    .end local v4    # "req2":Lorg/telegram/tgnet/TLRPC$TL_messages_requestEncryption;
    .end local v5    # "res":Lorg/telegram/tgnet/TLRPC$messages_DhConfig;
    .end local v6    # "salt":[B
    :cond_4
    iget-object v7, p0, Lorg/telegram/messenger/SecretChatHelper$14;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    iget-object v7, v7, Lorg/telegram/messenger/SecretChatHelper;->delayedEncryptedChatUpdates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1865
    new-instance v7, Lorg/telegram/messenger/SecretChatHelper$14$3;

    invoke-direct {v7, p0}, Lorg/telegram/messenger/SecretChatHelper$14$3;-><init>(Lorg/telegram/messenger/SecretChatHelper$14;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
