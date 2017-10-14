.class Lorg/telegram/ui/Components/WallpaperUpdater$1;
.super Ljava/lang/Object;
.source "WallpaperUpdater.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/WallpaperUpdater;->showAlert(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/WallpaperUpdater;

.field final synthetic val$fromTheme:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/WallpaperUpdater;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/WallpaperUpdater;

    .prologue
    .line 61
    iput-object p1, p0, Lorg/telegram/ui/Components/WallpaperUpdater$1;->this$0:Lorg/telegram/ui/Components/WallpaperUpdater;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/WallpaperUpdater$1;->val$fromTheme:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 65
    if-nez p2, :cond_3

    .line 67
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v3, "takePictureIntent":Landroid/content/Intent;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->generatePicturePath()Ljava/io/File;

    move-result-object v1

    .line 69
    .local v1, "image":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 70
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_2

    .line 71
    const-string/jumbo v4, "output"

    iget-object v5, p0, Lorg/telegram/ui/Components/WallpaperUpdater$1;->this$0:Lorg/telegram/ui/Components/WallpaperUpdater;

    invoke-static {v5}, Lorg/telegram/ui/Components/WallpaperUpdater;->access$000(Lorg/telegram/ui/Components/WallpaperUpdater;)Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "org.telegram.messenger.provider"

    invoke-static {v5, v6, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 72
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/WallpaperUpdater$1;->this$0:Lorg/telegram/ui/Components/WallpaperUpdater;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/WallpaperUpdater;->access$102(Lorg/telegram/ui/Components/WallpaperUpdater;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/WallpaperUpdater$1;->this$0:Lorg/telegram/ui/Components/WallpaperUpdater;

    invoke-static {v4}, Lorg/telegram/ui/Components/WallpaperUpdater;->access$000(Lorg/telegram/ui/Components/WallpaperUpdater;)Landroid/app/Activity;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 97
    .end local v1    # "image":Ljava/io/File;
    .end local v3    # "takePictureIntent":Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 75
    .restart local v1    # "image":Ljava/io/File;
    .restart local v3    # "takePictureIntent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v4, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    .end local v1    # "image":Ljava/io/File;
    .end local v3    # "takePictureIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 95
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    if-ne p2, v4, :cond_4

    .line 84
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.PICK"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v2, "photoPickerIntent":Landroid/content/Intent;
    const-string/jumbo v4, "image/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    iget-object v4, p0, Lorg/telegram/ui/Components/WallpaperUpdater$1;->this$0:Lorg/telegram/ui/Components/WallpaperUpdater;

    invoke-static {v4}, Lorg/telegram/ui/Components/WallpaperUpdater;->access$000(Lorg/telegram/ui/Components/WallpaperUpdater;)Landroid/app/Activity;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 87
    .end local v2    # "photoPickerIntent":Landroid/content/Intent;
    :cond_4
    iget-boolean v4, p0, Lorg/telegram/ui/Components/WallpaperUpdater$1;->val$fromTheme:Z

    if-eqz v4, :cond_1

    .line 88
    if-ne p2, v5, :cond_5

    .line 89
    iget-object v4, p0, Lorg/telegram/ui/Components/WallpaperUpdater$1;->this$0:Lorg/telegram/ui/Components/WallpaperUpdater;

    invoke-static {v4}, Lorg/telegram/ui/Components/WallpaperUpdater;->access$200(Lorg/telegram/ui/Components/WallpaperUpdater;)Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;

    move-result-object v4

    invoke-interface {v4}, Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;->needOpenColorPicker()V

    goto :goto_1

    .line 90
    :cond_5
    const/4 v4, 0x3

    if-ne p2, v4, :cond_1

    .line 91
    iget-object v4, p0, Lorg/telegram/ui/Components/WallpaperUpdater$1;->this$0:Lorg/telegram/ui/Components/WallpaperUpdater;

    invoke-static {v4}, Lorg/telegram/ui/Components/WallpaperUpdater;->access$200(Lorg/telegram/ui/Components/WallpaperUpdater;)Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;->didSelectWallpaper(Ljava/io/File;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method
