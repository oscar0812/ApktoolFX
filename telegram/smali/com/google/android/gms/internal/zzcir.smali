.class final Lcom/google/android/gms/internal/zzcir;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbuj:Lcom/google/android/gms/internal/zzcfd;

.field private synthetic zzbuk:Lcom/google/android/gms/internal/zzciq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzciq;Lcom/google/android/gms/internal/zzcfd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcir;->zzbuk:Lcom/google/android/gms/internal/zzciq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcir;->zzbuj:Lcom/google/android/gms/internal/zzcfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcir;->zzbuk:Lcom/google/android/gms/internal/zzciq;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcir;->zzbuk:Lcom/google/android/gms/internal/zzciq;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzciq;->zza(Lcom/google/android/gms/internal/zzciq;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcir;->zzbuk:Lcom/google/android/gms/internal/zzciq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcid;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcir;->zzbuk:Lcom/google/android/gms/internal/zzciq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcid;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v2, "Connected to service"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcir;->zzbuk:Lcom/google/android/gms/internal/zzciq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcir;->zzbuj:Lcom/google/android/gms/internal/zzcfd;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcid;->zza(Lcom/google/android/gms/internal/zzcfd;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
