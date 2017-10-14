.class Lorg/telegram/ui/LoginActivity$PhoneView$1$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$PhoneView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/LoginActivity$PhoneView$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$PhoneView$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/LoginActivity$PhoneView$1;

    .prologue
    .line 619
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$1$1;->this$2:Lorg/telegram/ui/LoginActivity$PhoneView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectCountry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;

    .prologue
    .line 622
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$1$1;->this$2:Lorg/telegram/ui/LoginActivity$PhoneView$1;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView$1;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->selectCountry(Ljava/lang/String;)V

    .line 623
    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneView$1$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$PhoneView$1$1$1;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView$1$1;)V

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 629
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$1$1;->this$2:Lorg/telegram/ui/LoginActivity$PhoneView$1;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView$1;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$500(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintEditText;->requestFocus()Z

    .line 630
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$1$1;->this$2:Lorg/telegram/ui/LoginActivity$PhoneView$1;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView$1;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$500(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$1$1;->this$2:Lorg/telegram/ui/LoginActivity$PhoneView$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$PhoneView$1;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$500(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintEditText;->setSelection(I)V

    .line 631
    return-void
.end method
