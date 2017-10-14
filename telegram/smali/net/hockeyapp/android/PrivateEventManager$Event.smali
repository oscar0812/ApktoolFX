.class public final Lnet/hockeyapp/android/PrivateEventManager$Event;
.super Ljava/lang/Object;
.source "PrivateEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/PrivateEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


# instance fields
.field private final mType:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lnet/hockeyapp/android/PrivateEventManager$Event;->mType:I

    .line 34
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lnet/hockeyapp/android/PrivateEventManager$Event;->mType:I

    return v0
.end method
