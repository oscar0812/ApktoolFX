.class Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;
.super Landroid/widget/TextView;
.source "FeaturedStickerSetInfoCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 112
    iput-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$000(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$000(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$100(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$200(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)Landroid/graphics/Paint;

    move-result-object v0

    const/16 v1, 0xff

    iget-object v2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$100(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 118
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x41300000    # 11.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v9, v0, v1

    .line 119
    .local v9, "x":I
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$300(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)Landroid/graphics/RectF;

    move-result-object v0

    int-to-float v1, v9

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v9

    int-to-float v3, v3

    const/high16 v4, 0x41300000    # 11.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 120
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$300(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$400(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)I

    move-result v0

    int-to-float v2, v0

    const/high16 v3, 0x435c0000    # 220.0f

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$200(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$300(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$300(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$300(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$300(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->invalidate(IIII)V

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 123
    .local v10, "newTime":J
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$500(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 124
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$500(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)J

    move-result-wide v0

    sub-long v6, v10, v0

    .line 125
    .local v6, "delta":J
    const-wide/16 v0, 0x168

    mul-long/2addr v0, v6

    long-to-float v0, v0

    const/high16 v1, 0x44fa0000    # 2000.0f

    div-float v8, v0, v1

    .line 126
    .local v8, "dt":F
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$400(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v8

    float-to-int v1, v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$402(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;I)I

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$400(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$400(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)I

    move-result v2

    div-int/lit16 v2, v2, 0x168

    mul-int/lit16 v2, v2, 0x168

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$402(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;I)I

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$000(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$100(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$100(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)F

    move-result v1

    long-to-float v2, v6

    const/high16 v3, 0x43480000    # 200.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$102(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;F)F

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$100(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$102(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;F)F

    .line 144
    .end local v6    # "delta":J
    .end local v8    # "dt":F
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-static {v0, v10, v11}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$502(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;J)J

    .line 145
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->invalidate()V

    .line 147
    .end local v9    # "x":I
    .end local v10    # "newTime":J
    :cond_2
    return-void

    .line 136
    .restart local v6    # "delta":J
    .restart local v8    # "dt":F
    .restart local v9    # "x":I
    .restart local v10    # "newTime":J
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$100(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$100(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)F

    move-result v1

    long-to-float v2, v6

    const/high16 v3, 0x43480000    # 200.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$102(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;F)F

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$100(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->access$102(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;F)F

    goto :goto_0
.end method
