.class public abstract Lorg/telegram/ui/Cells/BaseCell;
.super Landroid/view/ViewGroup;
.source "BaseCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;,
        Lorg/telegram/ui/Cells/BaseCell$CheckForTap;
    }
.end annotation


# instance fields
.field private checkingForLongPress:Z

.field private pendingCheckForLongPress:Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;

.field private pendingCheckForTap:Lorg/telegram/ui/Cells/BaseCell$CheckForTap;

.field private pressCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 45
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/BaseCell;->checkingForLongPress:Z

    .line 46
    iput-object v1, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForLongPress:Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;

    .line 47
    iput v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pressCount:I

    .line 48
    iput-object v1, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForTap:Lorg/telegram/ui/Cells/BaseCell$CheckForTap;

    .line 52
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/BaseCell;->setWillNotDraw(Z)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/BaseCell;)Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/BaseCell;

    .prologue
    .line 18
    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForLongPress:Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Cells/BaseCell;Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;)Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Cells/BaseCell;
    .param p1, "x1"    # Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;

    .prologue
    .line 18
    iput-object p1, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForLongPress:Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/BaseCell;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/BaseCell;

    .prologue
    .line 18
    iget v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pressCount:I

    return v0
.end method

.method static synthetic access$104(Lorg/telegram/ui/Cells/BaseCell;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/BaseCell;

    .prologue
    .line 18
    iget v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pressCount:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/BaseCell;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/BaseCell;

    .prologue
    .line 18
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/BaseCell;->checkingForLongPress:Z

    return v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Cells/BaseCell;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Cells/BaseCell;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/BaseCell;->checkingForLongPress:Z

    return p1
.end method


# virtual methods
.method protected cancelCheckLongPress()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/BaseCell;->checkingForLongPress:Z

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForLongPress:Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForLongPress:Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/BaseCell;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForTap:Lorg/telegram/ui/Cells/BaseCell$CheckForTap;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForTap:Lorg/telegram/ui/Cells/BaseCell$CheckForTap;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/BaseCell;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 88
    :cond_1
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method protected onLongPress()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method protected setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 60
    float-to-int v2, p2

    float-to-int v3, p3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 61
    return-void
.end method

.method protected setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 57
    return-void
.end method

.method protected setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 67
    :cond_0
    return-void
.end method

.method protected startCheckLongPress()V
    .locals 4

    .prologue
    .line 70
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/BaseCell;->checkingForLongPress:Z

    if-eqz v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/BaseCell;->checkingForLongPress:Z

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForTap:Lorg/telegram/ui/Cells/BaseCell$CheckForTap;

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Lorg/telegram/ui/Cells/BaseCell$CheckForTap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Cells/BaseCell$CheckForTap;-><init>(Lorg/telegram/ui/Cells/BaseCell;Lorg/telegram/ui/Cells/BaseCell$1;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForTap:Lorg/telegram/ui/Cells/BaseCell$CheckForTap;

    .line 77
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/BaseCell;->pendingCheckForTap:Lorg/telegram/ui/Cells/BaseCell$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/BaseCell;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
