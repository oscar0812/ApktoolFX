.class final Lcom/google/android/gms/internal/zzbcq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzad;


# instance fields
.field private synthetic zzaDN:Lcom/google/android/gms/internal/zzbcp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbcp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbcq;->zzaDN:Lcom/google/android/gms/internal/zzbcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcq;->zzaDN:Lcom/google/android/gms/internal/zzbcp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbcp;->isConnected()Z

    move-result v0

    return v0
.end method

.method public final zzoC()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
