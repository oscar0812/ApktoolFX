.class final Lorg/telegram/messenger/AndroidUtilities$5;
.super Lnet/hockeyapp/android/CrashManagerListener;
.source "AndroidUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/AndroidUtilities;->checkForCrashes(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1303
    invoke-direct {p0}, Lnet/hockeyapp/android/CrashManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public includeDeviceData()Z
    .locals 1

    .prologue
    .line 1306
    const/4 v0, 0x1

    return v0
.end method
