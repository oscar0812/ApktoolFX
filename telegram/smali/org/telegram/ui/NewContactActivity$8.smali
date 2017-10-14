.class Lorg/telegram/ui/NewContactActivity$8;
.super Ljava/lang/Object;
.source "NewContactActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/NewContactActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/NewContactActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/NewContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/NewContactActivity;

    .prologue
    .line 382
    iput-object p1, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 11
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 395
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$900(Lorg/telegram/ui/NewContactActivity;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 456
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lorg/telegram/ui/NewContactActivity;->access$902(Lorg/telegram/ui/NewContactActivity;Z)Z

    .line 399
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$200(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 400
    .local v6, "text":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$200(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v8

    invoke-virtual {v8, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setText(Ljava/lang/CharSequence;)V

    .line 401
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 402
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$1000(Lorg/telegram/ui/NewContactActivity;)Landroid/widget/TextView;

    move-result-object v8

    const-string/jumbo v9, "ChooseCountry"

    const v10, 0x7f070167

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    .line 404
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lorg/telegram/ui/NewContactActivity;->access$1102(Lorg/telegram/ui/NewContactActivity;I)I

    .line 455
    :cond_1
    :goto_1
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lorg/telegram/ui/NewContactActivity;->access$902(Lorg/telegram/ui/NewContactActivity;Z)Z

    goto :goto_0

    .line 407
    :cond_2
    const/4 v4, 0x0

    .line 408
    .local v4, "ok":Z
    const/4 v7, 0x0

    .line 409
    .local v7, "textToSet":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-le v8, v9, :cond_4

    .line 410
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lorg/telegram/ui/NewContactActivity;->access$902(Lorg/telegram/ui/NewContactActivity;Z)Z

    .line 411
    const/4 v0, 0x4

    .local v0, "a":I
    :goto_2
    const/4 v8, 0x1

    if-lt v0, v8, :cond_3

    .line 412
    const/4 v8, 0x0

    invoke-virtual {v6, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 413
    .local v5, "sub":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$1200(Lorg/telegram/ui/NewContactActivity;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 414
    .local v1, "country":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 415
    const/4 v4, 0x1

    .line 416
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v9}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 417
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$200(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v8

    move-object v6, v5

    invoke-virtual {v8, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setText(Ljava/lang/CharSequence;)V

    .line 421
    .end local v1    # "country":Ljava/lang/String;
    .end local v5    # "sub":Ljava/lang/String;
    :cond_3
    if-nez v4, :cond_4

    .line 422
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lorg/telegram/ui/NewContactActivity;->access$902(Lorg/telegram/ui/NewContactActivity;Z)Z

    .line 423
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v9}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 424
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$200(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setText(Ljava/lang/CharSequence;)V

    .line 427
    .end local v0    # "a":I
    :cond_4
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$1200(Lorg/telegram/ui/NewContactActivity;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 428
    .restart local v1    # "country":Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 429
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$1300(Lorg/telegram/ui/NewContactActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 430
    .local v3, "index":I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_8

    .line 431
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lorg/telegram/ui/NewContactActivity;->access$1402(Lorg/telegram/ui/NewContactActivity;Z)Z

    .line 432
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$1000(Lorg/telegram/ui/NewContactActivity;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$1300(Lorg/telegram/ui/NewContactActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$1500(Lorg/telegram/ui/NewContactActivity;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 434
    .local v2, "hint":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v9

    if-eqz v2, :cond_7

    const/16 v8, 0x58

    const/16 v10, 0x2013

    invoke-virtual {v2, v8, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v9, v8}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    .line 435
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lorg/telegram/ui/NewContactActivity;->access$1102(Lorg/telegram/ui/NewContactActivity;I)I

    .line 446
    .end local v2    # "hint":Ljava/lang/String;
    .end local v3    # "index":I
    :goto_4
    if-nez v4, :cond_5

    .line 447
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$200(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v9}, Lorg/telegram/ui/NewContactActivity;->access$200(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 449
    :cond_5
    if-eqz v7, :cond_1

    .line 450
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/HintEditText;->requestFocus()Z

    .line 451
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/HintEditText;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v9}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/HintEditText;->setSelection(I)V

    goto/16 :goto_1

    .line 411
    .restart local v0    # "a":I
    .restart local v5    # "sub":Ljava/lang/String;
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_2

    .line 434
    .end local v0    # "a":I
    .end local v5    # "sub":Ljava/lang/String;
    .restart local v2    # "hint":Ljava/lang/String;
    .restart local v3    # "index":I
    :cond_7
    const/4 v8, 0x0

    goto :goto_3

    .line 437
    .end local v2    # "hint":Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$1000(Lorg/telegram/ui/NewContactActivity;)Landroid/widget/TextView;

    move-result-object v8

    const-string/jumbo v9, "WrongCountry"

    const v10, 0x7f07066b

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    .line 439
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lorg/telegram/ui/NewContactActivity;->access$1102(Lorg/telegram/ui/NewContactActivity;I)I

    goto :goto_4

    .line 442
    .end local v3    # "index":I
    :cond_9
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$1000(Lorg/telegram/ui/NewContactActivity;)Landroid/widget/TextView;

    move-result-object v8

    const-string/jumbo v9, "WrongCountry"

    const v10, 0x7f07066b

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v8}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    .line 444
    iget-object v8, p0, Lorg/telegram/ui/NewContactActivity$8;->this$0:Lorg/telegram/ui/NewContactActivity;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lorg/telegram/ui/NewContactActivity;->access$1102(Lorg/telegram/ui/NewContactActivity;I)I

    goto/16 :goto_4
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 386
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 391
    return-void
.end method
