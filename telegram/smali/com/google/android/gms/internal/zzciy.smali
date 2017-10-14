.class final Lcom/google/android/gms/internal/zzciy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbuq:Lcom/google/android/gms/internal/zzcix;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcix;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzciy;->zzbuq:Lcom/google/android/gms/internal/zzcix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciy;->zzbuq:Lcom/google/android/gms/internal/zzcix;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcix;->zzbun:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciy;->zzbuq:Lcom/google/android/gms/internal/zzcix;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcix;->zzbup:Lcom/google/android/gms/internal/zzciw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzciw;->zza(Lcom/google/android/gms/internal/zzciw;)Lcom/google/android/gms/internal/zzciz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzciy;->zzbuq:Lcom/google/android/gms/internal/zzcix;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcix;->zzbun:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzciz;->callServiceStopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxE()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciy;->zzbuq:Lcom/google/android/gms/internal/zzcix;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcix;->zzbrP:Lcom/google/android/gms/internal/zzcfl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Local AppMeasurementService processed last upload request. StartId"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzciy;->zzbuq:Lcom/google/android/gms/internal/zzcix;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcix;->zzbun:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxE()Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciy;->zzbuq:Lcom/google/android/gms/internal/zzcix;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcix;->zzbrP:Lcom/google/android/gms/internal/zzcfl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "AppMeasurementJobService processed last upload request."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciy;->zzbuq:Lcom/google/android/gms/internal/zzcix;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcix;->zzbup:Lcom/google/android/gms/internal/zzciw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzciw;->zza(Lcom/google/android/gms/internal/zzciw;)Lcom/google/android/gms/internal/zzciz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzciy;->zzbuq:Lcom/google/android/gms/internal/zzcix;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcix;->zzbuo:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzciz;->zza(Landroid/app/job/JobParameters;Z)V

    goto :goto_0
.end method
