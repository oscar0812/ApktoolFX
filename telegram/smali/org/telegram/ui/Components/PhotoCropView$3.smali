.class Lorg/telegram/ui/Components/PhotoCropView$3;
.super Ljava/lang/Object;
.source "PhotoCropView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoCropView;->startAnimationRunnable()V
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
    .line 233
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView$3;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView$3;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoCropView;->access$300(Lorg/telegram/ui/Components/PhotoCropView;)Ljava/lang/Runnable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView$3;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoCropView;->access$302(Lorg/telegram/ui/Components/PhotoCropView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView$3;->this$0:Lorg/telegram/ui/Components/PhotoCropView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoCropView;->moveToFill(Z)V

    .line 240
    :cond_0
    return-void
.end method
