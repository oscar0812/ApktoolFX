.class Lnet/hockeyapp/android/LoginManager$LoginHandler;
.super Landroid/os/Handler;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/LoginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoginHandler"
.end annotation


# instance fields
.field private final mWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 270
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/hockeyapp/android/LoginManager$LoginHandler;->mWeakContext:Ljava/lang/ref/WeakReference;

    .line 271
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 276
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "success"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 278
    .local v2, "success":Z
    iget-object v3, p0, Lnet/hockeyapp/android/LoginManager$LoginHandler;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 279
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 290
    :goto_0
    return-void

    .line 283
    :cond_0
    if-nez v2, :cond_1

    .line 284
    invoke-static {v1}, Lnet/hockeyapp/android/LoginManager;->access$000(Landroid/content/Context;)V

    goto :goto_0

    .line 288
    :cond_1
    const-string/jumbo v3, "HockeyAuth"

    const-string/jumbo v4, "We authenticated or verified successfully"

    invoke-static {v3, v4}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
