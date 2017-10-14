.class public final Lcom/google/android/gms/common/stats/zzb;
.super Ljava/lang/Object;


# static fields
.field private static LOG_LEVEL_OFF:I

.field public static final zzaJf:Landroid/content/ComponentName;

.field private static zzaJg:I

.field private static zzaJh:I

.field private static zzaJi:I

.field private static zzaJj:I

.field private static zzaJk:I

.field private static zzaJl:I

.field private static zzaJm:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.google.android.gms"

    const-string/jumbo v2, "com.google.android.gms.common.stats.GmsCoreStatsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/stats/zzb;->zzaJf:Landroid/content/ComponentName;

    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/common/stats/zzb;->LOG_LEVEL_OFF:I

    sput v3, Lcom/google/android/gms/common/stats/zzb;->zzaJg:I

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/common/stats/zzb;->zzaJh:I

    const/4 v0, 0x4

    sput v0, Lcom/google/android/gms/common/stats/zzb;->zzaJi:I

    const/16 v0, 0x8

    sput v0, Lcom/google/android/gms/common/stats/zzb;->zzaJj:I

    const/16 v0, 0x10

    sput v0, Lcom/google/android/gms/common/stats/zzb;->zzaJk:I

    const/16 v0, 0x20

    sput v0, Lcom/google/android/gms/common/stats/zzb;->zzaJl:I

    sput v3, Lcom/google/android/gms/common/stats/zzb;->zzaJm:I

    return-void
.end method
