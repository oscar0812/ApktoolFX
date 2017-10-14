.class public abstract Lnet/hockeyapp/android/UpdateManagerListener;
.super Ljava/lang/Object;
.source "UpdateManagerListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canUpdateInMarket()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getExpiryDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUpdateActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lnet/hockeyapp/android/UpdateActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    const-class v0, Lnet/hockeyapp/android/UpdateActivity;

    return-object v0
.end method

.method public getUpdateFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lnet/hockeyapp/android/UpdateFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    const-class v0, Lnet/hockeyapp/android/UpdateFragment;

    return-object v0
.end method

.method public onBuildExpired()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onNoUpdateAvailable()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public onUpdateAvailable()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onUpdateAvailable(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Lorg/json/JSONArray;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateManagerListener;->onUpdateAvailable()V

    .line 61
    return-void
.end method

.method public onUpdatePermissionsNotGranted()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method
