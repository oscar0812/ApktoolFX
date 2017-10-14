.class Lorg/telegram/ui/ChannelAdminLogActivity$14;
.super Ljava/lang/Object;
.source "ChannelAdminLogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelAdminLogActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelAdminLogActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelAdminLogActivity;

    .prologue
    .line 910
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$14;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 913
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$14;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 960
    :goto_0
    return-void

    .line 916
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$14;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4800(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 917
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 918
    .local v6, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 919
    .local v3, "year":I
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 920
    .local v4, "monthOfYear":I
    const/4 v1, 0x5

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 922
    .local v5, "dayOfMonth":I
    :try_start_0
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$14;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelAdminLogActivity$14$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$14$1;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity$14;)V

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 932
    .local v0, "dialog":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v7

    .line 933
    .local v7, "datePicker":Landroid/widget/DatePicker;
    const-wide v10, 0x140372c8800L

    invoke-virtual {v7, v10, v11}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 934
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 935
    const/4 v1, -0x1

    const-string/jumbo v2, "JumpToDate"

    const v9, 0x7f07032b

    invoke-static {v2, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v0}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 936
    const/4 v1, -0x2

    const-string/jumbo v2, "Cancel"

    const v9, 0x7f0700f4

    invoke-static {v2, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lorg/telegram/ui/ChannelAdminLogActivity$14$2;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$14$2;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity$14;)V

    invoke-virtual {v0, v1, v2, v9}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 942
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 943
    new-instance v1, Lorg/telegram/ui/ChannelAdminLogActivity$14$3;

    invoke-direct {v1, p0, v7}, Lorg/telegram/ui/ChannelAdminLogActivity$14$3;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity$14;Landroid/widget/DatePicker;)V

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 956
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$14;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 957
    .end local v0    # "dialog":Landroid/app/DatePickerDialog;
    .end local v7    # "datePicker":Landroid/widget/DatePicker;
    :catch_0
    move-exception v8

    .line 958
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
