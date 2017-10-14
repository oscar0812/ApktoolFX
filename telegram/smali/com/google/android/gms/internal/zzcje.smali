.class final Lcom/google/android/gms/internal/zzcje;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbot:J

.field private synthetic zzbuu:Lcom/google/android/gms/internal/zzcja;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcja;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcje;->zzbuu:Lcom/google/android/gms/internal/zzcja;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzcje;->zzbot:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcje;->zzbuu:Lcom/google/android/gms/internal/zzcja;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcje;->zzbot:J

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzcja;->zzb(Lcom/google/android/gms/internal/zzcja;J)V

    return-void
.end method
