.class public Lorg/telegram/ui/Components/SlideView;
.super Landroid/widget/LinearLayout;
.source "SlideView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public needBackButton()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public onCancelPressed()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public onDestroyActivity()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public onNextPressed()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public restoreStateParams(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 55
    return-void
.end method

.method public saveStateParams(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 51
    return-void
.end method

.method public setParams(Landroid/os/Bundle;Z)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "restore"    # Z

    .prologue
    .line 27
    return-void
.end method
