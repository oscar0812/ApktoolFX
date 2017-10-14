.class public abstract Lnet/hockeyapp/android/metrics/ITelemetry;
.super Lnet/hockeyapp/android/metrics/model/Domain;
.source "ITelemetry.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lnet/hockeyapp/android/metrics/model/Domain;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBaseType()Ljava/lang/String;
.end method

.method public abstract getEnvelopeName()Ljava/lang/String;
.end method

.method public abstract getProperties()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setProperties(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setVer(I)V
.end method
