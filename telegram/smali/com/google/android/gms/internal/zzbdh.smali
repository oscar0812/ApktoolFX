.class final Lcom/google/android/gms/internal/zzbdh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzj;
.implements Lcom/google/android/gms/internal/zzbel;


# instance fields
.field private final zzaAK:Lcom/google/android/gms/internal/zzbat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbat",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzaCy:Lcom/google/android/gms/common/api/Api$zze;

.field private zzaDl:Lcom/google/android/gms/common/internal/zzal;

.field final synthetic zzaEm:Lcom/google/android/gms/internal/zzbdb;

.field private zzaEx:Z

.field private zzame:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbdb;Lcom/google/android/gms/common/api/Api$zze;Lcom/google/android/gms/internal/zzbat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api$zze;",
            "Lcom/google/android/gms/internal/zzbat",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbdh;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbdh;->zzaDl:Lcom/google/android/gms/common/internal/zzal;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbdh;->zzame:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbdh;->zzaEx:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbdh;->zzaCy:Lcom/google/android/gms/common/api/Api$zze;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbdh;->zzaAK:Lcom/google/android/gms/internal/zzbat;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbdh;)Lcom/google/android/gms/common/api/Api$zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdh;->zzaCy:Lcom/google/android/gms/common/api/Api$zze;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbdh;Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbdh;->zzaEx:Z

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbdh;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbdh;->zzqz()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzbdh;)Lcom/google/android/gms/internal/zzbat;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdh;->zzaAK:Lcom/google/android/gms/internal/zzbat;

    return-object v0
.end method

.method private final zzqz()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbdh;->zzaEx:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdh;->zzaDl:Lcom/google/android/gms/common/internal/zzal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdh;->zzaCy:Lcom/google/android/gms/common/api/Api$zze;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdh;->zzaDl:Lcom/google/android/gms/common/internal/zzal;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbdh;->zzame:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/Api$zze;->zza(Lcom/google/android/gms/common/internal/zzal;Ljava/util/Set;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/common/internal/zzal;Ljava/util/Set;)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/zzal;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string/jumbo v0, "GoogleApiManager"

    const-string/jumbo v1, "Received null response from onSignInSuccess"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbdh;->zzh(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbdh;->zzaDl:Lcom/google/android/gms/common/internal/zzal;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbdh;->zzame:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbdh;->zzqz()V

    goto :goto_0
.end method

.method public final zzf(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdh;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbdi;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzbdi;-><init>(Lcom/google/android/gms/internal/zzbdh;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdh;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zzj(Lcom/google/android/gms/internal/zzbdb;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdh;->zzaAK:Lcom/google/android/gms/internal/zzbat;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbdd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbdd;->zzh(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
