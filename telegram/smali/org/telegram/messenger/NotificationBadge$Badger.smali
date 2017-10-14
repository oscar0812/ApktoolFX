.class public interface abstract Lorg/telegram/messenger/NotificationBadge$Badger;
.super Ljava/lang/Object;
.source "NotificationBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/NotificationBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Badger"
.end annotation


# virtual methods
.method public abstract executeBadge(I)V
.end method

.method public abstract getSupportLaunchers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
