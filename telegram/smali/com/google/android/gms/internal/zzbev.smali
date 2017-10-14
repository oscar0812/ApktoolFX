.class public final Lcom/google/android/gms/internal/zzbev;
.super Ljava/lang/Object;


# static fields
.field public static final zzaFj:Lcom/google/android/gms/common/api/Status;

.field private static final zzaFk:[Lcom/google/android/gms/internal/zzbbe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/gms/internal/zzbbe",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaDF:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;"
        }
    .end annotation
.end field

.field final zzaFl:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzbbe",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzaFm:Lcom/google/android/gms/internal/zzbex;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    const-string/jumbo v2, "The connection to Google Play services was lost"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbev;->zzaFj:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzbbe;

    sput-object v0, Lcom/google/android/gms/internal/zzbev;->zzaFk:[Lcom/google/android/gms/internal/zzbbe;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbev;->zzaFl:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/internal/zzbew;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbew;-><init>(Lcom/google/android/gms/internal/zzbev;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbev;->zzaFm:Lcom/google/android/gms/internal/zzbex;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbev;->zzaDF:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbev;->zzaFl:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/internal/zzbev;->zzaFk:[Lcom/google/android/gms/internal/zzbbe;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzbbe;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzbbe;->zza(Lcom/google/android/gms/internal/zzbex;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbbe;->zzpo()Ljava/lang/Integer;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbbe;->zzpB()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbev;->zzaFl:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/zzbbe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbbe",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbev;->zzaFl:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbev;->zzaFm:Lcom/google/android/gms/internal/zzbex;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbbe;->zza(Lcom/google/android/gms/internal/zzbex;)V

    return-void
.end method

.method public final zzqM()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbev;->zzaFl:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/internal/zzbev;->zzaFk:[Lcom/google/android/gms/internal/zzbbe;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzbbe;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    sget-object v4, Lcom/google/android/gms/internal/zzbev;->zzaFj:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzbbe;->zzs(Lcom/google/android/gms/common/api/Status;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
