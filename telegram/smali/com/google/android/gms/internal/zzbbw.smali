.class public Lcom/google/android/gms/internal/zzbbw;
.super Lcom/google/android/gms/internal/zzbba;


# instance fields
.field private zzaAN:Lcom/google/android/gms/internal/zzbdb;

.field private final zzaCW:Lcom/google/android/gms/common/util/zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/util/zza",
            "<",
            "Lcom/google/android/gms/internal/zzbat",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbdt;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbba;-><init>(Lcom/google/android/gms/internal/zzbdt;)V

    new-instance v0, Lcom/google/android/gms/common/util/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/util/zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbbw;->zzaCW:Lcom/google/android/gms/common/util/zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbw;->zzaEG:Lcom/google/android/gms/internal/zzbdt;

    const-string/jumbo v1, "ConnectionlessLifecycleHelper"

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/internal/zzbdt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbds;)V

    return-void
.end method

.method public static zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzbdb;Lcom/google/android/gms/internal/zzbat;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/internal/zzbdb;",
            "Lcom/google/android/gms/internal/zzbat",
            "<*>;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbbw;->zzn(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzbdt;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbbw;->zzn(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzbdt;

    move-result-object v1

    const-string/jumbo v0, "ConnectionlessLifecycleHelper"

    const-class v2, Lcom/google/android/gms/internal/zzbbw;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzbdt;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzbds;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbbw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbbw;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbbw;-><init>(Lcom/google/android/gms/internal/zzbdt;)V

    :cond_0
    iput-object p1, v0, Lcom/google/android/gms/internal/zzbbw;->zzaAN:Lcom/google/android/gms/internal/zzbdb;

    const-string/jumbo v1, "ApiKey cannot be null"

    invoke-static {p2, v1}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzbbw;->zzaCW:Lcom/google/android/gms/common/util/zza;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/util/zza;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbbw;)V

    return-void
.end method

.method private final zzpS()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbw;->zzaCW:Lcom/google/android/gms/common/util/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/common/util/zza;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbw;->zzaAN:Lcom/google/android/gms/internal/zzbdb;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbbw;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbba;->onResume()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbbw;->zzpS()V

    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbba;->onStart()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbbw;->zzpS()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbba;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbw;->zzaAN:Lcom/google/android/gms/internal/zzbdb;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzbdb;->zzb(Lcom/google/android/gms/internal/zzbbw;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbw;->zzaAN:Lcom/google/android/gms/internal/zzbdb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method final zzpR()Lcom/google/android/gms/common/util/zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/util/zza",
            "<",
            "Lcom/google/android/gms/internal/zzbat",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbw;->zzaCW:Lcom/google/android/gms/common/util/zza;

    return-object v0
.end method

.method protected final zzps()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbw;->zzaAN:Lcom/google/android/gms/internal/zzbdb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbdb;->zzps()V

    return-void
.end method
