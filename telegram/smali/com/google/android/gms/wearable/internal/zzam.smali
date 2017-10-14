.class final Lcom/google/android/gms/wearable/internal/zzam;
.super Lcom/google/android/gms/wearable/internal/zzn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzn",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzKc:I

.field private synthetic zzbSk:Lcom/google/android/gms/wearable/internal/zzak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzak;Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzam;->zzbSk:Lcom/google/android/gms/wearable/internal/zzak;

    iput p3, p0, Lcom/google/android/gms/wearable/internal/zzam;->zzKc:I

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

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzam;->zzbSk:Lcom/google/android/gms/wearable/internal/zzak;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzak;->zza(Lcom/google/android/gms/wearable/internal/zzak;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/wearable/internal/zzam;->zzKc:I

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/internal/zzfw;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzdn;

    new-instance v3, Lcom/google/android/gms/wearable/internal/zzfe;

    invoke-direct {v3, p0}, Lcom/google/android/gms/wearable/internal/zzfe;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-interface {v0, v3, v1, v2}, Lcom/google/android/gms/wearable/internal/zzdn;->zzb(Lcom/google/android/gms/wearable/internal/zzdi;Ljava/lang/String;I)V

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    return-object p1
.end method
