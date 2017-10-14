.class Lorg/telegram/ui/LoginActivity$PhoneView$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$PhoneView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

.field final synthetic val$this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 615
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$1;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView$1;->val$this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 618
    new-instance v0, Lorg/telegram/ui/CountrySelectActivity;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/ui/CountrySelectActivity;-><init>(Z)V

    .line 619
    .local v0, "fragment":Lorg/telegram/ui/CountrySelectActivity;
    new-instance v1, Lorg/telegram/ui/LoginActivity$PhoneView$1$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$PhoneView$1$1;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView$1;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/CountrySelectActivity;->setCountrySelectActivityDelegate(Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;)V

    .line 633
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$1;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/LoginActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 634
    return-void
.end method
