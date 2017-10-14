.class Lorg/telegram/ui/LocationActivity$7$1;
.super Ljava/lang/Object;
.source "LocationActivity.java"

# interfaces
.implements Lorg/telegram/messenger/MessagesStorage$IntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity$7;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LocationActivity$7;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/LocationActivity$7;

    .prologue
    .line 451
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$7$1;->this$1:Lorg/telegram/ui/LocationActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(I)V
    .locals 4
    .param p1, "param"    # I

    .prologue
    .line 454
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;-><init>()V

    .line 455
    .local v0, "location":Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 456
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$7$1;->this$1:Lorg/telegram/ui/LocationActivity$7;

    iget-object v2, v2, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v2}, Lorg/telegram/ui/LocationActivity;->access$1000(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 457
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$7$1;->this$1:Lorg/telegram/ui/LocationActivity$7;

    iget-object v2, v2, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v2}, Lorg/telegram/ui/LocationActivity;->access$1000(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 458
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;->period:I

    .line 459
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$7$1;->this$1:Lorg/telegram/ui/LocationActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$1700(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$7$1;->this$1:Lorg/telegram/ui/LocationActivity$7;

    iget-object v2, v2, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v2}, Lorg/telegram/ui/LocationActivity;->access$1600(Lorg/telegram/ui/LocationActivity;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;I)V

    .line 460
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$7$1;->this$1:Lorg/telegram/ui/LocationActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/LocationActivity;->finishFragment()V

    .line 461
    return-void
.end method
