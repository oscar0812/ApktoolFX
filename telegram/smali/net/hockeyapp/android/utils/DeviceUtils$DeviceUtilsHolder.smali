.class Lnet/hockeyapp/android/utils/DeviceUtils$DeviceUtilsHolder;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/utils/DeviceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceUtilsHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/hockeyapp/android/utils/DeviceUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lnet/hockeyapp/android/utils/DeviceUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/hockeyapp/android/utils/DeviceUtils;-><init>(Lnet/hockeyapp/android/utils/DeviceUtils$1;)V

    sput-object v0, Lnet/hockeyapp/android/utils/DeviceUtils$DeviceUtilsHolder;->INSTANCE:Lnet/hockeyapp/android/utils/DeviceUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
