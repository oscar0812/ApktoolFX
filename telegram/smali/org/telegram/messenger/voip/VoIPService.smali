.class public Lorg/telegram/messenger/voip/VoIPService;
.super Lorg/telegram/messenger/voip/VoIPBaseService;
.source "VoIPService.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# static fields
.field private static final CALL_MAX_LAYER:I = 0x41

.field private static final CALL_MIN_LAYER:I = 0x41

.field public static final STATE_BUSY:I = 0x11

.field public static final STATE_EXCHANGING_KEYS:I = 0xc

.field public static final STATE_HANGING_UP:I = 0xa

.field public static final STATE_REQUESTING:I = 0xe

.field public static final STATE_RINGING:I = 0x10

.field public static final STATE_WAITING:I = 0xd

.field public static final STATE_WAITING_INCOMING:I = 0xf

.field private static final TAG:Ljava/lang/String; = "tg-voip-service"

.field public static callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/TLRPC$PhoneCall;


# instance fields
.field private a_or_b:[B

.field private authKey:[B

.field private call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

.field private callReqId:I

.field private delayedStartOutgoingCall:Ljava/lang/Runnable;

.field private endCallAfterRequest:Z

.field private forceRating:Z

.field private g_a:[B

.field private g_a_hash:[B

.field private keyFingerprint:J

.field private needSendDebugLog:Z

.field private pendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PhoneCall;",
            ">;"
        }
    .end annotation
.end field

.field private user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPBaseService;-><init>()V

    .line 90
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->needSendDebugLog:Z

    .line 91
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->endCallAfterRequest:Z

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->pendingUpdates:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->delayedStartOutgoingCall:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startOutgoingCall()V

    return-void
.end method

.method static synthetic access$1002(Lorg/telegram/messenger/voip/VoIPService;[B)[B
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;
    .param p1, "x1"    # [B

    .prologue
    .line 62
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a_hash:[B

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->initiateActualEncryptedCall()V

    return-void
.end method

.method static synthetic access$202(Lorg/telegram/messenger/voip/VoIPService;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lorg/telegram/messenger/voip/VoIPService;->callReqId:I

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/messenger/voip/VoIPService;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method static synthetic access$402(Lorg/telegram/messenger/voip/VoIPService;[B)[B
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;
    .param p1, "x1"    # [B

    .prologue
    .line 62
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a:[B

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/messenger/voip/VoIPService;)Lorg/telegram/tgnet/TLRPC$PhoneCall;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    return-object v0
.end method

.method static synthetic access$502(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$PhoneCall;)Lorg/telegram/tgnet/TLRPC$PhoneCall;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    return-object p1
.end method

.method static synthetic access$602(Lorg/telegram/messenger/voip/VoIPService;[B)[B
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;
    .param p1, "x1"    # [B

    .prologue
    .line 62
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->a_or_b:[B

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/messenger/voip/VoIPService;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->endCallAfterRequest:Z

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/voip/VoIPService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->pendingUpdates:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startRinging()V

    return-void
.end method

.method private acknowledgeCallAndStartRinging()V
    .locals 4

    .prologue
    .line 328
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;

    if-eqz v1, :cond_0

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was discarded before the service started, stopping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->stopSelf()V

    .line 356
    :goto_0
    return-void

    .line 333
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_receivedCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_receivedCall;-><init>()V

    .line 334
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_phone_receivedCall;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_receivedCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 335
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_receivedCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 336
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_receivedCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 337
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$6;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/voip/VoIPService$6;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0
.end method

.method private dumpCallObject()V
    .locals 7

    .prologue
    .line 605
    :try_start_0
    const-class v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;

    invoke-virtual {v3}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 606
    .local v1, "flds":[Ljava/lang/reflect/Field;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 607
    .local v0, "f":Ljava/lang/reflect/Field;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 609
    .end local v0    # "f":Ljava/lang/reflect/Field;
    .end local v1    # "flds":[Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 610
    .local v2, "x":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 612
    .end local v2    # "x":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public static getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPBaseService;

    instance-of v0, v0, Lorg/telegram/messenger/voip/VoIPService;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPBaseService;

    check-cast v0, Lorg/telegram/messenger/voip/VoIPService;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initiateActualEncryptedCall()V
    .locals 26

    .prologue
    .line 798
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 799
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 800
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 803
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "InitCall: keyID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/voip/VoIPService;->keyFingerprint:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 804
    const-string/jumbo v3, "notifications"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/voip/VoIPService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 805
    .local v15, "nprefs":Landroid/content/SharedPreferences;
    new-instance v11, Ljava/util/HashSet;

    const-string/jumbo v3, "calls_access_hashes"

    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {v15, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 806
    .local v11, "hashes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 807
    :cond_1
    :goto_0
    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_5

    .line 808
    const/16 v16, 0x0

    .line 809
    .local v16, "oldest":Ljava/lang/String;
    const-wide v18, 0x7fffffffffffffffL

    .line 810
    .local v18, "oldestTime":J
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 811
    .local v14, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 812
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 813
    .local v13, "item":Ljava/lang/String;
    const-string/jumbo v3, " "

    invoke-virtual {v13, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 814
    .local v21, "s":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v3, v0

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    .line 815
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 862
    .end local v11    # "hashes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v13    # "item":Ljava/lang/String;
    .end local v14    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v15    # "nprefs":Landroid/content/SharedPreferences;
    .end local v16    # "oldest":Ljava/lang/String;
    .end local v18    # "oldestTime":J
    .end local v21    # "s":[Ljava/lang/String;
    :catch_0
    move-exception v23

    .line 863
    .local v23, "x":Ljava/lang/Exception;
    const-string/jumbo v3, "error starting call"

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 864
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    .line 866
    .end local v23    # "x":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 818
    .restart local v11    # "hashes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v13    # "item":Ljava/lang/String;
    .restart local v14    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v15    # "nprefs":Landroid/content/SharedPreferences;
    .restart local v16    # "oldest":Ljava/lang/String;
    .restart local v18    # "oldestTime":J
    .restart local v21    # "s":[Ljava/lang/String;
    :cond_3
    const/4 v3, 0x2

    :try_start_1
    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v24

    .line 819
    .local v24, "t":J
    cmp-long v3, v24, v18

    if-gez v3, :cond_2

    .line 820
    move-wide/from16 v18, v24

    .line 821
    move-object/from16 v16, v13

    goto :goto_1

    .line 823
    .end local v24    # "t":J
    :catch_1
    move-exception v23

    .line 824
    .restart local v23    # "x":Ljava/lang/Exception;
    :try_start_2
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 828
    .end local v13    # "item":Ljava/lang/String;
    .end local v21    # "s":[Ljava/lang/String;
    .end local v23    # "x":Ljava/lang/Exception;
    :cond_4
    if-eqz v16, :cond_1

    .line 829
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 831
    .end local v14    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v16    # "oldest":Ljava/lang/String;
    .end local v18    # "oldestTime":J
    :cond_5
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "calls_access_hashes"

    invoke-interface {v3, v4, v11}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 832
    const-string/jumbo v3, "mainconfig"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/voip/VoIPService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 833
    .local v17, "preferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->callPacketTimeout:I

    int-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/MessagesController;->callConnectTimeout:I

    int-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    const-string/jumbo v8, "VoipDataSaving"

    const/4 v9, 0x0

    .line 834
    move-object/from16 v0, v17

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    .line 833
    invoke-virtual/range {v3 .. v10}, Lorg/telegram/messenger/voip/VoIPController;->setConfig(DDIJ)V

    .line 835
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/voip/VoIPController;->setEncryptionKey([BZ)V

    .line 836
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->alternative_connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;

    .line 837
    .local v2, "endpoints":[Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhoneCall;->connection:Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;

    aput-object v4, v2, v3

    .line 838
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->alternative_connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v12, v3, :cond_6

    .line 839
    add-int/lit8 v4, v12, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->alternative_connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;

    aput-object v3, v2, v4

    .line 838
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 841
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->udp_p2p:Z

    if-eqz v3, :cond_8

    const-string/jumbo v3, "mainconfig"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lorg/telegram/messenger/voip/VoIPService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v5, "calls_p2p"

    const/4 v6, 0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    :goto_4
    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/voip/VoIPController;->setRemoteEndpoints([Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;Z)V

    .line 842
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "mainconfig"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 843
    .local v20, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "proxy_enabled"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "proxy_enabled_calls"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 844
    const-string/jumbo v3, "proxy_ip"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 845
    .local v22, "server":Ljava/lang/String;
    if-eqz v22, :cond_7

    .line 846
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    const-string/jumbo v4, "proxy_port"

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "proxy_user"

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "proxy_pass"

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v4, v5, v6}, Lorg/telegram/messenger/voip/VoIPController;->setProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 849
    .end local v22    # "server":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPController;->start()V

    .line 850
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->updateNetworkType()V

    .line 851
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPController;->connect()V

    .line 852
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/voip/VoIPService;->controllerStarted:Z

    .line 853
    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/messenger/voip/VoIPService$14;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v4, 0x1388

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 841
    .end local v20    # "prefs":Landroid/content/SharedPreferences;
    :cond_8
    const/4 v3, 0x0

    goto :goto_4
.end method

.method private processAcceptedCall()V
    .locals 14

    .prologue
    .line 738
    const/16 v10, 0xc

    invoke-virtual {p0, v10}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 739
    new-instance v8, Ljava/math/BigInteger;

    const/4 v10, 0x1

    sget-object v11, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    invoke-direct {v8, v10, v11}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 740
    .local v8, "p":Ljava/math/BigInteger;
    new-instance v5, Ljava/math/BigInteger;

    const/4 v10, 0x1

    iget-object v11, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$PhoneCall;->g_b:[B

    invoke-direct {v5, v10, v11}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 742
    .local v5, "i_authKey":Ljava/math/BigInteger;
    invoke-static {v5, v8}, Lorg/telegram/messenger/Utilities;->isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 743
    const-string/jumbo v10, "stopping VoIP service, bad Ga and Gb"

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 744
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    .line 795
    :goto_0
    return-void

    .line 748
    :cond_0
    new-instance v10, Ljava/math/BigInteger;

    const/4 v11, 0x1

    iget-object v12, p0, Lorg/telegram/messenger/voip/VoIPService;->a_or_b:[B

    invoke-direct {v10, v11, v12}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v5, v10, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 750
    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 751
    .local v1, "authKey":[B
    array-length v10, v1

    const/16 v11, 0x100

    if-le v10, v11, :cond_2

    .line 752
    const/16 v10, 0x100

    new-array v4, v10, [B

    .line 753
    .local v4, "correctedAuth":[B
    array-length v10, v1

    add-int/lit16 v10, v10, -0x100

    const/4 v11, 0x0

    const/16 v12, 0x100

    invoke-static {v1, v10, v4, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 754
    move-object v1, v4

    .line 763
    .end local v4    # "correctedAuth":[B
    :cond_1
    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v2

    .line 764
    .local v2, "authKeyHash":[B
    const/16 v10, 0x8

    new-array v3, v10, [B

    .line 765
    .local v3, "authKeyId":[B
    array-length v10, v2

    add-int/lit8 v10, v10, -0x8

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-static {v2, v10, v3, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 766
    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v6

    .line 767
    .local v6, "fingerprint":J
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    .line 768
    iput-wide v6, p0, Lorg/telegram/messenger/voip/VoIPService;->keyFingerprint:J

    .line 769
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;-><init>()V

    .line 770
    .local v9, "req":Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;
    iget-object v10, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a:[B

    iput-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->g_a:[B

    .line 771
    iput-wide v6, v9, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->key_fingerprint:J

    .line 772
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 773
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v11, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v12, v10, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 774
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v11, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v12, v10, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 775
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;-><init>()V

    iput-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    .line 776
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    const/16 v11, 0x41

    iput v11, v10, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->max_layer:I

    .line 777
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    const/16 v11, 0x41

    iput v11, v10, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->min_layer:I

    .line 778
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->udp_reflector:Z

    iput-boolean v12, v10, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->udp_p2p:Z

    .line 779
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v11, Lorg/telegram/messenger/voip/VoIPService$13;

    invoke-direct {v11, p0}, Lorg/telegram/messenger/voip/VoIPService$13;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v10, v9, v11}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    .line 755
    .end local v2    # "authKeyHash":[B
    .end local v3    # "authKeyId":[B
    .end local v6    # "fingerprint":J
    .end local v9    # "req":Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;
    :cond_2
    array-length v10, v1

    const/16 v11, 0x100

    if-ge v10, v11, :cond_1

    .line 756
    const/16 v10, 0x100

    new-array v4, v10, [B

    .line 757
    .restart local v4    # "correctedAuth":[B
    const/4 v10, 0x0

    array-length v11, v1

    rsub-int v11, v11, 0x100

    array-length v12, v1

    invoke-static {v1, v10, v4, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 758
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    array-length v10, v1

    rsub-int v10, v10, 0x100

    if-ge v0, v10, :cond_3

    .line 759
    const/4 v10, 0x0

    aput-byte v10, v1, v0

    .line 758
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 761
    :cond_3
    move-object v1, v4

    goto/16 :goto_1
.end method

.method private showIncomingNotification()V
    .locals 24

    .prologue
    .line 873
    new-instance v15, Landroid/content/Intent;

    const-class v19, Lorg/telegram/ui/VoIPActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 874
    .local v15, "intent":Landroid/content/Intent;
    const/high16 v19, 0x30000000

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 875
    new-instance v19, Landroid/app/Notification$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v20, "VoipInCallBranding"

    const v21, 0x7f070640

    .line 876
    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 877
    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    const v20, 0x7f020150

    .line 878
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 879
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v15, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 880
    .local v8, "builder":Landroid/app/Notification$Builder;
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 881
    new-instance v10, Landroid/content/Intent;

    const-class v19, Lorg/telegram/messenger/voip/VoIPActionsReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 882
    .local v10, "endIntent":Landroid/content/Intent;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ".DECLINE_CALL"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 883
    const-string/jumbo v19, "call_id"

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->getCallID()J

    move-result-wide v20

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 884
    const-string/jumbo v19, "VoipDeclineCall"

    const v20, 0x7f07063a

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 885
    .local v11, "endTitle":Ljava/lang/CharSequence;
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x18

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    .line 886
    new-instance v12, Landroid/text/SpannableString;

    invoke-direct {v12, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .end local v11    # "endTitle":Ljava/lang/CharSequence;
    .local v12, "endTitle":Ljava/lang/CharSequence;
    move-object/from16 v19, v12

    .line 887
    check-cast v19, Landroid/text/SpannableString;

    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    const v21, -0xbbcca

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v21, 0x0

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v22

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v11, v12

    .line 889
    .end local v12    # "endTitle":Ljava/lang/CharSequence;
    .restart local v11    # "endTitle":Ljava/lang/CharSequence;
    :cond_0
    const v19, 0x7f0200a7

    const/16 v20, 0x0

    const/high16 v21, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v11, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 890
    new-instance v4, Landroid/content/Intent;

    const-class v19, Lorg/telegram/messenger/voip/VoIPActionsReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 891
    .local v4, "answerIntent":Landroid/content/Intent;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ".ANSWER_CALL"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    const-string/jumbo v19, "call_id"

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->getCallID()J

    move-result-wide v20

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 893
    const-string/jumbo v19, "VoipAnswerCall"

    const v20, 0x7f070633

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 894
    .local v5, "answerTitle":Ljava/lang/CharSequence;
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x18

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    .line 895
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .end local v5    # "answerTitle":Ljava/lang/CharSequence;
    .local v6, "answerTitle":Ljava/lang/CharSequence;
    move-object/from16 v19, v6

    .line 896
    check-cast v19, Landroid/text/SpannableString;

    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    const v21, -0xff5600

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v21, 0x0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v22

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v5, v6

    .line 898
    .end local v6    # "answerTitle":Ljava/lang/CharSequence;
    .restart local v5    # "answerTitle":Ljava/lang/CharSequence;
    :cond_1
    const v19, 0x7f0200ab

    const/16 v20, 0x0

    const/high16 v21, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v4, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v5, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 899
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 901
    .end local v4    # "answerIntent":Landroid/content/Intent;
    .end local v5    # "answerTitle":Ljava/lang/CharSequence;
    .end local v10    # "endIntent":Landroid/content/Intent;
    .end local v11    # "endTitle":Ljava/lang/CharSequence;
    :cond_2
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x11

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    .line 902
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 904
    :cond_3
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x15

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    .line 905
    const v19, -0xd35a20

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 906
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [J

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 907
    const-string/jumbo v19, "call"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 908
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v15, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 910
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v17, v0

    .line 912
    .local v17, "photoPath":Lorg/telegram/tgnet/TLRPC$FileLocation;
    if-eqz v17, :cond_5

    .line 913
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v19

    const/16 v20, 0x0

    const-string/jumbo v21, "50_50"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v13

    .line 914
    .local v13, "img":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v13, :cond_6

    .line 915
    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 931
    .end local v13    # "img":Landroid/graphics/drawable/BitmapDrawable;
    .end local v17    # "photoPath":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_5
    :goto_0
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v14

    .line 932
    .local v14, "incomingNotification":Landroid/app/Notification;
    const/16 v19, 0xca

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Lorg/telegram/messenger/voip/VoIPService;->startForeground(ILandroid/app/Notification;)V

    .line 933
    return-void

    .line 918
    .end local v14    # "incomingNotification":Landroid/app/Notification;
    .restart local v13    # "img":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v17    # "photoPath":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_6
    const/high16 v19, 0x43200000    # 160.0f

    const/high16 v20, 0x42480000    # 50.0f

    :try_start_0
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v18, v19, v20

    .line 919
    .local v18, "scaleFactor":F
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 920
    .local v16, "options":Landroid/graphics/BitmapFactory$Options;
    const/high16 v19, 0x3f800000    # 1.0f

    cmpg-float v19, v18, v19

    if-gez v19, :cond_7

    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 921
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 922
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_5

    .line 923
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 925
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v18    # "scaleFactor":F
    :catch_0
    move-exception v9

    .line 926
    .local v9, "e":Ljava/lang/Throwable;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 920
    .end local v9    # "e":Ljava/lang/Throwable;
    .restart local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v18    # "scaleFactor":F
    :cond_7
    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v19, v0

    goto :goto_1
.end method

.method private startConnectingSound()V
    .locals 7

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 936
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayID:I

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 938
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spConnectingId:I

    const/4 v4, 0x0

    const/4 v5, -0x1

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayID:I

    .line 939
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayID:I

    if-nez v0, :cond_1

    .line 940
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$15;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$15;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 952
    :cond_1
    return-void
.end method

.method private startOutgoingCall()V
    .locals 5

    .prologue
    const/16 v3, 0x100

    .line 198
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->configureDeviceForCall()V

    .line 199
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->showNotification()V

    .line 200
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startConnectingSound()V

    .line 201
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 202
    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$4;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/voip/VoIPService$4;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 208
    new-array v1, v3, [B

    .line 209
    .local v1, "salt":[B
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 211
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;-><init>()V

    .line 212
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;
    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->random_length:I

    .line 213
    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->version:I

    .line 214
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$5;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/voip/VoIPService$5;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/voip/VoIPService;->callReqId:I

    .line 325
    return-void
.end method

.method private startRatingActivity()V
    .locals 6

    .prologue
    .line 723
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/telegram/ui/VoIPFeedbackActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "call_id"

    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    .line 724
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "call_access_hash"

    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    .line 725
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x30000000

    .line 726
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    .line 723
    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 726
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :goto_0
    return-void

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, "x":Ljava/lang/Exception;
    const-string/jumbo v1, "Error starting incall activity"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startRinging()V
    .locals 14

    .prologue
    .line 359
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "starting ringing for call "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 360
    const/16 v8, 0xf

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 363
    const-string/jumbo v8, "Notifications"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lorg/telegram/messenger/voip/VoIPService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 364
    .local v5, "prefs":Landroid/content/SharedPreferences;
    new-instance v8, Landroid/media/MediaPlayer;

    invoke-direct {v8}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    .line 365
    iget-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    new-instance v9, Lorg/telegram/messenger/voip/VoIPService$7;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/voip/VoIPService$7;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 371
    iget-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 372
    iget-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 375
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "custom_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 376
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ringtone_path_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 379
    .local v4, "notificationUri":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, p0, v9}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 380
    iget-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .end local v4    # "notificationUri":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string/jumbo v8, "audio"

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/voip/VoIPService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 390
    .local v0, "am":Landroid/media/AudioManager;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "custom_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 391
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "calls_vibrate_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 394
    .local v6, "vibrate":I
    :goto_2
    const/4 v8, 0x2

    if-eq v6, v8, :cond_1

    const/4 v8, 0x4

    if-eq v6, v8, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    :cond_1
    const/4 v8, 0x4

    if-ne v6, v8, :cond_4

    .line 395
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 396
    :cond_2
    const-string/jumbo v8, "vibrator"

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/voip/VoIPService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Vibrator;

    iput-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->vibrator:Landroid/os/Vibrator;

    .line 397
    const-wide/16 v2, 0x2bc

    .line 398
    .local v2, "duration":J
    const/4 v8, 0x1

    if-ne v6, v8, :cond_7

    .line 399
    const-wide/16 v8, 0x2

    div-long/2addr v2, v8

    .line 402
    :cond_3
    :goto_3
    iget-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->vibrator:Landroid/os/Vibrator;

    const/4 v9, 0x3

    new-array v9, v9, [J

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    aput-wide v12, v9, v10

    const/4 v10, 0x1

    aput-wide v2, v9, v10

    const/4 v10, 0x2

    const-wide/16 v12, 0x1f4

    aput-wide v12, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 405
    .end local v2    # "duration":J
    :cond_4
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_8

    const-string/jumbo v8, "keyguard"

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/voip/VoIPService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/KeyguardManager;

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-static {p0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 406
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->showIncomingNotification()V

    .line 407
    const-string/jumbo v8, "Showing incoming call notification"

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 417
    :goto_4
    return-void

    .line 378
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v6    # "vibrate":I
    :cond_5
    :try_start_1
    const-string/jumbo v8, "CallsRingtonePath"

    const/4 v9, 0x1

    invoke-static {v9}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .restart local v4    # "notificationUri":Ljava/lang/String;
    goto/16 :goto_0

    .line 381
    .end local v4    # "notificationUri":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 382
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 383
    iget-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    if-eqz v8, :cond_0

    .line 384
    iget-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->release()V

    .line 385
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    goto/16 :goto_1

    .line 393
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "am":Landroid/media/AudioManager;
    :cond_6
    const-string/jumbo v8, "vibrate_calls"

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .restart local v6    # "vibrate":I
    goto/16 :goto_2

    .line 400
    .restart local v2    # "duration":J
    :cond_7
    const/4 v8, 0x3

    if-ne v6, v8, :cond_3

    .line 401
    const-wide/16 v8, 0x2

    mul-long/2addr v2, v8

    goto :goto_3

    .line 409
    .end local v2    # "duration":J
    :cond_8
    const-string/jumbo v8, "Starting incall activity for incoming call"

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 411
    const/16 v8, 0x3039

    :try_start_2
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lorg/telegram/ui/VoIPActivity;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v10, 0x10000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {p0, v8, v9, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/PendingIntent;->send()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 412
    :catch_1
    move-exception v7

    .line 413
    .local v7, "x":Ljava/lang/Exception;
    const-string/jumbo v8, "Error starting incall activity"

    invoke-static {v8, v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method


# virtual methods
.method public acceptIncomingCall()V
    .locals 3

    .prologue
    .line 420
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->stopRinging()V

    .line 421
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->showNotification()V

    .line 422
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->configureDeviceForCall()V

    .line 423
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startConnectingSound()V

    .line 424
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 425
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$8;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$8;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 431
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;-><init>()V

    .line 432
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;
    const/16 v1, 0x100

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->random_length:I

    .line 433
    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->version:I

    .line 434
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$9;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/voip/VoIPService$9;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 508
    return-void
.end method

.method protected callFailed(I)V
    .locals 6
    .param p1, "errorCode"    # I

    .prologue
    .line 955
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz v1, :cond_0

    .line 956
    const-string/jumbo v1, "Discarding failed call"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 957
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;-><init>()V

    .line 958
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 959
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 960
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 961
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->controllerStarted:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPController;->getCallDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    :goto_0
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->duration:I

    .line 962
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->controllerStarted:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPController;->getPreferredRelayID()J

    move-result-wide v2

    :goto_1
    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->connection_id:J

    .line 963
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    .line 964
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$16;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/voip/VoIPService$16;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 975
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/messenger/voip/VoIPBaseService;->callFailed(I)V

    .line 976
    return-void

    .line 961
    .restart local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 962
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method public debugCtl(II)V
    .locals 1
    .param p1, "request"    # I
    .param p2, "param"    # I

    .prologue
    .line 1023
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/voip/VoIPController;->debugCtl(II)V

    .line 1025
    :cond_0
    return-void
.end method

.method public declineIncomingCall()V
    .locals 2

    .prologue
    .line 511
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall(ILjava/lang/Runnable;)V

    .line 512
    return-void
.end method

.method public declineIncomingCall(ILjava/lang/Runnable;)V
    .locals 10
    .param p1, "reason"    # I
    .param p2, "onDone"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x1

    const/16 v6, 0xa

    const/4 v4, 0x0

    .line 515
    iget v3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v5, 0xe

    if-ne v3, v5, :cond_2

    .line 516
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->delayedStartOutgoingCall:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    .line 517
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->delayedStartOutgoingCall:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 518
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 521
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->endCallAfterRequest:Z

    goto :goto_0

    .line 525
    :cond_2
    iget v3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    if-eq v3, v6, :cond_0

    iget v3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v5, 0xb

    if-eq v3, v5, :cond_0

    .line 527
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 528
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-nez v3, :cond_4

    .line 529
    if-eqz p2, :cond_3

    .line 530
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 531
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    .line 532
    iget v3, p0, Lorg/telegram/messenger/voip/VoIPService;->callReqId:I

    if-eqz v3, :cond_0

    .line 533
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget v5, p0, Lorg/telegram/messenger/voip/VoIPService;->callReqId:I

    invoke-virtual {v3, v5, v4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 534
    iput v4, p0, Lorg/telegram/messenger/voip/VoIPService;->callReqId:I

    goto :goto_0

    .line 538
    :cond_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;-><init>()V

    .line 539
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 540
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 541
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 542
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->controllerStarted:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPController;->getCallDuration()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v3, v6

    :goto_1
    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->duration:I

    .line 543
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->controllerStarted:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPController;->getPreferredRelayID()J

    move-result-wide v6

    :goto_2
    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->connection_id:J

    .line 544
    packed-switch p1, :pswitch_data_0

    .line 556
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonHangup;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonHangup;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    .line 559
    :goto_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_8

    .line 561
    .local v2, "wasNotConnected":Z
    :goto_4
    if-eqz v2, :cond_9

    .line 562
    if-eqz p2, :cond_5

    .line 563
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 564
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    .line 565
    const/4 v1, 0x0

    .line 582
    .local v1, "stopper":Ljava/lang/Runnable;
    :goto_5
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/voip/VoIPService$11;

    invoke-direct {v4, p0, v2, v1, p2}, Lorg/telegram/messenger/voip/VoIPService$11;-><init>(Lorg/telegram/messenger/voip/VoIPService;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v5, 0x2

    invoke-virtual {v3, v0, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_0

    .end local v1    # "stopper":Ljava/lang/Runnable;
    .end local v2    # "wasNotConnected":Z
    :cond_6
    move v3, v4

    .line 542
    goto :goto_1

    .line 543
    :cond_7
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 546
    :pswitch_0
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    goto :goto_3

    .line 549
    :pswitch_1
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    goto :goto_3

    .line 552
    :pswitch_2
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    goto :goto_3

    :cond_8
    move v2, v4

    .line 559
    goto :goto_4

    .line 567
    .restart local v2    # "wasNotConnected":Z
    :cond_9
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$10;

    invoke-direct {v1, p0, p2}, Lorg/telegram/messenger/voip/VoIPService$10;-><init>(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/Runnable;)V

    .line 580
    .restart local v1    # "stopper":Ljava/lang/Runnable;
    const-string/jumbo v3, "hangup_ui_timeout"

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/voip/VoIPServerConfig;->getDouble(Ljava/lang/String;D)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    int-to-long v4, v3

    invoke-static {v1, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_5

    .line 544
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1033
    sget v0, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    if-ne p1, v0, :cond_0

    .line 1034
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    .line 1036
    :cond_0
    return-void
.end method

.method public forceRating()V
    .locals 1

    .prologue
    .line 1039
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->forceRating:Z

    .line 1040
    return-void
.end method

.method protected getCallID()J
    .locals 2

    .prologue
    .line 980
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getEncryptionKey()[B
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    return-object v0
.end method

.method public getGA()[B
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a:[B

    return-object v0
.end method

.method public getUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public hangUp()V
    .locals 2

    .prologue
    .line 190
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall(ILjava/lang/Runnable;)V

    .line 191
    return-void

    .line 190
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hangUp(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "onDone"    # Ljava/lang/Runnable;

    .prologue
    .line 194
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall(ILjava/lang/Runnable;)V

    .line 195
    return-void

    .line 194
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCallUpdated(Lorg/telegram/tgnet/TLRPC$PhoneCall;)V
    .locals 14
    .param p1, "call"    # Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .prologue
    .line 615
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-nez v0, :cond_1

    .line 616
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->pendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    if-eqz p1, :cond_0

    .line 621
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 622
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_0

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCallUpdated called with wrong call id (got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 626
    :cond_2
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 627
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    .line 628
    :cond_3
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_4

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Call updated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 630
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->dumpCallObject()V

    .line 632
    :cond_4
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .line 633
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;

    if-eqz v0, :cond_7

    .line 634
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->need_debug:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->needSendDebugLog:Z

    .line 635
    const-string/jumbo v0, "call discarded, stopping service"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 636
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;

    if-eqz v0, :cond_6

    .line 637
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->playingSound:Z

    .line 639
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spBusyId:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 640
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->afterSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 641
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->stopSelf()V

    .line 645
    :goto_1
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->need_rating:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->forceRating:Z

    if-eqz v0, :cond_0

    .line 646
    :cond_5
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startRatingActivity()V

    goto/16 :goto_0

    .line 643
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    goto :goto_1

    .line 648
    :cond_7
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    if-nez v0, :cond_f

    .line 649
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->g_a_or_b:[B

    if-nez v0, :cond_8

    .line 650
    const-string/jumbo v0, "stopping VoIP service, Ga == null"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    goto/16 :goto_0

    .line 654
    :cond_8
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a_hash:[B

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->g_a_or_b:[B

    const/4 v2, 0x0

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->g_a_or_b:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_9

    .line 655
    const-string/jumbo v0, "stopping VoIP service, Ga hash doesn\'t match"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    goto/16 :goto_0

    .line 659
    :cond_9
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->g_a_or_b:[B

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a:[B

    .line 660
    new-instance v12, Ljava/math/BigInteger;

    const/4 v0, 0x1

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->g_a_or_b:[B

    invoke-direct {v12, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 661
    .local v12, "g_a":Ljava/math/BigInteger;
    new-instance v13, Ljava/math/BigInteger;

    const/4 v0, 0x1

    sget-object v1, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    invoke-direct {v13, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 663
    .local v13, "p":Ljava/math/BigInteger;
    invoke-static {v12, v13}, Lorg/telegram/messenger/Utilities;->isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 664
    const-string/jumbo v0, "stopping VoIP service, bad Ga and Gb (accepting)"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    goto/16 :goto_0

    .line 668
    :cond_a
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->a_or_b:[B

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v12, v0, v13}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 670
    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    .line 671
    .local v8, "authKey":[B
    array-length v0, v8

    const/16 v1, 0x100

    if-le v0, v1, :cond_c

    .line 672
    const/16 v0, 0x100

    new-array v11, v0, [B

    .line 673
    .local v11, "correctedAuth":[B
    array-length v0, v8

    add-int/lit16 v0, v0, -0x100

    const/4 v1, 0x0

    const/16 v2, 0x100

    invoke-static {v8, v0, v11, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 674
    move-object v8, v11

    .line 683
    .end local v11    # "correctedAuth":[B
    :cond_b
    :goto_2
    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v9

    .line 684
    .local v9, "authKeyHash":[B
    const/16 v0, 0x8

    new-array v10, v0, [B

    .line 685
    .local v10, "authKeyId":[B
    array-length v0, v9

    add-int/lit8 v0, v0, -0x8

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v9, v0, v10, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 686
    iput-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    .line 687
    invoke-static {v10}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/voip/VoIPService;->keyFingerprint:J

    .line 689
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPService;->keyFingerprint:J

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->key_fingerprint:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 690
    const-string/jumbo v0, "key fingerprints don\'t match"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    goto/16 :goto_0

    .line 675
    .end local v9    # "authKeyHash":[B
    .end local v10    # "authKeyId":[B
    :cond_c
    array-length v0, v8

    const/16 v1, 0x100

    if-ge v0, v1, :cond_b

    .line 676
    const/16 v0, 0x100

    new-array v11, v0, [B

    .line 677
    .restart local v11    # "correctedAuth":[B
    const/4 v0, 0x0

    array-length v1, v8

    rsub-int v1, v1, 0x100

    array-length v2, v8

    invoke-static {v8, v0, v11, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 678
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_3
    array-length v0, v8

    rsub-int v0, v0, 0x100

    if-ge v7, v0, :cond_d

    .line 679
    const/4 v0, 0x0

    aput-byte v0, v8, v7

    .line 678
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 681
    :cond_d
    move-object v8, v11

    goto :goto_2

    .line 695
    .end local v7    # "a":I
    .end local v11    # "correctedAuth":[B
    .restart local v9    # "authKeyHash":[B
    .restart local v10    # "authKeyId":[B
    :cond_e
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->initiateActualEncryptedCall()V

    goto/16 :goto_0

    .line 696
    .end local v8    # "authKey":[B
    .end local v9    # "authKeyHash":[B
    .end local v10    # "authKeyId":[B
    .end local v12    # "g_a":Ljava/math/BigInteger;
    .end local v13    # "p":Ljava/math/BigInteger;
    :cond_f
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallAccepted;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    if-nez v0, :cond_10

    .line 697
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->processAcceptedCall()V

    goto/16 :goto_0

    .line 699
    :cond_10
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->receive_date:I

    if-eqz v0, :cond_0

    .line 700
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 701
    const-string/jumbo v0, "!!!!!! CALL RECEIVED"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 702
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayID:I

    if-eqz v0, :cond_11

    .line 703
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 704
    :cond_11
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spRingbackID:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayID:I

    .line 705
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    .line 706
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 707
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 709
    :cond_12
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$12;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$12;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 716
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->callRingTimeout:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_0
.end method

.method protected onControllerPreRelease()V
    .locals 6

    .prologue
    .line 164
    iget-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->needSendDebugLog:Z

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v2}, Lorg/telegram/messenger/voip/VoIPController;->getDebugLog()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "debugLog":Ljava/lang/String;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_phone_saveCallDebug;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_phone_saveCallDebug;-><init>()V

    .line 167
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_phone_saveCallDebug;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_phone_saveCallDebug;->debug:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 168
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_phone_saveCallDebug;->debug:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 169
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_phone_saveCallDebug;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 170
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_phone_saveCallDebug;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 171
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_phone_saveCallDebug;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 172
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$3;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/voip/VoIPService$3;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 179
    .end local v0    # "debugLog":Ljava/lang/String;
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_phone_saveCallDebug;
    :cond_0
    return-void
.end method

.method onMediaButtonEvent(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1009
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x4f

    if-ne v2, v3, :cond_0

    .line 1010
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1011
    iget v2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    .line 1012
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCall()V

    .line 1020
    :cond_0
    return-void

    .line 1014
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(Z)V

    .line 1015
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;

    .line 1016
    .local v0, "l":Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;
    invoke-interface {v0}, Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;->onAudioSettingsChanged()V

    goto :goto_1

    .line 1014
    .end local v0    # "l":Lorg/telegram/messenger/voip/VoIPBaseService$StateListener;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 104
    sget-object v1, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPBaseService;

    if-eqz v1, :cond_0

    .line 105
    const-string/jumbo v1, "Tried to start the VoIP service when it\'s already started"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 141
    :goto_0
    return v5

    .line 109
    :cond_0
    const-string/jumbo v1, "user_id"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 110
    .local v0, "userID":I
    const-string/jumbo v1, "is_outgoing"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    .line 111
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 113
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v1, :cond_1

    .line 114
    const-string/jumbo v1, "VoIPService: user==null"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->stopSelf()V

    goto :goto_0

    .line 119
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    if-eqz v1, :cond_3

    .line 120
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 121
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$1;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->delayedStartOutgoingCall:Ljava/lang/Runnable;

    .line 128
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->delayedStartOutgoingCall:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 129
    const-string/jumbo v1, "start_incall_activity"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/telegram/ui/VoIPActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->startActivity(Landroid/content/Intent;)V

    .line 138
    :cond_2
    :goto_1
    sput-object p0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPBaseService;

    goto :goto_0

    .line 133
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 134
    sget-object v1, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .line 135
    const/4 v1, 0x0

    sput-object v1, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .line 136
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->acknowledgeCallAndStartRinging()V

    goto :goto_1
.end method

.method public onUIForegroundStateChanged(Z)V
    .locals 4
    .param p1, "isForeground"    # Z

    .prologue
    .line 984
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 985
    if-eqz p1, :cond_1

    .line 986
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->stopForeground(Z)V

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 988
    :cond_1
    const-string/jumbo v0, "keyguard"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 989
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->showIncomingNotification()V

    goto :goto_0

    .line 991
    :cond_2
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$17;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$17;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method protected showNotification()V
    .locals 3

    .prologue
    .line 869
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_0
    const-class v2, Lorg/telegram/ui/VoIPActivity;

    invoke-virtual {p0, v1, v0, v2}, Lorg/telegram/messenger/voip/VoIPService;->showNotification(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/Class;)V

    .line 870
    return-void

    .line 869
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateServerConfig()V
    .locals 6

    .prologue
    .line 146
    const-string/jumbo v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 147
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "voip_server_config"

    const-string/jumbo v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/voip/VoIPServerConfig;->setConfig(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "voip_server_config_updated"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 149
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_phone_getCallConfig;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_phone_getCallConfig;-><init>()V

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$2;

    invoke-direct {v3, p0, v0}, Lorg/telegram/messenger/voip/VoIPService$2;-><init>(Lorg/telegram/messenger/voip/VoIPService;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 160
    :cond_0
    return-void
.end method
