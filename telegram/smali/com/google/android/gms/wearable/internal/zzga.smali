.class public final Lcom/google/android/gms/wearable/internal/zzga;
.super Lcom/google/android/gms/wearable/internal/zzdl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/wearable/internal/zzdl;"
    }
.end annotation


# instance fields
.field private final zzbSW:[Landroid/content/IntentFilter;

.field private final zzbTA:Ljava/lang/String;

.field private zzbTs:Lcom/google/android/gms/internal/zzbdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzbTt:Lcom/google/android/gms/internal/zzbdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzbTu:Lcom/google/android/gms/internal/zzbdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$DataListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzbTv:Lcom/google/android/gms/internal/zzbdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzbTw:Lcom/google/android/gms/internal/zzbdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/wearable/NodeApi$NodeListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzbTx:Lcom/google/android/gms/internal/zzbdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzbTy:Lcom/google/android/gms/internal/zzbdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzbTz:Lcom/google/android/gms/internal/zzbdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([Landroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/zzdl;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbSW:[Landroid/content/IntentFilter;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTA:Ljava/lang/String;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbdw;Ljava/lang/String;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzga;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/IntentFilter;",
            ")",
            "Lcom/google/android/gms/wearable/internal/zzga",
            "<",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzga;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, p2, v0}, Lcom/google/android/gms/wearable/internal/zzga;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbdw;

    iput-object v0, v1, Lcom/google/android/gms/wearable/internal/zzga;->zzbTy:Lcom/google/android/gms/internal/zzbdw;

    return-object v1
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbdw;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzga;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$DataListener;",
            ">;[",
            "Landroid/content/IntentFilter;",
            ")",
            "Lcom/google/android/gms/wearable/internal/zzga",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$DataListener;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzga;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/wearable/internal/zzga;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbdw;

    iput-object v0, v1, Lcom/google/android/gms/wearable/internal/zzga;->zzbTu:Lcom/google/android/gms/internal/zzbdw;

    return-object v1
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzbdw;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzga;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
            ">;[",
            "Landroid/content/IntentFilter;",
            ")",
            "Lcom/google/android/gms/wearable/internal/zzga",
            "<",
            "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzga;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/wearable/internal/zzga;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbdw;

    iput-object v0, v1, Lcom/google/android/gms/wearable/internal/zzga;->zzbTv:Lcom/google/android/gms/internal/zzbdw;

    return-object v1
.end method

.method public static zzc(Lcom/google/android/gms/internal/zzbdw;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzga;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/wearable/NodeApi$NodeListener;",
            ">;[",
            "Landroid/content/IntentFilter;",
            ")",
            "Lcom/google/android/gms/wearable/internal/zzga",
            "<",
            "Lcom/google/android/gms/wearable/NodeApi$NodeListener;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzga;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/wearable/internal/zzga;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbdw;

    iput-object v0, v1, Lcom/google/android/gms/wearable/internal/zzga;->zzbTw:Lcom/google/android/gms/internal/zzbdw;

    return-object v1
.end method

.method public static zzd(Lcom/google/android/gms/internal/zzbdw;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzga;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            ">;[",
            "Landroid/content/IntentFilter;",
            ")",
            "Lcom/google/android/gms/wearable/internal/zzga",
            "<",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzga;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/wearable/internal/zzga;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbdw;

    iput-object v0, v1, Lcom/google/android/gms/wearable/internal/zzga;->zzbTy:Lcom/google/android/gms/internal/zzbdw;

    return-object v1
.end method

.method public static zze(Lcom/google/android/gms/internal/zzbdw;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzga;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;",
            ">;[",
            "Landroid/content/IntentFilter;",
            ")",
            "Lcom/google/android/gms/wearable/internal/zzga",
            "<",
            "Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzga;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/wearable/internal/zzga;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbdw;

    iput-object v0, v1, Lcom/google/android/gms/wearable/internal/zzga;->zzbTz:Lcom/google/android/gms/internal/zzbdw;

    return-object v1
.end method

.method private static zzk(Lcom/google/android/gms/internal/zzbdw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdw",
            "<*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdw;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/zzga;->zzk(Lcom/google/android/gms/internal/zzbdw;)V

    iput-object v1, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTs:Lcom/google/android/gms/internal/zzbdw;

    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/zzga;->zzk(Lcom/google/android/gms/internal/zzbdw;)V

    iput-object v1, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTt:Lcom/google/android/gms/internal/zzbdw;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTu:Lcom/google/android/gms/internal/zzbdw;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzga;->zzk(Lcom/google/android/gms/internal/zzbdw;)V

    iput-object v1, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTu:Lcom/google/android/gms/internal/zzbdw;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTv:Lcom/google/android/gms/internal/zzbdw;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzga;->zzk(Lcom/google/android/gms/internal/zzbdw;)V

    iput-object v1, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTv:Lcom/google/android/gms/internal/zzbdw;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTw:Lcom/google/android/gms/internal/zzbdw;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzga;->zzk(Lcom/google/android/gms/internal/zzbdw;)V

    iput-object v1, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTw:Lcom/google/android/gms/internal/zzbdw;

    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/zzga;->zzk(Lcom/google/android/gms/internal/zzbdw;)V

    iput-object v1, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTx:Lcom/google/android/gms/internal/zzbdw;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTy:Lcom/google/android/gms/internal/zzbdw;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzga;->zzk(Lcom/google/android/gms/internal/zzbdw;)V

    iput-object v1, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTy:Lcom/google/android/gms/internal/zzbdw;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTz:Lcom/google/android/gms/internal/zzbdw;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzga;->zzk(Lcom/google/android/gms/internal/zzbdw;)V

    iput-object v1, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTz:Lcom/google/android/gms/internal/zzbdw;

    return-void
.end method

.method public final onConnectedNodes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzeg;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final zzDY()[Landroid/content/IntentFilter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbSW:[Landroid/content/IntentFilter;

    return-object v0
.end method

.method public final zzDZ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTA:Ljava/lang/String;

    return-object v0
.end method

.method public final zzS(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTu:Lcom/google/android/gms/internal/zzbdw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTu:Lcom/google/android/gms/internal/zzbdw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzgb;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzgb;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdw;->zza(Lcom/google/android/gms/internal/zzbdz;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/wearable/internal/zzaa;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTz:Lcom/google/android/gms/internal/zzbdw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTz:Lcom/google/android/gms/internal/zzbdw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzgg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzgg;-><init>(Lcom/google/android/gms/wearable/internal/zzaa;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdw;->zza(Lcom/google/android/gms/internal/zzbdz;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/wearable/internal/zzai;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTy:Lcom/google/android/gms/internal/zzbdw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTy:Lcom/google/android/gms/internal/zzbdw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzgf;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzgf;-><init>(Lcom/google/android/gms/wearable/internal/zzai;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdw;->zza(Lcom/google/android/gms/internal/zzbdz;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/wearable/internal/zzdx;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTv:Lcom/google/android/gms/internal/zzbdw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTv:Lcom/google/android/gms/internal/zzbdw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzgc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzgc;-><init>(Lcom/google/android/gms/wearable/internal/zzdx;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdw;->zza(Lcom/google/android/gms/internal/zzbdz;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/wearable/internal/zzeg;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTw:Lcom/google/android/gms/internal/zzbdw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTw:Lcom/google/android/gms/internal/zzbdw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzgd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzgd;-><init>(Lcom/google/android/gms/wearable/internal/zzeg;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdw;->zza(Lcom/google/android/gms/internal/zzbdz;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/wearable/internal/zzi;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/wearable/internal/zzl;)V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/wearable/internal/zzeg;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTw:Lcom/google/android/gms/internal/zzbdw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzga;->zzbTw:Lcom/google/android/gms/internal/zzbdw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzge;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzge;-><init>(Lcom/google/android/gms/wearable/internal/zzeg;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdw;->zza(Lcom/google/android/gms/internal/zzbdz;)V

    :cond_0
    return-void
.end method
