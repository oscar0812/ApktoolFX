.class final Lcom/google/android/gms/internal/zzbck;
.super Lcom/google/android/gms/internal/zzctp;


# instance fields
.field private final zzaDq:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzbcd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbcd;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzctp;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbck;->zzaDq:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/zzctx;)V
    .locals 3
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbck;->zzaDq:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbcd;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzbcd;->zzd(Lcom/google/android/gms/internal/zzbcd;)Lcom/google/android/gms/internal/zzbcx;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbcl;

    invoke-direct {v2, p0, v0, v0, p1}, Lcom/google/android/gms/internal/zzbcl;-><init>(Lcom/google/android/gms/internal/zzbck;Lcom/google/android/gms/internal/zzbcw;Lcom/google/android/gms/internal/zzbcd;Lcom/google/android/gms/internal/zzctx;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzbcx;->zza(Lcom/google/android/gms/internal/zzbcy;)V

    goto :goto_0
.end method
