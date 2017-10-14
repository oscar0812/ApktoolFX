.class Lorg/telegram/messenger/support/util/MessageThreadUtil;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Lorg/telegram/messenger/support/util/ThreadUtil;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;,
        Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/support/util/ThreadUtil",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lorg/telegram/messenger/support/util/MessageThreadUtil;, "Lorg/telegram/messenger/support/util/MessageThreadUtil<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundProxy(Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;)Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback",
            "<TT;>;)",
            "Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lorg/telegram/messenger/support/util/MessageThreadUtil;, "Lorg/telegram/messenger/support/util/MessageThreadUtil<TT;>;"
    .local p1, "callback":Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;, "Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback<TT;>;"
    new-instance v0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;-><init>(Lorg/telegram/messenger/support/util/MessageThreadUtil;Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;)V

    return-object v0
.end method

.method public getMainThreadProxy(Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;)Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback",
            "<TT;>;)",
            "Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lorg/telegram/messenger/support/util/MessageThreadUtil;, "Lorg/telegram/messenger/support/util/MessageThreadUtil<TT;>;"
    .local p1, "callback":Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;, "Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback<TT;>;"
    new-instance v0, Lorg/telegram/messenger/support/util/MessageThreadUtil$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/support/util/MessageThreadUtil$1;-><init>(Lorg/telegram/messenger/support/util/MessageThreadUtil;Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;)V

    return-object v0
.end method
