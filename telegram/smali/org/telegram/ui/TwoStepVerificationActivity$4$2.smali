.class Lorg/telegram/ui/TwoStepVerificationActivity$4$2;
.super Ljava/lang/Object;
.source "TwoStepVerificationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TwoStepVerificationActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/TwoStepVerificationActivity$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/TwoStepVerificationActivity$4;

    .prologue
    .line 300
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$4$2;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$4$2;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$4;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$702(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$4$2;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$4;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$800(Lorg/telegram/ui/TwoStepVerificationActivity;Z)V

    .line 305
    return-void
.end method
