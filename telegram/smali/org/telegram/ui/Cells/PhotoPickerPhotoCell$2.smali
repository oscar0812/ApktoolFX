.class Lorg/telegram/ui/Cells/PhotoPickerPhotoCell$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoPickerPhotoCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->setChecked(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

.field final synthetic val$checked:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    .prologue
    .line 112
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell$2;->this$0:Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    iput-boolean p2, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell$2;->val$checked:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell$2;->this$0:Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->access$100(Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell$2;->this$0:Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->access$100(Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell$2;->this$0:Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->access$102(Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 128
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell$2;->this$0:Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->access$100(Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell$2;->this$0:Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->access$100(Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell$2;->this$0:Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->access$102(Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 117
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell$2;->val$checked:Z

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell$2;->this$0:Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->setBackgroundColor(I)V

    .line 121
    :cond_0
    return-void
.end method
