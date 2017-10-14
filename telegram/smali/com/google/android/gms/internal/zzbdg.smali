.class final Lcom/google/android/gms/internal/zzbdg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzaEv:Lcom/google/android/gms/internal/zzbdd;

.field private synthetic zzaEw:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbdd;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbdg;->zzaEv:Lcom/google/android/gms/internal/zzbdd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbdg;->zzaEw:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdg;->zzaEv:Lcom/google/android/gms/internal/zzbdd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdg;->zzaEw:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdd;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
