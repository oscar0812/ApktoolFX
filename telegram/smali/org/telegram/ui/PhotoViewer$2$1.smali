.class Lorg/telegram/ui/PhotoViewer$2$1;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$2;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$2;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$2;

    .prologue
    .line 1361
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$2$1;->this$1:Lorg/telegram/ui/PhotoViewer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0x15

    const/4 v4, 0x0

    const/high16 v6, 0x42200000    # 40.0f

    .line 1364
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$2$1;->this$1:Lorg/telegram/ui/PhotoViewer$2;

    iget-object v3, v3, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1365
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1366
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 1367
    .local v2, "rotation":I
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v5, v3, 0x2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_1

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    add-int/2addr v3, v5

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1368
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$2$1;->this$1:Lorg/telegram/ui/PhotoViewer$2;

    iget-object v3, v3, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1370
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$2$1;->this$1:Lorg/telegram/ui/PhotoViewer$2;

    iget-object v3, v3, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$2600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CounterView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoViewer$CounterView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1371
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_0

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_0
    add-int/2addr v3, v4

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1372
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$2$1;->this$1:Lorg/telegram/ui/PhotoViewer$2;

    iget-object v3, v3, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$2600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CounterView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/PhotoViewer$CounterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1373
    return-void

    :cond_1
    move v3, v4

    .line 1367
    goto :goto_0
.end method
