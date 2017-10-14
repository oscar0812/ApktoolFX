.class public Lcom/google/android/gms/wearable/Wearable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wearable/Wearable$WearableOptions;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/wearable/Wearable$WearableOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final CapabilityApi:Lcom/google/android/gms/wearable/CapabilityApi;

.field public static final ChannelApi:Lcom/google/android/gms/wearable/ChannelApi;

.field public static final DataApi:Lcom/google/android/gms/wearable/DataApi;

.field public static final MessageApi:Lcom/google/android/gms/wearable/MessageApi;

.field public static final NodeApi:Lcom/google/android/gms/wearable/NodeApi;

.field private static zzajR:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzfw;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzajS:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzfw;",
            "Lcom/google/android/gms/wearable/Wearable$WearableOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static zzbRl:Lcom/google/android/gms/wearable/zzc;

.field private static zzbRm:Lcom/google/android/gms/wearable/zza;

.field private static zzbRn:Lcom/google/android/gms/wearable/zzf;

.field private static zzbRo:Lcom/google/android/gms/wearable/zzi;

.field private static zzbRp:Lcom/google/android/gms/wearable/zzu;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbi;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzbi;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->CapabilityApi:Lcom/google/android/gms/wearable/CapabilityApi;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzds;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzds;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->MessageApi:Lcom/google/android/gms/wearable/MessageApi;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzdz;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzdz;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->NodeApi:Lcom/google/android/gms/wearable/NodeApi;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzac;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzac;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->ChannelApi:Lcom/google/android/gms/wearable/ChannelApi;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzbRl:Lcom/google/android/gms/wearable/zzc;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzbRm:Lcom/google/android/gms/wearable/zza;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbh;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzbh;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzbRn:Lcom/google/android/gms/wearable/zzf;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzey;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzey;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzbRo:Lcom/google/android/gms/wearable/zzi;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzgi;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzgi;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzbRp:Lcom/google/android/gms/wearable/zzu;

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzajR:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/wearable/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->zzajS:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string/jumbo v1, "Wearable.API"

    sget-object v2, Lcom/google/android/gms/wearable/Wearable;->zzajS:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/wearable/Wearable;->zzajR:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/wearable/Wearable;->API:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
