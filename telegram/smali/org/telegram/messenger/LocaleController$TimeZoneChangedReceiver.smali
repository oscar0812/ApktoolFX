.class Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeZoneChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/LocaleController;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/LocaleController;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/messenger/LocaleController;
    .param p2, "x1"    # Lorg/telegram/messenger/LocaleController$1;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver;-><init>(Lorg/telegram/messenger/LocaleController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 83
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver$1;-><init>(Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method
