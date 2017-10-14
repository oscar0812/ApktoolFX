.class final Lorg/telegram/ui/Components/voip/VoIPHelper$8;
.super Ljava/lang/Object;
.source "VoIPHelper.java"

# interfaces
.implements Lorg/telegram/ui/Components/BetterRatingView$OnRatingChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/VoIPHelper;->showRateAlert(Landroid/content/Context;Ljava/lang/Runnable;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$btn:Landroid/view/View;

.field final synthetic val$checkbox:Lorg/telegram/ui/Cells/CheckBoxCell;

.field final synthetic val$commentBox:Landroid/widget/EditText;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$log:Ljava/io/File;

.field final synthetic val$logsText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/widget/EditText;Landroid/content/Context;Ljava/io/File;Lorg/telegram/ui/Cells/CheckBoxCell;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$8;->val$btn:Landroid/view/View;

    iput-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$8;->val$commentBox:Landroid/widget/EditText;

    iput-object p3, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$8;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$8;->val$log:Ljava/io/File;

    iput-object p5, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$8;->val$checkbox:Lorg/telegram/ui/Cells/CheckBoxCell;

    iput-object p6, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$8;->val$logsText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(I)V
    .locals 6
    .param p1, "rating"    # I

    .prologue
    const/4 v5, 0x4

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 312
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$8;->val$btn:Landroid/view/View;

    if-lez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 313
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$8;->val$commentBox:Landroid/widget/EditText;

    if-ge p1, v5, :cond_3

    const-string/jumbo v0, "CallReportHint"

    const v4, 0x7f0700ea

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$8;->val$commentBox:Landroid/widget/EditText;

    const/4 v0, 0x5

    if-ge p1, v0, :cond_4

    if-lez p1, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$8;->val$commentBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$8;->val$context:Landroid/content/Context;

    const-string/jumbo v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$8;->val$commentBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 318
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$8;->val$log:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$8;->val$checkbox:Lorg/telegram/ui/Cells/CheckBoxCell;

    if-ge p1, v5, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$8;->val$logsText:Landroid/widget/TextView;

    if-ge p1, v5, :cond_6

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 312
    goto :goto_0

    .line 313
    :cond_3
    const-string/jumbo v0, "VoipFeedbackCommentHint"

    const v4, 0x7f07063e

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move v0, v2

    .line 314
    goto :goto_2

    :cond_5
    move v0, v2

    .line 319
    goto :goto_3

    :cond_6
    move v1, v2

    .line 320
    goto :goto_4
.end method
