.class final Lcom/google/android/gms/internal/zzcjh;
.super Lcom/google/android/gms/internal/zzcer;


# instance fields
.field private synthetic zzbux:Lcom/google/android/gms/internal/zzcjg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcjg;Lcom/google/android/gms/internal/zzcgl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjh;->zzbux:Lcom/google/android/gms/internal/zzcjg;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcer;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjh;->zzbux:Lcom/google/android/gms/internal/zzcjg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjg;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Sending upload intent from DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjh;->zzbux:Lcom/google/android/gms/internal/zzcjg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcjg;->zza(Lcom/google/android/gms/internal/zzcjg;)V

    return-void
.end method
