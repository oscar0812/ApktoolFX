.class final Lcom/google/android/gms/wearable/zzt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbRA:Lcom/google/android/gms/wearable/WearableListenerService$zzc;

.field private synthetic zzbRH:Lcom/google/android/gms/wearable/internal/zzai;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService$zzc;Lcom/google/android/gms/wearable/internal/zzai;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/zzt;->zzbRA:Lcom/google/android/gms/wearable/WearableListenerService$zzc;

    iput-object p2, p0, Lcom/google/android/gms/wearable/zzt;->zzbRH:Lcom/google/android/gms/wearable/internal/zzai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/zzt;->zzbRH:Lcom/google/android/gms/wearable/internal/zzai;

    iget-object v1, p0, Lcom/google/android/gms/wearable/zzt;->zzbRA:Lcom/google/android/gms/wearable/WearableListenerService$zzc;

    iget-object v1, v1, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbRx:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/internal/zzai;->zza(Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;)V

    return-void
.end method
