.class final Lcom/google/android/gms/tasks/zzh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbLT:Lcom/google/android/gms/tasks/Task;

.field private synthetic zzbLZ:Lcom/google/android/gms/tasks/zzg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/zzg;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzh;->zzbLZ:Lcom/google/android/gms/tasks/zzg;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzh;->zzbLT:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->zzbLZ:Lcom/google/android/gms/tasks/zzg;

    invoke-static {v0}, Lcom/google/android/gms/tasks/zzg;->zza(Lcom/google/android/gms/tasks/zzg;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->zzbLZ:Lcom/google/android/gms/tasks/zzg;

    invoke-static {v0}, Lcom/google/android/gms/tasks/zzg;->zzb(Lcom/google/android/gms/tasks/zzg;)Lcom/google/android/gms/tasks/OnFailureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->zzbLZ:Lcom/google/android/gms/tasks/zzg;

    invoke-static {v0}, Lcom/google/android/gms/tasks/zzg;->zzb(Lcom/google/android/gms/tasks/zzg;)Lcom/google/android/gms/tasks/OnFailureListener;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/tasks/zzh;->zzbLT:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

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
