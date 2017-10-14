.class public interface abstract Lorg/telegram/ui/Components/EmojiView$Listener;
.super Ljava/lang/Object;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onBackspace()Z
.end method

.method public abstract onClearEmojiRecent()V
.end method

.method public abstract onEmojiSelected(Ljava/lang/String;)V
.end method

.method public abstract onGifSelected(Lorg/telegram/tgnet/TLRPC$Document;)V
.end method

.method public abstract onGifTab(Z)V
.end method

.method public abstract onShowStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V
.end method

.method public abstract onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;)V
.end method

.method public abstract onStickerSetAdd(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
.end method

.method public abstract onStickerSetRemove(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
.end method

.method public abstract onStickersGroupClick(I)V
.end method

.method public abstract onStickersSettingsClick()V
.end method

.method public abstract onStickersTab(Z)V
.end method
