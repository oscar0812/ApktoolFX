.class public interface abstract Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;
.super Ljava/lang/Object;
.source "ChatMessageCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/ChatMessageCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChatMessageCellDelegate"
.end annotation


# virtual methods
.method public abstract canPerformActions()Z
.end method

.method public abstract didLongPressed(Lorg/telegram/ui/Cells/ChatMessageCell;)V
.end method

.method public abstract didPressedBotButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
.end method

.method public abstract didPressedCancelSendButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V
.end method

.method public abstract didPressedChannelAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;I)V
.end method

.method public abstract didPressedImage(Lorg/telegram/ui/Cells/ChatMessageCell;)V
.end method

.method public abstract didPressedInstantButton(Lorg/telegram/ui/Cells/ChatMessageCell;I)V
.end method

.method public abstract didPressedOther(Lorg/telegram/ui/Cells/ChatMessageCell;)V
.end method

.method public abstract didPressedReplyMessage(Lorg/telegram/ui/Cells/ChatMessageCell;I)V
.end method

.method public abstract didPressedShare(Lorg/telegram/ui/Cells/ChatMessageCell;)V
.end method

.method public abstract didPressedUrl(Lorg/telegram/messenger/MessageObject;Landroid/text/style/CharacterStyle;Z)V
.end method

.method public abstract didPressedUserAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;)V
.end method

.method public abstract didPressedViaBot(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/String;)V
.end method

.method public abstract isChatAdminCell(I)Z
.end method

.method public abstract needOpenWebView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract needPlayMessage(Lorg/telegram/messenger/MessageObject;)Z
.end method
