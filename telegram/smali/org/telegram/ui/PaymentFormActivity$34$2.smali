.class Lorg/telegram/ui/PaymentFormActivity$34$2;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity$34;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PaymentFormActivity$34;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$34;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PaymentFormActivity$34;

    .prologue
    .line 2874
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$34$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$34;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$34$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2877
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$34$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$34;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$34;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$500(Lorg/telegram/ui/PaymentFormActivity;Z)V

    .line 2878
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$34$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$34;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$34;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, v2, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$2500(Lorg/telegram/ui/PaymentFormActivity;ZZ)V

    .line 2879
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$34$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-eqz v0, :cond_1

    .line 2880
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$34$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 2909
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$34$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity$34$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$34;

    iget-object v2, v2, Lorg/telegram/ui/PaymentFormActivity$34;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity$34$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$34;

    iget-object v3, v3, Lorg/telegram/ui/PaymentFormActivity$34;->val$req:Lorg/telegram/tgnet/TLObject;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v1}, Lorg/telegram/ui/Components/AlertsCreator;->processError(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 2913
    :cond_1
    :goto_1
    return-void

    .line 2880
    :sswitch_0
    const-string/jumbo v7, "REQ_INFO_NAME_INVALID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v7, "REQ_INFO_PHONE_INVALID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v7, "REQ_INFO_EMAIL_INVALID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_3
    const-string/jumbo v7, "ADDRESS_COUNTRY_INVALID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v4

    goto :goto_0

    :sswitch_4
    const-string/jumbo v7, "ADDRESS_CITY_INVALID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v5

    goto :goto_0

    :sswitch_5
    const-string/jumbo v7, "ADDRESS_POSTCODE_INVALID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v7, "ADDRESS_STATE_INVALID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v7, "ADDRESS_STREET_LINE1_INVALID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v7, "ADDRESS_STREET_LINE2_INVALID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    .line 2882
    :pswitch_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$34$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$34;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$34;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$5600(Lorg/telegram/ui/PaymentFormActivity;I)V

    goto :goto_1

    .line 2885
    :pswitch_1
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$34$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$34;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$34;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$5600(Lorg/telegram/ui/PaymentFormActivity;I)V

    goto :goto_1

    .line 2888
    :pswitch_2
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$34$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$34;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$34;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$5600(Lorg/telegram/ui/PaymentFormActivity;I)V

    goto :goto_1

    .line 2891
    :pswitch_3
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$34$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$34;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$34;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, v5}, Lorg/telegram/ui/PaymentFormActivity;->access$5600(Lorg/telegram/ui/PaymentFormActivity;I)V

    goto/16 :goto_1

    .line 2894
    :pswitch_4
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$34$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$34;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$34;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/PaymentFormActivity;->access$5600(Lorg/telegram/ui/PaymentFormActivity;I)V

    goto/16 :goto_1

    .line 2897
    :pswitch_5
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$34$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$34;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$34;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$5600(Lorg/telegram/ui/PaymentFormActivity;I)V

    goto/16 :goto_1

    .line 2900
    :pswitch_6
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$34$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$34;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$34;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, v4}, Lorg/telegram/ui/PaymentFormActivity;->access$5600(Lorg/telegram/ui/PaymentFormActivity;I)V

    goto/16 :goto_1

    .line 2903
    :pswitch_7
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$34$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$34;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$34;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$5600(Lorg/telegram/ui/PaymentFormActivity;I)V

    goto/16 :goto_1

    .line 2906
    :pswitch_8
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$34$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$34;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$34;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->access$5600(Lorg/telegram/ui/PaymentFormActivity;I)V

    goto/16 :goto_1

    .line 2880
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7cbd4a72 -> :sswitch_4
        -0x60c55d5c -> :sswitch_7
        -0x48f7785d -> :sswitch_3
        -0x3d7f496d -> :sswitch_0
        -0x105574d0 -> :sswitch_5
        0x18e1a6de -> :sswitch_6
        0x2a39af76 -> :sswitch_1
        0x337f11a5 -> :sswitch_8
        0x34feafa4 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
