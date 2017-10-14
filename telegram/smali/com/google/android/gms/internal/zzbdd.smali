.class public final Lcom/google/android/gms/internal/zzbdd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/internal/zzbbj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
        "Lcom/google/android/gms/internal/zzbbj;"
    }
.end annotation


# instance fields
.field private final zzaAK:Lcom/google/android/gms/internal/zzbat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbat",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final zzaCy:Lcom/google/android/gms/common/api/Api$zze;

.field private zzaDA:Z

.field private synthetic zzaEm:Lcom/google/android/gms/internal/zzbdb;

.field private final zzaEn:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/internal/zzbam;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaEo:Lcom/google/android/gms/common/api/Api$zzb;

.field private final zzaEp:Lcom/google/android/gms/internal/zzbbt;

.field private final zzaEq:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzbav;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaEr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzbdy",
            "<*>;",
            "Lcom/google/android/gms/internal/zzbef;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaEs:I

.field private final zzaEt:Lcom/google/android/gms/internal/zzbej;

.field private zzaEu:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbdb;Lcom/google/android/gms/common/api/GoogleApi;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApi",
            "<TO;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEn:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEq:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEr:Ljava/util/Map;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEu:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Landroid/os/Looper;Lcom/google/android/gms/internal/zzbdd;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaCy:Lcom/google/android/gms/common/api/Api$zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaCy:Lcom/google/android/gms/common/api/Api$zze;

    instance-of v0, v0, Lcom/google/android/gms/common/internal/zzbx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaCy:Lcom/google/android/gms/common/api/Api$zze;

    check-cast v0, Lcom/google/android/gms/common/internal/zzbx;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEo:Lcom/google/android/gms/common/api/Api$zzb;

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/GoogleApi;->zzph()Lcom/google/android/gms/internal/zzbat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaAK:Lcom/google/android/gms/internal/zzbat;

    new-instance v0, Lcom/google/android/gms/internal/zzbbt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbbt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEp:Lcom/google/android/gms/internal/zzbbt;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/GoogleApi;->getInstanceId()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEs:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaCy:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzmv()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbdb;->zzb(Lcom/google/android/gms/internal/zzbdb;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/internal/zzbej;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEt:Lcom/google/android/gms/internal/zzbej;

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaCy:Lcom/google/android/gms/common/api/Api$zze;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEo:Lcom/google/android/gms/common/api/Api$zzb;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEt:Lcom/google/android/gms/internal/zzbej;

    goto :goto_1
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzbam;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEp:Lcom/google/android/gms/internal/zzbbt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdd;->zzmv()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbam;->zza(Lcom/google/android/gms/internal/zzbbt;Z)V

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzbam;->zza(Lcom/google/android/gms/internal/zzbdd;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbdd;->onConnectionSuspended(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaCy:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    goto :goto_0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzbdd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbdd;->zzqq()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzbdd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbdd;->zzqr()V

    return-void
.end method

.method private final zzi(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEq:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbav;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbdd;->zzaAK:Lcom/google/android/gms/internal/zzbat;

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/zzbav;->zza(Lcom/google/android/gms/internal/zzbat;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEq:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private final zzqq()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdd;->zzqt()V

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->zzazX:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbdd;->zzi(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbdd;->zzqv()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbef;

    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/zzbef;->zzaBu:Lcom/google/android/gms/internal/zzbee;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEo:Lcom/google/android/gms/common/api/Api$zzb;

    new-instance v3, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzbee;->zzb(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbdd;->onConnectionSuspended(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaCy:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaCy:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEn:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEn:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbam;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbdd;->zzb(Lcom/google/android/gms/internal/zzbam;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbdd;->zzqw()V

    return-void

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private final zzqr()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdd;->zzqt()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaDA:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEp:Lcom/google/android/gms/internal/zzbbt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbbt;->zzpQ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbdd;->zzaAK:Lcom/google/android/gms/internal/zzbat;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbdb;->zzc(Lcom/google/android/gms/internal/zzbdb;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbdd;->zzaAK:Lcom/google/android/gms/internal/zzbat;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbdb;->zzd(Lcom/google/android/gms/internal/zzbdb;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;I)I

    return-void
.end method

.method private final zzqv()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaDA:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbdd;->zzaAK:Lcom/google/android/gms/internal/zzbat;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbdd;->zzaAK:Lcom/google/android/gms/internal/zzbat;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaDA:Z

    :cond_0
    return-void
.end method

.method private final zzqw()V
    .locals 4

    const/16 v3, 0xc

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdd;->zzaAK:Lcom/google/android/gms/internal/zzbat;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbdd;->zzaAK:Lcom/google/android/gms/internal/zzbat;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbdb;->zzh(Lcom/google/android/gms/internal/zzbdb;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public final connect()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zza(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaCy:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaCy:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaCy:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzpe()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zzi(Lcom/google/android/gms/internal/zzbdb;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbdb;->zzg(Lcom/google/android/gms/internal/zzbdb;)Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbdb;->zzb(Lcom/google/android/gms/internal/zzbdb;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zzi(Lcom/google/android/gms/internal/zzbdb;)I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbdb;->zzi(Lcom/google/android/gms/internal/zzbdb;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbdd;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzbdh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbdd;->zzaCy:Lcom/google/android/gms/common/api/Api$zze;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbdd;->zzaAK:Lcom/google/android/gms/internal/zzbat;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbdh;-><init>(Lcom/google/android/gms/internal/zzbdb;Lcom/google/android/gms/common/api/Api$zze;Lcom/google/android/gms/internal/zzbat;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdd;->zzaCy:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$zze;->zzmv()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEt:Lcom/google/android/gms/internal/zzbej;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbej;->zza(Lcom/google/android/gms/internal/zzbel;)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdd;->zzaCy:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/Api$zze;->zza(Lcom/google/android/gms/common/internal/zzj;)V

    goto :goto_0
.end method

.method public final getInstanceId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEs:I

    return v0
.end method

.method final isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaCy:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    return v0
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbdd;->zzqq()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbde;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbde;-><init>(Lcom/google/android/gms/internal/zzbdd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zza(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEt:Lcom/google/android/gms/internal/zzbej;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEt:Lcom/google/android/gms/internal/zzbej;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbej;->zzqI()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdd;->zzqt()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;I)I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbdd;->zzi(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzbdb;->zzqo()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbdd;->zzt(Lcom/google/android/gms/common/api/Status;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEn:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEu:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/zzbdb;->zzqp()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zze(Lcom/google/android/gms/internal/zzbdb;)Lcom/google/android/gms/internal/zzbbw;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zzf(Lcom/google/android/gms/internal/zzbdb;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbdd;->zzaAK:Lcom/google/android/gms/internal/zzbat;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zze(Lcom/google/android/gms/internal/zzbdb;)Lcom/google/android/gms/internal/zzbbw;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEs:I

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/zzbbw;->zzb(Lcom/google/android/gms/common/ConnectionResult;I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    iget v1, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEs:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzbdb;->zzc(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaDA:Z

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaDA:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbdd;->zzaAK:Lcom/google/android/gms/internal/zzbat;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbdb;->zzc(Lcom/google/android/gms/internal/zzbdb;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbdd;->zzaAK:Lcom/google/android/gms/internal/zzbat;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbat;->zzpr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "API: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not available on this device."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbdd;->zzt(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_0
.end method

.method public final onConnectionSuspended(I)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbdd;->zzqr()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbdf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbdf;-><init>(Lcom/google/android/gms/internal/zzbdd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final resume()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zza(Landroid/os/Handler;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaDA:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdd;->connect()V

    :cond_0
    return-void
.end method

.method public final signOut()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zza(Landroid/os/Handler;)V

    sget-object v0, Lcom/google/android/gms/internal/zzbdb;->zzaEc:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbdd;->zzt(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEp:Lcom/google/android/gms/internal/zzbbt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbbt;->zzpP()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbdy;

    new-instance v2, Lcom/google/android/gms/internal/zzbar;

    new-instance v3, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/zzbar;-><init>(Lcom/google/android/gms/internal/zzbdy;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzbdd;->zza(Lcom/google/android/gms/internal/zzbam;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbdd;->zzi(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaCy:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;Z)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbdd;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbdg;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzbdg;-><init>(Lcom/google/android/gms/internal/zzbdd;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbam;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zza(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaCy:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbdd;->zzb(Lcom/google/android/gms/internal/zzbam;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbdd;->zzqw()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEn:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEu:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEu:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEu:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbdd;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdd;->connect()V

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbav;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zza(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEq:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zza(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaCy:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbdd;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final zzmv()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaCy:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzmv()Z

    move-result v0

    return v0
.end method

.method public final zzpJ()Lcom/google/android/gms/common/api/Api$zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaCy:Lcom/google/android/gms/common/api/Api$zze;

    return-object v0
.end method

.method public final zzqd()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zza(Landroid/os/Handler;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaDA:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbdd;->zzqv()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zzg(Lcom/google/android/gms/internal/zzbdb;)Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbdb;->zzb(Lcom/google/android/gms/internal/zzbdb;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string/jumbo v1, "Connection timed out while waiting for Google Play services update to complete."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbdd;->zzt(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaCy:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string/jumbo v1, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final zzqs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzbdy",
            "<*>;",
            "Lcom/google/android/gms/internal/zzbef;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEr:Ljava/util/Map;

    return-object v0
.end method

.method public final zzqt()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zza(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEu:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method public final zzqu()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zza(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEu:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method public final zzqx()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zza(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaCy:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEp:Lcom/google/android/gms/internal/zzbbt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbbt;->zzpO()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbdd;->zzqw()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaCy:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    goto :goto_0
.end method

.method final zzqy()Lcom/google/android/gms/internal/zzctk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEt:Lcom/google/android/gms/internal/zzbej;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEt:Lcom/google/android/gms/internal/zzbej;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbej;->zzqy()Lcom/google/android/gms/internal/zzctk;

    move-result-object v0

    goto :goto_0
.end method

.method public final zzt(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zza(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEn:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbam;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbam;->zzp(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdd;->zzaEn:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method
