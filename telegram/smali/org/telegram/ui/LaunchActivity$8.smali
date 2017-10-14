.class Lorg/telegram/ui/LaunchActivity$8;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/SharingLocationsAlert$SharingLocationsAlertDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->handleIntent(Landroid/content/Intent;ZZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 1190
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 4
    .param p1, "info"    # Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    .prologue
    .line 1193
    new-instance v2, Lorg/telegram/ui/LocationActivity;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lorg/telegram/ui/LocationActivity;-><init>(I)V

    .line 1194
    .local v2, "locationActivity":Lorg/telegram/ui/LocationActivity;
    iget-object v3, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/LocationActivity;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 1195
    iget-object v3, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    .line 1196
    .local v0, "dialog_id":J
    new-instance v3, Lorg/telegram/ui/LaunchActivity$8$1;

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/ui/LaunchActivity$8$1;-><init>(Lorg/telegram/ui/LaunchActivity$8;J)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/LocationActivity;->setDelegate(Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;)V

    .line 1202
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1203
    return-void
.end method
