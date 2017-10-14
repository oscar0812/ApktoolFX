.class Lorg/telegram/ui/ActionBar/AlertDialog$1$1;
.super Ljava/lang/Object;
.source "AlertDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/AlertDialog$1;->onMeasure(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ActionBar/AlertDialog$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/AlertDialog$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ActionBar/AlertDialog$1;

    .prologue
    .line 245
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1$1;->this$1:Lorg/telegram/ui/ActionBar/AlertDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 248
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1$1;->this$1:Lorg/telegram/ui/ActionBar/AlertDialog$1;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1202(Lorg/telegram/ui/ActionBar/AlertDialog;I)I

    .line 249
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v0, v4, v5

    .line 251
    .local v0, "calculatedWidth":I
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 252
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 253
    const/high16 v4, 0x43df0000    # 446.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 261
    .local v1, "maxWidth":I
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1$1;->this$1:Lorg/telegram/ui/ActionBar/AlertDialog$1;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 262
    .local v3, "window":Landroid/view/Window;
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 263
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 264
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1$1;->this$1:Lorg/telegram/ui/ActionBar/AlertDialog$1;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1$1;->this$1:Lorg/telegram/ui/ActionBar/AlertDialog$1;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 265
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 266
    return-void

    .line 255
    .end local v1    # "maxWidth":I
    .end local v2    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "window":Landroid/view/Window;
    :cond_0
    const/high16 v4, 0x43f80000    # 496.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .restart local v1    # "maxWidth":I
    goto :goto_0

    .line 258
    .end local v1    # "maxWidth":I
    :cond_1
    const/high16 v4, 0x43b20000    # 356.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .restart local v1    # "maxWidth":I
    goto :goto_0
.end method
