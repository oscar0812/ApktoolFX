.class Lorg/telegram/ui/Components/ShutterButton$1;
.super Ljava/lang/Object;
.source "ShutterButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ShutterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ShutterButton;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShutterButton;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ShutterButton;

    .prologue
    .line 46
    iput-object p1, p0, Lorg/telegram/ui/Components/ShutterButton$1;->this$0:Lorg/telegram/ui/Components/ShutterButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton$1;->this$0:Lorg/telegram/ui/Components/ShutterButton;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShutterButton;->access$000(Lorg/telegram/ui/Components/ShutterButton;)Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton$1;->this$0:Lorg/telegram/ui/Components/ShutterButton;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShutterButton;->access$000(Lorg/telegram/ui/Components/ShutterButton;)Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;->shutterLongPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton$1;->this$0:Lorg/telegram/ui/Components/ShutterButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ShutterButton;->access$102(Lorg/telegram/ui/Components/ShutterButton;Z)Z

    .line 53
    :cond_0
    return-void
.end method
