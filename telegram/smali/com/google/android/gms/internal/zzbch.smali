.class final Lcom/google/android/gms/internal/zzbch;
.super Lcom/google/android/gms/internal/zzbcy;


# instance fields
.field private synthetic zzaDs:Lcom/google/android/gms/common/ConnectionResult;

.field private synthetic zzaDt:Lcom/google/android/gms/internal/zzbcg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbcg;Lcom/google/android/gms/internal/zzbcw;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbch;->zzaDt:Lcom/google/android/gms/internal/zzbcg;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbch;->zzaDs:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbcy;-><init>(Lcom/google/android/gms/internal/zzbcw;)V

    return-void
.end method


# virtual methods
.method public final zzpV()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbch;->zzaDt:Lcom/google/android/gms/internal/zzbcg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbcg;->zzaDp:Lcom/google/android/gms/internal/zzbcd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbch;->zzaDs:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbcd;->zza(Lcom/google/android/gms/internal/zzbcd;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
