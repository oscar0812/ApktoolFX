.class Lorg/telegram/ui/CallLogActivity$4$1;
.super Ljava/lang/Object;
.source "CallLogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CallLogActivity$4;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/CallLogActivity$4;

.field final synthetic val$row:Lorg/telegram/ui/CallLogActivity$CallLogRow;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CallLogActivity$4;Lorg/telegram/ui/CallLogActivity$CallLogRow;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/CallLogActivity$4;

    .prologue
    .line 241
    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$4$1;->this$1:Lorg/telegram/ui/CallLogActivity$4;

    iput-object p2, p0, Lorg/telegram/ui/CallLogActivity$4$1;->val$row:Lorg/telegram/ui/CallLogActivity$CallLogRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 244
    packed-switch p2, :pswitch_data_0

    .line 252
    :goto_0
    return-void

    .line 246
    :pswitch_0
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$4$1;->this$1:Lorg/telegram/ui/CallLogActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/CallLogActivity$4;->this$0:Lorg/telegram/ui/CallLogActivity;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$4$1;->val$row:Lorg/telegram/ui/CallLogActivity$CallLogRow;

    invoke-static {v0, v1}, Lorg/telegram/ui/CallLogActivity;->access$300(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/ui/CallLogActivity$CallLogRow;)V

    goto :goto_0

    .line 249
    :pswitch_1
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$4$1;->this$1:Lorg/telegram/ui/CallLogActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/CallLogActivity$4;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/CallLogActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$4$1;->val$row:Lorg/telegram/ui/CallLogActivity$CallLogRow;

    iget-object v0, v0, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/voip/VoIPHelper;->showRateAlert(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;)V

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
