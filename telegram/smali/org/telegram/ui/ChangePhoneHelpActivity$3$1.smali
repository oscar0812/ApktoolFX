.class Lorg/telegram/ui/ChangePhoneHelpActivity$3$1;
.super Ljava/lang/Object;
.source "ChangePhoneHelpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangePhoneHelpActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChangePhoneHelpActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangePhoneHelpActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChangePhoneHelpActivity$3;

    .prologue
    .line 131
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneHelpActivity$3$1;->this$1:Lorg/telegram/ui/ChangePhoneHelpActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneHelpActivity$3$1;->this$1:Lorg/telegram/ui/ChangePhoneHelpActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ChangePhoneHelpActivity$3;->this$0:Lorg/telegram/ui/ChangePhoneHelpActivity;

    new-instance v1, Lorg/telegram/ui/ChangePhoneActivity;

    invoke-direct {v1}, Lorg/telegram/ui/ChangePhoneActivity;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ChangePhoneHelpActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 135
    return-void
.end method
