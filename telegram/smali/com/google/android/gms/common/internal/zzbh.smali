.class public final Lcom/google/android/gms/common/internal/zzbh;
.super Ljava/lang/Object;


# static fields
.field private static final zzaIi:Lcom/google/android/gms/common/internal/zzbn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/zzbi;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzbi;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzbh;->zzaIi:Lcom/google/android/gms/common/internal/zzbn;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/api/Response;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/common/api/Response",
            "<TR;>;>(",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TR;>;TT;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/internal/zzbk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/zzbk;-><init>(Lcom/google/android/gms/common/api/Response;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzbh;->zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbm;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbm;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TR;>;",
            "Lcom/google/android/gms/common/internal/zzbm",
            "<TR;TT;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/internal/zzbh;->zzaIi:Lcom/google/android/gms/common/internal/zzbn;

    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v2, Lcom/google/android/gms/common/internal/zzbj;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/common/internal/zzbj;-><init>(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/internal/zzbm;Lcom/google/android/gms/common/internal/zzbn;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/PendingResult;->zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/common/api/PendingResult;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TR;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/internal/zzbl;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzbl;-><init>()V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzbh;->zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbm;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
