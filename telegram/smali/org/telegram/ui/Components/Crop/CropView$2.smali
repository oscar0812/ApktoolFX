.class Lorg/telegram/ui/Components/Crop/CropView$2;
.super Ljava/lang/Object;
.source "CropView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Crop/CropView;->fillAreaView(Landroid/graphics/RectF;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Crop/CropView;

.field final synthetic val$currentScale:[F

.field final synthetic val$targetScale:F

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Crop/CropView;F[FFF)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/Crop/CropView;

    .prologue
    .line 317
    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView$2;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    iput p2, p0, Lorg/telegram/ui/Components/Crop/CropView$2;->val$targetScale:F

    iput-object p3, p0, Lorg/telegram/ui/Components/Crop/CropView$2;->val$currentScale:[F

    iput p4, p0, Lorg/telegram/ui/Components/Crop/CropView$2;->val$x:F

    iput p5, p0, Lorg/telegram/ui/Components/Crop/CropView$2;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 320
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 321
    .local v1, "value":F
    iget v2, p0, Lorg/telegram/ui/Components/Crop/CropView$2;->val$targetScale:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v1

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView$2;->val$currentScale:[F

    aget v3, v3, v4

    div-float v0, v2, v3

    .line 322
    .local v0, "deltaScale":F
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView$2;->val$currentScale:[F

    aget v3, v2, v4

    mul-float/2addr v3, v0

    aput v3, v2, v4

    .line 323
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView$2;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Crop/CropView;->access$1100(Lorg/telegram/ui/Components/Crop/CropView;)Lorg/telegram/ui/Components/Crop/CropView$CropState;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Components/Crop/CropView$2;->val$x:F

    iget v4, p0, Lorg/telegram/ui/Components/Crop/CropView$2;->val$y:F

    invoke-static {v2, v0, v3, v4}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1200(Lorg/telegram/ui/Components/Crop/CropView$CropState;FFF)V

    .line 324
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView$2;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    .line 325
    return-void
.end method
