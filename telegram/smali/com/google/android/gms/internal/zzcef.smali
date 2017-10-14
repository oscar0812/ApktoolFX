.class final Lcom/google/android/gms/internal/zzcef;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbot:J

.field private synthetic zzbou:Lcom/google/android/gms/internal/zzcec;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcec;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcef;->zzbou:Lcom/google/android/gms/internal/zzcec;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzcef;->zzbot:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcef;->zzbou:Lcom/google/android/gms/internal/zzcec;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcef;->zzbot:J

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzcec;->zza(Lcom/google/android/gms/internal/zzcec;J)V

    return-void
.end method
