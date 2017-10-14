.class public Lorg/telegram/messenger/LocationController;
.super Ljava/lang/Object;
.source "LocationController.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/LocationController$GpsLocationListener;,
        Lorg/telegram/messenger/LocationController$SharingLocationInfo;
    }
.end annotation


# static fields
.field private static final BACKGROUD_UPDATE_TIME:I = 0x15f90

.field private static final FOREGROUND_UPDATE_TIME:I = 0x4e20

.field private static volatile Instance:Lorg/telegram/messenger/LocationController; = null

.field private static final LOCATION_ACQUIRE_TIME:I = 0x2710

.field private static final eps:D = 1.0E-4


# instance fields
.field private cacheRequests:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private gpsLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

.field private lastKnownLocation:Landroid/location/Location;

.field private lastLocationByGoogleMaps:Z

.field private lastLocationSendTime:J

.field private lastLocationStartTime:J

.field private locationManager:Landroid/location/LocationManager;

.field private locationSentSinceLastGoogleMapUpdate:Z

.field public locationsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private networkLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

.field private passiveLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

.field private requests:Landroid/util/SparseIntArray;

.field private sharingLocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/LocationController$SharingLocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sharingLocationsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/messenger/LocationController$SharingLocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sharingLocationsMapUI:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/messenger/LocationController$SharingLocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public sharingLocationsUI:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/LocationController$SharingLocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/LocationController;->Instance:Lorg/telegram/messenger/LocationController;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMap:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/LocationController;->locationsCache:Ljava/util/HashMap;

    .line 38
    new-instance v0, Lorg/telegram/messenger/LocationController$GpsLocationListener;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/LocationController$GpsLocationListener;-><init>(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/LocationController;->gpsLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    .line 39
    new-instance v0, Lorg/telegram/messenger/LocationController$GpsLocationListener;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/LocationController$GpsLocationListener;-><init>(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/LocationController;->networkLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    .line 40
    new-instance v0, Lorg/telegram/messenger/LocationController$GpsLocationListener;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/LocationController$GpsLocationListener;-><init>(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/LocationController;->passiveLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/LocationController;->locationSentSinceLastGoogleMapUpdate:Z

    .line 47
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/LocationController;->requests:Landroid/util/SparseIntArray;

    .line 48
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/LocationController;->cacheRequests:Landroid/util/LongSparseArray;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Ljava/util/HashMap;

    .line 115
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    .line 116
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 117
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 118
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 119
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->loadSharingLocations()V

    .line 120
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/LocationController;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/LocationController;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/LocationController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/LocationController;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Lorg/telegram/messenger/LocationController;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/LocationController;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 32
    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/LocationController;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/LocationController;

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->stopService()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/LocationController;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/LocationController;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocationController;->stop(Z)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/LocationController;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/LocationController;

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->startService()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/LocationController;)Landroid/util/LongSparseArray;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/LocationController;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->cacheRequests:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/LocationController;)Lorg/telegram/messenger/LocationController$GpsLocationListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/LocationController;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->networkLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/LocationController;)Lorg/telegram/messenger/LocationController$GpsLocationListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/LocationController;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->passiveLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/LocationController;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/LocationController;

    .prologue
    .line 32
    iget-boolean v0, p0, Lorg/telegram/messenger/LocationController;->started:Z

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/messenger/LocationController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/LocationController;
    .param p1, "x1"    # J

    .prologue
    .line 32
    iput-wide p1, p0, Lorg/telegram/messenger/LocationController;->lastLocationSendTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lorg/telegram/messenger/LocationController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/LocationController;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/LocationController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/LocationController;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/LocationController;
    .param p1, "x1"    # Lorg/telegram/messenger/LocationController$SharingLocationInfo;
    .param p2, "x2"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/LocationController;->saveSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;I)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/messenger/LocationController;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/LocationController;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->requests:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method private broadcastLastKnownLocation()V
    .locals 12

    .prologue
    .line 190
    iget-object v7, p0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    if-nez v7, :cond_0

    .line 263
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v7, p0, Lorg/telegram/messenger/LocationController;->requests:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-eqz v7, :cond_2

    .line 194
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v7, p0, Lorg/telegram/messenger/LocationController;->requests:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 195
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/messenger/LocationController;->requests:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 197
    :cond_1
    iget-object v7, p0, Lorg/telegram/messenger/LocationController;->requests:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    .line 199
    .end local v0    # "a":I
    :cond_2
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    .line 200
    .local v1, "date":I
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_2
    iget-object v7, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_5

    .line 201
    iget-object v7, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    .line 202
    .local v2, "info":Lorg/telegram/messenger/LocationController$SharingLocationInfo;
    iget-object v7, v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v7, :cond_4

    iget-object v7, v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    if-eqz v7, :cond_4

    .line 203
    iget-object v7, v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    if-eqz v7, :cond_3

    iget-object v7, v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v7, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    .line 204
    .local v3, "messageDate":I
    :goto_3
    iget-object v7, v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 205
    .local v4, "point":Lorg/telegram/tgnet/TLRPC$GeoPoint;
    sub-int v7, v1, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/16 v8, 0x1e

    if-ge v7, v8, :cond_4

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-object v7, p0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v7, v8, v10

    if-gtz v7, :cond_4

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iget-object v7, p0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v7, v8, v10

    if-gtz v7, :cond_4

    .line 200
    .end local v3    # "messageDate":I
    .end local v4    # "point":Lorg/telegram/tgnet/TLRPC$GeoPoint;
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 203
    :cond_3
    iget-object v7, v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v7, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    goto :goto_3

    .line 209
    :cond_4
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;-><init>()V

    .line 210
    .local v5, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;
    iget-wide v8, v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    long-to-int v7, v8

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v7

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 211
    iget v7, v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->mid:I

    iput v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->id:I

    .line 212
    const/4 v7, 0x0

    iput-boolean v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->stop_geo_live:Z

    .line 213
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    or-int/lit16 v7, v7, 0x2000

    iput v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    .line 214
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    .line 215
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    iget-object v8, p0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    .line 216
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    iget-object v8, p0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    .line 217
    const/4 v7, 0x1

    new-array v6, v7, [I

    .line 218
    .local v6, "reqId":[I
    const/4 v7, 0x0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v9, Lorg/telegram/messenger/LocationController$1;

    invoke-direct {v9, p0, v2, v6}, Lorg/telegram/messenger/LocationController$1;-><init>(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;[I)V

    invoke-virtual {v8, v5, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v8

    aput v8, v6, v7

    .line 259
    iget-object v7, p0, Lorg/telegram/messenger/LocationController;->requests:Landroid/util/SparseIntArray;

    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_4

    .line 261
    .end local v2    # "info":Lorg/telegram/messenger/LocationController$SharingLocationInfo;
    .end local v5    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;
    .end local v6    # "reqId":[I
    :cond_5
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    .line 262
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lorg/telegram/messenger/LocationController;->stop(Z)V

    goto/16 :goto_0
.end method

.method public static getInstance()Lorg/telegram/messenger/LocationController;
    .locals 4

    .prologue
    .line 61
    sget-object v0, Lorg/telegram/messenger/LocationController;->Instance:Lorg/telegram/messenger/LocationController;

    .line 62
    .local v0, "localInstance":Lorg/telegram/messenger/LocationController;
    if-nez v0, :cond_1

    .line 63
    const-class v3, Lorg/telegram/messenger/LocationController;

    monitor-enter v3

    .line 64
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/LocationController;->Instance:Lorg/telegram/messenger/LocationController;

    .line 65
    if-nez v0, :cond_0

    .line 66
    new-instance v1, Lorg/telegram/messenger/LocationController;

    invoke-direct {v1}, Lorg/telegram/messenger/LocationController;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/messenger/LocationController;
    .local v1, "localInstance":Lorg/telegram/messenger/LocationController;
    :try_start_1
    sput-object v1, Lorg/telegram/messenger/LocationController;->Instance:Lorg/telegram/messenger/LocationController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 68
    .end local v1    # "localInstance":Lorg/telegram/messenger/LocationController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/LocationController;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 70
    :cond_1
    return-object v0

    .line 68
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/LocationController;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/LocationController;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/LocationController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/LocationController;
    goto :goto_0
.end method

.method private loadSharingLocations()V
    .locals 2

    .prologue
    .line 359
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/LocationController$5;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/LocationController$5;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 426
    return-void
.end method

.method private saveSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;I)V
    .locals 2
    .param p1, "info"    # Lorg/telegram/messenger/LocationController$SharingLocationInfo;
    .param p2, "remove"    # I

    .prologue
    .line 429
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/LocationController$6;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/LocationController$6;-><init>(Lorg/telegram/messenger/LocationController;ILorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 465
    return-void
.end method

.method private start()V
    .locals 7

    .prologue
    .line 569
    iget-boolean v0, p0, Lorg/telegram/messenger/LocationController;->started:Z

    if-eqz v0, :cond_1

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/LocationController;->lastLocationStartTime:J

    .line 573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/LocationController;->started:Z

    .line 575
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/LocationController;->gpsLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 580
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/LocationController;->networkLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 585
    :goto_2
    :try_start_2
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "passive"

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/LocationController;->passiveLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 589
    :goto_3
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 591
    :try_start_3
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    .line 592
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 593
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 595
    :catch_0
    move-exception v6

    .line 596
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 576
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 577
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 581
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .line 582
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 586
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v6

    .line 587
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private startService()V
    .locals 4

    .prologue
    .line 509
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/LocationSharingService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 510
    return-void
.end method

.method private stop(Z)V
    .locals 2
    .param p1, "empty"    # Z

    .prologue
    .line 602
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/LocationController;->started:Z

    .line 603
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->gpsLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 604
    if-eqz p1, :cond_0

    .line 605
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->networkLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 606
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->passiveLocationListener:Lorg/telegram/messenger/LocationController$GpsLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 608
    :cond_0
    return-void
.end method

.method private stopService()V
    .locals 4

    .prologue
    .line 513
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/LocationSharingService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 514
    return-void
.end method


# virtual methods
.method protected addSharingLocation(JIILorg/telegram/tgnet/TLRPC$Message;)V
    .locals 7
    .param p1, "did"    # J
    .param p3, "mid"    # I
    .param p4, "period"    # I
    .param p5, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 323
    new-instance v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    invoke-direct {v0}, Lorg/telegram/messenger/LocationController$SharingLocationInfo;-><init>()V

    .line 324
    .local v0, "info":Lorg/telegram/messenger/LocationController$SharingLocationInfo;
    iput-wide p1, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    .line 325
    iput p3, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->mid:I

    .line 326
    iput p4, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->period:I

    .line 327
    new-instance v2, Lorg/telegram/messenger/MessageObject;

    invoke-direct {v2, p5, v3, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    iput-object v2, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 328
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    add-int/2addr v2, p4

    iput v2, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->stopTime:I

    .line 329
    iget-object v2, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    .line 330
    .local v1, "old":Lorg/telegram/messenger/LocationController$SharingLocationInfo;
    if-eqz v1, :cond_0

    .line 331
    iget-object v2, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 333
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-direct {p0, v0, v4}, Lorg/telegram/messenger/LocationController;->saveSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;I)V

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x15f90

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/LocationController;->lastLocationSendTime:J

    .line 336
    new-instance v2, Lorg/telegram/messenger/LocationController$4;

    invoke-direct {v2, p0, v1, v0}, Lorg/telegram/messenger/LocationController$4;-><init>(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 348
    return-void
.end method

.method public cleanup()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 306
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 307
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->locationsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 308
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->cacheRequests:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 309
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->stopService()V

    .line 310
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/LocationController$3;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/LocationController$3;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 320
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 18
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 125
    sget v13, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    move/from16 v0, p1

    if-ne v0, v13, :cond_6

    .line 126
    const/4 v13, 0x0

    aget-object v13, p2, v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 127
    .local v6, "did":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/LocationController;->isSharingLocation(J)Z

    move-result v13

    if-nez v13, :cond_1

    .line 187
    .end local v6    # "did":J
    :cond_0
    :goto_0
    return-void

    .line 130
    .restart local v6    # "did":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/LocationController;->locationsCache:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 131
    .local v10, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    if-eqz v10, :cond_0

    .line 134
    const/4 v13, 0x1

    aget-object v4, p2, v13

    check-cast v4, Ljava/util/ArrayList;

    .line 135
    .local v4, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v3, 0x0

    .line 136
    .local v3, "added":Z
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_5

    .line 137
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    .line 138
    .local v8, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 139
    const/4 v3, 0x1

    .line 140
    const/4 v11, 0x0

    .line 141
    .local v11, "replaced":Z
    const/4 v5, 0x0

    .local v5, "b":I
    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v5, v13, :cond_2

    .line 142
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Message;

    iget v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iget-object v14, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-ne v13, v14, :cond_4

    .line 143
    const/4 v11, 0x1

    .line 144
    iget-object v13, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v10, v5, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_2
    if-nez v11, :cond_3

    .line 149
    iget-object v13, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .end local v5    # "b":I
    .end local v11    # "replaced":Z
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 141
    .restart local v5    # "b":I
    .restart local v11    # "replaced":Z
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 153
    .end local v5    # "b":I
    .end local v8    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v11    # "replaced":Z
    :cond_5
    if-eqz v3, :cond_0

    .line 154
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v13

    sget v14, Lorg/telegram/messenger/NotificationCenter;->liveLocationsCacheChanged:I

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    .end local v2    # "a":I
    .end local v3    # "added":Z
    .end local v4    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v6    # "did":J
    .end local v10    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    :cond_6
    sget v13, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    move/from16 v0, p1

    if-eq v0, v13, :cond_0

    .line 158
    sget v13, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    move/from16 v0, p1

    if-ne v0, v13, :cond_0

    .line 159
    const/4 v13, 0x0

    aget-object v13, p2, v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 160
    .restart local v6    # "did":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/LocationController;->isSharingLocation(J)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 163
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/LocationController;->locationsCache:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 164
    .restart local v10    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    if-eqz v10, :cond_0

    .line 167
    const/4 v12, 0x0

    .line 168
    .local v12, "updated":Z
    const/4 v13, 0x1

    aget-object v9, p2, v13

    check-cast v9, Ljava/util/ArrayList;

    .line 169
    .local v9, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v2, 0x0

    .restart local v2    # "a":I
    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_a

    .line 170
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    .line 171
    .restart local v8    # "messageObject":Lorg/telegram/messenger/MessageObject;
    const/4 v5, 0x0

    .restart local v5    # "b":I
    :goto_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v5, v13, :cond_7

    .line 172
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Message;

    iget v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iget-object v14, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-ne v13, v14, :cond_9

    .line 173
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v13

    if-nez v13, :cond_8

    .line 174
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 178
    :goto_5
    const/4 v12, 0x1

    .line 169
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 176
    :cond_8
    iget-object v13, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v10, v5, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 171
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 183
    .end local v5    # "b":I
    .end local v8    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_a
    if-eqz v12, :cond_0

    .line 184
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v13

    sget v14, Lorg/telegram/messenger/NotificationCenter;->liveLocationsCacheChanged:I

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;
    .locals 3
    .param p1, "did"    # J

    .prologue
    .line 355
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    return-object v0
.end method

.method public isSharingLocation(J)Z
    .locals 3
    .param p1, "did"    # J

    .prologue
    .line 351
    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMapUI:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadLiveLocations(J)V
    .locals 3
    .param p1, "did"    # J

    .prologue
    .line 611
    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->cacheRequests:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v1

    if-ltz v1, :cond_0

    .line 643
    :goto_0
    return-void

    .line 614
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/LocationController;->cacheRequests:Landroid/util/LongSparseArray;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 615
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentLocations;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentLocations;-><init>()V

    .line 616
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentLocations;
    long-to-int v1, p1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentLocations;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 617
    const/16 v1, 0x64

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentLocations;->limit:I

    .line 618
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/LocationController$9;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/messenger/LocationController$9;-><init>(Lorg/telegram/messenger/LocationController;J)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public removeAllLocationSharings()V
    .locals 2

    .prologue
    .line 517
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/LocationController$8;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/LocationController$8;-><init>(Lorg/telegram/messenger/LocationController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 551
    return-void
.end method

.method public removeSharingLocation(J)V
    .locals 3
    .param p1, "did"    # J

    .prologue
    .line 468
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/LocationController$7;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/LocationController$7;-><init>(Lorg/telegram/messenger/LocationController;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 506
    return-void
.end method

.method public setGoogleMapLocation(Landroid/location/Location;Z)V
    .locals 5
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "first"    # Z

    .prologue
    const-wide/32 v2, 0x15f90

    const/4 v4, 0x0

    .line 554
    if-nez p1, :cond_0

    .line 566
    :goto_0
    return-void

    .line 557
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/LocationController;->lastLocationByGoogleMaps:Z

    .line 558
    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 559
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/LocationController;->lastLocationSendTime:J

    .line 560
    iput-boolean v4, p0, Lorg/telegram/messenger/LocationController;->locationSentSinceLastGoogleMapUpdate:Z

    .line 565
    :cond_2
    :goto_1
    iput-object p1, p0, Lorg/telegram/messenger/LocationController;->lastKnownLocation:Landroid/location/Location;

    goto :goto_0

    .line 561
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/messenger/LocationController;->locationSentSinceLastGoogleMapUpdate:Z

    if-eqz v0, :cond_2

    .line 562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/LocationController;->lastLocationSendTime:J

    .line 563
    iput-boolean v4, p0, Lorg/telegram/messenger/LocationController;->locationSentSinceLastGoogleMapUpdate:Z

    goto :goto_1
.end method

.method protected update()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 266
    iget-object v3, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 267
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 268
    iget-object v3, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    .line 269
    .local v2, "info":Lorg/telegram/messenger/LocationController$SharingLocationInfo;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    .line 270
    .local v1, "currentTime":I
    iget v3, v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->stopTime:I

    if-gt v3, v1, :cond_0

    .line 271
    iget-object v3, p0, Lorg/telegram/messenger/LocationController;->sharingLocations:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 272
    iget-object v3, p0, Lorg/telegram/messenger/LocationController;->sharingLocationsMap:Ljava/util/HashMap;

    iget-wide v4, v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-direct {p0, v2, v8}, Lorg/telegram/messenger/LocationController;->saveSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;I)V

    .line 274
    new-instance v3, Lorg/telegram/messenger/LocationController$2;

    invoke-direct {v3, p0, v2}, Lorg/telegram/messenger/LocationController$2;-><init>(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 285
    add-int/lit8 v0, v0, -0x1

    .line 267
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    .end local v1    # "currentTime":I
    .end local v2    # "info":Lorg/telegram/messenger/LocationController$SharingLocationInfo;
    :cond_1
    iget-boolean v3, p0, Lorg/telegram/messenger/LocationController;->started:Z

    if-nez v3, :cond_3

    .line 289
    iget-wide v4, p0, Lorg/telegram/messenger/LocationController;->lastLocationSendTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x15f90

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/LocationController;->lastLocationStartTime:J

    .line 291
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->start()V

    .line 302
    .end local v0    # "a":I
    :cond_2
    :goto_1
    return-void

    .line 294
    .restart local v0    # "a":I
    :cond_3
    iget-boolean v3, p0, Lorg/telegram/messenger/LocationController;->lastLocationByGoogleMaps:Z

    if-nez v3, :cond_4

    iget-wide v4, p0, Lorg/telegram/messenger/LocationController;->lastLocationStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 295
    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/telegram/messenger/LocationController;->lastLocationByGoogleMaps:Z

    .line 296
    iput-boolean v8, p0, Lorg/telegram/messenger/LocationController;->locationSentSinceLastGoogleMapUpdate:Z

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/LocationController;->lastLocationSendTime:J

    .line 298
    invoke-direct {p0}, Lorg/telegram/messenger/LocationController;->broadcastLastKnownLocation()V

    goto :goto_1
.end method
