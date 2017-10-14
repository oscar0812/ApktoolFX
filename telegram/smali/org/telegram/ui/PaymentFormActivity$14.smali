.class Lorg/telegram/ui/PaymentFormActivity$14;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 1468
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$14;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 1471
    const/4 v1, 0x5

    if-ne p2, v1, :cond_3

    .line 1472
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1473
    .local v0, "num":I
    :cond_0
    add-int/lit8 v1, v0, 0x1

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity$14;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v3}, Lorg/telegram/ui/PaymentFormActivity;->access$1300(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 1474
    add-int/lit8 v0, v0, 0x1

    .line 1475
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1476
    add-int/lit8 v0, v0, 0x1

    .line 1478
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$14;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$1300(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1479
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$14;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$1300(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->requestFocus()Z

    :cond_2
    move v1, v2

    .line 1488
    .end local v0    # "num":I
    :goto_0
    return v1

    .line 1484
    :cond_3
    const/4 v1, 0x6

    if-ne p2, v1, :cond_4

    .line 1485
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$14;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$2000(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->performClick()Z

    move v1, v2

    .line 1486
    goto :goto_0

    .line 1488
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method
