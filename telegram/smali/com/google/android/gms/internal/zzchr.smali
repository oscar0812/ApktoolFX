.class final Lcom/google/android/gms/internal/zzchr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbtt:Lcom/google/android/gms/internal/zzchl;

.field private synthetic zzbtx:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzchl;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzchr;->zzbtt:Lcom/google/android/gms/internal/zzchl;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzchr;->zzbtx:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchr;->zzbtt:Lcom/google/android/gms/internal/zzchl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfw;->zzbrx:Lcom/google/android/gms/internal/zzcfz;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzchr;->zzbtx:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzcfz;->set(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchr;->zzbtt:Lcom/google/android/gms/internal/zzchl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyC()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Minimum session duration set"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzchr;->zzbtx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
