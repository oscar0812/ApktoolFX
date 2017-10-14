.class Lorg/telegram/tgnet/ConnectionsManager$2;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/tgnet/ConnectionsManager;->init(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/tgnet/ConnectionsManager;


# direct methods
.method constructor <init>(Lorg/telegram/tgnet/ConnectionsManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/tgnet/ConnectionsManager;

    .prologue
    .line 253
    iput-object p1, p0, Lorg/telegram/tgnet/ConnectionsManager$2;->this$0:Lorg/telegram/tgnet/ConnectionsManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 256
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager$2;->this$0:Lorg/telegram/tgnet/ConnectionsManager;

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->access$000(Lorg/telegram/tgnet/ConnectionsManager;)V

    .line 257
    return-void
.end method
