.class final Lcom/google/android/gms/internal/zzchv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbtt:Lcom/google/android/gms/internal/zzchl;

.field private synthetic zzbtv:Ljava/util/concurrent/atomic/AtomicReference;

.field private synthetic zzbtw:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzchl;Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzchv;->zzbtt:Lcom/google/android/gms/internal/zzchl;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzchv;->zzbtv:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzchv;->zzbtw:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchv;->zzbtt:Lcom/google/android/gms/internal/zzchl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchl;->zzww()Lcom/google/android/gms/internal/zzcid;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchv;->zzbtv:Ljava/util/concurrent/atomic/AtomicReference;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzchv;->zzbtw:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcid;->zza(Ljava/util/concurrent/atomic/AtomicReference;Z)V

    return-void
.end method
