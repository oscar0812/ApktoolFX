.class public Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;
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
    name = "ZukHomeBadger"
.end annotation


# instance fields
.field private final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    const-string/jumbo v0, "content://com.android.badge/badge"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;

    .prologue
    .line 599
    iget-object v0, p0, Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public executeBadge(I)V
    .locals 2
    .param p1, "badgeCount"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 606
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 607
    .local v0, "extra":Landroid/os/Bundle;
    const-string/jumbo v1, "app_badge_count"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 608
    new-instance v1, Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger$1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger$1;-><init>(Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;Landroid/os/Bundle;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 618
    return-void
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
    .line 622
    const-string/jumbo v0, "com.zui.launcher"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
