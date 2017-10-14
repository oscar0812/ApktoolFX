.class Lorg/telegram/ui/ChangeUsernameActivity$5$1$1;
.super Ljava/lang/Object;
.source "ChangeUsernameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeUsernameActivity$5$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChangeUsernameActivity$5$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeUsernameActivity$5$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/ChangeUsernameActivity$5$1;

    .prologue
    .line 343
    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$5$1$1;->this$2:Lorg/telegram/ui/ChangeUsernameActivity$5$1;

    iput-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$5$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ChangeUsernameActivity$5$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$5$1$1;->this$2:Lorg/telegram/ui/ChangeUsernameActivity$5$1;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$5$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$5;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$5;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {v0, v5}, Lorg/telegram/ui/ChangeUsernameActivity;->access$802(Lorg/telegram/ui/ChangeUsernameActivity;I)I

    .line 347
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$5$1$1;->this$2:Lorg/telegram/ui/ChangeUsernameActivity$5$1;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$5$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$5;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$5;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChangeUsernameActivity;->access$900(Lorg/telegram/ui/ChangeUsernameActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$5$1$1;->this$2:Lorg/telegram/ui/ChangeUsernameActivity$5$1;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$5$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$5;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$5;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChangeUsernameActivity;->access$900(Lorg/telegram/ui/ChangeUsernameActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$5$1$1;->this$2:Lorg/telegram/ui/ChangeUsernameActivity$5$1;

    iget-object v1, v1, Lorg/telegram/ui/ChangeUsernameActivity$5$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$5;

    iget-object v1, v1, Lorg/telegram/ui/ChangeUsernameActivity$5;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$5$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$5$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$5$1$1;->this$2:Lorg/telegram/ui/ChangeUsernameActivity$5$1;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$5$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$5;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$5;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChangeUsernameActivity;->access$1000(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "UsernameAvailable"

    const v2, 0x7f07061b

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity$5$1$1;->this$2:Lorg/telegram/ui/ChangeUsernameActivity$5$1;

    iget-object v4, v4, Lorg/telegram/ui/ChangeUsernameActivity$5$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$5;

    iget-object v4, v4, Lorg/telegram/ui/ChangeUsernameActivity$5;->val$name:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$5$1$1;->this$2:Lorg/telegram/ui/ChangeUsernameActivity$5$1;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$5$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$5;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$5;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChangeUsernameActivity;->access$1000(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "windowBackgroundWhiteGreenText"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$5$1$1;->this$2:Lorg/telegram/ui/ChangeUsernameActivity$5$1;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$5$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$5;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$5;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChangeUsernameActivity;->access$1000(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "windowBackgroundWhiteGreenText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$5$1$1;->this$2:Lorg/telegram/ui/ChangeUsernameActivity$5$1;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$5$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$5;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$5;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {v0, v6}, Lorg/telegram/ui/ChangeUsernameActivity;->access$1102(Lorg/telegram/ui/ChangeUsernameActivity;Z)Z

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$5$1$1;->this$2:Lorg/telegram/ui/ChangeUsernameActivity$5$1;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$5$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$5;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$5;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChangeUsernameActivity;->access$1000(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "UsernameInUse"

    const v2, 0x7f070620

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$5$1$1;->this$2:Lorg/telegram/ui/ChangeUsernameActivity$5$1;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$5$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$5;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$5;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChangeUsernameActivity;->access$1000(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "windowBackgroundWhiteRedText4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 356
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$5$1$1;->this$2:Lorg/telegram/ui/ChangeUsernameActivity$5$1;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$5$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$5;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$5;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChangeUsernameActivity;->access$1000(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "windowBackgroundWhiteRedText4"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$5$1$1;->this$2:Lorg/telegram/ui/ChangeUsernameActivity$5$1;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$5$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$5;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$5;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {v0, v5}, Lorg/telegram/ui/ChangeUsernameActivity;->access$1102(Lorg/telegram/ui/ChangeUsernameActivity;Z)Z

    goto :goto_0
.end method
