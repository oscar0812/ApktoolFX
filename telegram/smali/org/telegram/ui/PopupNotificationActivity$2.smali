.class Lorg/telegram/ui/PopupNotificationActivity$2;
.super Ljava/lang/Object;
.source "PopupNotificationActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PopupNotificationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PopupNotificationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PopupNotificationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 304
    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity$2;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didPressedAttachButton()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public needChangeVideoPreviewState(IF)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "seekProgress"    # F

    .prologue
    .line 383
    return-void
.end method

.method public needSendTyping()V
    .locals 5

    .prologue
    .line 340
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$2;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$300(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity$2;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$300(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    const/4 v1, 0x0

    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity$2;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v4}, Lorg/telegram/ui/PopupNotificationActivity;->access$700(Lorg/telegram/ui/PopupNotificationActivity;)I

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V

    .line 343
    :cond_0
    return-void
.end method

.method public needShowMediaBanHint()V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

.method public needStartRecordAudio(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 378
    return-void
.end method

.method public needStartRecordVideo(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 373
    return-void
.end method

.method public onAttachButtonHidden()V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

.method public onAttachButtonShow()V
    .locals 0

    .prologue
    .line 353
    return-void
.end method

.method public onMessageEditEnd(Z)V
    .locals 0
    .param p1, "loading"    # Z

    .prologue
    .line 336
    return-void
.end method

.method public onMessageSend(Ljava/lang/CharSequence;)V
    .locals 9
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v7, 0x1

    .line 307
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$2;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$300(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 316
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$2;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$400(Lorg/telegram/ui/PopupNotificationActivity;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$2;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$400(Lorg/telegram/ui/PopupNotificationActivity;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity$2;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$500(Lorg/telegram/ui/PopupNotificationActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$2;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$500(Lorg/telegram/ui/PopupNotificationActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity$2;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$400(Lorg/telegram/ui/PopupNotificationActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 313
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$2;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$300(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$2;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$300(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    const/4 v0, 0x0

    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity$2;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v5}, Lorg/telegram/ui/PopupNotificationActivity;->access$300(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$2;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$300(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move v8, v7

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->markDialogAsRead(JIIIZZ)V

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$2;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$302(Lorg/telegram/ui/PopupNotificationActivity;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;

    .line 315
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$2;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$600(Lorg/telegram/ui/PopupNotificationActivity;)V

    goto :goto_0
.end method

.method public onPreAudioVideoRecord()V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method public onStickersTab(Z)V
    .locals 0
    .param p1, "opened"    # Z

    .prologue
    .line 363
    return-void
.end method

.method public onSwitchRecordMode(Z)V
    .locals 0
    .param p1, "video"    # Z

    .prologue
    .line 326
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "big"    # Z

    .prologue
    .line 321
    return-void
.end method

.method public onWindowSizeChanged(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 358
    return-void
.end method
