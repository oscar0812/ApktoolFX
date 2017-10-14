.class Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;
.super Landroid/view/View;
.source "DrawerProfileCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/DrawerProfileCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloudView"
.end annotation


# instance fields
.field private paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Cells/DrawerProfileCell;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Cells/DrawerProfileCell;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->this$0:Lorg/telegram/ui/Cells/DrawerProfileCell;

    .line 60
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->paint:Landroid/graphics/Paint;

    .line 61
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x42040000    # 33.0f

    .line 65
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCustomTheme()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 66
    iget-object v3, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->paint:Landroid/graphics/Paint;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getServiceMessageColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    :goto_0
    const-string/jumbo v3, "chats_menuCloud"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 71
    .local v1, "newColor":I
    iget-object v3, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->this$0:Lorg/telegram/ui/Cells/DrawerProfileCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/DrawerProfileCell;->access$000(Lorg/telegram/ui/Cells/DrawerProfileCell;)I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 72
    iget-object v3, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->this$0:Lorg/telegram/ui/Cells/DrawerProfileCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/DrawerProfileCell;->access$100(Lorg/telegram/ui/Cells/DrawerProfileCell;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    iget-object v5, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->this$0:Lorg/telegram/ui/Cells/DrawerProfileCell;

    const-string/jumbo v6, "chats_menuCloud"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/ui/Cells/DrawerProfileCell;->access$002(Lorg/telegram/ui/Cells/DrawerProfileCell;I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    const/high16 v5, 0x42080000    # 34.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    iget-object v6, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 75
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->getMeasuredWidth()I

    move-result v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 76
    .local v0, "l":I
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    .line 77
    .local v2, "t":I
    iget-object v3, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->this$0:Lorg/telegram/ui/Cells/DrawerProfileCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/DrawerProfileCell;->access$100(Lorg/telegram/ui/Cells/DrawerProfileCell;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 78
    iget-object v3, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->this$0:Lorg/telegram/ui/Cells/DrawerProfileCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/DrawerProfileCell;->access$100(Lorg/telegram/ui/Cells/DrawerProfileCell;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 79
    return-void

    .line 68
    .end local v0    # "l":I
    .end local v1    # "newColor":I
    .end local v2    # "t":I
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->paint:Landroid/graphics/Paint;

    const-string/jumbo v4, "chats_menuCloudBackgroundCats"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0
.end method
