.class Lorg/telegram/ui/SecretMediaViewer$3;
.super Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;
.source "SecretMediaViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecretMediaViewer;->setParentActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SecretMediaViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/SecretMediaViewer;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 633
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$3;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;-><init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 636
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->onLayout(ZIIII)V

    .line 637
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$3;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->access$1900(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 638
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer$3;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v2}, Lorg/telegram/ui/SecretMediaViewer;->access$1900(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v2, v1, 0x2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    add-int v0, v2, v1

    .line 639
    .local v0, "y":I
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$3;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->access$1900(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer$3;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v2}, Lorg/telegram/ui/SecretMediaViewer;->access$1900(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->getLeft()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer$3;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v3}, Lorg/telegram/ui/SecretMediaViewer;->access$1900(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->getRight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/SecretMediaViewer$3;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v4}, Lorg/telegram/ui/SecretMediaViewer;->access$1900(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->layout(IIII)V

    .line 641
    .end local v0    # "y":I
    :cond_0
    return-void

    .line 638
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
