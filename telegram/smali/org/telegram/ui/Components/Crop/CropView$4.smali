.class Lorg/telegram/ui/Components/Crop/CropView$4;
.super Ljava/lang/Object;
.source "CropView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Crop/CropView;->fitContentInBounds(ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Crop/CropView;

.field final synthetic val$animDX:F

.field final synthetic val$animDY:F

.field final synthetic val$animScale:F

.field final synthetic val$currentValues:[F


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Crop/CropView;F[FFF)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/Crop/CropView;

    .prologue
    .line 501
    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    iput p2, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$animDX:F

    iput-object p3, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$currentValues:[F

    iput p4, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$animDY:F

    iput p5, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$animScale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 11
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 504
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 506
    .local v3, "value":F
    iget v4, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$animDX:F

    mul-float/2addr v4, v3

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$currentValues:[F

    aget v5, v5, v6

    sub-float v1, v4, v5

    .line 507
    .local v1, "deltaX":F
    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$currentValues:[F

    aget v5, v4, v6

    add-float/2addr v5, v1

    aput v5, v4, v6

    .line 508
    iget v4, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$animDY:F

    mul-float/2addr v4, v3

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$currentValues:[F

    aget v5, v5, v10

    sub-float v2, v4, v5

    .line 509
    .local v2, "deltaY":F
    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$currentValues:[F

    aget v5, v4, v10

    add-float/2addr v5, v2

    aput v5, v4, v10

    .line 510
    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-static {v4}, Lorg/telegram/ui/Components/Crop/CropView;->access$1100(Lorg/telegram/ui/Components/Crop/CropView;)Lorg/telegram/ui/Components/Crop/CropView$CropState;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$currentValues:[F

    aget v5, v5, v7

    mul-float/2addr v5, v1

    iget-object v6, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$currentValues:[F

    aget v6, v6, v7

    mul-float/2addr v6, v2

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1800(Lorg/telegram/ui/Components/Crop/CropView$CropState;FF)V

    .line 512
    iget v4, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$animScale:F

    sub-float/2addr v4, v9

    mul-float/2addr v4, v3

    add-float/2addr v4, v9

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$currentValues:[F

    aget v5, v5, v7

    div-float v0, v4, v5

    .line 513
    .local v0, "deltaScale":F
    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->val$currentValues:[F

    aget v5, v4, v7

    mul-float/2addr v5, v0

    aput v5, v4, v7

    .line 514
    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-static {v4}, Lorg/telegram/ui/Components/Crop/CropView;->access$1100(Lorg/telegram/ui/Components/Crop/CropView;)Lorg/telegram/ui/Components/Crop/CropView$CropState;

    move-result-object v4

    invoke-static {v4, v0, v8, v8}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1200(Lorg/telegram/ui/Components/Crop/CropView$CropState;FFF)V

    .line 516
    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView$4;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    .line 517
    return-void
.end method
