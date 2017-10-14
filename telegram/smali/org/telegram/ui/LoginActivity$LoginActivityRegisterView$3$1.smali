.class Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;

    .prologue
    .line 2798
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v3, 0x1

    .line 2801
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    invoke-virtual {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->onBackPressed()V

    .line 2802
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 2803
    return-void
.end method
