.class final Lcom/google/android/gms/internal/zzbcr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# instance fields
.field private synthetic zzaDN:Lcom/google/android/gms/internal/zzbcp;

.field private synthetic zzaDO:Ljava/util/concurrent/atomic/AtomicReference;

.field private synthetic zzaDP:Lcom/google/android/gms/internal/zzben;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbcp;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/zzben;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbcr;->zzaDN:Lcom/google/android/gms/internal/zzbcp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbcr;->zzaDO:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbcr;->zzaDP:Lcom/google/android/gms/internal/zzben;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbcr;->zzaDN:Lcom/google/android/gms/internal/zzbcp;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcr;->zzaDO:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbcr;->zzaDP:Lcom/google/android/gms/internal/zzben;

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbcp;->zza(Lcom/google/android/gms/internal/zzbcp;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzben;Z)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
