.class final Lorg/telegram/ui/ActionBar/Theme$6;
.super Ljava/lang/Object;
.source "Theme.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/Theme;->loadWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 2879
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$200()Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 2880
    :try_start_0
    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v16, "mainconfig"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 2881
    .local v8, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v14, "overrideThemeWallpaper"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v8, v14, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 2882
    .local v7, "overrideTheme":Z
    if-nez v7, :cond_0

    .line 2883
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$300()Ljava/util/HashMap;

    move-result-object v14

    const-string/jumbo v16, "chat_wallpaper"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2884
    .local v2, "backgroundColor":Ljava/lang/Integer;
    if-eqz v2, :cond_4

    .line 2885
    new-instance v14, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v14, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$402(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 2886
    const/4 v14, 0x1

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$502(Z)Z

    .line 2917
    .end local v2    # "backgroundColor":Ljava/lang/Integer;
    :cond_0
    :goto_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$400()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    if-nez v14, :cond_3

    .line 2918
    const/4 v10, 0x0

    .line 2920
    .local v10, "selectedColor":I
    :try_start_1
    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v16, "mainconfig"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 2921
    const-string/jumbo v14, "selectedBackground"

    const v16, 0xf4241

    move/from16 v0, v16

    invoke-interface {v8, v14, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 2922
    .local v9, "selectedBackground":I
    const-string/jumbo v14, "selectedColor"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v8, v14, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 2923
    if-nez v10, :cond_1

    .line 2924
    const v14, 0xf4241

    if-ne v9, v14, :cond_9

    .line 2925
    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v16, 0x7f020026

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$402(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 2926
    const/4 v14, 0x0

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$502(Z)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2941
    .end local v9    # "selectedBackground":I
    :cond_1
    :goto_1
    :try_start_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$400()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-nez v14, :cond_3

    .line 2942
    if-nez v10, :cond_2

    .line 2943
    const v10, -0x291b11

    .line 2945
    :cond_2
    new-instance v14, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v14, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$402(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 2948
    .end local v10    # "selectedColor":I
    :cond_3
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$400()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v14, v0}, Lorg/telegram/ui/ActionBar/Theme;->access$900(Landroid/graphics/drawable/Drawable;I)V

    .line 2949
    new-instance v14, Lorg/telegram/ui/ActionBar/Theme$6$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lorg/telegram/ui/ActionBar/Theme$6$1;-><init>(Lorg/telegram/ui/ActionBar/Theme$6;)V

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2956
    monitor-exit v15

    .line 2957
    return-void

    .line 2887
    .restart local v2    # "backgroundColor":Ljava/lang/Integer;
    :cond_4
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$600()I

    move-result v14

    if-lez v14, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$700()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    if-nez v14, :cond_5

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$700()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v14, :cond_0

    .line 2888
    :cond_5
    const/4 v11, 0x0

    .line 2890
    .local v11, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 2892
    .local v4, "currentPosition":I
    :try_start_3
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$700()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    if-eqz v14, :cond_7

    .line 2893
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$700()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getAssetFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 2897
    .local v6, "file":Ljava/io/File;
    :goto_2
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2898
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .local v12, "stream":Ljava/io/FileInputStream;
    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v14

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$600()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 2899
    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2900
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_6

    .line 2901
    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v14, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$402(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$802(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 2902
    const/4 v14, 0x1

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$502(Z)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2908
    :cond_6
    if-eqz v12, :cond_0

    .line 2909
    :try_start_5
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 2911
    :catch_0
    move-exception v5

    .line 2912
    .local v5, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2956
    .end local v2    # "backgroundColor":Ljava/lang/Integer;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "currentPosition":I
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "overrideTheme":Z
    .end local v8    # "preferences":Landroid/content/SharedPreferences;
    .end local v12    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v14

    .line 2895
    .restart local v2    # "backgroundColor":Ljava/lang/Integer;
    .restart local v4    # "currentPosition":I
    .restart local v7    # "overrideTheme":Z
    .restart local v8    # "preferences":Landroid/content/SharedPreferences;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    :cond_7
    :try_start_7
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$700()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v6, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .restart local v6    # "file":Ljava/io/File;
    goto :goto_2

    .line 2904
    .end local v6    # "file":Ljava/io/File;
    :catch_1
    move-exception v5

    .line 2905
    .local v5, "e":Ljava/lang/Throwable;
    :goto_3
    :try_start_8
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2908
    if-eqz v11, :cond_0

    .line 2909
    :try_start_9
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 2911
    :catch_2
    move-exception v5

    .line 2912
    .local v5, "e":Ljava/lang/Exception;
    :try_start_a
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 2907
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v14

    .line 2908
    :goto_4
    if-eqz v11, :cond_8

    .line 2909
    :try_start_b
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2913
    :cond_8
    :goto_5
    :try_start_c
    throw v14

    .line 2911
    :catch_3
    move-exception v5

    .line 2912
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5

    .line 2928
    .end local v2    # "backgroundColor":Ljava/lang/Integer;
    .end local v4    # "currentPosition":I
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "selectedBackground":I
    .restart local v10    # "selectedColor":I
    :cond_9
    :try_start_d
    new-instance v13, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v14

    const-string/jumbo v16, "wallpaper.jpg"

    move-object/from16 v0, v16

    invoke-direct {v13, v14, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2929
    .local v13, "toFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 2930
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$402(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 2931
    const/4 v14, 0x1

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$502(Z)Z

    goto/16 :goto_1

    .line 2938
    .end local v9    # "selectedBackground":I
    .end local v13    # "toFile":Ljava/io/File;
    :catch_4
    move-exception v14

    goto/16 :goto_1

    .line 2933
    .restart local v9    # "selectedBackground":I
    .restart local v13    # "toFile":Ljava/io/File;
    :cond_a
    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v16, 0x7f020026

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$402(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 2934
    const/4 v14, 0x0

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$502(Z)Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 2907
    .end local v9    # "selectedBackground":I
    .end local v10    # "selectedColor":I
    .end local v13    # "toFile":Ljava/io/File;
    .restart local v2    # "backgroundColor":Ljava/lang/Integer;
    .restart local v4    # "currentPosition":I
    .restart local v6    # "file":Ljava/io/File;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v14

    move-object v11, v12

    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 2904
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v5

    move-object v11, v12

    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    goto :goto_3
.end method
