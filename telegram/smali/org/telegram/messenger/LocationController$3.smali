.class Lorg/telegram/messenger/LocationController$3;
.super Ljava/lang/Object;
.source "LocationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/LocationController;->cleanup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/LocationController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/LocationController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/LocationController;

    .prologue
    .line 310
    iput-object p1, p0, Lorg/telegram/messenger/LocationController$3;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lorg/telegram/messenger/LocationController$3;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->access$900(Lorg/telegram/messenger/LocationController;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 314
    iget-object v0, p0, Lorg/telegram/messenger/LocationController$3;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->access$700(Lorg/telegram/messenger/LocationController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 315
    iget-object v0, p0, Lorg/telegram/messenger/LocationController$3;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->access$600(Lorg/telegram/messenger/LocationController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 316
    iget-object v0, p0, Lorg/telegram/messenger/LocationController$3;->this$0:Lorg/telegram/messenger/LocationController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocationController;->access$102(Lorg/telegram/messenger/LocationController;Landroid/location/Location;)Landroid/location/Location;

    .line 317
    iget-object v0, p0, Lorg/telegram/messenger/LocationController$3;->this$0:Lorg/telegram/messenger/LocationController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocationController;->access$1200(Lorg/telegram/messenger/LocationController;Z)V

    .line 318
    return-void
.end method
