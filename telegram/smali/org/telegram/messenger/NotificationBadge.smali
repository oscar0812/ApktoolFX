.class public Lorg/telegram/messenger/NotificationBadge;
.super Ljava/lang/Object;
.source "NotificationBadge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/NotificationBadge$VivoHomeBadger;,
        Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;,
        Lorg/telegram/messenger/NotificationBadge$XiaomiHomeBadger;,
        Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;,
        Lorg/telegram/messenger/NotificationBadge$SamsungHomeBadger;,
        Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;,
        Lorg/telegram/messenger/NotificationBadge$NovaHomeBadger;,
        Lorg/telegram/messenger/NotificationBadge$NewHtcHomeBadger;,
        Lorg/telegram/messenger/NotificationBadge$HuaweiHomeBadger;,
        Lorg/telegram/messenger/NotificationBadge$DefaultBadger;,
        Lorg/telegram/messenger/NotificationBadge$AsusHomeBadger;,
        Lorg/telegram/messenger/NotificationBadge$ApexHomeBadger;,
        Lorg/telegram/messenger/NotificationBadge$AdwHomeBadger;,
        Lorg/telegram/messenger/NotificationBadge$Badger;
    }
.end annotation


# static fields
.field private static final BADGERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/telegram/messenger/NotificationBadge$Badger;",
            ">;>;"
        }
    .end annotation
.end field

.field private static badger:Lorg/telegram/messenger/NotificationBadge$Badger;

.field private static componentName:Landroid/content/ComponentName;

.field private static initied:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    .line 644
    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    const-class v1, Lorg/telegram/messenger/NotificationBadge$AdwHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    const-class v1, Lorg/telegram/messenger/NotificationBadge$ApexHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    const-class v1, Lorg/telegram/messenger/NotificationBadge$NewHtcHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    const-class v1, Lorg/telegram/messenger/NotificationBadge$NovaHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    const-class v1, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    const-class v1, Lorg/telegram/messenger/NotificationBadge$XiaomiHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    const-class v1, Lorg/telegram/messenger/NotificationBadge$AsusHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    const-class v1, Lorg/telegram/messenger/NotificationBadge$HuaweiHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    const-class v1, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    const-class v1, Lorg/telegram/messenger/NotificationBadge$SamsungHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    const-class v1, Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    const-class v1, Lorg/telegram/messenger/NotificationBadge$VivoHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 34
    invoke-static {p0}, Lorg/telegram/messenger/NotificationBadge;->canResolveBroadcast(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static applyCount(I)Z
    .locals 4
    .param p0, "badgeCount"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 660
    :try_start_0
    sget-object v3, Lorg/telegram/messenger/NotificationBadge;->badger:Lorg/telegram/messenger/NotificationBadge$Badger;

    if-nez v3, :cond_0

    sget-boolean v3, Lorg/telegram/messenger/NotificationBadge;->initied:Z

    if-nez v3, :cond_0

    .line 661
    invoke-static {}, Lorg/telegram/messenger/NotificationBadge;->initBadger()Z

    .line 662
    const/4 v3, 0x1

    sput-boolean v3, Lorg/telegram/messenger/NotificationBadge;->initied:Z

    .line 664
    :cond_0
    sget-object v3, Lorg/telegram/messenger/NotificationBadge;->badger:Lorg/telegram/messenger/NotificationBadge$Badger;

    if-nez v3, :cond_1

    .line 670
    :goto_0
    return v1

    .line 667
    :cond_1
    sget-object v3, Lorg/telegram/messenger/NotificationBadge;->badger:Lorg/telegram/messenger/NotificationBadge$Badger;

    invoke-interface {v3, p0}, Lorg/telegram/messenger/NotificationBadge$Badger;->executeBadge(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 668
    goto :goto_0

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, "e":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private static canResolveBroadcast(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 723
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 724
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 725
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static close(Landroid/database/Cursor;)V
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 729
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 732
    :cond_0
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 736
    if-eqz p0, :cond_0

    .line 737
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 739
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static initBadger()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 675
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    .line 676
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 677
    .local v5, "launchIntent":Landroid/content/Intent;
    if-nez v5, :cond_1

    .line 719
    :cond_0
    :goto_0
    return v8

    .line 681
    :cond_1
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    sput-object v9, Lorg/telegram/messenger/NotificationBadge;->componentName:Landroid/content/ComponentName;

    .line 683
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.MAIN"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 684
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v9, "android.intent.category.HOME"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/high16 v10, 0x10000

    invoke-virtual {v9, v4, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 687
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_0

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "resolver"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 691
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 693
    .local v3, "currentHomePackage":Ljava/lang/String;
    sget-object v8, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 694
    .local v1, "b":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/telegram/messenger/NotificationBadge$Badger;>;"
    const/4 v7, 0x0

    .line 696
    .local v7, "shortcutBadger":Lorg/telegram/messenger/NotificationBadge$Badger;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lorg/telegram/messenger/NotificationBadge$Badger;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :goto_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Lorg/telegram/messenger/NotificationBadge$Badger;->getSupportLaunchers()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 700
    sput-object v7, Lorg/telegram/messenger/NotificationBadge;->badger:Lorg/telegram/messenger/NotificationBadge$Badger;

    .line 705
    .end local v1    # "b":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/telegram/messenger/NotificationBadge$Badger;>;"
    .end local v7    # "shortcutBadger":Lorg/telegram/messenger/NotificationBadge$Badger;
    :cond_3
    sget-object v8, Lorg/telegram/messenger/NotificationBadge;->badger:Lorg/telegram/messenger/NotificationBadge$Badger;

    if-nez v8, :cond_4

    .line 706
    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v9, "Xiaomi"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 707
    new-instance v8, Lorg/telegram/messenger/NotificationBadge$XiaomiHomeBadger;

    invoke-direct {v8}, Lorg/telegram/messenger/NotificationBadge$XiaomiHomeBadger;-><init>()V

    sput-object v8, Lorg/telegram/messenger/NotificationBadge;->badger:Lorg/telegram/messenger/NotificationBadge$Badger;

    .line 719
    :cond_4
    :goto_2
    const/4 v8, 0x1

    goto :goto_0

    .line 708
    :cond_5
    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v9, "ZUK"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 709
    new-instance v8, Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;

    invoke-direct {v8}, Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;-><init>()V

    sput-object v8, Lorg/telegram/messenger/NotificationBadge;->badger:Lorg/telegram/messenger/NotificationBadge$Badger;

    goto :goto_2

    .line 710
    :cond_6
    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v9, "OPPO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 711
    new-instance v8, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;

    invoke-direct {v8}, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;-><init>()V

    sput-object v8, Lorg/telegram/messenger/NotificationBadge;->badger:Lorg/telegram/messenger/NotificationBadge$Badger;

    goto :goto_2

    .line 712
    :cond_7
    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v9, "VIVO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 713
    new-instance v8, Lorg/telegram/messenger/NotificationBadge$VivoHomeBadger;

    invoke-direct {v8}, Lorg/telegram/messenger/NotificationBadge$VivoHomeBadger;-><init>()V

    sput-object v8, Lorg/telegram/messenger/NotificationBadge;->badger:Lorg/telegram/messenger/NotificationBadge$Badger;

    goto :goto_2

    .line 715
    :cond_8
    new-instance v8, Lorg/telegram/messenger/NotificationBadge$DefaultBadger;

    invoke-direct {v8}, Lorg/telegram/messenger/NotificationBadge$DefaultBadger;-><init>()V

    sput-object v8, Lorg/telegram/messenger/NotificationBadge;->badger:Lorg/telegram/messenger/NotificationBadge$Badger;

    goto :goto_2

    .line 697
    .restart local v1    # "b":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/telegram/messenger/NotificationBadge$Badger;>;"
    .restart local v7    # "shortcutBadger":Lorg/telegram/messenger/NotificationBadge$Badger;
    :catch_0
    move-exception v8

    goto :goto_1
.end method
