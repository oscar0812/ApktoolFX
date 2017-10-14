.class public Lorg/telegram/messenger/UserConfig;
.super Ljava/lang/Object;
.source "UserConfig.java"


# static fields
.field public static allowScreenCapture:Z

.field public static appLocked:Z

.field public static autoLockIn:I

.field public static blockedUsersLoaded:Z

.field public static botRatingLoadTime:I

.field public static contactsReimported:Z

.field public static contactsSavedCount:I

.field private static currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field public static dialogsLoadOffsetAccess:J

.field public static dialogsLoadOffsetChannelId:I

.field public static dialogsLoadOffsetChatId:I

.field public static dialogsLoadOffsetDate:I

.field public static dialogsLoadOffsetId:I

.field public static dialogsLoadOffsetUserId:I

.field public static draftsLoaded:Z

.field public static isWaitingForPasscodeEnter:Z

.field public static lastAppPauseTime:J

.field public static lastBroadcastId:I

.field public static lastContactsSyncTime:I

.field public static lastHintsSyncTime:I

.field public static lastLocalId:I

.field public static lastPauseTime:I

.field public static lastSendMessageId:I

.field public static lastUpdateVersion:Ljava/lang/String;

.field public static migrateOffsetAccess:J

.field public static migrateOffsetChannelId:I

.field public static migrateOffsetChatId:I

.field public static migrateOffsetDate:I

.field public static migrateOffsetId:I

.field public static migrateOffsetUserId:I

.field public static notificationsConverted:Z

.field public static passcodeHash:Ljava/lang/String;

.field public static passcodeSalt:[B

.field public static passcodeType:I

.field public static pinnedDialogsLoaded:Z

.field public static pushString:Ljava/lang/String;

.field public static ratingLoadTime:I

.field public static registeredForPush:Z

.field public static saveIncomingPhotos:Z

.field private static final sync:Ljava/lang/Object;

.field public static tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

.field public static totalDialogsLoadCount:I

.field public static useFingerprint:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, -0x33450

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 26
    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    .line 27
    sput v4, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 28
    sput v4, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 29
    sput v1, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    .line 34
    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    .line 35
    new-array v0, v2, [B

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    .line 38
    const/16 v0, 0xe10

    sput v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    .line 43
    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    .line 48
    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->notificationsConverted:Z

    .line 49
    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->pinnedDialogsLoaded:Z

    .line 55
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    .line 56
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    .line 57
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    .line 58
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    .line 59
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    .line 60
    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    .line 62
    sput v2, Lorg/telegram/messenger/UserConfig;->totalDialogsLoadCount:I

    .line 63
    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetId:I

    .line 64
    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetDate:I

    .line 65
    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetUserId:I

    .line 66
    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetChatId:I

    .line 67
    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetChannelId:I

    .line 68
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetAccess:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPasscode(Ljava/lang/String;)Z
    .locals 9
    .param p0, "passcode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 406
    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    array-length v5, v5

    if-nez v5, :cond_1

    .line 407
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 408
    .local v4, "result":Z
    if-eqz v4, :cond_0

    .line 410
    const/16 v5, 0x10

    :try_start_0
    new-array v5, v5, [B

    sput-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    .line 411
    sget-object v5, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    sget-object v6, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 412
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 413
    .local v3, "passcodeBytes":[B
    array-length v5, v3

    add-int/lit8 v5, v5, 0x20

    new-array v0, v5, [B

    .line 414
    .local v0, "bytes":[B
    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    const/4 v5, 0x0

    const/16 v6, 0x10

    array-length v7, v3

    invoke-static {v3, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v6, 0x0

    array-length v7, v3

    add-int/lit8 v7, v7, 0x10

    const/16 v8, 0x10

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v5, v6}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    .line 418
    const/4 v5, 0x0

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .end local v0    # "bytes":[B
    .end local v3    # "passcodeBytes":[B
    .end local v4    # "result":Z
    :cond_0
    :goto_0
    return v4

    .line 419
    .restart local v4    # "result":Z
    :catch_0
    move-exception v1

    .line 420
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 426
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "result":Z
    :cond_1
    :try_start_1
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 427
    .restart local v3    # "passcodeBytes":[B
    array-length v5, v3

    add-int/lit8 v5, v5, 0x20

    new-array v0, v5, [B

    .line 428
    .restart local v0    # "bytes":[B
    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 429
    const/4 v5, 0x0

    const/16 v6, 0x10

    array-length v7, v3

    invoke-static {v3, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v6, 0x0

    array-length v7, v3

    add-int/lit8 v7, v7, 0x10

    const/16 v8, 0x10

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 431
    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v5, v6}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, "hash":Ljava/lang/String;
    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    goto :goto_0

    .line 433
    .end local v0    # "bytes":[B
    .end local v2    # "hash":Ljava/lang/String;
    .end local v3    # "passcodeBytes":[B
    :catch_1
    move-exception v1

    .line 434
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static clearConfig()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 441
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 442
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    .line 443
    sput v2, Lorg/telegram/messenger/UserConfig;->contactsSavedCount:I

    .line 444
    const v0, -0x33450

    sput v0, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 445
    sput v1, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    .line 446
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z

    .line 447
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->blockedUsersLoaded:Z

    .line 448
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    .line 449
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    .line 450
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    .line 451
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    .line 452
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    .line 453
    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    .line 454
    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetId:I

    .line 455
    sput v2, Lorg/telegram/messenger/UserConfig;->totalDialogsLoadCount:I

    .line 456
    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetDate:I

    .line 457
    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetUserId:I

    .line 458
    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetChatId:I

    .line 459
    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetChannelId:I

    .line 460
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetAccess:J

    .line 461
    sput v2, Lorg/telegram/messenger/UserConfig;->ratingLoadTime:I

    .line 462
    sput v2, Lorg/telegram/messenger/UserConfig;->botRatingLoadTime:I

    .line 463
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    .line 464
    sput v2, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    .line 465
    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    .line 466
    new-array v0, v2, [B

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    .line 467
    const/16 v0, 0xe10

    sput v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    .line 468
    sput v2, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 469
    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    .line 470
    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    .line 471
    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->notificationsConverted:Z

    .line 472
    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->contactsReimported:Z

    .line 473
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    .line 474
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    .line 475
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->pinnedDialogsLoaded:Z

    .line 476
    sget-object v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    sput-object v0, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    long-to-int v0, v0

    const v1, 0x14370

    sub-int/2addr v0, v1

    sput v0, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    long-to-int v0, v0

    const v1, 0x15f90

    sub-int/2addr v0, v1

    sput v0, Lorg/telegram/messenger/UserConfig;->lastHintsSyncTime:I

    .line 479
    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 480
    return-void
.end method

.method public static getClientUserId()I
    .locals 2

    .prologue
    .line 172
    sget-object v1, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 2

    .prologue
    .line 178
    sget-object v1, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    monitor-exit v1

    return-object v0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getNewMessageId()I
    .locals 3

    .prologue
    .line 72
    sget-object v2, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v2

    .line 73
    :try_start_0
    sget v0, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 74
    .local v0, "id":I
    sget v1, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 75
    monitor-exit v2

    .line 76
    return v0

    .line 75
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isClientActivated()Z
    .locals 2

    .prologue
    .line 166
    sget-object v1, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static loadConfig()V
    .locals 36

    .prologue
    .line 190
    sget-object v30, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v30

    .line 191
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v29

    const-string/jumbo v31, "user.dat"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 192
    .local v7, "configFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v29

    if-eqz v29, :cond_6

    .line 194
    :try_start_1
    new-instance v10, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v10, v7}, Lorg/telegram/tgnet/SerializedData;-><init>(Ljava/io/File;)V

    .line 195
    .local v10, "data":Lorg/telegram/tgnet/SerializedData;
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v28

    .line 196
    .local v28, "ver":I
    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 197
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v8

    .line 198
    .local v8, "constructor":I
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-static {v10, v8, v0}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 199
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    sput v29, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    .line 200
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    sput v29, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    .line 201
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    sput v29, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    .line 202
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readBool(Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    .line 203
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    .line 204
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 205
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 206
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    .line 207
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    .line 208
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readBool(Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z

    .line 209
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    sput v29, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    .line 210
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    sput v29, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    .line 211
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v26

    .line 212
    .local v26, "val":I
    const/16 v29, 0x1

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 213
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readByteArray(Z)[B

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    .line 215
    :cond_0
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    sput v29, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    .line 216
    sget-object v29, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v31, Lorg/telegram/messenger/UserConfig$1;

    move-object/from16 v0, v31

    invoke-direct {v0, v7}, Lorg/telegram/messenger/UserConfig$1;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 234
    .end local v8    # "constructor":I
    .end local v26    # "val":I
    :cond_1
    :goto_0
    sget v29, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    const v31, -0x33450

    move/from16 v0, v29

    move/from16 v1, v31

    if-le v0, v1, :cond_2

    .line 235
    const v29, -0x33450

    sput v29, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 237
    :cond_2
    sget v29, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    const v31, -0x33450

    move/from16 v0, v29

    move/from16 v1, v31

    if-le v0, v1, :cond_3

    .line 238
    const v29, -0x33450

    sput v29, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 240
    :cond_3
    invoke-virtual {v10}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 241
    sget-object v29, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v31, Lorg/telegram/messenger/UserConfig$2;

    move-object/from16 v0, v31

    invoke-direct {v0, v7}, Lorg/telegram/messenger/UserConfig$2;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    .end local v10    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v28    # "ver":I
    :cond_4
    :goto_1
    :try_start_2
    monitor-exit v30
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 403
    return-void

    .line 222
    .restart local v10    # "data":Lorg/telegram/tgnet/SerializedData;
    .restart local v28    # "ver":I
    :cond_5
    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    .line 223
    const/16 v29, 0x0

    :try_start_3
    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v8

    .line 224
    .restart local v8    # "constructor":I
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-static {v10, v8, v0}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 226
    sget-object v29, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v31, "userconfing"

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 227
    .local v24, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v29, "registeredForPush"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    .line 228
    const-string/jumbo v29, "pushString2"

    const-string/jumbo v31, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    .line 229
    const-string/jumbo v29, "lastSendMessageId"

    const v31, -0x33450

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 230
    const-string/jumbo v29, "lastLocalId"

    const v31, -0x33450

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 231
    const-string/jumbo v29, "contactsHash"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->contactsSavedCount:I

    .line 232
    const-string/jumbo v29, "saveIncomingPhotos"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 247
    .end local v8    # "constructor":I
    .end local v10    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v24    # "preferences":Landroid/content/SharedPreferences;
    .end local v28    # "ver":I
    :catch_0
    move-exception v17

    .line 248
    .local v17, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 402
    .end local v17    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v29

    monitor-exit v30
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v29

    .line 251
    :cond_6
    :try_start_5
    sget-object v29, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v31, "userconfing"

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 252
    .restart local v24    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v29, "registeredForPush"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    .line 253
    const-string/jumbo v29, "pushString2"

    const-string/jumbo v31, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    .line 254
    const-string/jumbo v29, "lastSendMessageId"

    const v31, -0x33450

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 255
    const-string/jumbo v29, "lastLocalId"

    const v31, -0x33450

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 256
    const-string/jumbo v29, "contactsSavedCount"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->contactsSavedCount:I

    .line 257
    const-string/jumbo v29, "saveIncomingPhotos"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z

    .line 258
    const-string/jumbo v29, "lastBroadcastId"

    const/16 v31, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    .line 259
    const-string/jumbo v29, "blockedUsersLoaded"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->blockedUsersLoaded:Z

    .line 260
    const-string/jumbo v29, "passcodeHash1"

    const-string/jumbo v31, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    .line 261
    const-string/jumbo v29, "appLocked"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    .line 262
    const-string/jumbo v29, "passcodeType"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    .line 263
    const-string/jumbo v29, "autoLockIn"

    const/16 v31, 0xe10

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    .line 264
    const-string/jumbo v29, "lastPauseTime"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 265
    const-string/jumbo v29, "lastAppPauseTime"

    const-wide/16 v32, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-wide/from16 v2, v32

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v32

    sput-wide v32, Lorg/telegram/messenger/UserConfig;->lastAppPauseTime:J

    .line 266
    const-string/jumbo v29, "useFingerprint"

    const/16 v31, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    .line 267
    const-string/jumbo v29, "lastUpdateVersion2"

    const-string/jumbo v31, "3.5"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    .line 268
    const-string/jumbo v29, "lastContactsSyncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v31, v0

    const v32, 0x14370

    sub-int v31, v31, v32

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    .line 269
    const-string/jumbo v29, "lastHintsSyncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v31, v0

    const v32, 0x15f90

    sub-int v31, v31, v32

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastHintsSyncTime:I

    .line 270
    const-string/jumbo v29, "draftsLoaded"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    .line 271
    const-string/jumbo v29, "notificationsConverted"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->notificationsConverted:Z

    .line 272
    const-string/jumbo v29, "allowScreenCapture"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    .line 273
    const-string/jumbo v29, "pinnedDialogsLoaded"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->pinnedDialogsLoaded:Z

    .line 274
    const-string/jumbo v29, "contactsReimported"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->contactsReimported:Z

    .line 275
    const-string/jumbo v29, "ratingLoadTime"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->ratingLoadTime:I

    .line 276
    const-string/jumbo v29, "botRatingLoadTime"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->botRatingLoadTime:I

    .line 278
    sget-object v29, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_7

    sget v29, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    if-nez v29, :cond_7

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    const-wide/16 v34, 0x258

    sub-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v29, v0

    sput v29, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 282
    :cond_7
    const-string/jumbo v29, "3migrateOffsetId"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    .line 283
    sget v29, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    const/16 v31, -0x1

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_8

    .line 284
    const-string/jumbo v29, "3migrateOffsetDate"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    .line 285
    const-string/jumbo v29, "3migrateOffsetUserId"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    .line 286
    const-string/jumbo v29, "3migrateOffsetChatId"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    .line 287
    const-string/jumbo v29, "3migrateOffsetChannelId"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    .line 288
    const-string/jumbo v29, "3migrateOffsetAccess"

    const-wide/16 v32, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-wide/from16 v2, v32

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v32

    sput-wide v32, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    .line 291
    :cond_8
    const-string/jumbo v29, "2dialogsLoadOffsetId"

    const/16 v31, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetId:I

    .line 292
    const-string/jumbo v29, "2totalDialogsLoadCount"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->totalDialogsLoadCount:I

    .line 293
    const-string/jumbo v29, "2dialogsLoadOffsetDate"

    const/16 v31, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetDate:I

    .line 294
    const-string/jumbo v29, "2dialogsLoadOffsetUserId"

    const/16 v31, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetUserId:I

    .line 295
    const-string/jumbo v29, "2dialogsLoadOffsetChatId"

    const/16 v31, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetChatId:I

    .line 296
    const-string/jumbo v29, "2dialogsLoadOffsetChannelId"

    const/16 v31, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetChannelId:I

    .line 297
    const-string/jumbo v29, "2dialogsLoadOffsetAccess"

    const-wide/16 v32, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-wide/from16 v2, v32

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v32

    sput-wide v32, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetAccess:J

    .line 299
    const-string/jumbo v29, "tmpPassword"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 300
    .local v25, "string":Ljava/lang/String;
    if-eqz v25, :cond_9

    .line 301
    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 302
    .local v6, "bytes":[B
    if-eqz v6, :cond_9

    .line 303
    new-instance v10, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v10, v6}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 304
    .restart local v10    # "data":Lorg/telegram/tgnet/SerializedData;
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    const/16 v31, 0x0

    move/from16 v0, v29

    move/from16 v1, v31

    invoke-static {v10, v0, v1}, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 305
    invoke-virtual {v10}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 309
    .end local v6    # "bytes":[B
    .end local v10    # "data":Lorg/telegram/tgnet/SerializedData;
    :cond_9
    const-string/jumbo v29, "user"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 310
    if-eqz v25, :cond_a

    .line 311
    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 312
    .restart local v6    # "bytes":[B
    if-eqz v6, :cond_a

    .line 313
    new-instance v10, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v10, v6}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 314
    .restart local v10    # "data":Lorg/telegram/tgnet/SerializedData;
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    const/16 v31, 0x0

    move/from16 v0, v29

    move/from16 v1, v31

    invoke-static {v10, v0, v1}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 315
    invoke-virtual {v10}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 318
    .end local v6    # "bytes":[B
    .end local v10    # "data":Lorg/telegram/tgnet/SerializedData;
    :cond_a
    const-string/jumbo v29, "passcodeSalt"

    const-string/jumbo v31, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 319
    .local v23, "passcodeSaltString":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_d

    .line 320
    const/16 v29, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    .line 325
    :goto_2
    sget-boolean v29, Lorg/telegram/messenger/UserConfig;->notificationsConverted:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v29, :cond_4

    .line 327
    :try_start_6
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v9, "customDialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v29, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v31, "Notifications"

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 329
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    .line 330
    .local v5, "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string/jumbo v29, "SoundDefault"

    const v31, 0x7f0705ab

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 331
    .local v15, "defaultSound":Ljava/lang/String;
    const/16 v16, 0x0

    .line 332
    .local v16, "defaultVibrate":I
    const/4 v14, 0x0

    .line 333
    .local v14, "defaultPriority":I
    const/4 v11, 0x0

    .line 334
    .local v11, "defaultColor":I
    const/4 v12, 0x2

    .line 335
    .local v12, "defaultMaxCount":I
    const/16 v13, 0xb4

    .line 336
    .local v13, "defaultMaxDelay":I
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_b
    :goto_3
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_13

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 337
    .local v21, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 338
    .local v22, "key":Ljava/lang/String;
    const-string/jumbo v31, "sound_"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_e

    .line 339
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 340
    .local v27, "value":Ljava/lang/String;
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_b

    .line 341
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 342
    .local v18, "dialogId":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_b

    .line 343
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 395
    .end local v5    # "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v9    # "customDialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v11    # "defaultColor":I
    .end local v12    # "defaultMaxCount":I
    .end local v13    # "defaultMaxDelay":I
    .end local v14    # "defaultPriority":I
    .end local v15    # "defaultSound":Ljava/lang/String;
    .end local v16    # "defaultVibrate":I
    .end local v18    # "dialogId":J
    .end local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v22    # "key":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :catch_1
    move-exception v17

    .line 396
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 398
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_4
    const/16 v29, 0x1

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->notificationsConverted:Z

    .line 399
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    goto/16 :goto_1

    .line 322
    :cond_d
    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    sput-object v29, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 346
    .restart local v5    # "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v9    # "customDialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v11    # "defaultColor":I
    .restart local v12    # "defaultMaxCount":I
    .restart local v13    # "defaultMaxDelay":I
    .restart local v14    # "defaultPriority":I
    .restart local v15    # "defaultSound":Ljava/lang/String;
    .restart local v16    # "defaultVibrate":I
    .restart local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .restart local v22    # "key":Ljava/lang/String;
    :cond_e
    :try_start_8
    const-string/jumbo v31, "vibrate_"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 347
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    .line 348
    .local v27, "value":Ljava/lang/Integer;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    move/from16 v1, v16

    if-eq v0, v1, :cond_b

    .line 349
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 350
    .restart local v18    # "dialogId":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_b

    .line 351
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 354
    .end local v18    # "dialogId":J
    .end local v27    # "value":Ljava/lang/Integer;
    :cond_f
    const-string/jumbo v31, "priority_"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_10

    .line 355
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    .line 356
    .restart local v27    # "value":Ljava/lang/Integer;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    if-eq v0, v14, :cond_b

    .line 357
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 358
    .restart local v18    # "dialogId":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_b

    .line 359
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 362
    .end local v18    # "dialogId":J
    .end local v27    # "value":Ljava/lang/Integer;
    :cond_10
    const-string/jumbo v31, "color_"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_11

    .line 363
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    .line 364
    .restart local v27    # "value":Ljava/lang/Integer;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    if-eq v0, v11, :cond_b

    .line 365
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 366
    .restart local v18    # "dialogId":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_b

    .line 367
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 370
    .end local v18    # "dialogId":J
    .end local v27    # "value":Ljava/lang/Integer;
    :cond_11
    const-string/jumbo v31, "smart_max_count_"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_12

    .line 371
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    .line 372
    .restart local v27    # "value":Ljava/lang/Integer;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    if-eq v0, v12, :cond_b

    .line 373
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 374
    .restart local v18    # "dialogId":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_b

    .line 375
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 378
    .end local v18    # "dialogId":J
    .end local v27    # "value":Ljava/lang/Integer;
    :cond_12
    const-string/jumbo v31, "smart_delay_"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_b

    .line 379
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    .line 380
    .restart local v27    # "value":Ljava/lang/Integer;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    if-eq v0, v13, :cond_b

    .line 381
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 382
    .restart local v18    # "dialogId":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_b

    .line 383
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 388
    .end local v18    # "dialogId":J
    .end local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v22    # "key":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/Integer;
    :cond_13
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_c

    .line 389
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 390
    .local v20, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v4, v0, :cond_14

    .line 391
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "custom_"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v31, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 390
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 393
    :cond_14
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_4
.end method

.method public static saveConfig(Z)V
    .locals 1
    .param p0, "withFile"    # Z

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(ZLjava/io/File;)V

    .line 81
    return-void
.end method

.method public static saveConfig(ZLjava/io/File;)V
    .locals 10
    .param p0, "withFile"    # Z
    .param p1, "oldFile"    # Ljava/io/File;

    .prologue
    .line 84
    sget-object v6, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v6

    .line 86
    :try_start_0
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "userconfing"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 87
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 88
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "registeredForPush"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 89
    const-string/jumbo v5, "pushString2"

    sget-object v7, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    const-string/jumbo v5, "lastSendMessageId"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 91
    const-string/jumbo v5, "lastLocalId"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string/jumbo v5, "contactsSavedCount"

    sget v7, Lorg/telegram/messenger/UserConfig;->contactsSavedCount:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 93
    const-string/jumbo v5, "saveIncomingPhotos"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 94
    const-string/jumbo v5, "lastBroadcastId"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 95
    const-string/jumbo v5, "blockedUsersLoaded"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->blockedUsersLoaded:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 96
    const-string/jumbo v5, "passcodeHash1"

    sget-object v7, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    const-string/jumbo v7, "passcodeSalt"

    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    array-length v5, v5

    if-lez v5, :cond_3

    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v8, 0x0

    invoke-static {v5, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-interface {v2, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    const-string/jumbo v5, "appLocked"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 99
    const-string/jumbo v5, "passcodeType"

    sget v7, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 100
    const-string/jumbo v5, "autoLockIn"

    sget v7, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 101
    const-string/jumbo v5, "lastPauseTime"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 102
    const-string/jumbo v5, "lastAppPauseTime"

    sget-wide v8, Lorg/telegram/messenger/UserConfig;->lastAppPauseTime:J

    invoke-interface {v2, v5, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 103
    const-string/jumbo v5, "lastUpdateVersion2"

    sget-object v7, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    const-string/jumbo v5, "lastContactsSyncTime"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 105
    const-string/jumbo v5, "useFingerprint"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 106
    const-string/jumbo v5, "lastHintsSyncTime"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastHintsSyncTime:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 107
    const-string/jumbo v5, "draftsLoaded"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 108
    const-string/jumbo v5, "notificationsConverted"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->notificationsConverted:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 109
    const-string/jumbo v5, "allowScreenCapture"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 110
    const-string/jumbo v5, "pinnedDialogsLoaded"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->pinnedDialogsLoaded:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 111
    const-string/jumbo v5, "ratingLoadTime"

    sget v7, Lorg/telegram/messenger/UserConfig;->ratingLoadTime:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 112
    const-string/jumbo v5, "botRatingLoadTime"

    sget v7, Lorg/telegram/messenger/UserConfig;->botRatingLoadTime:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 113
    const-string/jumbo v5, "contactsReimported"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->contactsReimported:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 115
    const-string/jumbo v5, "3migrateOffsetId"

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 116
    sget v5, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 117
    const-string/jumbo v5, "3migrateOffsetDate"

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 118
    const-string/jumbo v5, "3migrateOffsetUserId"

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 119
    const-string/jumbo v5, "3migrateOffsetChatId"

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 120
    const-string/jumbo v5, "3migrateOffsetChannelId"

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 121
    const-string/jumbo v5, "3migrateOffsetAccess"

    sget-wide v8, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    invoke-interface {v2, v5, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 125
    :cond_0
    const-string/jumbo v5, "2totalDialogsLoadCount"

    sget v7, Lorg/telegram/messenger/UserConfig;->totalDialogsLoadCount:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 126
    const-string/jumbo v5, "2dialogsLoadOffsetId"

    sget v7, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 127
    const-string/jumbo v5, "2dialogsLoadOffsetDate"

    sget v7, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetDate:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 128
    const-string/jumbo v5, "2dialogsLoadOffsetUserId"

    sget v7, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetUserId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 129
    const-string/jumbo v5, "2dialogsLoadOffsetChatId"

    sget v7, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetChatId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 130
    const-string/jumbo v5, "2dialogsLoadOffsetChannelId"

    sget v7, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetChannelId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 131
    const-string/jumbo v5, "2dialogsLoadOffsetAccess"

    sget-wide v8, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetAccess:J

    invoke-interface {v2, v5, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 133
    sget-object v5, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v5, :cond_4

    .line 134
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v0}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    .line 135
    .local v0, "data":Lorg/telegram/tgnet/SerializedData;
    sget-object v5, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    invoke-virtual {v5, v0}, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 136
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "string":Ljava/lang/String;
    const-string/jumbo v5, "tmpPassword"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 143
    .end local v0    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v4    # "string":Ljava/lang/String;
    :goto_1
    sget-object v5, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_5

    .line 144
    if-eqz p0, :cond_1

    .line 145
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v0}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    .line 146
    .restart local v0    # "data":Lorg/telegram/tgnet/SerializedData;
    sget-object v5, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v5, v0}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 147
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 148
    .restart local v4    # "string":Ljava/lang/String;
    const-string/jumbo v5, "user"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 155
    .end local v0    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v4    # "string":Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    if-eqz p1, :cond_2

    .line 157
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_2
    :goto_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    return-void

    .line 97
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_3
    :try_start_2
    const-string/jumbo v5, ""

    goto/16 :goto_0

    .line 140
    :cond_4
    const-string/jumbo v5, "tmpPassword"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 159
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 162
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 152
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_5
    :try_start_4
    const-string/jumbo v5, "user"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public static setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 2
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 184
    sget-object v1, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_0
    sput-object p0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 186
    monitor-exit v1

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
