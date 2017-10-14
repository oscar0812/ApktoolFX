.class Lorg/telegram/messenger/LocationController$8$2;
.super Ljava/lang/Object;
.source "LocationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/LocationController$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/LocationController$8;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/LocationController$8;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/LocationController$8;

    .prologue
    .line 540
    iput-object p1, p0, Lorg/telegram/messenger/LocationController$8$2;->this$1:Lorg/telegram/messenger/LocationController$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 543
    iget-object v0, p0, Lorg/telegram/messenger/LocationController$8$2;->this$1:Lorg/telegram/messenger/LocationController$8;

    iget-object v0, v0, Lorg/telegram/messenger/LocationController$8;->this$0:Lorg/telegram/messenger/LocationController;

    iget-object v0, v0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 544
    iget-object v0, p0, Lorg/telegram/messenger/LocationController$8$2;->this$1:Lorg/telegram/messenger/LocationController$8;

    iget-object v0, v0, Lorg/telegram/messenger/LocationController$8;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->access$1000(Lorg/telegram/messenger/LocationController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 545
    iget-object v0, p0, Lorg/telegram/messenger/LocationController$8$2;->this$1:Lorg/telegram/messenger/LocationController$8;

    iget-object v0, v0, Lorg/telegram/messenger/LocationController$8;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->access$1100(Lorg/telegram/messenger/LocationController;)V

    .line 546
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 547
    return-void
.end method
