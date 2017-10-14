.class Lorg/telegram/ui/Components/Crop/CropView$1;
.super Ljava/lang/Object;
.source "CropView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Crop/CropView;->setBitmap(Landroid/graphics/Bitmap;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Crop/CropView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Crop/CropView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/Crop/CropView;

    .prologue
    .line 237
    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView$1;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$1;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->reset()V

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$1;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView;->access$100(Lorg/telegram/ui/Components/Crop/CropView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 242
    const/4 v0, 0x0

    return v0
.end method
