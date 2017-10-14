.class Lorg/telegram/messenger/WearDataLayerListenerService$5;
.super Ljava/lang/Object;
.source "WearDataLayerListenerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/WearDataLayerListenerService;->onChannelOpened(Lcom/google/android/gms/wearable/Channel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/WearDataLayerListenerService;

.field final synthetic val$listener:Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/WearDataLayerListenerService;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/WearDataLayerListenerService;

    .prologue
    .line 143
    iput-object p1, p0, Lorg/telegram/messenger/WearDataLayerListenerService$5;->this$0:Lorg/telegram/messenger/WearDataLayerListenerService;

    iput-object p2, p0, Lorg/telegram/messenger/WearDataLayerListenerService$5;->val$listener:Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 146
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/WearDataLayerListenerService$5;->val$listener:Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 147
    return-void
.end method
