.class Lorg/telegram/ui/PopupNotificationActivity$7;
.super Ljava/lang/Object;
.source "PopupNotificationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PopupNotificationActivity;->onTouchEventMy(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PopupNotificationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PopupNotificationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 641
    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity$7;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 644
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$7;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$1002(Lorg/telegram/ui/PopupNotificationActivity;Z)Z

    .line 645
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$7;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$1200(Lorg/telegram/ui/PopupNotificationActivity;I)V

    .line 646
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$7;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    .line 647
    return-void
.end method
