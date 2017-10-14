.class Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;
.super Landroid/widget/FrameLayout;
.source "StickerPreviewViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/StickerPreviewViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameLayoutDrawer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/StickerPreviewViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/StickerPreviewViewer;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    iput-object p1, p0, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    .line 57
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->setWillNotDraw(Z)V

    .line 59
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/StickerPreviewViewer;->access$000(Lorg/telegram/ui/StickerPreviewViewer;Landroid/graphics/Canvas;)V

    .line 64
    return-void
.end method
