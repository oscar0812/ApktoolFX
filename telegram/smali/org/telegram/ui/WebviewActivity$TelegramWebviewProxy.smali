.class Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;
.super Ljava/lang/Object;
.source "WebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/WebviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelegramWebviewProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/WebviewActivity;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/WebviewActivity;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/WebviewActivity;Lorg/telegram/ui/WebviewActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/ui/WebviewActivity;
    .param p2, "x1"    # Lorg/telegram/ui/WebviewActivity$1;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;-><init>(Lorg/telegram/ui/WebviewActivity;)V

    return-void
.end method


# virtual methods
.method public postEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventData"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy$1;-><init>(Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method
