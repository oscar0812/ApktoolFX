.class public Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;
.super Ljava/lang/Object;
.source "NotificationBadge.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationBadge$Badger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/NotificationBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OPPOHomeBader"
.end annotation


# static fields
.field private static final INTENT_ACTION:Ljava/lang/String; = "com.oppo.unsettledevent"

.field private static final INTENT_EXTRA_BADGEUPGRADE_COUNT:Ljava/lang/String; = "app_badge_count"

.field private static final INTENT_EXTRA_BADGE_COUNT:Ljava/lang/String; = "number"

.field private static final INTENT_EXTRA_BADGE_UPGRADENUMBER:Ljava/lang/String; = "upgradeNumber"

.field private static final INTENT_EXTRA_PACKAGENAME:Ljava/lang/String; = "pakeageName"

.field private static final PROVIDER_CONTENT_URI:Ljava/lang/String; = "content://com.android.badge/badge"

.field private static ROMVERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, -0x1

    sput v0, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;->ROMVERSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkObjExists(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 387
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private executeClassLoad(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "clsArr"    # [Ljava/lang/Class;
    .param p4, "objArr"    # [Ljava/lang/Object;

    .prologue
    .line 342
    const/4 v1, 0x0

    .line 343
    .local v1, "obj":Ljava/lang/Object;
    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;->checkObjExists(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 345
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 346
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 348
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 354
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v1

    .line 349
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    .restart local v1    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 377
    const/4 v0, 0x0

    .line 379
    .local v0, "cls":Ljava/lang/Class;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    .line 380
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "clsArr"    # [Ljava/lang/Class;

    .prologue
    .line 359
    const/4 v2, 0x0

    .line 360
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;->checkObjExists(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 371
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v2

    .line 364
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 365
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 366
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 370
    :catch_1
    move-exception v1

    .line 371
    .local v1, "e2":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    goto :goto_0
.end method

.method private getSupportVersion()I
    .locals 7

    .prologue
    .line 311
    sget v1, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;->ROMVERSION:I

    .line 312
    .local v1, "i":I
    if-ltz v1, :cond_0

    .line 313
    sget v3, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;->ROMVERSION:I

    .line 337
    :goto_0
    return v3

    .line 316
    :cond_0
    :try_start_0
    const-string/jumbo v3, "com.color.os.ColorBuild"

    invoke-direct {p0, v3}, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "getColorOSVERSION"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v3, v4, v5, v6}, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;->executeClassLoad(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 320
    :goto_1
    if-nez v1, :cond_3

    .line 322
    :try_start_1
    const-string/jumbo v3, "ro.build.version.opporom"

    invoke-direct {p0, v3}, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "str":Ljava/lang/String;
    const-string/jumbo v3, "V1.4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 324
    const/4 v3, 0x3

    goto :goto_0

    .line 317
    .end local v2    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1

    .line 326
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "str":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "V2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 327
    const/4 v3, 0x4

    goto :goto_0

    .line 329
    :cond_2
    const-string/jumbo v3, "V2.1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_3

    .line 330
    const/4 v3, 0x5

    goto :goto_0

    .line 332
    .end local v2    # "str":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 336
    :cond_3
    sput v1, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;->ROMVERSION:I

    .line 337
    sget v3, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;->ROMVERSION:I

    goto :goto_0
.end method

.method private getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "propName"    # Ljava/lang/String;

    .prologue
    .line 393
    const/4 v1, 0x0

    .line 395
    .local v1, "input":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getprop "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 396
    .local v4, "p":Ljava/lang/Process;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x400

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    .end local v1    # "input":Ljava/io/BufferedReader;
    .local v2, "input":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "line":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 402
    invoke-static {v2}, Lorg/telegram/messenger/NotificationBadge;->closeQuietly(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 404
    .end local v2    # "input":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "p":Ljava/lang/Process;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    :goto_0
    return-object v3

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_1
    const/4 v3, 0x0

    .line 402
    invoke-static {v1}, Lorg/telegram/messenger/NotificationBadge;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/NotificationBadge;->closeQuietly(Ljava/io/Closeable;)V

    throw v5

    .end local v1    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "p":Ljava/lang/Process;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    goto :goto_2

    .line 399
    .end local v1    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    goto :goto_1
.end method


# virtual methods
.method public executeBadge(I)V
    .locals 5
    .param p1, "badgeCount"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 268
    if-nez p1, :cond_0

    .line 269
    const/4 p1, -0x1

    .line 271
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.oppo.unsettledevent"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "pakeageName"

    invoke-static {}, Lorg/telegram/messenger/NotificationBadge;->access$000()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string/jumbo v3, "number"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    const-string/jumbo v3, "upgradeNumber"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    invoke-static {v1}, Lorg/telegram/messenger/NotificationBadge;->access$100(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 276
    new-instance v3, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader$1;

    invoke-direct {v3, p0, v1}, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader$1;-><init>(Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;Landroid/content/Intent;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 303
    :cond_1
    :goto_0
    return-void

    .line 283
    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;->getSupportVersion()I

    move-result v2

    .line 284
    .local v2, "version":I
    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 286
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 287
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v3, "app_badge_count"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 288
    new-instance v3, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader$2;

    invoke-direct {v3, p0, v0}, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader$2;-><init>(Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;Landroid/os/Bundle;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    .end local v0    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getSupportLaunchers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    const-string/jumbo v0, "com.oppo.launcher"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
