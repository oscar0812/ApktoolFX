.class Lorg/telegram/messenger/NotificationsController$7$1;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/NotificationsController$7;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationsController$7;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/NotificationsController$7;

    .prologue
    .line 423
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$7$1;->this$1:Lorg/telegram/messenger/NotificationsController$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$7$1;->this$1:Lorg/telegram/messenger/NotificationsController$7;

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController$7$1;->this$1:Lorg/telegram/messenger/NotificationsController$7;

    iget-object v1, v1, Lorg/telegram/messenger/NotificationsController$7;->val$popupArray:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    .line 427
    return-void
.end method
