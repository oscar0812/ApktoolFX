.class final Lcom/google/android/gms/iid/zzg;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic zzbhn:Lcom/google/android/gms/iid/zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/iid/zze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/iid/zzg;->zzbhn:Lcom/google/android/gms/iid/zze;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "InstanceID/Rpc"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InstanceID/Rpc"

    const-string/jumbo v1, "Received GSF callback via dynamic receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/iid/zzg;->zzbhn:Lcom/google/android/gms/iid/zze;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/iid/zze;->zzi(Landroid/content/Intent;)V

    return-void
.end method
