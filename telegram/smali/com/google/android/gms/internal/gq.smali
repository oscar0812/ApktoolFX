.class final Lcom/google/android/gms/internal/gq;
.super Lcom/google/android/gms/wallet/Wallet$zzb;


# instance fields
.field private synthetic zzbQD:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/gq;->zzbQD:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/wallet/Wallet$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/gu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gq;->zza(Lcom/google/android/gms/internal/gu;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/gu;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gq;->zzbQD:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gu;->zza(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gq;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
