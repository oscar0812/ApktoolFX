.class final Lcom/google/android/gms/internal/zzbci;
.super Lcom/google/android/gms/internal/zzbcy;


# instance fields
.field private synthetic zzaDu:Lcom/google/android/gms/common/internal/zzj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbcg;Lcom/google/android/gms/internal/zzbcw;Lcom/google/android/gms/common/internal/zzj;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbci;->zzaDu:Lcom/google/android/gms/common/internal/zzj;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbcy;-><init>(Lcom/google/android/gms/internal/zzbcw;)V

    return-void
.end method


# virtual methods
.method public final zzpV()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbci;->zzaDu:Lcom/google/android/gms/common/internal/zzj;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/zzj;->zzf(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
