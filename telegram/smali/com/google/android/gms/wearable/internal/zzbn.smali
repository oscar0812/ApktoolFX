.class final Lcom/google/android/gms/wearable/internal/zzbn;
.super Lcom/google/android/gms/wearable/internal/zzn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzn",
        "<",
        "Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbSx:I

.field private synthetic zzbzR:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzbi;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;I)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbzR:Landroid/net/Uri;

    iput p4, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbSx:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/internal/zzn;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzfw;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbzR:Landroid/net/Uri;

    iget v2, p0, Lcom/google/android/gms/wearable/internal/zzbn;->zzbSx:I

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/internal/zzfw;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzdn;

    new-instance v3, Lcom/google/android/gms/wearable/internal/zzff;

    invoke-direct {v3, p0}, Lcom/google/android/gms/wearable/internal/zzff;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-interface {v0, v3, v1, v2}, Lcom/google/android/gms/wearable/internal/zzdn;->zzb(Lcom/google/android/gms/wearable/internal/zzdi;Landroid/net/Uri;I)V

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbt;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/zzbt;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    return-object v0
.end method
