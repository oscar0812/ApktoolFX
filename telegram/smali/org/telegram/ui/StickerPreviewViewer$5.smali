.class Lorg/telegram/ui/StickerPreviewViewer$5;
.super Ljava/lang/Object;
.source "StickerPreviewViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/StickerPreviewViewer;->onDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/StickerPreviewViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/StickerPreviewViewer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/StickerPreviewViewer;

    .prologue
    .line 593
    iput-object p1, p0, Lorg/telegram/ui/StickerPreviewViewer$5;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$5;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$900(Lorg/telegram/ui/StickerPreviewViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 597
    return-void
.end method
