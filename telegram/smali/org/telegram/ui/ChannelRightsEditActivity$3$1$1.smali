.class Lorg/telegram/ui/ChannelRightsEditActivity$3$1$1;
.super Ljava/lang/Object;
.source "ChannelRightsEditActivity.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelRightsEditActivity$3$1;->onDateSet(Landroid/widget/DatePicker;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChannelRightsEditActivity$3$1;

.field final synthetic val$time:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelRightsEditActivity$3$1;I)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/ChannelRightsEditActivity$3$1;

    .prologue
    .line 322
    iput-object p1, p0, Lorg/telegram/ui/ChannelRightsEditActivity$3$1$1;->this$2:Lorg/telegram/ui/ChannelRightsEditActivity$3$1;

    iput p2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$3$1$1;->val$time:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 325
    iget-object v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity$3$1$1;->this$2:Lorg/telegram/ui/ChannelRightsEditActivity$3$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3$1;->this$1:Lorg/telegram/ui/ChannelRightsEditActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity$3$1$1;->val$time:I

    mul-int/lit16 v2, p2, 0xe10

    add-int/2addr v1, v2

    mul-int/lit8 v2, p3, 0x3c

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->until_date:I

    .line 326
    iget-object v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity$3$1$1;->this$2:Lorg/telegram/ui/ChannelRightsEditActivity$3$1;

    iget-object v0, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3$1;->this$1:Lorg/telegram/ui/ChannelRightsEditActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1000(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity$3$1$1;->this$2:Lorg/telegram/ui/ChannelRightsEditActivity$3$1;

    iget-object v1, v1, Lorg/telegram/ui/ChannelRightsEditActivity$3$1;->this$1:Lorg/telegram/ui/ChannelRightsEditActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$900(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->notifyItemChanged(I)V

    .line 327
    return-void
.end method
