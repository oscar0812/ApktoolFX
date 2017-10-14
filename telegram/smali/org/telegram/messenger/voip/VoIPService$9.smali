.class Lorg/telegram/messenger/voip/VoIPService$9;
.super Ljava/lang/Object;
.source "VoIPService.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/voip/VoIPService;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 434
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$9;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 12
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 437
    if-nez p2, :cond_4

    move-object v6, p1

    .line 438
    check-cast v6, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;

    .line 439
    .local v6, "res":Lorg/telegram/tgnet/TLRPC$messages_DhConfig;
    instance-of v8, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_dhConfig;

    if-eqz v8, :cond_1

    .line 440
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    iget v9, v6, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    invoke-static {v8, v9}, Lorg/telegram/messenger/Utilities;->isGoodPrime([BI)Z

    move-result v8

    if-nez v8, :cond_0

    .line 443
    const-string/jumbo v8, "stopping VoIP service, bad prime"

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 444
    iget-object v8, p0, Lorg/telegram/messenger/voip/VoIPService$9;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {v8}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    .line 506
    .end local v6    # "res":Lorg/telegram/tgnet/TLRPC$messages_DhConfig;
    :goto_0
    return-void

    .line 448
    .restart local v6    # "res":Lorg/telegram/tgnet/TLRPC$messages_DhConfig;
    :cond_0
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    sput-object v8, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    .line 449
    iget v8, v6, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    sput v8, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    .line 450
    iget v8, v6, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->version:I

    sput v8, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    .line 451
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    sget v10, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    sget-object v11, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    invoke-virtual {v8, v9, v10, v11}, Lorg/telegram/messenger/MessagesStorage;->saveSecretParams(II[B)V

    .line 453
    :cond_1
    const/16 v8, 0x100

    new-array v7, v8, [B

    .line 454
    .local v7, "salt":[B
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    const/16 v8, 0x100

    if-ge v0, v8, :cond_2

    .line 455
    sget-object v8, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v8}, Ljava/security/SecureRandom;->nextDouble()D

    move-result-wide v8

    const-wide/high16 v10, 0x4070000000000000L    # 256.0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    int-to-byte v8, v8

    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->random:[B

    aget-byte v9, v9, v0

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v0

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 457
    :cond_2
    iget-object v8, p0, Lorg/telegram/messenger/voip/VoIPService$9;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {v8, v7}, Lorg/telegram/messenger/voip/VoIPService;->access$602(Lorg/telegram/messenger/voip/VoIPService;[B)[B

    .line 458
    sget v8, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 459
    .local v2, "g_b":Ljava/math/BigInteger;
    new-instance v4, Ljava/math/BigInteger;

    const/4 v8, 0x1

    sget-object v9, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    invoke-direct {v4, v8, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 460
    .local v4, "p":Ljava/math/BigInteger;
    new-instance v8, Ljava/math/BigInteger;

    const/4 v9, 0x1

    invoke-direct {v8, v9, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v2, v8, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 461
    iget-object v8, p0, Lorg/telegram/messenger/voip/VoIPService$9;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    iget-object v9, p0, Lorg/telegram/messenger/voip/VoIPService$9;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {v9}, Lorg/telegram/messenger/voip/VoIPService;->access$500(Lorg/telegram/messenger/voip/VoIPService;)Lorg/telegram/tgnet/TLRPC$PhoneCall;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$PhoneCall;->g_a_hash:[B

    invoke-static {v8, v9}, Lorg/telegram/messenger/voip/VoIPService;->access$1002(Lorg/telegram/messenger/voip/VoIPService;[B)[B

    .line 463
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 464
    .local v3, "g_b_bytes":[B
    array-length v8, v3

    const/16 v9, 0x100

    if-le v8, v9, :cond_3

    .line 465
    const/16 v8, 0x100

    new-array v1, v8, [B

    .line 466
    .local v1, "correctedAuth":[B
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x100

    invoke-static {v3, v8, v1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 467
    move-object v3, v1

    .line 470
    .end local v1    # "correctedAuth":[B
    :cond_3
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;-><init>()V

    .line 471
    .local v5, "req":Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;
    iput-object v3, v5, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;->g_b:[B

    .line 473
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 474
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v9, p0, Lorg/telegram/messenger/voip/VoIPService$9;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {v9}, Lorg/telegram/messenger/voip/VoIPService;->access$500(Lorg/telegram/messenger/voip/VoIPService;)Lorg/telegram/tgnet/TLRPC$PhoneCall;

    move-result-object v9

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v10, v8, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 475
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v9, p0, Lorg/telegram/messenger/voip/VoIPService$9;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {v9}, Lorg/telegram/messenger/voip/VoIPService;->access$500(Lorg/telegram/messenger/voip/VoIPService;)Lorg/telegram/tgnet/TLRPC$PhoneCall;

    move-result-object v9

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v10, v8, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 476
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;-><init>()V

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    .line 477
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->udp_reflector:Z

    iput-boolean v10, v8, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->udp_p2p:Z

    .line 478
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    const/16 v9, 0x41

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->min_layer:I

    .line 479
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    const/16 v9, 0x41

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->max_layer:I

    .line 480
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v9, Lorg/telegram/messenger/voip/VoIPService$9$1;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/voip/VoIPService$9$1;-><init>(Lorg/telegram/messenger/voip/VoIPService$9;)V

    const/4 v10, 0x2

    invoke-virtual {v8, v5, v9, v10}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_0

    .line 504
    .end local v0    # "a":I
    .end local v2    # "g_b":Ljava/math/BigInteger;
    .end local v3    # "g_b_bytes":[B
    .end local v4    # "p":Ljava/math/BigInteger;
    .end local v5    # "req":Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;
    .end local v6    # "res":Lorg/telegram/tgnet/TLRPC$messages_DhConfig;
    .end local v7    # "salt":[B
    :cond_4
    iget-object v8, p0, Lorg/telegram/messenger/voip/VoIPService$9;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {v8}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    goto/16 :goto_0
.end method
