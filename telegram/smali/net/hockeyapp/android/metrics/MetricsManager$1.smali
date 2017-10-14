.class final Lnet/hockeyapp/android/metrics/MetricsManager$1;
.super Ljava/lang/Object;
.source "MetricsManager.java"

# interfaces
.implements Lnet/hockeyapp/android/PrivateEventManager$HockeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/metrics/MetricsManager;->register(Landroid/app/Application;Ljava/lang/String;Lnet/hockeyapp/android/metrics/Sender;Lnet/hockeyapp/android/metrics/Persistence;Lnet/hockeyapp/android/metrics/Channel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHockeyEvent(Lnet/hockeyapp/android/PrivateEventManager$Event;)V
    .locals 2
    .param p1, "event"    # Lnet/hockeyapp/android/PrivateEventManager$Event;

    .prologue
    .line 240
    invoke-virtual {p1}, Lnet/hockeyapp/android/PrivateEventManager$Event;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 241
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->access$000()Lnet/hockeyapp/android/metrics/Channel;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/Channel;->synchronize()V

    .line 243
    :cond_0
    return-void
.end method
