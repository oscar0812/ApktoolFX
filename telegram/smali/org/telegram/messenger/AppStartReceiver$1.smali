.class Lorg/telegram/messenger/AppStartReceiver$1;
.super Ljava/lang/Object;
.source "AppStartReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/AppStartReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/AppStartReceiver;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/AppStartReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/AppStartReceiver;

    .prologue
    .line 17
    iput-object p1, p0, Lorg/telegram/messenger/AppStartReceiver$1;->this$0:Lorg/telegram/messenger/AppStartReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 20
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->startPushService()V

    .line 21
    return-void
.end method
