.class public Lnet/hockeyapp/android/utils/UiThreadUtil;
.super Ljava/lang/Object;
.source "UiThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/utils/UiThreadUtil$WbUtilHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method synthetic constructor <init>(Lnet/hockeyapp/android/utils/UiThreadUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/hockeyapp/android/utils/UiThreadUtil$1;

    .prologue
    .line 9
    invoke-direct {p0}, Lnet/hockeyapp/android/utils/UiThreadUtil;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/hockeyapp/android/utils/UiThreadUtil;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lnet/hockeyapp/android/utils/UiThreadUtil$WbUtilHolder;->INSTANCE:Lnet/hockeyapp/android/utils/UiThreadUtil;

    return-object v0
.end method


# virtual methods
.method public dismissLoading(Ljava/lang/ref/WeakReference;Landroid/app/ProgressDialog;)V
    .locals 2
    .param p2, "progressDialog"    # Landroid/app/ProgressDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/app/ProgressDialog;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 52
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 53
    new-instance v1, Lnet/hockeyapp/android/utils/UiThreadUtil$2;

    invoke-direct {v1, p0, p2}, Lnet/hockeyapp/android/utils/UiThreadUtil$2;-><init>(Lnet/hockeyapp/android/utils/UiThreadUtil;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 64
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public dismissLoadingDialogAndDisplayError(Ljava/lang/ref/WeakReference;Landroid/app/ProgressDialog;I)V
    .locals 2
    .param p2, "progressDialog"    # Landroid/app/ProgressDialog;
    .param p3, "errorDialogId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/app/ProgressDialog;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 32
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 33
    new-instance v1, Lnet/hockeyapp/android/utils/UiThreadUtil$1;

    invoke-direct {v1, p0, p2, v0, p3}, Lnet/hockeyapp/android/utils/UiThreadUtil$1;-><init>(Lnet/hockeyapp/android/utils/UiThreadUtil;Landroid/app/ProgressDialog;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 47
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public displayToastMessage(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V
    .locals 2
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 69
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 70
    new-instance v1, Lnet/hockeyapp/android/utils/UiThreadUtil$3;

    invoke-direct {v1, p0, v0, p2, p3}, Lnet/hockeyapp/android/utils/UiThreadUtil$3;-><init>(Lnet/hockeyapp/android/utils/UiThreadUtil;Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 78
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method
