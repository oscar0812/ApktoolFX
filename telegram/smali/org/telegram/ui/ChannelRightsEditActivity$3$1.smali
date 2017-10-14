.class Lorg/telegram/ui/ChannelRightsEditActivity$3$1;
.super Ljava/lang/Object;
.source "ChannelRightsEditActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelRightsEditActivity$3;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelRightsEditActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelRightsEditActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelRightsEditActivity$3;

    .prologue
    .line 314
    iput-object p1, p0, Lorg/telegram/ui/ChannelRightsEditActivity$3$1;->this$1:Lorg/telegram/ui/ChannelRightsEditActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 9
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 317
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 318
    .local v6, "calendar":Ljava/util/Calendar;
    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    .line 319
    invoke-virtual {v6, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 320
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v8, v2

    .line 322
    .local v8, "time":I
    :try_start_0
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity$3$1;->this$1:Lorg/telegram/ui/ChannelRightsEditActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChannelRightsEditActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelRightsEditActivity$3$1$1;

    invoke-direct {v2, p0, v8}, Lorg/telegram/ui/ChannelRightsEditActivity$3$1$1;-><init>(Lorg/telegram/ui/ChannelRightsEditActivity$3$1;I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 329
    .local v0, "dialog":Landroid/app/TimePickerDialog;
    const/4 v1, -0x1

    const-string/jumbo v2, "Set"

    const v3, 0x7f070579

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v0}, Landroid/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 330
    const/4 v1, -0x2

    const-string/jumbo v2, "Cancel"

    const v3, 0x7f0700f4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChannelRightsEditActivity$3$1$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChannelRightsEditActivity$3$1$2;-><init>(Lorg/telegram/ui/ChannelRightsEditActivity$3$1;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 336
    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity$3$1;->this$1:Lorg/telegram/ui/ChannelRightsEditActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChannelRightsEditActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .end local v0    # "dialog":Landroid/app/TimePickerDialog;
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v7

    .line 338
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
