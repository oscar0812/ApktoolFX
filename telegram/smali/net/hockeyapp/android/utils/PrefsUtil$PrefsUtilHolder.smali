.class Lnet/hockeyapp/android/utils/PrefsUtil$PrefsUtilHolder;
.super Ljava/lang/Object;
.source "PrefsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/utils/PrefsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrefsUtilHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/hockeyapp/android/utils/PrefsUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lnet/hockeyapp/android/utils/PrefsUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/hockeyapp/android/utils/PrefsUtil;-><init>(Lnet/hockeyapp/android/utils/PrefsUtil$1;)V

    sput-object v0, Lnet/hockeyapp/android/utils/PrefsUtil$PrefsUtilHolder;->INSTANCE:Lnet/hockeyapp/android/utils/PrefsUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
