.class final Lnet/hockeyapp/android/metrics/MetricsManager$3;
.super Landroid/os/AsyncTask;
.source "MetricsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/metrics/MetricsManager;->trackEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$measurements:Ljava/util/Map;

.field final synthetic val$properties:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/MetricsManager$3;->val$eventName:Ljava/lang/String;

    iput-object p2, p0, Lnet/hockeyapp/android/metrics/MetricsManager$3;->val$properties:Ljava/util/Map;

    iput-object p3, p0, Lnet/hockeyapp/android/metrics/MetricsManager$3;->val$measurements:Ljava/util/Map;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 479
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/MetricsManager$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 482
    new-instance v1, Lnet/hockeyapp/android/metrics/model/EventData;

    invoke-direct {v1}, Lnet/hockeyapp/android/metrics/model/EventData;-><init>()V

    .line 483
    .local v1, "eventItem":Lnet/hockeyapp/android/metrics/model/EventData;
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/MetricsManager$3;->val$eventName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/hockeyapp/android/metrics/model/EventData;->setName(Ljava/lang/String;)V

    .line 484
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/MetricsManager$3;->val$properties:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 485
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/MetricsManager$3;->val$properties:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lnet/hockeyapp/android/metrics/model/EventData;->setProperties(Ljava/util/Map;)V

    .line 487
    :cond_0
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/MetricsManager$3;->val$measurements:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 488
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/MetricsManager$3;->val$measurements:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lnet/hockeyapp/android/metrics/model/EventData;->setMeasurements(Ljava/util/Map;)V

    .line 490
    :cond_1
    invoke-static {v1}, Lnet/hockeyapp/android/metrics/MetricsManager;->createData(Lnet/hockeyapp/android/metrics/model/TelemetryData;)Lnet/hockeyapp/android/metrics/model/Data;

    move-result-object v0

    .line 491
    .local v0, "data":Lnet/hockeyapp/android/metrics/model/Data;, "Lnet/hockeyapp/android/metrics/model/Data<Lnet/hockeyapp/android/metrics/model/Domain;>;"
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->access$000()Lnet/hockeyapp/android/metrics/Channel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/hockeyapp/android/metrics/Channel;->enqueueData(Lnet/hockeyapp/android/metrics/model/Base;)V

    .line 492
    const/4 v2, 0x0

    return-object v2
.end method
