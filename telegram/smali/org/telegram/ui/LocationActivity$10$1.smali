.class Lorg/telegram/ui/LocationActivity$10$1;
.super Ljava/lang/Object;
.source "LocationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LocationActivity$10;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity$10;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/LocationActivity$10;

    .prologue
    .line 542
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$10$1;->this$1:Lorg/telegram/ui/LocationActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 545
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$10$1;->this$1:Lorg/telegram/ui/LocationActivity$10;

    iget-object v1, v1, Lorg/telegram/ui/LocationActivity$10;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$2600(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/MapView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$10$1;->this$1:Lorg/telegram/ui/LocationActivity$10;

    iget-object v1, v1, Lorg/telegram/ui/LocationActivity$10;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/LocationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 547
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$10$1;->this$1:Lorg/telegram/ui/LocationActivity$10;

    iget-object v1, v1, Lorg/telegram/ui/LocationActivity$10;->val$map:Lcom/google/android/gms/maps/MapView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 548
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$10$1;->this$1:Lorg/telegram/ui/LocationActivity$10;

    iget-object v1, v1, Lorg/telegram/ui/LocationActivity$10;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/LocationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I

    .line 549
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$10$1;->this$1:Lorg/telegram/ui/LocationActivity$10;

    iget-object v1, v1, Lorg/telegram/ui/LocationActivity$10;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$2600(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/MapView;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LocationActivity$10$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LocationActivity$10$1$1;-><init>(Lorg/telegram/ui/LocationActivity$10$1;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/MapView;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 557
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$10$1;->this$1:Lorg/telegram/ui/LocationActivity$10;

    iget-object v1, v1, Lorg/telegram/ui/LocationActivity$10;->this$0:Lorg/telegram/ui/LocationActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/LocationActivity;->access$2802(Lorg/telegram/ui/LocationActivity;Z)Z

    .line 558
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$10$1;->this$1:Lorg/telegram/ui/LocationActivity$10;

    iget-object v1, v1, Lorg/telegram/ui/LocationActivity$10;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$2900(Lorg/telegram/ui/LocationActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$10$1;->this$1:Lorg/telegram/ui/LocationActivity$10;

    iget-object v1, v1, Lorg/telegram/ui/LocationActivity$10;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$2600(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/MapView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
