.class Lorg/telegram/ui/PaymentFormActivity$13;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private actionPosition:I

.field private characterAction:I

.field private isYear:Z

.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 1348
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$13;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1350
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$13;->characterAction:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 20
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$13;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/PaymentFormActivity;->access$2800(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1461
    :goto_0
    return-void

    .line 1382
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$13;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/PaymentFormActivity;->access$1300(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v11, v17, v18

    .line 1383
    .local v11, "phoneField":Landroid/widget/EditText;
    invoke-virtual {v11}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v13

    .line 1384
    .local v13, "start":I
    const-string/jumbo v10, "0123456789"

    .line 1385
    .local v10, "phoneChars":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1386
    .local v14, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PaymentFormActivity$13;->characterAction:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1387
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PaymentFormActivity$13;->actionPosition:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PaymentFormActivity$13;->actionPosition:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1388
    add-int/lit8 v13, v13, -0x1

    .line 1390
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1391
    .local v4, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v2, v0, :cond_3

    .line 1392
    add-int/lit8 v17, v2, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1393
    .local v5, "ch":Ljava/lang/String;
    invoke-virtual {v10, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1394
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1391
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1397
    .end local v5    # "ch":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$13;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lorg/telegram/ui/PaymentFormActivity;->access$2802(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$13;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/PaymentFormActivity;->access$1300(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const-string/jumbo v18, "windowBackgroundWhiteBlackText"

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextColor(I)V

    .line 1399
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 1400
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1402
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 1403
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/PaymentFormActivity$13;->isYear:Z

    .line 1405
    :cond_5
    const/4 v8, 0x0

    .line 1406
    .local v8, "isError":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PaymentFormActivity$13;->isYear:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 1407
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_c

    const/16 v17, 0x2

    :goto_2
    move/from16 v0, v17

    new-array v3, v0, [Ljava/lang/String;

    .line 1408
    .local v3, "args":[Ljava/lang/String;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v3, v17

    .line 1409
    array-length v0, v3

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 1410
    const/16 v17, 0x1

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v3, v17

    .line 1412
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    array-length v0, v3

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 1413
    const/16 v17, 0x0

    aget-object v17, v3, v17

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1414
    .local v9, "month":I
    const/16 v17, 0x1

    aget-object v17, v3, v17

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v16, v0

    .line 1415
    .local v16, "year":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 1416
    .local v12, "rightNow":Ljava/util/Calendar;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1417
    .local v7, "currentYear":I
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    add-int/lit8 v6, v17, 0x1

    .line 1418
    .local v6, "currentMonth":I
    move/from16 v0, v16

    if-lt v0, v7, :cond_7

    move/from16 v0, v16

    if-ne v0, v7, :cond_8

    if-ge v9, v6, :cond_8

    .line 1419
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$13;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/PaymentFormActivity;->access$1300(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const-string/jumbo v18, "windowBackgroundWhiteRedText4"

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextColor(I)V

    .line 1420
    const/4 v8, 0x1

    .line 1445
    .end local v3    # "args":[Ljava/lang/String;
    .end local v6    # "currentMonth":I
    .end local v7    # "currentYear":I
    .end local v9    # "month":I
    .end local v12    # "rightNow":Ljava/util/Calendar;
    .end local v16    # "year":I
    :cond_8
    :goto_3
    if-nez v8, :cond_9

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 1446
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$13;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/PaymentFormActivity;->access$1300(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$13;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/PaymentFormActivity;->access$2900(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v17

    if-eqz v17, :cond_13

    const/16 v17, 0x2

    :goto_4
    aget-object v17, v18, v17

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Components/EditTextBoldCursor;->requestFocus()Z

    .line 1448
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 1449
    const/16 v17, 0x2f

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1450
    add-int/lit8 v13, v13, 0x1

    .line 1456
    :cond_a
    :goto_5
    invoke-virtual {v11, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1457
    if-ltz v13, :cond_b

    .line 1458
    invoke-virtual {v11}, Landroid/widget/EditText;->length()I

    move-result v17

    move/from16 v0, v17

    if-gt v13, v0, :cond_15

    .end local v13    # "start":I
    :goto_6
    invoke-virtual {v11, v13}, Landroid/widget/EditText;->setSelection(I)V

    .line 1460
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$13;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/telegram/ui/PaymentFormActivity;->access$2802(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    goto/16 :goto_0

    .line 1407
    .restart local v13    # "start":I
    :cond_c
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 1423
    .restart local v3    # "args":[Ljava/lang/String;
    :cond_d
    const/16 v17, 0x0

    aget-object v17, v3, v17

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1424
    .local v15, "value":I
    const/16 v17, 0xc

    move/from16 v0, v17

    if-gt v15, v0, :cond_e

    if-nez v15, :cond_8

    .line 1425
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$13;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/PaymentFormActivity;->access$1300(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const-string/jumbo v18, "windowBackgroundWhiteRedText4"

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextColor(I)V

    .line 1426
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 1430
    .end local v3    # "args":[Ljava/lang/String;
    .end local v15    # "value":I
    :cond_f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 1431
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1432
    .restart local v15    # "value":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_8

    if-eqz v15, :cond_8

    .line 1433
    const/16 v17, 0x0

    const-string/jumbo v18, "0"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1434
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 1436
    .end local v15    # "value":I
    :cond_10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 1437
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1438
    .restart local v15    # "value":I
    const/16 v17, 0xc

    move/from16 v0, v17

    if-gt v15, v0, :cond_11

    if-nez v15, :cond_12

    .line 1439
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$13;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/PaymentFormActivity;->access$1300(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const-string/jumbo v18, "windowBackgroundWhiteRedText4"

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextColor(I)V

    .line 1440
    const/4 v8, 0x1

    .line 1442
    :cond_12
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 1446
    .end local v15    # "value":I
    :cond_13
    const/16 v17, 0x3

    goto/16 :goto_4

    .line 1451
    :cond_14
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v17

    const/16 v18, 0x2f

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    .line 1452
    const/16 v17, 0x2

    const/16 v18, 0x2f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1453
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 1458
    :cond_15
    invoke-virtual {v11}, Landroid/widget/EditText;->length()I

    move-result v13

    goto/16 :goto_6
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    const/16 v4, 0x2f

    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    .line 1356
    if-nez p3, :cond_1

    if-ne p4, v1, :cond_1

    .line 1357
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity$13;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v2}, Lorg/telegram/ui/PaymentFormActivity;->access$1300(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    if-eq v2, v3, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity$13;->isYear:Z

    .line 1358
    iput v1, p0, Lorg/telegram/ui/PaymentFormActivity$13;->characterAction:I

    .line 1370
    :goto_0
    return-void

    .line 1359
    :cond_1
    if-ne p3, v1, :cond_3

    if-nez p4, :cond_3

    .line 1360
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_2

    if-lez p2, :cond_2

    .line 1361
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity$13;->isYear:Z

    .line 1362
    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$13;->characterAction:I

    .line 1363
    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$13;->actionPosition:I

    goto :goto_0

    .line 1365
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$13;->characterAction:I

    goto :goto_0

    .line 1368
    :cond_3
    iput v3, p0, Lorg/telegram/ui/PaymentFormActivity$13;->characterAction:I

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1375
    return-void
.end method
