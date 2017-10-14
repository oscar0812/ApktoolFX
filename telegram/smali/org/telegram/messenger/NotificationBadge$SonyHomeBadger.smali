.class public Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;
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
    name = "SonyHomeBadger"
.end annotation


# static fields
.field private static final INTENT_ACTION:Ljava/lang/String; = "com.sonyericsson.home.action.UPDATE_BADGE"

.field private static final INTENT_EXTRA_ACTIVITY_NAME:Ljava/lang/String; = "com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME"

.field private static final INTENT_EXTRA_MESSAGE:Ljava/lang/String; = "com.sonyericsson.home.intent.extra.badge.MESSAGE"

.field private static final INTENT_EXTRA_PACKAGE_NAME:Ljava/lang/String; = "com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME"

.field private static final INTENT_EXTRA_SHOW_MESSAGE:Ljava/lang/String; = "com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE"

.field private static final PROVIDER_COLUMNS_ACTIVITY_NAME:Ljava/lang/String; = "activity_name"

.field private static final PROVIDER_COLUMNS_BADGE_COUNT:Ljava/lang/String; = "badge_count"

.field private static final PROVIDER_COLUMNS_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final PROVIDER_CONTENT_URI:Ljava/lang/String; = "content://com.sonymobile.home.resourceprovider/badge"

.field private static final SONY_HOME_PROVIDER_NAME:Ljava/lang/String; = "com.sonymobile.home.resourceprovider"

.field private static mQueryHandler:Landroid/content/AsyncQueryHandler;


# instance fields
.field private final BADGE_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    const-string/jumbo v0, "content://com.sonymobile.home.resourceprovider/badge"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;->BADGE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private static executeBadgeByBroadcast(I)V
    .locals 3
    .param p0, "badgeCount"    # I

    .prologue
    .line 505
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonyericsson.home.action.UPDATE_BADGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME"

    invoke-static {}, Lorg/telegram/messenger/NotificationBadge;->access$000()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string/jumbo v1, "com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME"

    invoke-static {}, Lorg/telegram/messenger/NotificationBadge;->access$000()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    const-string/jumbo v1, "com.sonyericsson.home.intent.extra.badge.MESSAGE"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const-string/jumbo v2, "com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE"

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 510
    new-instance v1, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger$1;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger$1;-><init>(Landroid/content/Intent;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 516
    return-void

    .line 509
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private executeBadgeByContentProvider(I)V
    .locals 2
    .param p1, "badgeCount"    # I

    .prologue
    .line 519
    if-gez p1, :cond_0

    .line 537
    :goto_0
    return-void

    .line 523
    :cond_0
    sget-object v0, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-nez v0, :cond_1

    .line 524
    new-instance v0, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger$2;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger$2;-><init>(Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;Landroid/content/ContentResolver;)V

    sput-object v0, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 536
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationBadge;->access$000()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/NotificationBadge;->access$000()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;->insertBadgeAsync(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private insertBadgeAsync(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "badgeCount"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;

    .prologue
    .line 540
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 541
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "badge_count"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 542
    const-string/jumbo v1, "package_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string/jumbo v1, "activity_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    sget-object v1, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;->BADGE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/AsyncQueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 545
    return-void
.end method

.method private static sonyBadgeContentProviderExists()Z
    .locals 5

    .prologue
    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, "exists":Z
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.sonymobile.home.resourceprovider"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 550
    .local v1, "info":Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_0

    .line 551
    const/4 v0, 0x1

    .line 553
    :cond_0
    return v0
.end method


# virtual methods
.method public executeBadge(I)V
    .locals 1
    .param p1, "badgeCount"    # I

    .prologue
    .line 492
    invoke-static {}, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;->sonyBadgeContentProviderExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;->executeBadgeByContentProvider(I)V

    .line 497
    :goto_0
    return-void

    .line 495
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;->executeBadgeByBroadcast(I)V

    goto :goto_0
.end method

.method public getSupportLaunchers()Ljava/util/List;
    .locals 3
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
    .line 501
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.sonyericsson.home"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.sonymobile.home"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
