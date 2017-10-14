.class final Lcom/google/android/gms/internal/zzcis;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$name:Landroid/content/ComponentName;

.field private synthetic zzbuk:Lcom/google/android/gms/internal/zzciq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzciq;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcis;->zzbuk:Lcom/google/android/gms/internal/zzciq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcis;->val$name:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcis;->zzbuk:Lcom/google/android/gms/internal/zzciq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcis;->val$name:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcid;->zza(Lcom/google/android/gms/internal/zzcid;Landroid/content/ComponentName;)V

    return-void
.end method
