.class final Lcom/google/android/gms/internal/zzcix;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbrM:Lcom/google/android/gms/internal/zzcgl;

.field final synthetic zzbrP:Lcom/google/android/gms/internal/zzcfl;

.field final synthetic zzbun:Ljava/lang/Integer;

.field final synthetic zzbuo:Landroid/app/job/JobParameters;

.field final synthetic zzbup:Lcom/google/android/gms/internal/zzciw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzciw;Lcom/google/android/gms/internal/zzcgl;Ljava/lang/Integer;Lcom/google/android/gms/internal/zzcfl;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcix;->zzbup:Lcom/google/android/gms/internal/zzciw;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcix;->zzbrM:Lcom/google/android/gms/internal/zzcgl;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcix;->zzbun:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcix;->zzbrP:Lcom/google/android/gms/internal/zzcfl;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcix;->zzbuo:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcix;->zzbrM:Lcom/google/android/gms/internal/zzcgl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgl;->zzze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcix;->zzbrM:Lcom/google/android/gms/internal/zzcgl;

    new-instance v1, Lcom/google/android/gms/internal/zzciy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzciy;-><init>(Lcom/google/android/gms/internal/zzcix;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgl;->zzl(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcix;->zzbrM:Lcom/google/android/gms/internal/zzcgl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgl;->zzza()V

    return-void
.end method
