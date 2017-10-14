.class final Lcom/google/android/gms/wearable/internal/zzdt;
.super Lcom/google/android/gms/wearable/internal/zzn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzn",
        "<",
        "Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbKQ:[B

.field private synthetic zzbST:Ljava/lang/String;

.field private synthetic zzbSe:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzds;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzdt;->zzbSe:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/zzdt;->zzbST:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wearable/internal/zzdt;->zzbKQ:[B

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/internal/zzn;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzfw;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzdt;->zzbSe:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzdt;->zzbST:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/zzdt;->zzbKQ:[B

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/internal/zzfw;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzdn;

    new-instance v4, Lcom/google/android/gms/wearable/internal/zzfu;

    invoke-direct {v4, p0}, Lcom/google/android/gms/wearable/internal/zzfu;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/google/android/gms/wearable/internal/zzdn;->zza(Lcom/google/android/gms/wearable/internal/zzdi;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzdw;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/zzdw;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    return-object v0
.end method
