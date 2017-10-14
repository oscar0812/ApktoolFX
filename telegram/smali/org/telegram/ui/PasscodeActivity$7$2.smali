.class Lorg/telegram/ui/PasscodeActivity$7$2;
.super Ljava/lang/Object;
.source "PasscodeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PasscodeActivity$7;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PasscodeActivity$7;

.field final synthetic val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/PasscodeActivity$7;Lorg/telegram/ui/Components/NumberPicker;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PasscodeActivity$7;

    .prologue
    .line 361
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$7$2;->this$1:Lorg/telegram/ui/PasscodeActivity$7;

    iput-object p2, p0, Lorg/telegram/ui/PasscodeActivity$7$2;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    iput p3, p0, Lorg/telegram/ui/PasscodeActivity$7$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$7$2;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result p2

    .line 365
    if-nez p2, :cond_1

    .line 366
    sput v2, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    .line 376
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$7$2;->this$1:Lorg/telegram/ui/PasscodeActivity$7;

    iget-object v0, v0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1200(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/PasscodeActivity$7$2;->val$position:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->notifyItemChanged(I)V

    .line 377
    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 378
    return-void

    .line 367
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 368
    const/16 v0, 0x3c

    sput v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    goto :goto_0

    .line 369
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 370
    const/16 v0, 0x12c

    sput v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    goto :goto_0

    .line 371
    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 372
    const/16 v0, 0xe10

    sput v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    goto :goto_0

    .line 373
    :cond_4
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 374
    const/16 v0, 0x4650

    sput v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    goto :goto_0
.end method
