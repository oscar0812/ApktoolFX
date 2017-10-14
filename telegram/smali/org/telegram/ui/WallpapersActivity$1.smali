.class Lorg/telegram/ui/WallpapersActivity$1;
.super Ljava/lang/Object;
.source "WallpapersActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/WallpapersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/WallpapersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/WallpapersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/WallpapersActivity;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/telegram/ui/WallpapersActivity$1;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectWallpaper(Ljava/io/File;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 114
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$1;->this$0:Lorg/telegram/ui/WallpapersActivity;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/WallpapersActivity;->access$002(Lorg/telegram/ui/WallpapersActivity;I)I

    .line 115
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$1;->this$0:Lorg/telegram/ui/WallpapersActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/WallpapersActivity;->access$102(Lorg/telegram/ui/WallpapersActivity;Z)Z

    .line 116
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$1;->this$0:Lorg/telegram/ui/WallpapersActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/WallpapersActivity;->access$202(Lorg/telegram/ui/WallpapersActivity;I)I

    .line 117
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$1;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-static {v1, p1}, Lorg/telegram/ui/WallpapersActivity;->access$302(Lorg/telegram/ui/WallpapersActivity;Ljava/io/File;)Ljava/io/File;

    .line 118
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$1;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-static {v1}, Lorg/telegram/ui/WallpapersActivity;->access$400(Lorg/telegram/ui/WallpapersActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 119
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$1;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-static {v1}, Lorg/telegram/ui/WallpapersActivity;->access$400(Lorg/telegram/ui/WallpapersActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    return-void
.end method

.method public needOpenColorPicker()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method
