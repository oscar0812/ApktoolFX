.class final Lcom/google/android/gms/internal/zzbbm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbdq;


# instance fields
.field private synthetic zzaCx:Lcom/google/android/gms/internal/zzbbk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbbk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbm;->zzaCx:Lcom/google/android/gms/internal/zzbbk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbbk;Lcom/google/android/gms/internal/zzbbl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbbm;-><init>(Lcom/google/android/gms/internal/zzbbk;)V

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbm;->zzaCx:Lcom/google/android/gms/internal/zzbbk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbk;->zza(Lcom/google/android/gms/internal/zzbbk;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbm;->zzaCx:Lcom/google/android/gms/internal/zzbbk;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzbbk;->zza(Lcom/google/android/gms/internal/zzbbk;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbm;->zzaCx:Lcom/google/android/gms/internal/zzbbk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbk;->zzb(Lcom/google/android/gms/internal/zzbbk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbm;->zzaCx:Lcom/google/android/gms/internal/zzbbk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbk;->zza(Lcom/google/android/gms/internal/zzbbk;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbbm;->zzaCx:Lcom/google/android/gms/internal/zzbbk;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbbk;->zza(Lcom/google/android/gms/internal/zzbbk;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final zze(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbm;->zzaCx:Lcom/google/android/gms/internal/zzbbk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbk;->zza(Lcom/google/android/gms/internal/zzbbk;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbm;->zzaCx:Lcom/google/android/gms/internal/zzbbk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbk;->zzc(Lcom/google/android/gms/internal/zzbbk;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbm;->zzaCx:Lcom/google/android/gms/internal/zzbbk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbk;->zzd(Lcom/google/android/gms/internal/zzbbk;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbm;->zzaCx:Lcom/google/android/gms/internal/zzbbk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbk;->zzd(Lcom/google/android/gms/internal/zzbbk;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbm;->zzaCx:Lcom/google/android/gms/internal/zzbbk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbbk;->zza(Lcom/google/android/gms/internal/zzbbk;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbm;->zzaCx:Lcom/google/android/gms/internal/zzbbk;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/zzbbk;->zza(Lcom/google/android/gms/internal/zzbbk;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbm;->zzaCx:Lcom/google/android/gms/internal/zzbbk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbk;->zza(Lcom/google/android/gms/internal/zzbbk;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbm;->zzaCx:Lcom/google/android/gms/internal/zzbbk;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbbk;->zza(Lcom/google/android/gms/internal/zzbbk;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbm;->zzaCx:Lcom/google/android/gms/internal/zzbbk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbk;->zze(Lcom/google/android/gms/internal/zzbbk;)Lcom/google/android/gms/internal/zzbcx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbcx;->onConnectionSuspended(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbm;->zzaCx:Lcom/google/android/gms/internal/zzbbk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbk;->zza(Lcom/google/android/gms/internal/zzbbk;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbbm;->zzaCx:Lcom/google/android/gms/internal/zzbbk;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbbk;->zza(Lcom/google/android/gms/internal/zzbbk;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final zzm(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbm;->zzaCx:Lcom/google/android/gms/internal/zzbbk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbk;->zza(Lcom/google/android/gms/internal/zzbbk;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbm;->zzaCx:Lcom/google/android/gms/internal/zzbbk;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzbbk;->zza(Lcom/google/android/gms/internal/zzbbk;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbm;->zzaCx:Lcom/google/android/gms/internal/zzbbk;

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->zzazX:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbbk;->zza(Lcom/google/android/gms/internal/zzbbk;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbm;->zzaCx:Lcom/google/android/gms/internal/zzbbk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbk;->zzb(Lcom/google/android/gms/internal/zzbbk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbm;->zzaCx:Lcom/google/android/gms/internal/zzbbk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbk;->zza(Lcom/google/android/gms/internal/zzbbk;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbbm;->zzaCx:Lcom/google/android/gms/internal/zzbbk;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbbk;->zza(Lcom/google/android/gms/internal/zzbbk;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
