.class Lorg/telegram/ui/Components/InstantCameraView$3;
.super Landroid/graphics/Paint;
.source "InstantCameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InstantCameraView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/InstantCameraView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/InstantCameraView;
    .param p2, "x0"    # I

    .prologue
    .line 233
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$3;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-direct {p0, p2}, Landroid/graphics/Paint;-><init>(I)V

    return-void
.end method


# virtual methods
.method public setAlpha(I)V
    .locals 1
    .param p1, "a"    # I

    .prologue
    .line 236
    invoke-super {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$3;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView;->invalidate()V

    .line 238
    return-void
.end method
