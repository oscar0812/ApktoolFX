.class Lorg/telegram/ui/ChangeChatNameActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ChangeChatNameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeChatNameActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeChatNameActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeChatNameActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChangeChatNameActivity;

    .prologue
    .line 92
    iput-object p1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 95
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 96
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChangeChatNameActivity;->finishFragment()V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    if-ne p1, v4, :cond_0

    .line 98
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChangeChatNameActivity;->access$000(Lorg/telegram/ui/ChangeChatNameActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChangeChatNameActivity;->access$100(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 102
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChangeChatNameActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 103
    .local v0, "v":Landroid/os/Vibrator;
    if-eqz v0, :cond_2

    .line 104
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 106
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChangeChatNameActivity;->access$100(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2, v5}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    goto :goto_0

    .line 109
    .end local v0    # "v":Landroid/os/Vibrator;
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v1, v4}, Lorg/telegram/ui/ChangeChatNameActivity;->access$002(Lorg/telegram/ui/ChangeChatNameActivity;Z)Z

    .line 111
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChangeChatNameActivity;->access$200(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/ui/Components/AvatarUpdater;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarUpdater;->uploadingAvatar:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 112
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v1, v4}, Lorg/telegram/ui/ChangeChatNameActivity;->access$302(Lorg/telegram/ui/ChangeChatNameActivity;Z)Z

    .line 113
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v3, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChangeChatNameActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v1, v2}, Lorg/telegram/ui/ChangeChatNameActivity;->access$402(Lorg/telegram/ui/ChangeChatNameActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 114
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChangeChatNameActivity;->access$400(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    const-string/jumbo v2, "Loading"

    const v3, 0x7f07035a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChangeChatNameActivity;->access$400(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 116
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChangeChatNameActivity;->access$400(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 117
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChangeChatNameActivity;->access$400(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    const/4 v2, -0x2

    const-string/jumbo v3, "Cancel"

    const v4, 0x7f0700f4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChangeChatNameActivity$1$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChangeChatNameActivity$1$1;-><init>(Lorg/telegram/ui/ChangeChatNameActivity$1;)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 130
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChangeChatNameActivity;->access$400(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto/16 :goto_0

    .line 133
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChangeChatNameActivity;->access$500(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 134
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChangeChatNameActivity;->access$600(Lorg/telegram/ui/ChangeChatNameActivity;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChangeChatNameActivity;->access$500(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->changeChatAvatar(ILorg/telegram/tgnet/TLRPC$InputFile;)V

    .line 138
    :cond_5
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChangeChatNameActivity;->finishFragment()V

    .line 140
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChangeChatNameActivity;->access$100(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChangeChatNameActivity;->access$900(Lorg/telegram/ui/ChangeChatNameActivity;)V

    .line 142
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChangeChatNameActivity;->finishFragment()V

    goto/16 :goto_0

    .line 135
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChangeChatNameActivity;->access$700(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChangeChatNameActivity;->access$800(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatPhoto;

    if-eqz v1, :cond_5

    .line 136
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChangeChatNameActivity;->access$600(Lorg/telegram/ui/ChangeChatNameActivity;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->changeChatAvatar(ILorg/telegram/tgnet/TLRPC$InputFile;)V

    goto :goto_1
.end method
