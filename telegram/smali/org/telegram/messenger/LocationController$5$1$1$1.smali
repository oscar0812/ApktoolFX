.class Lorg/telegram/messenger/LocationController$5$1$1$1;
.super Ljava/lang/Object;
.source "LocationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/LocationController$5$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/messenger/LocationController$5$1$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/LocationController$5$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lorg/telegram/messenger/LocationController$5$1$1;

    .prologue
    .line 407
    iput-object p1, p0, Lorg/telegram/messenger/LocationController$5$1$1$1;->this$3:Lorg/telegram/messenger/LocationController$5$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 410
    iget-object v2, p0, Lorg/telegram/messenger/LocationController$5$1$1$1;->this$3:Lorg/telegram/messenger/LocationController$5$1$1;

    iget-object v2, v2, Lorg/telegram/messenger/LocationController$5$1$1;->this$2:Lorg/telegram/messenger/LocationController$5$1;

    iget-object v2, v2, Lorg/telegram/messenger/LocationController$5$1;->this$1:Lorg/telegram/messenger/LocationController$5;

    iget-object v2, v2, Lorg/telegram/messenger/LocationController$5;->this$0:Lorg/telegram/messenger/LocationController;

    iget-object v2, v2, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/messenger/LocationController$5$1$1$1;->this$3:Lorg/telegram/messenger/LocationController$5$1$1;

    iget-object v3, v3, Lorg/telegram/messenger/LocationController$5$1$1;->this$2:Lorg/telegram/messenger/LocationController$5$1;

    iget-object v3, v3, Lorg/telegram/messenger/LocationController$5$1;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 411
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/LocationController$5$1$1$1;->this$3:Lorg/telegram/messenger/LocationController$5$1$1;

    iget-object v2, v2, Lorg/telegram/messenger/LocationController$5$1$1;->this$2:Lorg/telegram/messenger/LocationController$5$1;

    iget-object v2, v2, Lorg/telegram/messenger/LocationController$5$1;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 412
    iget-object v2, p0, Lorg/telegram/messenger/LocationController$5$1$1$1;->this$3:Lorg/telegram/messenger/LocationController$5$1$1;

    iget-object v2, v2, Lorg/telegram/messenger/LocationController$5$1$1;->this$2:Lorg/telegram/messenger/LocationController$5$1;

    iget-object v2, v2, Lorg/telegram/messenger/LocationController$5$1;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    .line 413
    .local v1, "info":Lorg/telegram/messenger/LocationController$SharingLocationInfo;
    iget-object v2, p0, Lorg/telegram/messenger/LocationController$5$1$1$1;->this$3:Lorg/telegram/messenger/LocationController$5$1$1;

    iget-object v2, v2, Lorg/telegram/messenger/LocationController$5$1$1;->this$2:Lorg/telegram/messenger/LocationController$5$1;

    iget-object v2, v2, Lorg/telegram/messenger/LocationController$5$1;->this$1:Lorg/telegram/messenger/LocationController$5;

    iget-object v2, v2, Lorg/telegram/messenger/LocationController$5;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v2}, Lorg/telegram/messenger/LocationController;->access$1000(Lorg/telegram/messenger/LocationController;)Ljava/util/HashMap;

    move-result-object v2

    iget-wide v4, v1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    .end local v1    # "info":Lorg/telegram/messenger/LocationController$SharingLocationInfo;
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/LocationController$5$1$1$1;->this$3:Lorg/telegram/messenger/LocationController$5$1$1;

    iget-object v2, v2, Lorg/telegram/messenger/LocationController$5$1$1;->this$2:Lorg/telegram/messenger/LocationController$5$1;

    iget-object v2, v2, Lorg/telegram/messenger/LocationController$5$1;->this$1:Lorg/telegram/messenger/LocationController$5;

    iget-object v2, v2, Lorg/telegram/messenger/LocationController$5;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v2}, Lorg/telegram/messenger/LocationController;->access$1300(Lorg/telegram/messenger/LocationController;)V

    .line 416
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 417
    return-void
.end method
