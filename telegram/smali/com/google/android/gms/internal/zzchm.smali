.class final Lcom/google/android/gms/internal/zzchm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$enabled:Z

.field private synthetic zzbtt:Lcom/google/android/gms/internal/zzchl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzchl;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzchm;->zzbtt:Lcom/google/android/gms/internal/zzchl;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzchm;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchm;->zzbtt:Lcom/google/android/gms/internal/zzchl;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzchm;->val$enabled:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzchl;->zza(Lcom/google/android/gms/internal/zzchl;Z)V

    return-void
.end method
