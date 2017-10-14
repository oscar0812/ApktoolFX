.class final Lcom/google/android/gms/internal/zzcia;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbtN:Z

.field private synthetic zzbtO:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

.field private synthetic zzbtP:Lcom/google/android/gms/internal/zzcic;

.field private synthetic zzbtQ:Lcom/google/android/gms/internal/zzchz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzchz;ZLcom/google/android/gms/measurement/AppMeasurement$zzb;Lcom/google/android/gms/internal/zzcic;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcia;->zzbtQ:Lcom/google/android/gms/internal/zzchz;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzcia;->zzbtN:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcia;->zzbtO:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcia;->zzbtP:Lcom/google/android/gms/internal/zzcic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcia;->zzbtN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcia;->zzbtQ:Lcom/google/android/gms/internal/zzchz;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzchz;->zzbtE:Lcom/google/android/gms/internal/zzcic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcia;->zzbtQ:Lcom/google/android/gms/internal/zzchz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcia;->zzbtQ:Lcom/google/android/gms/internal/zzchz;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzchz;->zzbtE:Lcom/google/android/gms/internal/zzcic;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzchz;->zza(Lcom/google/android/gms/internal/zzchz;Lcom/google/android/gms/internal/zzcic;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcia;->zzbtO:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcia;->zzbtO:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iget-wide v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzbol:J

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcia;->zzbtP:Lcom/google/android/gms/internal/zzcic;

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzcic;->zzbol:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcia;->zzbtO:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iget-object v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzbok:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcia;->zzbtP:Lcom/google/android/gms/internal/zzcic;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcic;->zzbok:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcjl;->zzR(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcia;->zzbtO:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iget-object v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzboj:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcia;->zzbtP:Lcom/google/android/gms/internal/zzcic;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcic;->zzboj:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcjl;->zzR(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcia;->zzbtP:Lcom/google/android/gms/internal/zzcic;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzchz;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcia;->zzbtO:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcia;->zzbtO:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iget-object v1, v1, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzboj:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "_pn"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcia;->zzbtO:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iget-object v2, v2, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzboj:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v1, "_pc"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcia;->zzbtO:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iget-object v2, v2, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzbok:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "_pi"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcia;->zzbtO:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iget-wide v2, v2, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzbol:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcia;->zzbtQ:Lcom/google/android/gms/internal/zzchz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchz;->zzwt()Lcom/google/android/gms/internal/zzchl;

    move-result-object v1

    const-string/jumbo v2, "auto"

    const-string/jumbo v3, "_vs"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzchl;->zzd(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcia;->zzbtQ:Lcom/google/android/gms/internal/zzchz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcia;->zzbtP:Lcom/google/android/gms/internal/zzcic;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzchz;->zzbtE:Lcom/google/android/gms/internal/zzcic;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcia;->zzbtQ:Lcom/google/android/gms/internal/zzchz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchz;->zzww()Lcom/google/android/gms/internal/zzcid;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcia;->zzbtP:Lcom/google/android/gms/internal/zzcic;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcid;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
