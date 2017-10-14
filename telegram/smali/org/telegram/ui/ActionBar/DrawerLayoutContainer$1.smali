.class Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$1;
.super Ljava/lang/Object;
.source "DrawerLayoutContainer.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    .prologue
    .line 76
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$1;->this$0:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    .line 81
    .local v0, "drawerLayout":Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    sput v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 82
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$1;->this$0:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-static {v1, p2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->access$002(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$1;->this$0:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setWillNotDraw(Z)V

    .line 84
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->requestLayout()V

    .line 85
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1

    .line 83
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
