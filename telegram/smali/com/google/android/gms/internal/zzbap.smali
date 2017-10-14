.class public final Lcom/google/android/gms/internal/zzbap;
.super Lcom/google/android/gms/internal/zzban;


# instance fields
.field private zzaBu:Lcom/google/android/gms/internal/zzbee;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbee",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "*>;"
        }
    .end annotation
.end field

.field private zzaBv:Lcom/google/android/gms/internal/zzbey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbey",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbef;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbef;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzban;-><init>(ILcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbef;->zzaBu:Lcom/google/android/gms/internal/zzbee;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbap;->zzaBu:Lcom/google/android/gms/internal/zzbee;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbef;->zzaBv:Lcom/google/android/gms/internal/zzbey;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbap;->zzaBv:Lcom/google/android/gms/internal/zzbey;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/zzbbt;Z)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/zzbbt;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzbdd;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdd",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbap;->zzaBu:Lcom/google/android/gms/internal/zzbee;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbdd;->zzpJ()Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbap;->zzalE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbee;->zzb(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbap;->zzaBu:Lcom/google/android/gms/internal/zzbee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbee;->zzqG()Lcom/google/android/gms/internal/zzbdy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbdd;->zzqs()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbap;->zzaBu:Lcom/google/android/gms/internal/zzbee;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbee;->zzqG()Lcom/google/android/gms/internal/zzbdy;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbef;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbap;->zzaBu:Lcom/google/android/gms/internal/zzbee;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbap;->zzaBv:Lcom/google/android/gms/internal/zzbey;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/zzbef;-><init>(Lcom/google/android/gms/internal/zzbee;Lcom/google/android/gms/internal/zzbey;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final bridge synthetic zzp(Lcom/google/android/gms/common/api/Status;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzban;->zzp(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
