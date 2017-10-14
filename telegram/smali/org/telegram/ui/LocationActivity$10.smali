.class Lorg/telegram/ui/LocationActivity$10;
.super Ljava/lang/Object;
.source "LocationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$map:Lcom/google/android/gms/maps/MapView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity;Lcom/google/android/gms/maps/MapView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 534
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$10;->this$0:Lorg/telegram/ui/LocationActivity;

    iput-object p2, p0, Lorg/telegram/ui/LocationActivity$10;->val$map:Lcom/google/android/gms/maps/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 538
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$10;->val$map:Lcom/google/android/gms/maps/MapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :goto_0
    new-instance v0, Lorg/telegram/ui/LocationActivity$10$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LocationActivity$10$1;-><init>(Lorg/telegram/ui/LocationActivity$10;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 567
    return-void

    .line 539
    :catch_0
    move-exception v0

    goto :goto_0
.end method
