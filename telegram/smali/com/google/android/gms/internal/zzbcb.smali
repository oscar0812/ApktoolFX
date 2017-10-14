.class final Lcom/google/android/gms/internal/zzbcb;
.super Lcom/google/android/gms/internal/zzbcy;


# instance fields
.field private synthetic zzaDb:Lcom/google/android/gms/internal/zzbca;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbca;Lcom/google/android/gms/internal/zzbcw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbcb;->zzaDb:Lcom/google/android/gms/internal/zzbca;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbcy;-><init>(Lcom/google/android/gms/internal/zzbcw;)V

    return-void
.end method


# virtual methods
.method public final zzpV()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcb;->zzaDb:Lcom/google/android/gms/internal/zzbca;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbca;->onConnectionSuspended(I)V

    return-void
.end method
