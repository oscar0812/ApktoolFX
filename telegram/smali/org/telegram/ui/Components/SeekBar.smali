.class public Lorg/telegram/ui/Components/SeekBar;
.super Ljava/lang/Object;
.source "SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;
    }
.end annotation


# static fields
.field private static innerPaint:Landroid/graphics/Paint;

.field private static outerPaint:Landroid/graphics/Paint;

.field private static thumbWidth:I


# instance fields
.field private delegate:Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

.field private height:I

.field private innerColor:I

.field private outerColor:I

.field private pressed:Z

.field private selected:Z

.field private selectedColor:I

.field private thumbDX:I

.field private thumbX:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Lorg/telegram/ui/Components/SeekBar;->thumbX:I

    .line 28
    iput v0, p0, Lorg/telegram/ui/Components/SeekBar;->thumbDX:I

    .line 29
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SeekBar;->pressed:Z

    .line 39
    sget-object v0, Lorg/telegram/ui/Components/SeekBar;->innerPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/SeekBar;->innerPaint:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/SeekBar;->outerPaint:Landroid/graphics/Paint;

    .line 42
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sput v0, Lorg/telegram/ui/Components/SeekBar;->thumbWidth:I

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 113
    sget-object v1, Lorg/telegram/ui/Components/SeekBar;->innerPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBar;->selected:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/SeekBar;->selectedColor:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    sget-object v0, Lorg/telegram/ui/Components/SeekBar;->outerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/SeekBar;->outerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    sget v0, Lorg/telegram/ui/Components/SeekBar;->thumbWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget v0, p0, Lorg/telegram/ui/Components/SeekBar;->height:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lorg/telegram/ui/Components/SeekBar;->width:I

    sget v3, Lorg/telegram/ui/Components/SeekBar;->thumbWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lorg/telegram/ui/Components/SeekBar;->height:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/Components/SeekBar;->innerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 117
    sget v0, Lorg/telegram/ui/Components/SeekBar;->thumbWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget v0, p0, Lorg/telegram/ui/Components/SeekBar;->height:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    sget v0, Lorg/telegram/ui/Components/SeekBar;->thumbWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v3, p0, Lorg/telegram/ui/Components/SeekBar;->thumbX:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lorg/telegram/ui/Components/SeekBar;->height:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/Components/SeekBar;->outerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 118
    iget v0, p0, Lorg/telegram/ui/Components/SeekBar;->thumbX:I

    sget v1, Lorg/telegram/ui/Components/SeekBar;->thumbWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Lorg/telegram/ui/Components/SeekBar;->height:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBar;->pressed:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x41000000    # 8.0f

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sget-object v3, Lorg/telegram/ui/Components/SeekBar;->outerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 119
    return-void

    .line 113
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/SeekBar;->innerColor:I

    goto :goto_0

    .line 118
    :cond_1
    const/high16 v0, 0x40c00000    # 6.0f

    goto :goto_1
.end method

.method public getProgress()F
    .locals 3

    .prologue
    .line 96
    iget v0, p0, Lorg/telegram/ui/Components/SeekBar;->thumbX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/SeekBar;->width:I

    sget v2, Lorg/telegram/ui/Components/SeekBar;->thumbWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBar;->pressed:Z

    return v0
.end method

.method public onTouch(IFF)Z
    .locals 7
    .param p1, "action"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 51
    if-nez p1, :cond_1

    .line 52
    iget v3, p0, Lorg/telegram/ui/Components/SeekBar;->height:I

    sget v4, Lorg/telegram/ui/Components/SeekBar;->thumbWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 53
    .local v0, "additionWidth":I
    iget v3, p0, Lorg/telegram/ui/Components/SeekBar;->thumbX:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    cmpg-float v3, v3, p2

    if-gtz v3, :cond_6

    iget v3, p0, Lorg/telegram/ui/Components/SeekBar;->thumbX:I

    sget v4, Lorg/telegram/ui/Components/SeekBar;->thumbWidth:I

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_6

    const/4 v3, 0x0

    cmpl-float v3, p3, v3

    if-ltz v3, :cond_6

    iget v3, p0, Lorg/telegram/ui/Components/SeekBar;->height:I

    int-to-float v3, v3

    cmpg-float v3, p3, v3

    if-gtz v3, :cond_6

    .line 54
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SeekBar;->pressed:Z

    .line 55
    iget v2, p0, Lorg/telegram/ui/Components/SeekBar;->thumbX:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    float-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/SeekBar;->thumbDX:I

    .line 77
    .end local v0    # "additionWidth":I
    :cond_0
    :goto_0
    return v1

    .line 58
    :cond_1
    if-eq p1, v1, :cond_2

    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    .line 59
    :cond_2
    iget-boolean v3, p0, Lorg/telegram/ui/Components/SeekBar;->pressed:Z

    if-eqz v3, :cond_6

    .line 60
    if-ne p1, v1, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/SeekBar;->delegate:Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

    if-eqz v3, :cond_3

    .line 61
    iget-object v3, p0, Lorg/telegram/ui/Components/SeekBar;->delegate:Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

    iget v4, p0, Lorg/telegram/ui/Components/SeekBar;->thumbX:I

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/SeekBar;->width:I

    sget v6, Lorg/telegram/ui/Components/SeekBar;->thumbWidth:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-interface {v3, v4}, Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;->onSeekBarDrag(F)V

    .line 63
    :cond_3
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SeekBar;->pressed:Z

    goto :goto_0

    .line 66
    :cond_4
    const/4 v3, 0x2

    if-ne p1, v3, :cond_6

    .line 67
    iget-boolean v3, p0, Lorg/telegram/ui/Components/SeekBar;->pressed:Z

    if-eqz v3, :cond_6

    .line 68
    iget v3, p0, Lorg/telegram/ui/Components/SeekBar;->thumbDX:I

    int-to-float v3, v3

    sub-float v3, p2, v3

    float-to-int v3, v3

    iput v3, p0, Lorg/telegram/ui/Components/SeekBar;->thumbX:I

    .line 69
    iget v3, p0, Lorg/telegram/ui/Components/SeekBar;->thumbX:I

    if-gez v3, :cond_5

    .line 70
    iput v2, p0, Lorg/telegram/ui/Components/SeekBar;->thumbX:I

    goto :goto_0

    .line 71
    :cond_5
    iget v2, p0, Lorg/telegram/ui/Components/SeekBar;->thumbX:I

    iget v3, p0, Lorg/telegram/ui/Components/SeekBar;->width:I

    sget v4, Lorg/telegram/ui/Components/SeekBar;->thumbWidth:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_0

    .line 72
    iget v2, p0, Lorg/telegram/ui/Components/SeekBar;->width:I

    sget v3, Lorg/telegram/ui/Components/SeekBar;->thumbWidth:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/Components/SeekBar;->thumbX:I

    goto :goto_0

    :cond_6
    move v1, v2

    .line 77
    goto :goto_0
.end method

.method public setColors(III)V
    .locals 0
    .param p1, "inner"    # I
    .param p2, "outer"    # I
    .param p3, "selected"    # I

    .prologue
    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/SeekBar;->innerColor:I

    .line 82
    iput p2, p0, Lorg/telegram/ui/Components/SeekBar;->outerColor:I

    .line 83
    iput p3, p0, Lorg/telegram/ui/Components/SeekBar;->selectedColor:I

    .line 84
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;)V
    .locals 0
    .param p1, "seekBarDelegate"    # Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBar;->delegate:Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

    .line 48
    return-void
.end method

.method public setProgress(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    .line 87
    iget v0, p0, Lorg/telegram/ui/Components/SeekBar;->width:I

    sget v1, Lorg/telegram/ui/Components/SeekBar;->thumbWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/SeekBar;->thumbX:I

    .line 88
    iget v0, p0, Lorg/telegram/ui/Components/SeekBar;->thumbX:I

    if-gez v0, :cond_1

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/SeekBar;->thumbX:I

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/SeekBar;->thumbX:I

    iget v1, p0, Lorg/telegram/ui/Components/SeekBar;->width:I

    sget v2, Lorg/telegram/ui/Components/SeekBar;->thumbWidth:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 91
    iget v0, p0, Lorg/telegram/ui/Components/SeekBar;->width:I

    sget v1, Lorg/telegram/ui/Components/SeekBar;->thumbWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/SeekBar;->thumbX:I

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SeekBar;->selected:Z

    .line 105
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 108
    iput p1, p0, Lorg/telegram/ui/Components/SeekBar;->width:I

    .line 109
    iput p2, p0, Lorg/telegram/ui/Components/SeekBar;->height:I

    .line 110
    return-void
.end method
