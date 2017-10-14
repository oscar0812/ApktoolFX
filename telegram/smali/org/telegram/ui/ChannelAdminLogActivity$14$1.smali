.class Lorg/telegram/ui/ChannelAdminLogActivity$14$1;
.super Ljava/lang/Object;
.source "ChannelAdminLogActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelAdminLogActivity$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelAdminLogActivity$14;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity$14;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelAdminLogActivity$14;

    .prologue
    .line 922
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$14$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 6
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 925
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 926
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 927
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 928
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 929
    .local v1, "date":I
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$14$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$14;

    iget-object v2, v2, Lorg/telegram/ui/ChannelAdminLogActivity$14;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1400(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V

    .line 930
    return-void
.end method
