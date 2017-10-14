.class Lorg/telegram/ui/Components/Crop/CropView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CropView.java"


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

.field final synthetic val$allowScale:Z

.field final synthetic val$animated:Z

.field final synthetic val$fast:Z

.field final synthetic val$maximize:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Crop/CropView;ZZZZ)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/Crop/CropView;

    .prologue
    .line 519
    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView$5;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/Crop/CropView$5;->val$fast:Z

    iput-boolean p3, p0, Lorg/telegram/ui/Components/Crop/CropView$5;->val$allowScale:Z

    iput-boolean p4, p0, Lorg/telegram/ui/Components/Crop/CropView$5;->val$maximize:Z

    iput-boolean p5, p0, Lorg/telegram/ui/Components/Crop/CropView$5;->val$animated:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 522
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$5;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView;->access$1902(Lorg/telegram/ui/Components/Crop/CropView;Z)Z

    .line 524
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView$5;->val$fast:Z

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$5;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Crop/CropView$5;->val$allowScale:Z

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Crop/CropView$5;->val$maximize:Z

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Crop/CropView$5;->val$animated:Z

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/Crop/CropView;->access$2000(Lorg/telegram/ui/Components/Crop/CropView;ZZZZ)V

    .line 526
    :cond_0
    return-void
.end method
