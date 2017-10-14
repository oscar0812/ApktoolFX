.class Lorg/telegram/messenger/NotificationsController$13;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController;->setBadge(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationsController;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationsController;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 900
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$13;->this$0:Lorg/telegram/messenger/NotificationsController;

    iput p2, p0, Lorg/telegram/messenger/NotificationsController$13;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 903
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$13;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v0}, Lorg/telegram/messenger/NotificationsController;->access$1100(Lorg/telegram/messenger/NotificationsController;)I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/NotificationsController$13;->val$count:I

    if-ne v0, v1, :cond_0

    .line 908
    :goto_0
    return-void

    .line 906
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$13;->this$0:Lorg/telegram/messenger/NotificationsController;

    iget v1, p0, Lorg/telegram/messenger/NotificationsController$13;->val$count:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/NotificationsController;->access$1102(Lorg/telegram/messenger/NotificationsController;I)I

    .line 907
    iget v0, p0, Lorg/telegram/messenger/NotificationsController$13;->val$count:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationBadge;->applyCount(I)Z

    goto :goto_0
.end method
