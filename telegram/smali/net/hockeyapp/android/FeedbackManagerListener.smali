.class public abstract Lnet/hockeyapp/android/FeedbackManagerListener;
.super Ljava/lang/Object;
.source "FeedbackManagerListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract feedbackAnswered(Lnet/hockeyapp/android/objects/FeedbackMessage;)Z
.end method

.method public getFeedbackActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lnet/hockeyapp/android/FeedbackActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    const-class v0, Lnet/hockeyapp/android/FeedbackActivity;

    return-object v0
.end method

.method public shouldCreateNewFeedbackThread()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method
