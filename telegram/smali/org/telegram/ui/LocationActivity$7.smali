.class Lorg/telegram/ui/LocationActivity$7;
.super Ljava/lang/Object;
.source "LocationActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity;->createView(Landroid/content/Context;)Landroid/view/View;
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
    .line 422
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x3

    const/high16 v10, 0x40800000    # 4.0f

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 425
    if-ne p2, v4, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$100(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$100(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v3

    if-nez v3, :cond_1

    .line 426
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$000(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 427
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$000(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v5, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v5}, Lorg/telegram/ui/LocationActivity;->access$100(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-object v5, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v5}, Lorg/telegram/ui/LocationActivity;->access$100(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget-object v5, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v5}, Lorg/telegram/ui/LocationActivity;->access$000(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/maps/GoogleMap;->getMaxZoomLevel()F

    move-result v5

    sub-float/2addr v5, v10

    invoke-static {v4, v5}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    if-ne p2, v4, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$1600(Lorg/telegram/ui/LocationActivity;)I

    move-result v3

    if-eq v3, v5, :cond_3

    .line 430
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$1700(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$1000(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 431
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    .line 432
    .local v0, "location":Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 433
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v4, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v4}, Lorg/telegram/ui/LocationActivity;->access$1000(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 434
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v4, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v4}, Lorg/telegram/ui/LocationActivity;->access$1000(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 435
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$1700(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v4}, Lorg/telegram/ui/LocationActivity;->access$1600(Lorg/telegram/ui/LocationActivity;)I

    move-result v4

    invoke-interface {v3, v0, v4}, Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;I)V

    .line 437
    .end local v0    # "location":Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/LocationActivity;->finishFragment()V

    goto :goto_0

    .line 438
    :cond_3
    if-ne p2, v5, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$1600(Lorg/telegram/ui/LocationActivity;)I

    move-result v3

    if-eq v3, v4, :cond_6

    :cond_4
    if-ne p2, v4, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$1600(Lorg/telegram/ui/LocationActivity;)I

    move-result v3

    if-eq v3, v5, :cond_6

    :cond_5
    if-ne p2, v6, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$1600(Lorg/telegram/ui/LocationActivity;)I

    move-result v3

    if-ne v3, v6, :cond_9

    .line 439
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/LocationController;->getInstance()Lorg/telegram/messenger/LocationController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v4}, Lorg/telegram/ui/LocationActivity;->access$1800(Lorg/telegram/ui/LocationActivity;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/LocationController;->isSharingLocation(J)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 440
    invoke-static {}, Lorg/telegram/messenger/LocationController;->getInstance()Lorg/telegram/messenger/LocationController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v4}, Lorg/telegram/ui/LocationActivity;->access$1800(Lorg/telegram/ui/LocationActivity;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/LocationController;->removeSharingLocation(J)V

    .line 441
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/LocationActivity;->finishFragment()V

    goto/16 :goto_0

    .line 443
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$1700(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 446
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$1000(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 447
    const/4 v2, 0x0

    .line 448
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$1800(Lorg/telegram/ui/LocationActivity;)J

    move-result-wide v4

    long-to-int v3, v4

    if-lez v3, :cond_8

    .line 449
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v4}, Lorg/telegram/ui/LocationActivity;->access$1800(Lorg/telegram/ui/LocationActivity;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 451
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    iget-object v4, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/LocationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/LocationActivity$7$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/LocationActivity$7$1;-><init>(Lorg/telegram/ui/LocationActivity$7;)V

    invoke-static {v4, v2, v5}, Lorg/telegram/ui/Components/AlertsCreator;->createLocationUpdateDialog(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/MessagesStorage$IntCallback;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/LocationActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 466
    .end local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$1200(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 467
    .local v1, "object":Ljava/lang/Object;
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v3, :cond_b

    .line 468
    if-eqz v1, :cond_a

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$1700(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 469
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$1700(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    move-result-object v3

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    .end local v1    # "object":Ljava/lang/Object;
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v4}, Lorg/telegram/ui/LocationActivity;->access$1600(Lorg/telegram/ui/LocationActivity;)I

    move-result v4

    invoke-interface {v3, v1, v4}, Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;I)V

    .line 471
    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/LocationActivity;->finishFragment()V

    goto/16 :goto_0

    .line 472
    .restart local v1    # "object":Ljava/lang/Object;
    :cond_b
    instance-of v3, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;

    if-eqz v3, :cond_0

    .line 473
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$000(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v3

    check-cast v1, Lorg/telegram/ui/LocationActivity$LiveLocation;

    .end local v1    # "object":Ljava/lang/Object;
    iget-object v4, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/LocationActivity$7;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v5}, Lorg/telegram/ui/LocationActivity;->access$000(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/maps/GoogleMap;->getMaxZoomLevel()F

    move-result v5

    sub-float/2addr v5, v10

    invoke-static {v4, v5}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto/16 :goto_0
.end method
