.class Lorg/telegram/ui/TwoStepVerificationActivity$5$1;
.super Ljava/lang/Object;
.source "TwoStepVerificationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TwoStepVerificationActivity$5;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/TwoStepVerificationActivity$5;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/TwoStepVerificationActivity$5;

    .prologue
    .line 343
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 346
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$5;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$800(Lorg/telegram/ui/TwoStepVerificationActivity;Z)V

    .line 347
    return-void
.end method
