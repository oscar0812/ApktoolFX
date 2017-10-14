.class public final Lcom/google/android/gms/internal/zzbef;
.super Ljava/lang/Object;


# instance fields
.field public final zzaBu:Lcom/google/android/gms/internal/zzbee;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbee",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "*>;"
        }
    .end annotation
.end field

.field public final zzaBv:Lcom/google/android/gms/internal/zzbey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbey",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbee;Lcom/google/android/gms/internal/zzbey;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/zzbee;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/zzbey;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbee",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "*>;",
            "Lcom/google/android/gms/internal/zzbey",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbef;->zzaBu:Lcom/google/android/gms/internal/zzbee;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbef;->zzaBv:Lcom/google/android/gms/internal/zzbey;

    return-void
.end method
