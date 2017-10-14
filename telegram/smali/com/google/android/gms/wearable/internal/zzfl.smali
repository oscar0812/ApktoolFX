.class final Lcom/google/android/gms/wearable/internal/zzfl;
.super Lcom/google/android/gms/wearable/internal/zzfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzfc",
        "<",
        "Lcom/google/android/gms/wearable/DataApi$DataItemResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbaz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbaz",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$DataItemResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/zzfc;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/wearable/internal/zzda;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbs;

    iget v1, p1, Lcom/google/android/gms/wearable/internal/zzda;->statusCode:I

    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/zzev;->zzaY(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/wearable/internal/zzda;->zzbSP:Lcom/google/android/gms/wearable/internal/zzcb;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wearable/internal/zzbs;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/DataItem;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzfl;->zzR(Ljava/lang/Object;)V

    return-void
.end method
