.class public Lorg/telegram/ui/Components/Paint/Views/StickerView;
.super Lorg/telegram/ui/Components/Paint/Views/EntityView;
.source "StickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;,
        Lorg/telegram/ui/Components/Paint/Views/StickerView$FrameLayoutDrawer;
    }
.end annotation


# instance fields
.field private anchor:I

.field private baseSize:Lorg/telegram/ui/Components/Size;

.field private centerImage:Lorg/telegram/messenger/ImageReceiver;

.field private containerView:Lorg/telegram/ui/Components/Paint/Views/StickerView$FrameLayoutDrawer;

.field private mirrored:Z

.field private sticker:Lorg/telegram/tgnet/TLRPC$Document;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/StickerView;Lorg/telegram/ui/Components/Point;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stickerView"    # Lorg/telegram/ui/Components/Paint/Views/StickerView;
    .param p3, "position"    # Lorg/telegram/ui/Components/Point;

    .prologue
    .line 74
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getRotation()F

    move-result v3

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getScale()F

    move-result v4

    iget-object v5, p2, Lorg/telegram/ui/Components/Paint/Views/StickerView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget-object v6, p2, Lorg/telegram/ui/Components/Paint/Views/StickerView;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Paint/Views/StickerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 75
    iget-boolean v0, p2, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirrored:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirror()V

    .line 78
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # Lorg/telegram/ui/Components/Point;
    .param p3, "angle"    # F
    .param p4, "scale"    # F
    .param p5, "baseSize"    # Lorg/telegram/ui/Components/Size;
    .param p6, "sticker"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v6, 0x1

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;)V

    .line 34
    iput v3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->anchor:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirrored:Z

    .line 39
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 47
    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->setRotation(F)V

    .line 48
    invoke-virtual {p0, p4}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->setScale(F)V

    .line 50
    iput-object p6, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    .line 51
    iput-object p5, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->baseSize:Lorg/telegram/ui/Components/Size;

    .line 53
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_0
    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 54
    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 55
    .local v8, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v0, v8, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->mask_coords:Lorg/telegram/tgnet/TLRPC$TL_maskCoords;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->mask_coords:Lorg/telegram/tgnet/TLRPC$TL_maskCoords;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->n:I

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->anchor:I

    .line 62
    .end local v8    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/StickerView$FrameLayoutDrawer;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/StickerView$FrameLayoutDrawer;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->containerView:Lorg/telegram/ui/Components/Paint/Views/StickerView$FrameLayoutDrawer;

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->containerView:Lorg/telegram/ui/Components/Paint/Views/StickerView$FrameLayoutDrawer;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->containerView:Lorg/telegram/ui/Components/Paint/Views/StickerView$FrameLayoutDrawer;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p6, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v5, "webp"

    move-object v1, p6

    move-object v4, v2

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->updatePosition()V

    .line 71
    return-void

    .line 53
    .restart local v8    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;Lorg/telegram/ui/Components/Size;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # Lorg/telegram/ui/Components/Point;
    .param p3, "baseSize"    # Lorg/telegram/ui/Components/Size;
    .param p4, "sticker"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 42
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Paint/Views/StickerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected createSelectionView()Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;-><init>(Lorg/telegram/ui/Components/Paint/Views/StickerView;Landroid/content/Context;)V

    return-object v0
.end method

.method public getAnchor()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->anchor:I

    return v0
.end method

.method protected getSelectionBounds()Lorg/telegram/ui/Components/Rect;
    .locals 8

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 122
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 123
    .local v0, "parentView":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v1

    .line 125
    .local v1, "scale":F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getScale()F

    move-result v4

    const v5, 0x3ecccccd    # 0.4f

    add-float/2addr v4, v5

    mul-float v2, v3, v4

    .line 126
    .local v2, "side":F
    new-instance v3, Lorg/telegram/ui/Components/Rect;

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->position:Lorg/telegram/ui/Components/Point;

    iget v4, v4, Lorg/telegram/ui/Components/Point;->x:F

    div-float v5, v2, v6

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->position:Lorg/telegram/ui/Components/Point;

    iget v5, v5, Lorg/telegram/ui/Components/Point;->y:F

    div-float v6, v2, v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v1

    mul-float v6, v2, v1

    mul-float v7, v2, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    return-object v3
.end method

.method public getSticker()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method public mirror()V
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirrored:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirrored:Z

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->containerView:Lorg/telegram/ui/Components/Paint/Views/StickerView$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView$FrameLayoutDrawer;->invalidate()V

    .line 87
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v0, v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v1, v1, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v1, v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->onMeasure(II)V

    .line 118
    return-void
.end method

.method protected stickerDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 98
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->containerView:Lorg/telegram/ui/Components/Paint/Views/StickerView$FrameLayoutDrawer;

    if-nez v1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 103
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 105
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirrored:Z

    if-eqz v1, :cond_1

    .line 106
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 107
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v1, v1, Lorg/telegram/ui/Components/Size;->width:F

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 109
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v2, v2, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v3, v3, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 110
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 112
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected updatePosition()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 90
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v2, v2, Lorg/telegram/ui/Components/Size;->width:F

    div-float v1, v2, v3

    .line 91
    .local v1, "halfWidth":F
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v2, v2, Lorg/telegram/ui/Components/Size;->height:F

    div-float v0, v2, v3

    .line 92
    .local v0, "halfHeight":F
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->position:Lorg/telegram/ui/Components/Point;

    iget v2, v2, Lorg/telegram/ui/Components/Point;->x:F

    sub-float/2addr v2, v1

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->setX(F)V

    .line 93
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->position:Lorg/telegram/ui/Components/Point;

    iget v2, v2, Lorg/telegram/ui/Components/Point;->y:F

    sub-float/2addr v2, v0

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->setY(F)V

    .line 94
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->updateSelectionView()V

    .line 95
    return-void
.end method
