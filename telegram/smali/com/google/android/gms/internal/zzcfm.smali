.class final Lcom/google/android/gms/internal/zzcfm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbqV:Ljava/lang/String;

.field private synthetic zzbqW:Lcom/google/android/gms/internal/zzcfl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcfl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfm;->zzbqW:Lcom/google/android/gms/internal/zzcfl;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcfm;->zzbqV:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfm;->zzbqW:Lcom/google/android/gms/internal/zzcfl;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfl;->zzboe:Lcom/google/android/gms/internal/zzcgl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfw;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfm;->zzbqW:Lcom/google/android/gms/internal/zzcfl;

    const/4 v1, 0x6

    const-string/jumbo v2, "Persisted config not initialized. Not logging error/warn"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcfl;->zzk(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfw;->zzbrj:Lcom/google/android/gms/internal/zzcga;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcfm;->zzbqV:Ljava/lang/String;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcga;->zzf(Ljava/lang/String;J)V

    goto :goto_0
.end method
