.class final Lcom/google/android/gms/internal/zzchq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbjh:Ljava/lang/String;

.field private synthetic zzbth:Ljava/lang/String;

.field private synthetic zzbti:Ljava/lang/String;

.field private synthetic zzbtt:Lcom/google/android/gms/internal/zzchl;

.field private synthetic zzbtv:Ljava/util/concurrent/atomic/AtomicReference;

.field private synthetic zzbtw:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzchl;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzchq;->zzbtt:Lcom/google/android/gms/internal/zzchl;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzchq;->zzbtv:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzchq;->zzbjh:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzchq;->zzbth:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzchq;->zzbti:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzchq;->zzbtw:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchq;->zzbtt:Lcom/google/android/gms/internal/zzchl;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzchl;->zzboe:Lcom/google/android/gms/internal/zzcgl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgl;->zzww()Lcom/google/android/gms/internal/zzcid;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchq;->zzbtv:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzchq;->zzbjh:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzchq;->zzbth:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzchq;->zzbti:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzchq;->zzbtw:Z

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcid;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
