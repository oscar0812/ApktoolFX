.class final Lcom/google/android/gms/internal/zzciv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbuk:Lcom/google/android/gms/internal/zzciq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzciq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzciv;->zzbuk:Lcom/google/android/gms/internal/zzciq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciv;->zzbuk:Lcom/google/android/gms/internal/zzciq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcid;->zza(Lcom/google/android/gms/internal/zzcid;Lcom/google/android/gms/internal/zzcfd;)Lcom/google/android/gms/internal/zzcfd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciv;->zzbuk:Lcom/google/android/gms/internal/zzciq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcid;->zzb(Lcom/google/android/gms/internal/zzcid;)V

    return-void
.end method
