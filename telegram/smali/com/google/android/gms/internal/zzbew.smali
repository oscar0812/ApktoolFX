.class final Lcom/google/android/gms/internal/zzbew;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbex;


# instance fields
.field private synthetic zzaFn:Lcom/google/android/gms/internal/zzbev;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbev;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbew;->zzaFn:Lcom/google/android/gms/internal/zzbev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/zzbbe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbbe",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbew;->zzaFn:Lcom/google/android/gms/internal/zzbev;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbev;->zzaFl:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbbe;->zzpo()Ljava/lang/Integer;

    return-void
.end method
