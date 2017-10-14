.class Lorg/telegram/ui/VoIPActivity$10;
.super Lorg/telegram/ui/Components/BackupImageView;
.source "VoIPActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity;->createContentView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private bottomGradient:Landroid/graphics/drawable/Drawable;

.field private paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/VoIPActivity;

.field private topGradient:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lorg/telegram/ui/VoIPActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 450
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$10;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 451
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity$10;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/VoIPActivity$10;->topGradient:Landroid/graphics/drawable/Drawable;

    .line 452
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity$10;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/VoIPActivity$10;->bottomGradient:Landroid/graphics/drawable/Drawable;

    .line 453
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/VoIPActivity$10;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 457
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 458
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$10;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x4c000000    # 3.3554432E7f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 459
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity$10;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity$10;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity$10;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 460
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$10;->topGradient:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity$10;->getWidth()I

    move-result v1

    const/high16 v2, 0x432a0000    # 170.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$10;->topGradient:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 462
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$10;->topGradient:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 463
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$10;->bottomGradient:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity$10;->getHeight()I

    move-result v1

    const/high16 v2, 0x435c0000    # 220.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity$10;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity$10;->getHeight()I

    move-result v3

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$10;->bottomGradient:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xb2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 465
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$10;->bottomGradient:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 466
    return-void
.end method
