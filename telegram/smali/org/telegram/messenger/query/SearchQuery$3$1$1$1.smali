.class Lorg/telegram/messenger/query/SearchQuery$3$1$1$1;
.super Ljava/lang/Object;
.source "SearchQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SearchQuery$3$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/query/SearchQuery$3$1$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/SearchQuery$3$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/messenger/query/SearchQuery$3$1$1;

    .prologue
    .line 390
    iput-object p1, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1$1;->this$2:Lorg/telegram/messenger/query/SearchQuery$3$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lorg/telegram/messenger/UserConfig;->lastHintsSyncTime:I

    .line 394
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 395
    return-void
.end method
