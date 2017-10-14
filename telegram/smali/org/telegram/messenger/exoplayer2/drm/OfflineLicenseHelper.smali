.class public final Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;
.super Ljava/lang/Object;
.source "OfflineLicenseHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final conditionVariable:Landroid/os/ConditionVariable;

.field private final drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final handlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;)V
    .locals 7
    .param p2, "callback"    # Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm",
            "<TT;>;",
            "Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;, "Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper<TT;>;"
    .local p1, "mediaDrm":Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;, "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm<TT;>;"
    .local p3, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "OfflineLicenseHelper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;->handlerThread:Landroid/os/HandlerThread;

    .line 92
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 93
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;->conditionVariable:Landroid/os/ConditionVariable;

    .line 94
    new-instance v6, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper$1;

    invoke-direct {v6, p0}, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper$1;-><init>(Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;)V

    .line 115
    .local v6, "eventListener":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;
    new-instance v0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    sget-object v1, Lorg/telegram/messenger/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    new-instance v5, Landroid/os/Handler;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;->handlerThread:Landroid/os/HandlerThread;

    .line 116
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v5, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;->conditionVariable:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private blockingKeyRequest(I[BLorg/telegram/messenger/exoplayer2/drm/DrmInitData;)[B
    .locals 4
    .param p1, "licenseMode"    # I
    .param p2, "offlineLicenseKeySetId"    # [B
    .param p3, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;, "Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;->openBlockingKeyRequest(I[BLorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    move-result-object v0

    .line 193
    .local v0, "drmSession":Lorg/telegram/messenger/exoplayer2/drm/DrmSession;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSession<TT;>;"
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession;->getError()Lorg/telegram/messenger/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v1

    .line 194
    .local v1, "error":Lorg/telegram/messenger/exoplayer2/drm/DrmSession$DrmSessionException;
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession;->getOfflineLicenseKeySetId()[B

    move-result-object v2

    .line 195
    .local v2, "keySetId":[B
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V

    .line 196
    if-eqz v1, :cond_0

    .line 197
    throw v1

    .line 199
    :cond_0
    return-object v2
.end method

.method public static newWidevineInstance(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$Factory;)Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;
    .locals 2
    .param p0, "licenseUrl"    # Ljava/lang/String;
    .param p1, "httpDataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$Factory;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/drm/UnsupportedDrmException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$Factory;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;->newWidevineInstance(Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;)Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;

    move-result-object v0

    return-object v0
.end method

.method public static newWidevineInstance(Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;)Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;
    .locals 2
    .param p0, "callback"    # Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/drm/UnsupportedDrmException;
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;

    sget-object v1, Lorg/telegram/messenger/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm;->newInstance(Ljava/util/UUID;)Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;-><init>(Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;)V

    return-object v0
.end method

.method private openBlockingKeyRequest(I[BLorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/drm/DrmSession;
    .locals 3
    .param p1, "licenseMode"    # I
    .param p2, "offlineLicenseKeySetId"    # [B
    .param p3, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSession",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;, "Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper<TT;>;"
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->setMode(I[B)V

    .line 205
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;->conditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 206
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->acquireSession(Landroid/os/Looper;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    move-result-object v0

    .line 209
    .local v0, "drmSession":Lorg/telegram/messenger/exoplayer2/drm/DrmSession;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSession<TT;>;"
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;->conditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 210
    return-object v0
.end method


# virtual methods
.method public declared-synchronized downloadLicense(Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)[B
    .locals 2
    .param p1, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lorg/telegram/messenger/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;, "Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper<TT;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 136
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;->blockingKeyRequest(I[BLorg/telegram/messenger/exoplayer2/drm/DrmInitData;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLicenseDurationRemainingSec([B)Landroid/util/Pair;
    .locals 6
    .param p1, "offlineLicenseKeySetId"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;, "Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v3, p1, v4}, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;->openBlockingKeyRequest(I[BLorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    move-result-object v0

    .line 176
    .local v0, "drmSession":Lorg/telegram/messenger/exoplayer2/drm/DrmSession;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSession<TT;>;"
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession;->getError()Lorg/telegram/messenger/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v1

    .line 178
    .local v1, "error":Lorg/telegram/messenger/exoplayer2/drm/DrmSession$DrmSessionException;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/drm/WidevineUtil;->getLicenseDurationRemainingSec(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)Landroid/util/Pair;

    move-result-object v2

    .line 179
    .local v2, "licenseDurationRemainingSec":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V

    .line 180
    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession$DrmSessionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/messenger/exoplayer2/drm/KeysExpiredException;

    if-eqz v3, :cond_1

    .line 182
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 186
    .end local v2    # "licenseDurationRemainingSec":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_0
    monitor-exit p0

    return-object v2

    .line 184
    .restart local v2    # "licenseDurationRemainingSec":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_1
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    .end local v0    # "drmSession":Lorg/telegram/messenger/exoplayer2/drm/DrmSession;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSession<TT;>;"
    .end local v1    # "error":Lorg/telegram/messenger/exoplayer2/drm/DrmSession$DrmSessionException;
    .end local v2    # "licenseDurationRemainingSec":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public release()V
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;, "Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 122
    return-void
.end method

.method public declared-synchronized releaseLicense([B)V
    .locals 2
    .param p1, "offlineLicenseKeySetId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;, "Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;->blockingKeyRequest(I[BLorg/telegram/messenger/exoplayer2/drm/DrmInitData;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized renewLicense([B)[B
    .locals 2
    .param p1, "offlineLicenseKeySetId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;, "Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/telegram/messenger/exoplayer2/drm/OfflineLicenseHelper;->blockingKeyRequest(I[BLorg/telegram/messenger/exoplayer2/drm/DrmInitData;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
