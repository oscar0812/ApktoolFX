.class Lorg/telegram/messenger/LocaleController$1;
.super Ljava/lang/Object;
.source "LocaleController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/LocaleController;->saveRemoteLocaleStrings(Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/LocaleController;

.field final synthetic val$difference:Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;

.field final synthetic val$langCode:Ljava/lang/String;

.field final synthetic val$valuesToSet:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/LocaleController;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/LocaleController;

    .prologue
    .line 1350
    iput-object p1, p0, Lorg/telegram/messenger/LocaleController$1;->this$0:Lorg/telegram/messenger/LocaleController;

    iput-object p2, p0, Lorg/telegram/messenger/LocaleController$1;->val$langCode:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/LocaleController$1;->val$difference:Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;

    iput-object p4, p0, Lorg/telegram/messenger/LocaleController$1;->val$valuesToSet:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1353
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$1;->this$0:Lorg/telegram/messenger/LocaleController;

    iget-object v8, p0, Lorg/telegram/messenger/LocaleController$1;->val$langCode:Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->access$100(Lorg/telegram/messenger/LocaleController;Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v4

    .line 1354
    .local v4, "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    if-eqz v4, :cond_0

    .line 1355
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$1;->val$difference:Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->version:I

    iput v7, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    .line 1357
    :cond_0
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$1;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->access$200(Lorg/telegram/messenger/LocaleController;)V

    .line 1358
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$1;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->access$300(Lorg/telegram/messenger/LocaleController;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$1;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->access$300(Lorg/telegram/messenger/LocaleController;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isLocal()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1398
    :goto_0
    return-void

    .line 1363
    :cond_1
    :try_start_0
    iget-object v7, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1364
    .local v0, "args":[Ljava/lang/String;
    array-length v7, v0

    if-ne v7, v9, :cond_5

    .line 1365
    new-instance v5, Ljava/util/Locale;

    iget-object v7, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 1369
    .local v5, "newLocale":Ljava/util/Locale;
    :goto_1
    if-eqz v5, :cond_2

    .line 1370
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$1;->this$0:Lorg/telegram/messenger/LocaleController;

    iget-object v8, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->access$402(Lorg/telegram/messenger/LocaleController;Ljava/lang/String;)Ljava/lang/String;

    .line 1372
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v8, "mainconfig"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1373
    .local v6, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1374
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v7, "language"

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1375
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1377
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "preferences":Landroid/content/SharedPreferences;
    :cond_2
    if-eqz v5, :cond_4

    .line 1378
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$1;->this$0:Lorg/telegram/messenger/LocaleController;

    iget-object v8, p0, Lorg/telegram/messenger/LocaleController$1;->val$valuesToSet:Ljava/util/HashMap;

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->access$502(Lorg/telegram/messenger/LocaleController;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 1379
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$1;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->access$602(Lorg/telegram/messenger/LocaleController;Ljava/util/Locale;)Ljava/util/Locale;

    .line 1380
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$1;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->access$302(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 1381
    iget-object v8, p0, Lorg/telegram/messenger/LocaleController$1;->this$0:Lorg/telegram/messenger/LocaleController;

    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$1;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->access$800(Lorg/telegram/messenger/LocaleController;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v9, p0, Lorg/telegram/messenger/LocaleController$1;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->access$600(Lorg/telegram/messenger/LocaleController;)Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/LocaleController$PluralRules;

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->access$702(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$PluralRules;)Lorg/telegram/messenger/LocaleController$PluralRules;

    .line 1382
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$1;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->access$700(Lorg/telegram/messenger/LocaleController;)Lorg/telegram/messenger/LocaleController$PluralRules;

    move-result-object v7

    if-nez v7, :cond_3

    .line 1383
    iget-object v8, p0, Lorg/telegram/messenger/LocaleController$1;->this$0:Lorg/telegram/messenger/LocaleController;

    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$1;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->access$800(Lorg/telegram/messenger/LocaleController;)Ljava/util/HashMap;

    move-result-object v7

    const-string/jumbo v9, "en"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/LocaleController$PluralRules;

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->access$702(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$PluralRules;)Lorg/telegram/messenger/LocaleController$PluralRules;

    .line 1385
    :cond_3
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$1;->this$0:Lorg/telegram/messenger/LocaleController;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->access$902(Lorg/telegram/messenger/LocaleController;Z)Z

    .line 1386
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$1;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->access$600(Lorg/telegram/messenger/LocaleController;)Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 1387
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 1388
    .local v1, "config":Landroid/content/res/Configuration;
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$1;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->access$600(Lorg/telegram/messenger/LocaleController;)Ljava/util/Locale;

    move-result-object v7

    iput-object v7, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1389
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1390
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$1;->this$0:Lorg/telegram/messenger/LocaleController;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->access$902(Lorg/telegram/messenger/LocaleController;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1396
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v5    # "newLocale":Ljava/util/Locale;
    :cond_4
    :goto_2
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$1;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-virtual {v7}, Lorg/telegram/messenger/LocaleController;->recreateFormatters()V

    .line 1397
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/NotificationCenter;->reloadInterface:I

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1367
    .restart local v0    # "args":[Ljava/lang/String;
    :cond_5
    :try_start_1
    new-instance v5, Ljava/util/Locale;

    const/4 v7, 0x0

    aget-object v7, v0, v7

    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-direct {v5, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v5    # "newLocale":Ljava/util/Locale;
    goto/16 :goto_1

    .line 1392
    .end local v0    # "args":[Ljava/lang/String;
    .end local v5    # "newLocale":Ljava/util/Locale;
    :catch_0
    move-exception v2

    .line 1393
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1394
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$1;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-static {v7, v10}, Lorg/telegram/messenger/LocaleController;->access$902(Lorg/telegram/messenger/LocaleController;Z)Z

    goto :goto_2
.end method
