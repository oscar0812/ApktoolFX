.class final Lcom/google/android/gms/internal/zzcii;
.super Lcom/google/android/gms/internal/zzcer;


# instance fields
.field private synthetic zzbua:Lcom/google/android/gms/internal/zzcid;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcid;Lcom/google/android/gms/internal/zzcgl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcii;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcer;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcii;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcid;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Tasks have been queued for a long time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    return-void
.end method
