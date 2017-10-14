.class Lorg/telegram/messenger/SendMessagesHelper$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/SendMessagesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SendMessagesHelper;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/SendMessagesHelper;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationAcquired(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-static {v0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->access$000(Lorg/telegram/messenger/SendMessagesHelper;Landroid/location/Location;)V

    .line 68
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->access$100(Lorg/telegram/messenger/SendMessagesHelper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 69
    return-void
.end method

.method public onUnableLocationAcquire()V
    .locals 5

    .prologue
    .line 73
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->access$100(Lorg/telegram/messenger/SendMessagesHelper;)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 74
    .local v0, "waitingForLocationCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/MessageObject;>;"
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->wasUnableToFindCurrentLocation:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 75
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->access$100(Lorg/telegram/messenger/SendMessagesHelper;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 76
    return-void
.end method
