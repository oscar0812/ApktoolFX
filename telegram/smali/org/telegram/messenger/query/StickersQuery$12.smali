.class final Lorg/telegram/messenger/query/StickersQuery$12;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->processLoadedRecentDocuments(ILjava/util/ArrayList;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$documents:Ljava/util/ArrayList;

.field final synthetic val$gif:Z

.field final synthetic val$type:I


# direct methods
.method constructor <init>(ZILjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 645
    iput-boolean p1, p0, Lorg/telegram/messenger/query/StickersQuery$12;->val$gif:Z

    iput p2, p0, Lorg/telegram/messenger/query/StickersQuery$12;->val$type:I

    iput-object p3, p0, Lorg/telegram/messenger/query/StickersQuery$12;->val$documents:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 648
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "emoji"

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 649
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-boolean v1, p0, Lorg/telegram/messenger/query/StickersQuery$12;->val$gif:Z

    if-eqz v1, :cond_1

    .line 650
    invoke-static {v5}, Lorg/telegram/messenger/query/StickersQuery;->access$302(Z)Z

    .line 651
    invoke-static {v6}, Lorg/telegram/messenger/query/StickersQuery;->access$402(Z)Z

    .line 652
    const-string/jumbo v1, "lastGifLoadTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 664
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$12;->val$documents:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 665
    iget-boolean v1, p0, Lorg/telegram/messenger/query/StickersQuery$12;->val$gif:Z

    if-eqz v1, :cond_4

    .line 666
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$12;->val$documents:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/messenger/query/StickersQuery;->access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 670
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoaded:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v4, p0, Lorg/telegram/messenger/query/StickersQuery$12;->val$gif:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Lorg/telegram/messenger/query/StickersQuery$12;->val$type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 674
    :cond_0
    return-void

    .line 654
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$600()[Z

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/query/StickersQuery$12;->val$type:I

    aput-boolean v5, v1, v2

    .line 655
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$700()[Z

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/query/StickersQuery$12;->val$type:I

    aput-boolean v6, v1, v2

    .line 656
    iget v1, p0, Lorg/telegram/messenger/query/StickersQuery$12;->val$type:I

    if-nez v1, :cond_2

    .line 657
    const-string/jumbo v1, "lastStickersLoadTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 658
    :cond_2
    iget v1, p0, Lorg/telegram/messenger/query/StickersQuery$12;->val$type:I

    if-ne v1, v6, :cond_3

    .line 659
    const-string/jumbo v1, "lastStickersLoadTimeMask"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 661
    :cond_3
    const-string/jumbo v1, "lastStickersLoadTimeFavs"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 668
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$500()[Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/query/StickersQuery$12;->val$type:I

    iget-object v3, p0, Lorg/telegram/messenger/query/StickersQuery$12;->val$documents:Ljava/util/ArrayList;

    aput-object v3, v1, v2

    goto :goto_1
.end method
