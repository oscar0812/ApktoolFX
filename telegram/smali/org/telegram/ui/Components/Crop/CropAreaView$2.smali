.class Lorg/telegram/ui/Components/Crop/CropAreaView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CropAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Crop/CropAreaView;->fill(Landroid/graphics/RectF;Landroid/animation/Animator;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Crop/CropAreaView;

.field final synthetic val$targetRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Crop/CropAreaView;Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/Crop/CropAreaView;

    .prologue
    .line 338
    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView$2;->this$0:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iput-object p2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView$2;->val$targetRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 341
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView$2;->this$0:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView$2;->val$targetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setActualRect(Landroid/graphics/RectF;)V

    .line 342
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView$2;->this$0:Lorg/telegram/ui/Components/Crop/CropAreaView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->access$102(Lorg/telegram/ui/Components/Crop/CropAreaView;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 343
    return-void
.end method
