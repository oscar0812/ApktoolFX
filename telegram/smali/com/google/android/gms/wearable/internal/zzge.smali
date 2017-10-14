.class final Lcom/google/android/gms/wearable/internal/zzge;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbdz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzbdz",
        "<",
        "Lcom/google/android/gms/wearable/NodeApi$NodeListener;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbRC:Lcom/google/android/gms/wearable/internal/zzeg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzeg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzge;->zzbRC:Lcom/google/android/gms/wearable/internal/zzeg;

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

    check-cast p1, Lcom/google/android/gms/wearable/NodeApi$NodeListener;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzge;->zzbRC:Lcom/google/android/gms/wearable/internal/zzeg;

    invoke-interface {p1, v0}, Lcom/google/android/gms/wearable/NodeApi$NodeListener;->onPeerDisconnected(Lcom/google/android/gms/wearable/Node;)V

    return-void
.end method
