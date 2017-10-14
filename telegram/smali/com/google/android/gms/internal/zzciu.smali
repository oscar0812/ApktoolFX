.class final Lcom/google/android/gms/internal/zzciu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbuk:Lcom/google/android/gms/internal/zzciq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzciq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzciu;->zzbuk:Lcom/google/android/gms/internal/zzciq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciu;->zzbuk:Lcom/google/android/gms/internal/zzciq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzciu;->zzbuk:Lcom/google/android/gms/internal/zzciq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcid;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxE()Z

    const-string/jumbo v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcid;->zza(Lcom/google/android/gms/internal/zzcid;Landroid/content/ComponentName;)V

    return-void
.end method
