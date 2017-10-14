.class public abstract Lnet/hockeyapp/android/CrashManagerListener;
.super Ljava/lang/Object;
.source "CrashManagerListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxRetryAttempts()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public ignoreDefaultHandler()Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public includeDeviceData()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public includeDeviceIdentifier()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public includeThreadDetails()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public onConfirmedCrashesFound()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public onCrashesFound()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public onCrashesNotSent()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public onCrashesSent()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public onHandleAlertView()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public onNewCrashesFound()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public onUserDeniedCrashes()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public shouldAutoUploadCrashes()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method
