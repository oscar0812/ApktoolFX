.class public final Lcom/google/android/gms/wearable/internal/zzbd;
.super Lcom/google/android/gms/wearable/internal/zzdh;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzbSr:Lcom/google/android/gms/wearable/internal/zzah;

.field private zzbSv:Lcom/google/android/gms/wearable/internal/zzbe;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/zzdh;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbd;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/wearable/internal/zzbe;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzbd;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzbe;

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbd;->zzbSv:Lcom/google/android/gms/wearable/internal/zzbe;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbd;->zzbSr:Lcom/google/android/gms/wearable/internal/zzah;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lcom/google/android/gms/wearable/internal/zzbe;->zzb(Lcom/google/android/gms/wearable/internal/zzah;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzm(II)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzbd;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbd;->zzbSv:Lcom/google/android/gms/wearable/internal/zzbe;

    new-instance v2, Lcom/google/android/gms/wearable/internal/zzah;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/wearable/internal/zzah;-><init>(II)V

    iput-object v2, p0, Lcom/google/android/gms/wearable/internal/zzbd;->zzbSr:Lcom/google/android/gms/wearable/internal/zzah;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Lcom/google/android/gms/wearable/internal/zzbe;->zzb(Lcom/google/android/gms/wearable/internal/zzah;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
