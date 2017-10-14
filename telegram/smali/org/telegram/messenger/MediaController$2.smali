.class final Lorg/telegram/messenger/MediaController$2;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->checkGallery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$prevSize:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 632
    iput p1, p0, Lorg/telegram/messenger/MediaController$2;->val$prevSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 636
    const/4 v6, 0x0

    .line 637
    .local v6, "count":I
    const/4 v7, 0x0

    .line 639
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 640
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "COUNT(_id)"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 641
    if-eqz v7, :cond_0

    .line 642
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/2addr v6, v0

    .line 650
    :cond_0
    if-eqz v7, :cond_1

    .line 651
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 655
    :cond_1
    :goto_0
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 656
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "COUNT(_id)"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 657
    if-eqz v7, :cond_2

    .line 658
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 659
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    add-int/2addr v6, v0

    .line 666
    :cond_2
    if-eqz v7, :cond_3

    .line 667
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 670
    :cond_3
    :goto_1
    iget v0, p0, Lorg/telegram/messenger/MediaController$2;->val$prevSize:I

    if-eq v0, v6, :cond_5

    .line 671
    invoke-static {}, Lorg/telegram/messenger/MediaController;->access$1600()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 672
    invoke-static {}, Lorg/telegram/messenger/MediaController;->access$1600()Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 673
    invoke-static {v9}, Lorg/telegram/messenger/MediaController;->access$1602(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 675
    :cond_4
    invoke-static {v10}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    .line 677
    :cond_5
    return-void

    .line 647
    :catch_0
    move-exception v8

    .line 648
    .local v8, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 650
    if-eqz v7, :cond_1

    .line 651
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 650
    .end local v8    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 651
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 663
    :catch_1
    move-exception v8

    .line 664
    .restart local v8    # "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 666
    if-eqz v7, :cond_3

    .line 667
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 666
    .end local v8    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    if-eqz v7, :cond_7

    .line 667
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method
