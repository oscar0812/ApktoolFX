.class public Lorg/telegram/ui/PhotoCropActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PhotoCropActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;,
        Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;
    }
.end annotation


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private bitmapKey:Ljava/lang/String;

.field private delegate:Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;

.field private doneButtonPressed:Z

.field private drawable:Landroid/graphics/drawable/BitmapDrawable;

.field private imageToCrop:Landroid/graphics/Bitmap;

.field private sameBitmap:Z

.field private view:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 370
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->delegate:Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;

    .line 363
    iput-boolean v1, p0, Lorg/telegram/ui/PhotoCropActivity;->sameBitmap:Z

    .line 364
    iput-boolean v1, p0, Lorg/telegram/ui/PhotoCropActivity;->doneButtonPressed:Z

    .line 371
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoCropActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->imageToCrop:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoCropActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PhotoCropActivity;)Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoCropActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->delegate:Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PhotoCropActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoCropActivity;

    .prologue
    .line 36
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoCropActivity;->doneButtonPressed:Z

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/PhotoCropActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoCropActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoCropActivity;->doneButtonPressed:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/PhotoCropActivity;)Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoCropActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->view:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    return-object v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/PhotoCropActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoCropActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoCropActivity;->sameBitmap:Z

    return p1
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 421
    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v2, -0xcccccd

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 422
    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v2, -0xc2c2c3

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 423
    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 424
    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v2, 0x7f020093

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 425
    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 426
    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "CropImage"

    const v3, 0x7f0701a9

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/PhotoCropActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoCropActivity$1;-><init>(Lorg/telegram/ui/PhotoCropActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 446
    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 447
    .local v0, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const v1, 0x7f0200af

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v6, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 449
    new-instance v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;-><init>(Lorg/telegram/ui/PhotoCropActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoCropActivity;->view:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iput-object v1, p0, Lorg/telegram/ui/PhotoCropActivity;->fragmentView:Landroid/view/View;

    .line 450
    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity;->fragmentView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoCropActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "freeform"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->freeform:Z

    .line 451
    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity;->fragmentView:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public onFragmentCreate()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 375
    iput-boolean v4, p0, Lorg/telegram/ui/PhotoCropActivity;->swipeBackEnabled:Z

    .line 376
    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity;->imageToCrop:Landroid/graphics/Bitmap;

    if-nez v6, :cond_3

    .line 377
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoCropActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "photoPath"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "photoPath":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoCropActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "photoUri"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 379
    .local v2, "photoUri":Landroid/net/Uri;
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    .line 401
    .end local v1    # "photoPath":Ljava/lang/String;
    .end local v2    # "photoUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return v4

    .line 382
    .restart local v1    # "photoPath":Ljava/lang/String;
    .restart local v2    # "photoUri":Landroid/net/Uri;
    :cond_1
    if-eqz v1, :cond_2

    .line 383
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 384
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 389
    .end local v0    # "f":Ljava/io/File;
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 390
    const/high16 v6, 0x44020000    # 520.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 394
    .local v3, "size":I
    :goto_1
    int-to-float v6, v3

    int-to-float v7, v3

    invoke-static {v1, v2, v6, v7, v5}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/PhotoCropActivity;->imageToCrop:Landroid/graphics/Bitmap;

    .line 395
    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity;->imageToCrop:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    .line 399
    .end local v1    # "photoPath":Ljava/lang/String;
    .end local v2    # "photoUri":Landroid/net/Uri;
    .end local v3    # "size":I
    :cond_3
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lorg/telegram/ui/PhotoCropActivity;->imageToCrop:Landroid/graphics/Bitmap;

    invoke-direct {v4, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lorg/telegram/ui/PhotoCropActivity;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 400
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move v4, v5

    .line 401
    goto :goto_0

    .line 392
    .restart local v1    # "photoPath":Ljava/lang/String;
    .restart local v2    # "photoUri":Landroid/net/Uri;
    :cond_4
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3    # "size":I
    goto :goto_1
.end method

.method public onFragmentDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 406
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->bitmapKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 408
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity;->bitmapKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->decrementUseCount(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity;->bitmapKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->isInCache(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    iput-object v2, p0, Lorg/telegram/ui/PhotoCropActivity;->bitmapKey:Ljava/lang/String;

    .line 412
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->bitmapKey:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->imageToCrop:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoCropActivity;->sameBitmap:Z

    if-nez v0, :cond_1

    .line 413
    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->imageToCrop:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 414
    iput-object v2, p0, Lorg/telegram/ui/PhotoCropActivity;->imageToCrop:Landroid/graphics/Bitmap;

    .line 416
    :cond_1
    iput-object v2, p0, Lorg/telegram/ui/PhotoCropActivity;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 417
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;

    .prologue
    .line 457
    iput-object p1, p0, Lorg/telegram/ui/PhotoCropActivity;->delegate:Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;

    .line 458
    return-void
.end method
