.class final Lcom/google/android/gms/internal/zzbcc;
.super Lcom/google/android/gms/internal/zzbcy;


# instance fields
.field private synthetic zzaDb:Lcom/google/android/gms/internal/zzbca;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbca;Lcom/google/android/gms/internal/zzbcw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbcc;->zzaDb:Lcom/google/android/gms/internal/zzbca;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbcy;-><init>(Lcom/google/android/gms/internal/zzbcw;)V

    return-void
.end method


# virtual methods
.method public final zzpV()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcc;->zzaDb:Lcom/google/android/gms/internal/zzbca;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbca;->zza(Lcom/google/android/gms/internal/zzbca;)Lcom/google/android/gms/internal/zzbcx;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbcx;->zzaDY:Lcom/google/android/gms/internal/zzbdq;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbdq;->zzm(Landroid/os/Bundle;)V

    return-void
.end method
