.class public interface abstract Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocationProviderDelegate"
.end annotation


# virtual methods
.method public abstract onLocationAcquired(Landroid/location/Location;)V
.end method

.method public abstract onUnableLocationAcquire()V
.end method
