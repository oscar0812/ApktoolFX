.class Lorg/telegram/ui/Cells/ChatMessageCell$2;
.super Landroid/graphics/drawable/Drawable;
.source "ChatMessageCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field rect:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

.field final synthetic val$maskPaint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/Cells/ChatMessageCell;

    .prologue
    .line 2077
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$2;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-object p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$2;->val$maskPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2079
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$2;->rect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x40c00000    # 6.0f

    .line 2083
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$2;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2084
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$2;->rect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2085
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$2;->rect:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatMessageCell$2;->val$maskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2086
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 2100
    const/16 v0, 0xff

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 2091
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 2096
    return-void
.end method
