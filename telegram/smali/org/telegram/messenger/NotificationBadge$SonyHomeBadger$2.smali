.class Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger$2;
.super Landroid/content/AsyncQueryHandler;
.source "NotificationBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;->executeBadgeByContentProvider(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;
    .param p2, "x0"    # Landroid/content/ContentResolver;

    .prologue
    .line 524
    iput-object p1, p0, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger$2;->this$0:Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 529
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :goto_0
    return-void

    .line 530
    :catch_0
    move-exception v0

    goto :goto_0
.end method
