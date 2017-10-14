.class Lorg/telegram/ui/PasscodeActivity$7;
.super Ljava/lang/Object;
.source "PasscodeActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PasscodeActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PasscodeActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 295
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v11, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 298
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    .line 391
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 301
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    iget-object v9, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v9}, Lorg/telegram/ui/PasscodeActivity;->access$800(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v9

    if-ne p2, v9, :cond_2

    .line 302
    iget-object v8, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    new-instance v9, Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {v9, v7}, Lorg/telegram/ui/PasscodeActivity;-><init>(I)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/PasscodeActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 303
    :cond_2
    iget-object v9, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v9}, Lorg/telegram/ui/PasscodeActivity;->access$900(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v9

    if-ne p2, v9, :cond_7

    move-object v2, p1

    .line 304
    check-cast v2, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 305
    .local v2, "cell":Lorg/telegram/ui/Cells/TextCheckCell;
    sget-object v9, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6

    .line 306
    const-string/jumbo v9, ""

    sput-object v9, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    .line 307
    sput-boolean v8, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    .line 308
    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 309
    iget-object v9, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v9}, Lorg/telegram/ui/PasscodeActivity;->access$1000(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v4

    .line 310
    .local v4, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v4, :cond_3

    .line 311
    iget-object v9, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v9}, Lorg/telegram/ui/PasscodeActivity;->access$1000(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 312
    .local v3, "child":Landroid/view/View;
    instance-of v9, v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz v9, :cond_4

    move-object v6, v3

    .line 313
    check-cast v6, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 314
    .local v6, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    const-string/jumbo v9, "windowBackgroundWhiteGrayText7"

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 318
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :cond_3
    sget-object v9, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_5

    :goto_2
    invoke-virtual {v2, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 319
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v9, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v9, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 310
    .restart local v3    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3    # "child":Landroid/view/View;
    :cond_5
    move v7, v8

    .line 318
    goto :goto_2

    .line 321
    .end local v0    # "a":I
    .end local v4    # "count":I
    :cond_6
    iget-object v8, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    new-instance v9, Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {v9, v7}, Lorg/telegram/ui/PasscodeActivity;-><init>(I)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/PasscodeActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 323
    .end local v2    # "cell":Lorg/telegram/ui/Cells/TextCheckCell;
    :cond_7
    iget-object v9, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v9}, Lorg/telegram/ui/PasscodeActivity;->access$1100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v9

    if-ne p2, v9, :cond_d

    .line 324
    iget-object v9, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/PasscodeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 327
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v9, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/PasscodeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 328
    .local v1, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v9, "AutoLock"

    const v10, 0x7f0700bb

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 329
    new-instance v5, Lorg/telegram/ui/Components/NumberPicker;

    iget-object v9, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/PasscodeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v5, v9}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 330
    .local v5, "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 331
    invoke-virtual {v5, v11}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 332
    sget v9, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    if-nez v9, :cond_9

    .line 333
    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 343
    :cond_8
    :goto_3
    new-instance v7, Lorg/telegram/ui/PasscodeActivity$7$1;

    invoke-direct {v7, p0}, Lorg/telegram/ui/PasscodeActivity$7$1;-><init>(Lorg/telegram/ui/PasscodeActivity$7;)V

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/NumberPicker;->setFormatter(Lorg/telegram/ui/Components/NumberPicker$Formatter;)V

    .line 360
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 361
    const-string/jumbo v7, "Done"

    const v8, 0x7f0701f2

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/PasscodeActivity$7$2;

    invoke-direct {v8, p0, v5, p2}, Lorg/telegram/ui/PasscodeActivity$7$2;-><init>(Lorg/telegram/ui/PasscodeActivity$7;Lorg/telegram/ui/Components/NumberPicker;I)V

    invoke-virtual {v1, v7, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 380
    iget-object v7, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/PasscodeActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 334
    :cond_9
    sget v8, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    const/16 v9, 0x3c

    if-ne v8, v9, :cond_a

    .line 335
    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_3

    .line 336
    :cond_a
    sget v7, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    const/16 v8, 0x12c

    if-ne v7, v8, :cond_b

    .line 337
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_3

    .line 338
    :cond_b
    sget v7, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    const/16 v8, 0xe10

    if-ne v7, v8, :cond_c

    .line 339
    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_3

    .line 340
    :cond_c
    sget v7, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    const/16 v8, 0x4650

    if-ne v7, v8, :cond_8

    .line 341
    invoke-virtual {v5, v11}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_3

    .line 381
    .end local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v5    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_d
    iget-object v9, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v9}, Lorg/telegram/ui/PasscodeActivity;->access$1300(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v9

    if-ne p2, v9, :cond_f

    .line 382
    sget-boolean v9, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    if-nez v9, :cond_e

    :goto_4
    sput-boolean v7, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    .line 383
    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 384
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    invoke-virtual {p1, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .restart local p1    # "view":Landroid/view/View;
    :cond_e
    move v7, v8

    .line 382
    goto :goto_4

    .line 385
    :cond_f
    iget-object v9, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v9}, Lorg/telegram/ui/PasscodeActivity;->access$1400(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v9

    if-ne p2, v9, :cond_0

    .line 386
    sget-boolean v9, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    if-nez v9, :cond_10

    :goto_5
    sput-boolean v7, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    .line 387
    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 388
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    invoke-virtual {p1, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 389
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v9, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v9, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .restart local p1    # "view":Landroid/view/View;
    :cond_10
    move v7, v8

    .line 386
    goto :goto_5
.end method
