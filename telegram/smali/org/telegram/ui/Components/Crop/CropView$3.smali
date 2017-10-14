.class Lorg/telegram/ui/Components/Crop/CropView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CropView.java"


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

.field final synthetic val$animEnsureFit:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Crop/CropView;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/Crop/CropView;

    .prologue
    .line 327
    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView$3;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/Crop/CropView$3;->val$animEnsureFit:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 330
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView$3;->val$animEnsureFit:Z

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$3;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    const/4 v1, 0x1

    invoke-static {v0, v2, v2, v1}, Lorg/telegram/ui/Components/Crop/CropView;->access$1300(Lorg/telegram/ui/Components/Crop/CropView;ZZZ)V

    .line 332
    :cond_0
    return-void
.end method
