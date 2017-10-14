.class Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->setParams(Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    .prologue
    .line 2440
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2443
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->access$6500(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 2448
    :goto_0
    return-void

    .line 2446
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->access$6600(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)V

    .line 2447
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->access$6500(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
