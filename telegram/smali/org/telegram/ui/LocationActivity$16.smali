.class Lorg/telegram/ui/LocationActivity$16;
.super Ljava/lang/Object;
.source "LocationActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity;->onMapInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LocationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 857
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$16;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMyLocationChange(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 860
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$16;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/LocationActivity;->access$3100(Lorg/telegram/ui/LocationActivity;Landroid/location/Location;)V

    .line 861
    invoke-static {}, Lorg/telegram/messenger/LocationController;->getInstance()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$16;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$3200(Lorg/telegram/ui/LocationActivity;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/LocationController;->setGoogleMapLocation(Landroid/location/Location;Z)V

    .line 862
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$16;->this$0:Lorg/telegram/ui/LocationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/LocationActivity;->access$3202(Lorg/telegram/ui/LocationActivity;Z)Z

    .line 863
    return-void
.end method
