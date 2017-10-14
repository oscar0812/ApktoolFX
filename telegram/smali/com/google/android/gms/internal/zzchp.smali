.class final Lcom/google/android/gms/internal/zzchp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbjh:Ljava/lang/String;

.field private synthetic zzbth:Ljava/lang/String;

.field private synthetic zzbti:Ljava/lang/String;

.field private synthetic zzbtt:Lcom/google/android/gms/internal/zzchl;

.field private synthetic zzbtv:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzchl;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzchp;->zzbtt:Lcom/google/android/gms/internal/zzchl;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzchp;->zzbtv:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzchp;->zzbjh:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzchp;->zzbth:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzchp;->zzbti:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchp;->zzbtt:Lcom/google/android/gms/internal/zzchl;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzchl;->zzboe:Lcom/google/android/gms/internal/zzcgl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgl;->zzww()Lcom/google/android/gms/internal/zzcid;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchp;->zzbtv:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzchp;->zzbjh:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzchp;->zzbth:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzchp;->zzbti:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzcid;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
