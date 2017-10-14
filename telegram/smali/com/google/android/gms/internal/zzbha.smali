.class public final Lcom/google/android/gms/internal/zzbha;
.super Ljava/lang/Object;


# static fields
.field private static zzaKk:Lcom/google/android/gms/internal/zzbha;


# instance fields
.field private zzaKj:Lcom/google/android/gms/internal/zzbgz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbha;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbha;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbha;->zzaKk:Lcom/google/android/gms/internal/zzbha;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbha;->zzaKj:Lcom/google/android/gms/internal/zzbgz;

    return-void
.end method

.method private final declared-synchronized zzaO(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbgz;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbha;->zzaKj:Lcom/google/android/gms/internal/zzbgz;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/zzbgz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbgz;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbha;->zzaKj:Lcom/google/android/gms/internal/zzbgz;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbha;->zzaKj:Lcom/google/android/gms/internal/zzbgz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static zzaP(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbgz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbha;->zzaKk:Lcom/google/android/gms/internal/zzbha;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbha;->zzaO(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbgz;

    move-result-object v0

    return-object v0
.end method
