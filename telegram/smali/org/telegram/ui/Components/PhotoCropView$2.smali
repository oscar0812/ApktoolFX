.class Lorg/telegram/ui/Components/PhotoCropView$2;
.super Ljava/lang/Object;
.source "PhotoCropView.java"

# interfaces
.implements Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoCropView;->setBitmap(Landroid/graphics/Bitmap;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoCropView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoCropView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoCropView;

    .prologue
    .line 91
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView$2;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aspectRatioPressed()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView$2;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoCropView;->access$200(Lorg/telegram/ui/Components/PhotoCropView;)Lorg/telegram/ui/Components/Crop/CropView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->showAspectRatioDialog()V

    .line 113
    return-void
.end method

.method public onChange(F)V
    .locals 2
    .param p1, "angle"    # F

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView$2;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoCropView;->access$200(Lorg/telegram/ui/Components/PhotoCropView;)Lorg/telegram/ui/Components/Crop/CropView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Crop/CropView;->setRotation(F)V

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView$2;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoCropView;->access$000(Lorg/telegram/ui/Components/PhotoCropView;)Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView$2;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoCropView;->access$000(Lorg/telegram/ui/Components/PhotoCropView;)Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->onChange(Z)V

    .line 103
    :cond_0
    return-void
.end method

.method public onEnd(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView$2;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoCropView;->access$200(Lorg/telegram/ui/Components/PhotoCropView;)Lorg/telegram/ui/Components/Crop/CropView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->onRotationEnded()V

    .line 108
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView$2;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoCropView;->access$200(Lorg/telegram/ui/Components/PhotoCropView;)Lorg/telegram/ui/Components/Crop/CropView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->onRotationBegan()V

    .line 95
    return-void
.end method

.method public rotate90Pressed()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView$2;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoCropView;->access$100(Lorg/telegram/ui/Components/PhotoCropView;)Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->reset()V

    .line 118
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView$2;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoCropView;->access$200(Lorg/telegram/ui/Components/PhotoCropView;)Lorg/telegram/ui/Components/Crop/CropView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->rotate90Degrees()V

    .line 119
    return-void
.end method
