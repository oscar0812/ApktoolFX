.class public Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;
.implements Lorg/telegram/messenger/exoplayer2/drm/DrmSession;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$PostRequestHandler;,
        Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$PostResponseHandler;,
        Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;,
        Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;,
        Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$Mode;,
        Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
        "<TT;>;",
        "Lorg/telegram/messenger/exoplayer2/drm/DrmSession",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final CENC_SCHEME_MIME_TYPE:Ljava/lang/String; = "cenc"

.field private static final MAX_LICENSE_DURATION_TO_RENEW:I = 0x3c

.field public static final MODE_DOWNLOAD:I = 0x2

.field public static final MODE_PLAYBACK:I = 0x0

.field public static final MODE_QUERY:I = 0x1

.field public static final MODE_RELEASE:I = 0x3

.field private static final MSG_KEYS:I = 0x1

.field private static final MSG_PROVISION:I = 0x0

.field public static final PLAYREADY_CUSTOM_DATA_KEY:Ljava/lang/String; = "PRCustomData"

.field private static final TAG:Ljava/lang/String; = "OfflineDrmSessionMngr"


# instance fields
.field final callback:Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

.field private lastException:Lorg/telegram/messenger/exoplayer2/drm/DrmSession$DrmSessionException;

.field private mediaCrypto:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm",
            "<TT;>;"
        }
    .end annotation
.end field

.field mediaDrmHandler:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager",
            "<TT;>.MediaDrmHandler;"
        }
    .end annotation
.end field

.field private mode:I

.field private offlineLicenseKeySetId:[B

.field private openCount:I

.field private final optionalKeyRequestParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private playbackLooper:Landroid/os/Looper;

.field private postRequestHandler:Landroid/os/Handler;

.field postResponseHandler:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$PostResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager",
            "<TT;>.PostResponseHandler;"
        }
    .end annotation
.end field

.field private provisioningInProgress:Z

.field private requestHandlerThread:Landroid/os/HandlerThread;

.field private schemeInitData:[B

.field private schemeMimeType:Ljava/lang/String;

.field private sessionId:[B

.field private state:I

.field final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p3, "callback"    # Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm",
            "<TT;>;",
            "Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    .local p2, "mediaDrm":Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;, "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm<TT;>;"
    .local p4, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    .line 219
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    .line 220
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->callback:Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;

    .line 221
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->optionalKeyRequestParameters:Ljava/util/HashMap;

    .line 222
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->eventHandler:Landroid/os/Handler;

    .line 223
    iput-object p6, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->eventListener:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    .line 224
    new-instance v0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;-><init>(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$1;)V

    invoke-interface {p2, v0}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->setOnEventListener(Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V

    .line 225
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->state:I

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mode:I

    .line 227
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;)Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->eventListener:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    .prologue
    .line 50
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->openCount:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    .prologue
    .line 50
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->state:I

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->state:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->doLicense()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->postProvisionRequest()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    .prologue
    .line 50
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mode:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->onProvisionResponse(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->onKeyResponse(Ljava/lang/Object;)V

    return-void
.end method

.method private doLicense()V
    .locals 6

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    const/4 v5, 0x2

    .line 476
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mode:I

    packed-switch v2, :pswitch_data_0

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 479
    :pswitch_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    if-nez v2, :cond_1

    .line 480
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->sessionId:[B

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->postKeyRequest([BI)V

    goto :goto_0

    .line 482
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->restoreKeys()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->getLicenseDurationRemainingSec()J

    move-result-wide v0

    .line 484
    .local v0, "licenseDurationRemainingSec":J
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mode:I

    if-nez v2, :cond_2

    const-wide/16 v2, 0x3c

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 486
    const-string/jumbo v2, "OfflineDrmSessionMngr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->sessionId:[B

    invoke-direct {p0, v2, v5}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->postKeyRequest([BI)V

    goto :goto_0

    .line 489
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    .line 490
    new-instance v2, Lorg/telegram/messenger/exoplayer2/drm/KeysExpiredException;

    invoke-direct {v2}, Lorg/telegram/messenger/exoplayer2/drm/KeysExpiredException;-><init>()V

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 492
    :cond_3
    const/4 v2, 0x4

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->state:I

    .line 493
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->eventHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->eventListener:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    if-eqz v2, :cond_0

    .line 494
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->eventHandler:Landroid/os/Handler;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$1;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$1;-><init>(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 506
    .end local v0    # "licenseDurationRemainingSec":J
    :pswitch_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    if-nez v2, :cond_4

    .line 507
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->sessionId:[B

    invoke-direct {p0, v2, v5}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->postKeyRequest([BI)V

    goto :goto_0

    .line 510
    :cond_4
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->restoreKeys()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->sessionId:[B

    invoke-direct {p0, v2, v5}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->postKeyRequest([BI)V

    goto :goto_0

    .line 516
    :pswitch_2
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->restoreKeys()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->postKeyRequest([BI)V

    goto/16 :goto_0

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getLicenseDurationRemainingSec()J
    .locals 6

    .prologue
    .line 535
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    sget-object v1, Lorg/telegram/messenger/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 536
    const-wide v2, 0x7fffffffffffffffL

    .line 539
    :goto_0
    return-wide v2

    .line 538
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/drm/WidevineUtil;->getLicenseDurationRemainingSec(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)Landroid/util/Pair;

    move-result-object v0

    .line 539
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static newFrameworkInstance(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;)Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;
    .locals 7
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "callback"    # Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;
    .param p3, "eventHandler"    # Landroid/os/Handler;
    .param p4, "eventListener"    # Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager",
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
    .line 201
    .local p2, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm;->newInstance(Ljava/util/UUID;)Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;)V

    return-object v0
.end method

.method public static newPlayReadyInstance(Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/lang/String;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;)Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;
    .locals 2
    .param p0, "callback"    # Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;
    .param p1, "customData"    # Ljava/lang/String;
    .param p2, "eventHandler"    # Landroid/os/Handler;
    .param p3, "eventListener"    # Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager",
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
    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 178
    .local v0, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "PRCustomData"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :goto_0
    sget-object v1, Lorg/telegram/messenger/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-static {v1, p0, v0, p2, p3}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->newFrameworkInstance(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;)Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    move-result-object v1

    return-object v1

    .line 180
    .end local v0    # "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public static newWidevineInstance(Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;)Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;
    .locals 1
    .param p0, "callback"    # Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;
    .param p2, "eventHandler"    # Landroid/os/Handler;
    .param p3, "eventListener"    # Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager",
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
    .line 155
    .local p1, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lorg/telegram/messenger/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-static {v0, p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->newFrameworkInstance(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;)Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    move-result-object v0

    return-object v0
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 604
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    new-instance v0, Lorg/telegram/messenger/exoplayer2/drm/DrmSession$DrmSessionException;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Exception;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->lastException:Lorg/telegram/messenger/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 605
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->eventListener:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$4;-><init>(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 613
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 614
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->state:I

    .line 616
    :cond_1
    return-void
.end method

.method private onKeyResponse(Ljava/lang/Object;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 553
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->state:I

    if-eq v2, v3, :cond_1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->state:I

    if-eq v2, v4, :cond_1

    .line 593
    .end local p1    # "response":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 558
    .restart local p1    # "response":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Ljava/lang/Exception;

    if-eqz v2, :cond_2

    .line 559
    check-cast p1, Ljava/lang/Exception;

    .end local p1    # "response":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->onKeysError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 564
    .restart local p1    # "response":Ljava/lang/Object;
    :cond_2
    :try_start_0
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mode:I

    if-ne v2, v3, :cond_3

    .line 565
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    check-cast p1, [B

    .end local p1    # "response":Ljava/lang/Object;
    check-cast p1, [B

    invoke-interface {v2, v3, p1}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    .line 566
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->eventHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->eventListener:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    if-eqz v2, :cond_0

    .line 567
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->eventHandler:Landroid/os/Handler;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$2;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$2;-><init>(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->onKeysError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 575
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p1    # "response":Ljava/lang/Object;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->sessionId:[B

    check-cast p1, [B

    .end local p1    # "response":Ljava/lang/Object;
    check-cast p1, [B

    invoke-interface {v2, v3, p1}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    move-result-object v1

    .line 576
    .local v1, "keySetId":[B
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mode:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_5

    array-length v2, v1

    if-eqz v2, :cond_5

    .line 578
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    .line 580
    :cond_5
    const/4 v2, 0x4

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->state:I

    .line 581
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->eventHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->eventListener:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    if-eqz v2, :cond_0

    .line 582
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->eventHandler:Landroid/os/Handler;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$3;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$3;-><init>(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private onKeysError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 596
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_0

    .line 597
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->postProvisionRequest()V

    .line 601
    :goto_0
    return-void

    .line 599
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private onProvisionResponse(Ljava/lang/Object;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 452
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->provisioningInProgress:Z

    .line 453
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->state:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 473
    .end local p1    # "response":Ljava/lang/Object;
    :goto_0
    return-void

    .line 458
    .restart local p1    # "response":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 459
    check-cast p1, Ljava/lang/Exception;

    .end local p1    # "response":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 464
    .restart local p1    # "response":Ljava/lang/Object;
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    check-cast p1, [B

    .end local p1    # "response":Ljava/lang/Object;
    check-cast p1, [B

    invoke-interface {v1, p1}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->provideProvisionResponse([B)V

    .line 465
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->state:I

    if-ne v1, v3, :cond_2

    .line 466
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->openInternal(Z)V
    :try_end_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Landroid/media/DeniedByServerException;
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 468
    .end local v0    # "e":Landroid/media/DeniedByServerException;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->doLicense()V
    :try_end_1
    .catch Landroid/media/DeniedByServerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private openInternal(Z)V
    .locals 4
    .param p1, "allowProvisioning"    # Z

    .prologue
    .line 427
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->openSession()[B

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->sessionId:[B

    .line 428
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->sessionId:[B

    invoke-interface {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->createMediaCrypto(Ljava/util/UUID;[B)Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mediaCrypto:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;

    .line 429
    const/4 v1, 0x3

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->state:I

    .line 430
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->doLicense()V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 440
    :goto_0
    return-void

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Landroid/media/NotProvisionedException;
    if-eqz p1, :cond_0

    .line 433
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->postProvisionRequest()V

    goto :goto_0

    .line 435
    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 437
    .end local v0    # "e":Landroid/media/NotProvisionedException;
    :catch_1
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private postKeyRequest([BI)V
    .locals 8
    .param p1, "scope"    # [B
    .param p2, "keyType"    # I

    .prologue
    .line 544
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->schemeInitData:[B

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->schemeMimeType:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->optionalKeyRequestParameters:Ljava/util/HashMap;

    move-object v1, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    move-result-object v7

    .line 546
    .local v7, "keyRequest":Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$KeyRequest;
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    .end local v7    # "keyRequest":Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$KeyRequest;
    :goto_0
    return-void

    .line 547
    :catch_0
    move-exception v6

    .line 548
    .local v6, "e":Ljava/lang/Exception;
    invoke-direct {p0, v6}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->onKeysError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private postProvisionRequest()V
    .locals 3

    .prologue
    .line 443
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->provisioningInProgress:Z

    if-eqz v1, :cond_0

    .line 449
    :goto_0
    return-void

    .line 446
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->provisioningInProgress:Z

    .line 447
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->getProvisionRequest()Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    move-result-object v0

    .line 448
    .local v0, "request":Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private restoreKeys()Z
    .locals 4

    .prologue
    .line 525
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->sessionId:[B

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    invoke-interface {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->restoreKeys([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    const/4 v1, 0x1

    .line 531
    :goto_0
    return v1

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "OfflineDrmSessionMngr"

    const-string/jumbo v2, "Error trying to restore Widevine keys."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 529
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->onError(Ljava/lang/Exception;)V

    .line 531
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acquireSession(Landroid/os/Looper;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/drm/DrmSession;
    .locals 5
    .param p1, "playbackLooper"    # Landroid/os/Looper;
    .param p2, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSession",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    const/4 v3, 0x1

    .line 312
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    if-ne v2, p1, :cond_1

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 313
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->openCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->openCount:I

    if-eq v2, v3, :cond_2

    .line 353
    :goto_1
    return-object p0

    .line 312
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 317
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    if-nez v2, :cond_3

    .line 318
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    .line 319
    new-instance v2, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;-><init>(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrmHandler:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;

    .line 320
    new-instance v2, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$PostResponseHandler;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$PostResponseHandler;-><init>(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->postResponseHandler:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$PostResponseHandler;

    .line 323
    :cond_3
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v4, "DrmRequestHandler"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 324
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 325
    new-instance v2, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$PostRequestHandler;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$PostRequestHandler;-><init>(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    .line 327
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    if-nez v2, :cond_7

    .line 328
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-virtual {p2, v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;->get(Ljava/util/UUID;)Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v1

    .line 329
    .local v1, "schemeData":Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;
    if-nez v1, :cond_4

    .line 330
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Media does not support uuid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 333
    :cond_4
    iget-object v2, v1, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->schemeInitData:[B

    .line 334
    iget-object v2, v1, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->schemeMimeType:Ljava/lang/String;

    .line 335
    sget v2, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v2, v4, :cond_5

    .line 337
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->schemeInitData:[B

    sget-object v4, Lorg/telegram/messenger/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-static {v2, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/PsshAtomUtil;->parseSchemeSpecificData([BLjava/util/UUID;)[B

    move-result-object v0

    .line 338
    .local v0, "psshData":[B
    if-nez v0, :cond_8

    .line 344
    .end local v0    # "psshData":[B
    :cond_5
    :goto_2
    sget v2, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge v2, v4, :cond_7

    sget-object v2, Lorg/telegram/messenger/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "video/mp4"

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->schemeMimeType:Ljava/lang/String;

    .line 345
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "audio/mp4"

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->schemeMimeType:Ljava/lang/String;

    .line 346
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 348
    :cond_6
    const-string/jumbo v2, "cenc"

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->schemeMimeType:Ljava/lang/String;

    .line 351
    .end local v1    # "schemeData":Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;
    :cond_7
    const/4 v2, 0x2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->state:I

    .line 352
    invoke-direct {p0, v3}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->openInternal(Z)V

    goto/16 :goto_1

    .line 341
    .restart local v0    # "psshData":[B
    .restart local v1    # "schemeData":Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;
    :cond_8
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->schemeInitData:[B

    goto :goto_2
.end method

.method public final getError()Lorg/telegram/messenger/exoplayer2/drm/DrmSession$DrmSessionException;
    .locals 1

    .prologue
    .line 405
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->state:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->lastException:Lorg/telegram/messenger/exoplayer2/drm/DrmSession$DrmSessionException;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getMediaCrypto()Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 390
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 392
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mediaCrypto:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;

    return-object v0
.end method

.method public getOfflineLicenseKeySetId()[B
    .locals 1

    .prologue
    .line 420
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    return-object v0
.end method

.method public final getPropertyByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 262
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 238
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .prologue
    .line 384
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->state:I

    return v0
.end method

.method public queryKeyStatus()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->sessionId:[B

    if-nez v0, :cond_0

    .line 413
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 415
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->sessionId:[B

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->queryKeyStatus([B)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSession",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    .local p1, "session":Lorg/telegram/messenger/exoplayer2/drm/DrmSession;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSession<TT;>;"
    const/4 v2, 0x0

    .line 358
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->openCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->openCount:I

    if-eqz v0, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->state:I

    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->provisioningInProgress:Z

    .line 363
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrmHandler:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 364
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->postResponseHandler:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$PostResponseHandler;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$PostResponseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 365
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 366
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    .line 367
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 368
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 369
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->schemeInitData:[B

    .line 370
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->schemeMimeType:Ljava/lang/String;

    .line 371
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mediaCrypto:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;

    .line 372
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->lastException:Lorg/telegram/messenger/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 373
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->sessionId:[B

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->sessionId:[B

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->closeSession([B)V

    .line 375
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->sessionId:[B

    goto :goto_0
.end method

.method public requiresSecureDecoderComponent(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 397
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 398
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 400
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mediaCrypto:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMode(I[B)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "offlineLicenseKeySetId"    # [B

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    const/4 v1, 0x1

    .line 300
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->openCount:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 301
    if-eq p1, v1, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 302
    :cond_0
    invoke-static {p2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_1
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mode:I

    .line 305
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    .line 306
    return-void

    .line 300
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setPropertyByteArray(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 274
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->setPropertyByteArray(Ljava/lang/String;[B)V

    .line 275
    return-void
.end method

.method public final setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 250
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method
