.class Lorg/telegram/messenger/WearDataLayerListenerService$2;
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

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/WearDataLayerListenerService;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/WearDataLayerListenerService;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/telegram/messenger/WearDataLayerListenerService$2;->this$0:Lorg/telegram/messenger/WearDataLayerListenerService;

    iput-object p2, p0, Lorg/telegram/messenger/WearDataLayerListenerService$2;->val$listener:Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    iput-object p3, p0, Lorg/telegram/messenger/WearDataLayerListenerService$2;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 82
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/WearDataLayerListenerService$2;->val$listener:Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 83
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/WearDataLayerListenerService$2;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;II)V

    .line 84
    return-void
.end method
