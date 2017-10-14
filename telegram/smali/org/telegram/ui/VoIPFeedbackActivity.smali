.class public Lorg/telegram/ui/VoIPFeedbackActivity;
.super Landroid/app/Activity;
.source "VoIPFeedbackActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 51
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/VoIPFeedbackActivity;->overridePendingTransition(II)V

    .line 52
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 33
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPFeedbackActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0, v2, v2}, Lorg/telegram/ui/VoIPFeedbackActivity;->overridePendingTransition(II)V

    .line 38
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/VoIPFeedbackActivity;->setContentView(Landroid/view/View;)V

    .line 40
    new-instance v1, Lorg/telegram/ui/VoIPFeedbackActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPFeedbackActivity$1;-><init>(Lorg/telegram/ui/VoIPFeedbackActivity;)V

    .line 45
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPFeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "call_id"

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/telegram/ui/VoIPFeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "call_access_hash"

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-object v0, p0

    .line 40
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/voip/VoIPHelper;->showRateAlert(Landroid/content/Context;Ljava/lang/Runnable;JJ)V

    .line 46
    return-void
.end method
