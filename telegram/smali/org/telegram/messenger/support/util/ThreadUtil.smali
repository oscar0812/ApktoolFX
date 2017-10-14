.class interface abstract Lorg/telegram/messenger/support/util/ThreadUtil;
.super Ljava/lang/Object;
.source "ThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;,
        Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getBackgroundProxy(Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;)Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback",
            "<TT;>;)",
            "Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getMainThreadProxy(Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;)Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback",
            "<TT;>;)",
            "Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback",
            "<TT;>;"
        }
    .end annotation
.end method
