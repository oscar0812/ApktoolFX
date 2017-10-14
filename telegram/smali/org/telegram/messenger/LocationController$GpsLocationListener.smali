.class Lorg/telegram/messenger/LocationController$GpsLocationListener;
.super Ljava/lang/Object;
.source "LocationController.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/LocationController;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/LocationController;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lorg/telegram/messenger/LocationController$GpsLocationListener;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/messenger/LocationController;
    .param p2, "x1"    # Lorg/telegram/messenger/LocationController$1;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController$GpsLocationListener;-><init>(Lorg/telegram/messenger/LocationController;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 85
    if-nez p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/LocationController$GpsLocationListener;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->access$100(Lorg/telegram/messenger/LocationController;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/LocationController$GpsLocationListener;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->access$200(Lorg/telegram/messenger/LocationController;)Lorg/telegram/messenger/LocationController$GpsLocationListener;

    move-result-object v0

    if-eq p0, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/LocationController$GpsLocationListener;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->access$300(Lorg/telegram/messenger/LocationController;)Lorg/telegram/messenger/LocationController$GpsLocationListener;

    move-result-object v0

    if-ne p0, v0, :cond_3

    .line 89
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/LocationController$GpsLocationListener;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->access$400(Lorg/telegram/messenger/LocationController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/LocationController$GpsLocationListener;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->access$100(Lorg/telegram/messenger/LocationController;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/telegram/messenger/LocationController$GpsLocationListener;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocationController;->access$102(Lorg/telegram/messenger/LocationController;Landroid/location/Location;)Landroid/location/Location;

    .line 91
    iget-object v0, p0, Lorg/telegram/messenger/LocationController$GpsLocationListener;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x15f90

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocationController;->access$502(Lorg/telegram/messenger/LocationController;J)J

    goto :goto_0

    .line 94
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/LocationController$GpsLocationListener;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocationController;->access$102(Lorg/telegram/messenger/LocationController;Landroid/location/Location;)Landroid/location/Location;

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 111
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 106
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 101
    return-void
.end method
