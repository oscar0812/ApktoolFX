.class public interface abstract Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;
.super Ljava/lang/Object;
.source "StickerPreviewViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/StickerPreviewViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StickerPreviewViewerDelegate"
.end annotation


# virtual methods
.method public abstract openSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V
.end method

.method public abstract sentSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
.end method
