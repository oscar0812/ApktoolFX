.class final Lcom/google/android/gms/wearable/internal/zzgf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbdz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzbdz",
        "<",
        "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbRH:Lcom/google/android/gms/wearable/internal/zzai;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzai;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzgf;->zzbRH:Lcom/google/android/gms/wearable/internal/zzai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzpT()V
    .locals 0

    return-void
.end method

.method public final synthetic zzq(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzgf;->zzbRH:Lcom/google/android/gms/wearable/internal/zzai;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wearable/internal/zzai;->zza(Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;)V

    return-void
.end method
