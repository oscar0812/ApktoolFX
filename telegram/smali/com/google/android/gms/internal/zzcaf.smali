.class public final Lcom/google/android/gms/internal/zzcaf;
.super Ljava/lang/Object;


# static fields
.field private static zzaXH:Lcom/google/android/gms/internal/zzcaf;


# instance fields
.field private final zzaXI:Lcom/google/android/gms/internal/zzcaa;

.field private final zzaXJ:Lcom/google/android/gms/internal/zzcab;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzcaf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcaf;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/zzcaf;

    monitor-enter v1

    :try_start_0
    sput-object v0, Lcom/google/android/gms/internal/zzcaf;->zzaXH:Lcom/google/android/gms/internal/zzcaf;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzcaa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcaa;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcaf;->zzaXI:Lcom/google/android/gms/internal/zzcaa;

    new-instance v0, Lcom/google/android/gms/internal/zzcab;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcab;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcaf;->zzaXJ:Lcom/google/android/gms/internal/zzcab;

    return-void
.end method

.method private static zzua()Lcom/google/android/gms/internal/zzcaf;
    .locals 2

    const-class v1, Lcom/google/android/gms/internal/zzcaf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzcaf;->zzaXH:Lcom/google/android/gms/internal/zzcaf;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static zzub()Lcom/google/android/gms/internal/zzcaa;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzcaf;->zzua()Lcom/google/android/gms/internal/zzcaf;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcaf;->zzaXI:Lcom/google/android/gms/internal/zzcaa;

    return-object v0
.end method

.method public static zzuc()Lcom/google/android/gms/internal/zzcab;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzcaf;->zzua()Lcom/google/android/gms/internal/zzcaf;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcaf;->zzaXJ:Lcom/google/android/gms/internal/zzcab;

    return-object v0
.end method
