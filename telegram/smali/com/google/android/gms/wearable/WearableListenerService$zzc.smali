.class final Lcom/google/android/gms/wearable/WearableListenerService$zzc;
.super Lcom/google/android/gms/wearable/internal/zzdl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/WearableListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zzc"
.end annotation


# instance fields
.field final synthetic zzbRx:Lcom/google/android/gms/wearable/WearableListenerService;

.field private volatile zzbRy:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbRx:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/zzdl;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbRy:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService;Lcom/google/android/gms/wearable/zzk;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc;-><init>(Lcom/google/android/gms/wearable/WearableListenerService;)V

    return-void
.end method

.method private final zza(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6

    const/4 v4, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string/jumbo v2, "WearableLS"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WearableLS"

    const-string/jumbo v3, "%s: %s %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v0

    iget-object v5, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbRx:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {v5}, Lcom/google/android/gms/wearable/WearableListenerService;->zza(Lcom/google/android/gms/wearable/WearableListenerService;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbRy:I

    if-ne v2, v3, :cond_1

    move v2, v1

    :goto_0
    if-nez v2, :cond_4

    :goto_1
    return v0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbRx:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {v3}, Lcom/google/android/gms/wearable/internal/zzgh;->zzbz(Landroid/content/Context;)Lcom/google/android/gms/wearable/internal/zzgh;

    move-result-object v3

    const-string/jumbo v4, "com.google.android.wearable.app.cn"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/wearable/internal/zzgh;->zzgm(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbRx:Lcom/google/android/gms/wearable/WearableListenerService;

    const-string/jumbo v4, "com.google.android.wearable.app.cn"

    invoke-static {v3, v2, v4}, Lcom/google/android/gms/common/util/zzw;->zzb(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput v2, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbRy:I

    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbRx:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {v3, v2}, Lcom/google/android/gms/common/util/zzw;->zzf(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_3

    iput v2, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbRy:I

    move v2, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "WearableLS"

    const/16 v4, 0x39

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Caller is not GooglePlayServices; caller UID: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbRx:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {v2}, Lcom/google/android/gms/wearable/WearableListenerService;->zzc(Lcom/google/android/gms/wearable/WearableListenerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbRx:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {v3}, Lcom/google/android/gms/wearable/WearableListenerService;->zzd(Lcom/google/android/gms/wearable/WearableListenerService;)Z

    move-result v3

    if-eqz v3, :cond_5

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbRx:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->zze(Lcom/google/android/gms/wearable/WearableListenerService;)Lcom/google/android/gms/wearable/WearableListenerService$zzb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzb;->post(Ljava/lang/Runnable;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final onConnectedNodes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzeg;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/wearable/zzp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/zzp;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zzc;Ljava/util/List;)V

    const-string/jumbo v1, "onConnectedNodes"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zza(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzS(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 6

    new-instance v0, Lcom/google/android/gms/wearable/zzl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/zzl;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zzc;Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_0
    const-string/jumbo v1, "onDataItemChanged"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", rows="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zza(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/wearable/internal/zzaa;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/zzq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/zzq;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zzc;Lcom/google/android/gms/wearable/internal/zzaa;)V

    const-string/jumbo v1, "onConnectedCapabilityChanged"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zza(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/wearable/internal/zzai;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/zzt;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/zzt;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zzc;Lcom/google/android/gms/wearable/internal/zzai;)V

    const-string/jumbo v1, "onChannelEvent"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zza(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/wearable/internal/zzdx;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/zzm;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/zzm;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zzc;Lcom/google/android/gms/wearable/internal/zzdx;)V

    const-string/jumbo v1, "onMessageReceived"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zza(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/wearable/internal/zzeg;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/zzn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/zzn;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zzc;Lcom/google/android/gms/wearable/internal/zzeg;)V

    const-string/jumbo v1, "onPeerConnected"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zza(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/wearable/internal/zzi;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/zzs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/zzs;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zzc;Lcom/google/android/gms/wearable/internal/zzi;)V

    const-string/jumbo v1, "onEntityUpdate"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zza(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/wearable/internal/zzl;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/zzr;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/zzr;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zzc;Lcom/google/android/gms/wearable/internal/zzl;)V

    const-string/jumbo v1, "onNotificationReceived"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zza(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/wearable/internal/zzeg;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/zzo;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/zzo;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zzc;Lcom/google/android/gms/wearable/internal/zzeg;)V

    const-string/jumbo v1, "onPeerDisconnected"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zza(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method
