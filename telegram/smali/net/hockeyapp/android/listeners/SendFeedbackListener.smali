.class public abstract Lnet/hockeyapp/android/listeners/SendFeedbackListener;
.super Ljava/lang/Object;
.source "SendFeedbackListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public feedbackFailed(Lnet/hockeyapp/android/tasks/SendFeedbackTask;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "task"    # Lnet/hockeyapp/android/tasks/SendFeedbackTask;
    .param p2, "userWantsRetry"    # Ljava/lang/Boolean;

    .prologue
    .line 17
    return-void
.end method

.method public feedbackSuccessful(Lnet/hockeyapp/android/tasks/SendFeedbackTask;)V
    .locals 0
    .param p1, "task"    # Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    .prologue
    .line 14
    return-void
.end method
