.class Lorg/telegram/ui/Components/PasscodeView$10;
.super Ljava/lang/Object;
.source "PasscodeView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PasscodeView;->checkFingerprint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PasscodeView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PasscodeView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PasscodeView;

    .prologue
    .line 889
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$10;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 892
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$10;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$900(Lorg/telegram/ui/Components/PasscodeView;)Landroid/support/v4/os/CancellationSignal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$10;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;->access$1002(Lorg/telegram/ui/Components/PasscodeView;Z)Z

    .line 894
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$10;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$900(Lorg/telegram/ui/Components/PasscodeView;)Landroid/support/v4/os/CancellationSignal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/os/CancellationSignal;->cancel()V

    .line 895
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$10;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;->access$902(Lorg/telegram/ui/Components/PasscodeView;Landroid/support/v4/os/CancellationSignal;)Landroid/support/v4/os/CancellationSignal;

    .line 897
    :cond_0
    return-void
.end method
