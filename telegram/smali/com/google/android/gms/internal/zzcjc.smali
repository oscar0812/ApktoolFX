.class final Lcom/google/android/gms/internal/zzcjc;
.super Lcom/google/android/gms/internal/zzcer;


# instance fields
.field private synthetic zzbuu:Lcom/google/android/gms/internal/zzcja;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcja;Lcom/google/android/gms/internal/zzcgl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjc;->zzbuu:Lcom/google/android/gms/internal/zzcja;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcer;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjc;->zzbuu:Lcom/google/android/gms/internal/zzcja;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcja;->zza(Lcom/google/android/gms/internal/zzcja;)V

    return-void
.end method
