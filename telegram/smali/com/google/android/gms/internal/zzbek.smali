.class final Lcom/google/android/gms/internal/zzbek;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzaDx:Lcom/google/android/gms/internal/zzctx;

.field private synthetic zzaEY:Lcom/google/android/gms/internal/zzbej;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbej;Lcom/google/android/gms/internal/zzctx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbek;->zzaEY:Lcom/google/android/gms/internal/zzbej;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbek;->zzaDx:Lcom/google/android/gms/internal/zzctx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbek;->zzaEY:Lcom/google/android/gms/internal/zzbej;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbek;->zzaDx:Lcom/google/android/gms/internal/zzctx;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbej;->zza(Lcom/google/android/gms/internal/zzbej;Lcom/google/android/gms/internal/zzctx;)V

    return-void
.end method
