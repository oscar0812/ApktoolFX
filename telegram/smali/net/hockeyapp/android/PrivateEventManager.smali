.class public final Lnet/hockeyapp/android/PrivateEventManager;
.super Ljava/lang/Object;
.source "PrivateEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/PrivateEventManager$Event;,
        Lnet/hockeyapp/android/PrivateEventManager$HockeyEventListener;
    }
.end annotation


# static fields
.field public static final EVENT_TYPE_UNCAUGHT_EXCEPTION:I = 0x1

.field private static sEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/hockeyapp/android/PrivateEventManager$HockeyEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lnet/hockeyapp/android/PrivateEventManager;->sEventListeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static addEventListener(Lnet/hockeyapp/android/PrivateEventManager$HockeyEventListener;)V
    .locals 1
    .param p0, "listener"    # Lnet/hockeyapp/android/PrivateEventManager$HockeyEventListener;

    .prologue
    .line 13
    sget-object v0, Lnet/hockeyapp/android/PrivateEventManager;->sEventListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    return-void
.end method

.method static postEvent(Lnet/hockeyapp/android/PrivateEventManager$Event;)V
    .locals 3
    .param p0, "event"    # Lnet/hockeyapp/android/PrivateEventManager$Event;

    .prologue
    .line 17
    sget-object v1, Lnet/hockeyapp/android/PrivateEventManager;->sEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/PrivateEventManager$HockeyEventListener;

    .line 18
    .local v0, "listener":Lnet/hockeyapp/android/PrivateEventManager$HockeyEventListener;
    invoke-interface {v0, p0}, Lnet/hockeyapp/android/PrivateEventManager$HockeyEventListener;->onHockeyEvent(Lnet/hockeyapp/android/PrivateEventManager$Event;)V

    goto :goto_0

    .line 20
    .end local v0    # "listener":Lnet/hockeyapp/android/PrivateEventManager$HockeyEventListener;
    :cond_0
    return-void
.end method
