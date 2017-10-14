.class final Lcom/google/android/gms/internal/zzcfv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbrg:Z

.field private synthetic zzbrh:Lcom/google/android/gms/internal/zzcfu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcfu;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfv;->zzbrh:Lcom/google/android/gms/internal/zzcfu;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzcfv;->zzbrg:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfv;->zzbrh:Lcom/google/android/gms/internal/zzcfu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcfu;->zza(Lcom/google/android/gms/internal/zzcfu;)Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcfv;->zzbrg:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgl;->zzam(Z)V

    return-void
.end method
