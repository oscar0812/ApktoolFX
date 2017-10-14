.class final Lcom/google/android/gms/internal/gp;
.super Lcom/google/android/gms/wallet/Wallet$zzb;


# instance fields
.field private synthetic val$requestCode:I

.field private synthetic zzbQB:Ljava/lang/String;

.field private synthetic zzbQC:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/gp;->zzbQB:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/gp;->zzbQC:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/gp;->val$requestCode:I

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gp;->zza(Lcom/google/android/gms/internal/gu;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/gu;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gp;->zzbQB:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/gp;->zzbQC:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/gp;->val$requestCode:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/gu;->zzc(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gp;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
