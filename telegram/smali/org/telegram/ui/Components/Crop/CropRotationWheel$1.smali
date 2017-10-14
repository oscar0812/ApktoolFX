.class Lorg/telegram/ui/Components/Crop/CropRotationWheel$1;
.super Ljava/lang/Object;
.source "CropRotationWheel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Crop/CropRotationWheel;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Crop/CropRotationWheel;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Crop/CropRotationWheel;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    .prologue
    .line 70
    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel$1;->this$0:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel$1;->this$0:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->access$000(Lorg/telegram/ui/Components/Crop/CropRotationWheel;)Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel$1;->this$0:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->access$000(Lorg/telegram/ui/Components/Crop/CropRotationWheel;)Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;->aspectRatioPressed()V

    .line 75
    :cond_0
    return-void
.end method
