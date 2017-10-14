.class public final Lcom/google/android/gms/internal/zzbao;
.super Lcom/google/android/gms/internal/zzbam;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/google/android/gms/internal/zzbay",
        "<+",
        "Lcom/google/android/gms/common/api/Result;",
        "Lcom/google/android/gms/common/api/Api$zzb;",
        ">;>",
        "Lcom/google/android/gms/internal/zzbam;"
    }
.end annotation


# instance fields
.field private zzaBt:Lcom/google/android/gms/internal/zzbay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/zzbay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbam;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbao;->zzaBt:Lcom/google/android/gms/internal/zzbay;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzbbt;Z)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/zzbbt;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbao;->zzaBt:Lcom/google/android/gms/internal/zzbay;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/zzbbt;->zza(Lcom/google/android/gms/internal/zzbbe;Z)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbdd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdd",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbao;->zzaBt:Lcom/google/android/gms/internal/zzbay;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbdd;->zzpJ()Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbay;->zzb(Lcom/google/android/gms/common/api/Api$zzb;)V

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbao;->zzaBt:Lcom/google/android/gms/internal/zzbay;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbay;->zzr(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
