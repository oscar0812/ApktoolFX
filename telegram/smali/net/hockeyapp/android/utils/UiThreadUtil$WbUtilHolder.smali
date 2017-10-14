.class Lnet/hockeyapp/android/utils/UiThreadUtil$WbUtilHolder;
.super Ljava/lang/Object;
.source "UiThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/utils/UiThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WbUtilHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/hockeyapp/android/utils/UiThreadUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lnet/hockeyapp/android/utils/UiThreadUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/hockeyapp/android/utils/UiThreadUtil;-><init>(Lnet/hockeyapp/android/utils/UiThreadUtil$1;)V

    sput-object v0, Lnet/hockeyapp/android/utils/UiThreadUtil$WbUtilHolder;->INSTANCE:Lnet/hockeyapp/android/utils/UiThreadUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
