.class public Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;
.super Landroid/widget/FrameLayout;
.source "EntitiesContainerView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

.field private gestureDetector:Landroid/view/ScaleGestureDetector;

.field private hasTransformed:Z

.field private previousAngle:F

.field private previousScale:F

.field private rotationGestureDetector:Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entitiesContainerViewDelegate"    # Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->previousScale:F

    .line 27
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->gestureDetector:Landroid/view/ScaleGestureDetector;

    .line 28
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;-><init>(Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->rotationGestureDetector:Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;

    .line 29
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

    .line 30
    return-void
.end method


# virtual methods
.method public bringViewToFront(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 2
    .param p1, "view"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->removeView(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->addView(Landroid/view/View;I)V

    .line 49
    :cond_0
    return-void
.end method

.method public entitiesCount()I
    .locals 4

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 35
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 36
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v3, :cond_0

    .line 34
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 41
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;->shouldReceiveTouches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRotation(Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;)V
    .locals 4
    .param p1, "rotationDetector"    # Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;

    .prologue
    .line 115
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;->onSelectedEntityRequest()Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v2

    .line 116
    .local v2, "view":Lorg/telegram/ui/Components/Paint/Views/EntityView;
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->getAngle()F

    move-result v0

    .line 117
    .local v0, "angle":F
    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->previousAngle:F

    sub-float v1, v3, v0

    .line 118
    .local v1, "delta":F
    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getRotation()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotate(F)V

    .line 119
    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->previousAngle:F

    .line 120
    return-void
.end method

.method public onRotationBegin(Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;)V
    .locals 1
    .param p1, "rotationDetector"    # Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;

    .prologue
    .line 109
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->getStartAngle()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->previousAngle:F

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->hasTransformed:Z

    .line 111
    return-void
.end method

.method public onRotationEnd(Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;)V
    .locals 0
    .param p1, "rotationDetector"    # Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;

    .prologue
    .line 125
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 85
    .local v1, "sf":F
    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->previousScale:F

    div-float v0, v1, v3

    .line 87
    .local v0, "newScale":F
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;->onSelectedEntityRequest()Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v2

    .line 88
    .local v2, "view":Lorg/telegram/ui/Components/Paint/Views/EntityView;
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->scale(F)V

    .line 90
    iput v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->previousScale:F

    .line 92
    const/4 v3, 0x0

    return v3
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v1, 0x1

    .line 97
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->previousScale:F

    .line 98
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->hasTransformed:Z

    .line 99
    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 105
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

    invoke-interface {v4}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;->onSelectedEntityRequest()Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v1

    .line 59
    .local v1, "selectedEntity":Lorg/telegram/ui/Components/Paint/Views/EntityView;
    if-nez v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v2

    .line 63
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 66
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 67
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->hasTransformed:Z

    .line 77
    .end local v0    # "action":I
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->gestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 78
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->rotationGestureDetector:Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v2, v3

    .line 79
    goto :goto_0

    .line 69
    .restart local v0    # "action":I
    :cond_3
    if-eq v0, v3, :cond_4

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 70
    :cond_4
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->hasTransformed:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

    if-eqz v3, :cond_0

    .line 71
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;->onEntityDeselect()V

    goto :goto_0
.end method
