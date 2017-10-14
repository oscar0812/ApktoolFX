.class public Lcom/google/protobuf/zzb;
.super Lcom/google/protobuf/zza;


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final zzcrM:Z

.field private static final zzcrN:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/google/protobuf/zzb;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/zzb;->logger:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/protobuf/zze;->zzLt()Z

    move-result v0

    sput-boolean v0, Lcom/google/protobuf/zzb;->zzcrM:Z

    invoke-static {}, Lcom/google/protobuf/zze;->zzLu()J

    move-result-wide v0

    sput-wide v0, Lcom/google/protobuf/zzb;->zzcrN:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/zza;-><init>()V

    return-void
.end method
