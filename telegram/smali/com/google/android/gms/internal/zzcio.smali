.class final Lcom/google/android/gms/internal/zzcio;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbtk:Lcom/google/android/gms/internal/zzcji;

.field private synthetic zzbua:Lcom/google/android/gms/internal/zzcid;

.field private synthetic zzbue:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcid;ZLcom/google/android/gms/internal/zzcji;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcio;->zzbua:Lcom/google/android/gms/internal/zzcid;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzcio;->zzbue:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcio;->zzbtk:Lcom/google/android/gms/internal/zzcji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcio;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcid;->zzd(Lcom/google/android/gms/internal/zzcid;)Lcom/google/android/gms/internal/zzcfd;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcio;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcid;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Discarding data. Failed to set user attribute"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcio;->zzbua:Lcom/google/android/gms/internal/zzcid;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcio;->zzbue:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/zzcid;->zza(Lcom/google/android/gms/internal/zzcfd;Lcom/google/android/gms/common/internal/safeparcel/zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcio;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcid;->zze(Lcom/google/android/gms/internal/zzcid;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcio;->zzbtk:Lcom/google/android/gms/internal/zzcji;

    goto :goto_1
.end method
