.class final Lcom/google/android/gms/internal/zzbdi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzaEw:Lcom/google/android/gms/common/ConnectionResult;

.field private synthetic zzaEy:Lcom/google/android/gms/internal/zzbdh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbdh;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbdi;->zzaEy:Lcom/google/android/gms/internal/zzbdh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbdi;->zzaEw:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdi;->zzaEw:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdi;->zzaEy:Lcom/google/android/gms/internal/zzbdh;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbdh;->zza(Lcom/google/android/gms/internal/zzbdh;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdi;->zzaEy:Lcom/google/android/gms/internal/zzbdh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdh;->zza(Lcom/google/android/gms/internal/zzbdh;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzmv()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdi;->zzaEy:Lcom/google/android/gms/internal/zzbdh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdh;->zzb(Lcom/google/android/gms/internal/zzbdh;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdi;->zzaEy:Lcom/google/android/gms/internal/zzbdh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdh;->zza(Lcom/google/android/gms/internal/zzbdh;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/Api$zze;->zza(Lcom/google/android/gms/common/internal/zzal;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdi;->zzaEy:Lcom/google/android/gms/internal/zzbdh;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbdh;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zzj(Lcom/google/android/gms/internal/zzbdb;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdi;->zzaEy:Lcom/google/android/gms/internal/zzbdh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbdh;->zzc(Lcom/google/android/gms/internal/zzbdh;)Lcom/google/android/gms/internal/zzbat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbdd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdi;->zzaEw:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdd;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method
