.class public interface abstract Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;
.super Ljava/lang/Object;
.source "ChatActionCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/ChatActionCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChatActionCellDelegate"
.end annotation


# virtual methods
.method public abstract didClickedImage(Lorg/telegram/ui/Cells/ChatActionCell;)V
.end method

.method public abstract didLongPressed(Lorg/telegram/ui/Cells/ChatActionCell;)V
.end method

.method public abstract didPressedBotButton(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
.end method

.method public abstract didPressedReplyMessage(Lorg/telegram/ui/Cells/ChatActionCell;I)V
.end method

.method public abstract needOpenUserProfile(I)V
.end method
