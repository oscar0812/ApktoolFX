.class final Lcom/google/android/gms/iid/zzf;
.super Landroid/os/Handler;


# instance fields
.field private synthetic zzbhn:Lcom/google/android/gms/iid/zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/iid/zze;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/iid/zzf;->zzbhn:Lcom/google/android/gms/iid/zze;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/iid/zzf;->zzbhn:Lcom/google/android/gms/iid/zze;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/iid/zze;->zzc(Landroid/os/Message;)V

    return-void
.end method
