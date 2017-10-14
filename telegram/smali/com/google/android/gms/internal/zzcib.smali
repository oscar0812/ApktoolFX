.class final Lcom/google/android/gms/internal/zzcib;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbtQ:Lcom/google/android/gms/internal/zzchz;

.field private synthetic zzbtR:Lcom/google/android/gms/internal/zzcic;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzchz;Lcom/google/android/gms/internal/zzcic;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcib;->zzbtQ:Lcom/google/android/gms/internal/zzchz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcib;->zzbtR:Lcom/google/android/gms/internal/zzcic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcib;->zzbtQ:Lcom/google/android/gms/internal/zzchz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcib;->zzbtR:Lcom/google/android/gms/internal/zzcic;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzchz;->zza(Lcom/google/android/gms/internal/zzchz;Lcom/google/android/gms/internal/zzcic;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcib;->zzbtQ:Lcom/google/android/gms/internal/zzchz;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzchz;->zzbtE:Lcom/google/android/gms/internal/zzcic;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcib;->zzbtQ:Lcom/google/android/gms/internal/zzchz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchz;->zzww()Lcom/google/android/gms/internal/zzcid;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcid;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    return-void
.end method
