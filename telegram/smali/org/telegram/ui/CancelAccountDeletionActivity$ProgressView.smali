.class Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;
.super Landroid/view/View;
.source "CancelAccountDeletionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CancelAccountDeletionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressView"
.end annotation


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private progress:F

.field final synthetic this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/CancelAccountDeletionActivity;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    iput-object p1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    .line 91
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;->paint:Landroid/graphics/Paint;

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;->paint2:Landroid/graphics/Paint;

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;->paint:Landroid/graphics/Paint;

    const-string/jumbo v1, "login_progressInner"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;->paint2:Landroid/graphics/Paint;

    const-string/jumbo v1, "login_progressOuter"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0}, Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;->progress:F

    mul-float/2addr v0, v2

    float-to-int v8, v0

    .line 104
    .local v8, "start":I
    int-to-float v3, v8

    invoke-virtual {p0}, Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;->paint2:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 105
    int-to-float v3, v8

    invoke-virtual {p0}, Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 106
    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 97
    iput p1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;->progress:F

    .line 98
    invoke-virtual {p0}, Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;->invalidate()V

    .line 99
    return-void
.end method
