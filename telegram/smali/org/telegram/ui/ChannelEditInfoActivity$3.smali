.class Lorg/telegram/ui/ChannelEditInfoActivity$3;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ChannelEditInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditInfoActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelEditInfoActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 243
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 10
    .param p1, "id"    # I

    .prologue
    const-wide/16 v8, 0xc8

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 246
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 247
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->finishFragment()V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    if-ne p1, v7, :cond_0

    .line 249
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$400(Lorg/telegram/ui/ChannelEditInfoActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 252
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$500(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 253
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 254
    .local v2, "v":Landroid/os/Vibrator;
    if-eqz v2, :cond_2

    .line 255
    invoke-virtual {v2, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    .line 257
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$500(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    invoke-static {v3, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    goto :goto_0

    .line 260
    .end local v2    # "v":Landroid/os/Vibrator;
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$600(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 261
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$700(Lorg/telegram/ui/ChannelEditInfoActivity;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$000(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$600(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->length()I

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$000(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$000(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$600(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 262
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$500(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->length()I

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$800(Lorg/telegram/ui/ChannelEditInfoActivity;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 263
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 264
    .restart local v2    # "v":Landroid/os/Vibrator;
    if-eqz v2, :cond_6

    .line 265
    invoke-virtual {v2, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    .line 267
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$900(Lorg/telegram/ui/ChannelEditInfoActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v3, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    goto/16 :goto_0

    .line 272
    .end local v2    # "v":Landroid/os/Vibrator;
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3, v7}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$402(Lorg/telegram/ui/ChannelEditInfoActivity;Z)Z

    .line 274
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1000(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/AvatarUpdater;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Components/AvatarUpdater;->uploadingAvatar:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 275
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3, v7}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1102(Lorg/telegram/ui/ChannelEditInfoActivity;Z)Z

    .line 276
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v5, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChannelEditInfoActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v7}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v3, v4}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1202(Lorg/telegram/ui/ChannelEditInfoActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 277
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1200(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    const-string/jumbo v4, "Loading"

    const v5, 0x7f07035a

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1200(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 279
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1200(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 280
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1200(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    const/4 v4, -0x2

    const-string/jumbo v5, "Cancel"

    const v6, 0x7f0700f4

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/ChannelEditInfoActivity$3$1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ChannelEditInfoActivity$3$1;-><init>(Lorg/telegram/ui/ChannelEditInfoActivity$3;)V

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 293
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1200(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto/16 :goto_0

    .line 296
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$600(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 297
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$000(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$000(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 298
    .local v1, "oldUserName":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$700(Lorg/telegram/ui/ChannelEditInfoActivity;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string/jumbo v0, ""

    .line 299
    .local v0, "newUserName":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 300
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$100(Lorg/telegram/ui/ChannelEditInfoActivity;)I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lorg/telegram/messenger/MessagesController;->updateChannelUserName(ILjava/lang/String;)V

    .line 303
    .end local v0    # "newUserName":Ljava/lang/String;
    .end local v1    # "oldUserName":Ljava/lang/String;
    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$000(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$500(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 304
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$100(Lorg/telegram/ui/ChannelEditInfoActivity;)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$500(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->changeChatTitle(ILjava/lang/String;)V

    .line 306
    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1300(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1300(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1400(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 307
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$100(Lorg/telegram/ui/ChannelEditInfoActivity;)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1400(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1300(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->updateChannelAbout(ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 309
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1500(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Cells/HeaderCell;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1500(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Cells/HeaderCell;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/HeaderCell;->getVisibility()I

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1300(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$000(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v3, :cond_c

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1300(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->hidden_prehistory:Z

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1600(Lorg/telegram/ui/ChannelEditInfoActivity;)Z

    move-result v4

    if-eq v3, v4, :cond_c

    .line 310
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1300(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1600(Lorg/telegram/ui/ChannelEditInfoActivity;)Z

    move-result v4

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->hidden_prehistory:Z

    .line 311
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$100(Lorg/telegram/ui/ChannelEditInfoActivity;)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1600(Lorg/telegram/ui/ChannelEditInfoActivity;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->toogleChannelInvitesHistory(IZ)V

    .line 313
    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1700(Lorg/telegram/ui/ChannelEditInfoActivity;)Z

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$000(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    if-eq v3, v4, :cond_d

    .line 314
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$000(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iput-boolean v7, v3, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    .line 315
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$100(Lorg/telegram/ui/ChannelEditInfoActivity;)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1700(Lorg/telegram/ui/ChannelEditInfoActivity;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->toogleChannelSignatures(IZ)V

    .line 317
    :cond_d
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1800(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 318
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$100(Lorg/telegram/ui/ChannelEditInfoActivity;)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1800(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->changeChatAvatar(ILorg/telegram/tgnet/TLRPC$InputFile;)V

    .line 322
    :cond_e
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->finishFragment()V

    goto/16 :goto_0

    .line 297
    :cond_f
    const-string/jumbo v1, ""

    goto/16 :goto_1

    .line 298
    .restart local v1    # "oldUserName":Ljava/lang/String;
    :cond_10
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$600(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 319
    .end local v1    # "oldUserName":Ljava/lang/String;
    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1900(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$000(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatPhoto;

    if-eqz v3, :cond_e

    .line 320
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$100(Lorg/telegram/ui/ChannelEditInfoActivity;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->changeChatAvatar(ILorg/telegram/tgnet/TLRPC$InputFile;)V

    goto :goto_3
.end method
