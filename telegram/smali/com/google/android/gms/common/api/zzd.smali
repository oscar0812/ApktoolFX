.class public final Lcom/google/android/gms/common/api/zzd;
.super Ljava/lang/Object;


# instance fields
.field private zzaAM:Lcom/google/android/gms/internal/zzbem;

.field private zzrM:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Looper;)Lcom/google/android/gms/common/api/zzd;
    .locals 1

    const-string/jumbo v0, "Looper must not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/zzd;->zzrM:Landroid/os/Looper;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbem;)Lcom/google/android/gms/common/api/zzd;
    .locals 1

    const-string/jumbo v0, "StatusExceptionMapper must not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/zzd;->zzaAM:Lcom/google/android/gms/internal/zzbem;

    return-object p0
.end method

.method public final zzpj()Lcom/google/android/gms/common/api/GoogleApi$zza;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzaAM:Lcom/google/android/gms/internal/zzbem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbas;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbas;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzaAM:Lcom/google/android/gms/internal/zzbem;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzrM:Landroid/os/Looper;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzrM:Landroid/os/Looper;

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApi$zza;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzaAM:Lcom/google/android/gms/internal/zzbem;

    iget-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzrM:Landroid/os/Looper;

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/google/android/gms/common/api/GoogleApi$zza;-><init>(Lcom/google/android/gms/internal/zzbem;Landroid/accounts/Account;Landroid/os/Looper;Lcom/google/android/gms/common/api/zzc;)V

    return-object v0

    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzrM:Landroid/os/Looper;

    goto :goto_0
.end method
