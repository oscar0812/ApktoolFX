.class Lorg/telegram/messenger/SendMessagesHelper$6$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$6;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$6;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/SendMessagesHelper$6;

    .prologue
    .line 1186
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1189
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->access$900(Lorg/telegram/messenger/SendMessagesHelper;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$6;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-boolean v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$cacheFinal:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-nez v0, :cond_1

    .line 1191
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v3, v3, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$6;->val$button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    iget-object v13, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v13, v13, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v2, v3, v4, v13}, Lorg/telegram/messenger/SendMessagesHelper;->sendCallback(ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/ui/ChatActivity;)V

    .line 1260
    :cond_0
    :goto_0
    return-void

    .line 1192
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    if-eqz v0, :cond_3

    .line 1194
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    if-eqz v0, :cond_2

    .line 1195
    iget-object v8, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    .line 1196
    .local v8, "form":Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1197
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    new-instance v2, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v3, v3, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {v2, v8, v3}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 1198
    .end local v8    # "form":Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;

    invoke-direct {v3, v4, v0}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 1202
    :cond_3
    iget-object v10, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;

    .line 1203
    .local v10, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-boolean v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$cacheFinal:Z

    if-nez v0, :cond_4

    iget v0, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->cache_time:I

    if-eqz v0, :cond_4

    .line 1204
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$6;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v2, v10}, Lorg/telegram/messenger/MessagesStorage;->saveBotCache(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    .line 1206
    :cond_4
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->message:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1207
    iget-boolean v0, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->alert:Z

    if-eqz v0, :cond_5

    .line 1208
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1211
    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1212
    .local v6, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v0, "AppName"

    const v2, 0x7f07007a

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1213
    const-string/jumbo v0, "OK"

    const v2, 0x7f070440

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1214
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->message:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1215
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1217
    .end local v6    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 1218
    .local v5, "uid":I
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    if-eqz v0, :cond_6

    .line 1219
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    .line 1221
    :cond_6
    const/4 v9, 0x0

    .line 1222
    .local v9, "name":Ljava/lang/String;
    if-lez v5, :cond_9

    .line 1223
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 1224
    .local v11, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v11, :cond_7

    .line 1225
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1233
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_7
    :goto_1
    if-nez v9, :cond_8

    .line 1234
    const-string/jumbo v9, "bot"

    .line 1236
    :cond_8
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->message:Ljava/lang/String;

    invoke-virtual {v0, v9, v2}, Lorg/telegram/ui/ChatActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1228
    :cond_9
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-int v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    .line 1229
    .local v7, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v7, :cond_7

    .line 1230
    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_1

    .line 1238
    .end local v5    # "uid":I
    .end local v7    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v9    # "name":Ljava/lang/String;
    :cond_a
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 1243
    .restart local v5    # "uid":I
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    if-eqz v0, :cond_b

    .line 1244
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    .line 1246
    :cond_b
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 1247
    .restart local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v11, :cond_c

    iget-boolean v0, v11, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-eqz v0, :cond_c

    const/4 v12, 0x1

    .line 1248
    .local v12, "verified":Z
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    if-eqz v0, :cond_f

    .line 1249
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    .line 1250
    .local v1, "game":Lorg/telegram/tgnet/TLRPC$TL_game;
    :goto_3
    if-eqz v1, :cond_0

    .line 1253
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->url:Ljava/lang/String;

    if-nez v12, :cond_e

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v13, "Notifications"

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "askgame_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v4, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    :goto_4
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->showOpenGameAlert(Lorg/telegram/tgnet/TLRPC$TL_game;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZI)V

    goto/16 :goto_0

    .line 1247
    .end local v1    # "game":Lorg/telegram/tgnet/TLRPC$TL_game;
    .end local v12    # "verified":Z
    :cond_c
    const/4 v12, 0x0

    goto :goto_2

    .line 1249
    .restart local v12    # "verified":Z
    :cond_d
    const/4 v1, 0x0

    goto :goto_3

    .line 1253
    .restart local v1    # "game":Lorg/telegram/tgnet/TLRPC$TL_game;
    :cond_e
    const/4 v4, 0x0

    goto :goto_4

    .line 1255
    .end local v1    # "game":Lorg/telegram/tgnet/TLRPC$TL_game;
    :cond_f
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->url:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ChatActivity;->showOpenUrlAlert(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method
