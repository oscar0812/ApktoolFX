.class Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;

    .prologue
    .line 1579
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1582
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_0

    .line 1583
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3700(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1584
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3800(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    .line 1586
    :cond_0
    return-void
.end method
