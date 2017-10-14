.class Lorg/telegram/ui/Cells/PhotoPickerPhotoCell$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoPickerPhotoCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->showCheck(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    .prologue
    .line 87
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->access$000(Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->access$002(Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 93
    :cond_0
    return-void
.end method
