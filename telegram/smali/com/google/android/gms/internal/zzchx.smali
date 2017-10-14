.class final Lcom/google/android/gms/internal/zzchx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbtt:Lcom/google/android/gms/internal/zzchl;

.field private synthetic zzbtv:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzchl;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzchx;->zzbtt:Lcom/google/android/gms/internal/zzchl;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzchx;->zzbtv:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchx;->zzbtt:Lcom/google/android/gms/internal/zzchl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchl;->zzww()Lcom/google/android/gms/internal/zzcid;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchx;->zzbtv:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcid;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
