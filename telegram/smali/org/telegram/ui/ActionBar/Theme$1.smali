.class final Lorg/telegram/ui/ActionBar/Theme$1;
.super Landroid/graphics/drawable/StateListDrawable;
.source "Theme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1512
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public selectDrawable(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 1515
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_3

    .line 1516
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme;->access$000(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1517
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 1518
    .local v0, "colorFilter":Landroid/graphics/ColorFilter;
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    move-object v3, v1

    .line 1519
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 1523
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->selectDrawable(I)Z

    move-result v2

    .line 1524
    .local v2, "result":Z
    if-eqz v0, :cond_1

    .line 1525
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1529
    .end local v0    # "colorFilter":Landroid/graphics/ColorFilter;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "result":Z
    :cond_1
    :goto_1
    return v2

    .line 1520
    .restart local v0    # "colorFilter":Landroid/graphics/ColorFilter;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    instance-of v3, v1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 1521
    check-cast v3, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    goto :goto_0

    .line 1529
    .end local v0    # "colorFilter":Landroid/graphics/ColorFilter;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->selectDrawable(I)Z

    move-result v2

    goto :goto_1
.end method
