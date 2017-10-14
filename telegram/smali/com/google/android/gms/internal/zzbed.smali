.class public final Lcom/google/android/gms/internal/zzbed;
.super Ljava/lang/Object;


# instance fields
.field public final zzaER:Lcom/google/android/gms/internal/zzbam;

.field public final zzaES:I

.field public final zzaET:Lcom/google/android/gms/common/api/GoogleApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/GoogleApi",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbam;ILcom/google/android/gms/common/api/GoogleApi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbam;",
            "I",
            "Lcom/google/android/gms/common/api/GoogleApi",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbed;->zzaER:Lcom/google/android/gms/internal/zzbam;

    iput p2, p0, Lcom/google/android/gms/internal/zzbed;->zzaES:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbed;->zzaET:Lcom/google/android/gms/common/api/GoogleApi;

    return-void
.end method
