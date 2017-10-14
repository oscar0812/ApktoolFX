.class Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;Lorg/telegram/messenger/SendMessagesHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;
    .param p2, "x1"    # Lorg/telegram/messenger/SendMessagesHelper$1;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;-><init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 97
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$300(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "found location "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-static {v0, p1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$402(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;Landroid/location/Location;)Landroid/location/Location;

    .line 102
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$500(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$500(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;->onLocationAcquired(Landroid/location/Location;)V

    .line 106
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$300(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$300(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 109
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$GpsLocationListener;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$600(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 126
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 121
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 116
    return-void
.end method
