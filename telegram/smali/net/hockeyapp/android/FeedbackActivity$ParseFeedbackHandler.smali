.class Lnet/hockeyapp/android/FeedbackActivity$ParseFeedbackHandler;
.super Landroid/os/Handler;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseFeedbackHandler"
.end annotation


# instance fields
.field private final mWeakFeedbackActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/hockeyapp/android/FeedbackActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/hockeyapp/android/FeedbackActivity;)V
    .locals 1
    .param p1, "feedbackActivity"    # Lnet/hockeyapp/android/FeedbackActivity;

    .prologue
    .line 852
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 853
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$ParseFeedbackHandler;->mWeakFeedbackActivity:Ljava/lang/ref/WeakReference;

    .line 854
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 858
    const/4 v3, 0x0

    .line 860
    .local v3, "success":Z
    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity$ParseFeedbackHandler;->mWeakFeedbackActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/hockeyapp/android/FeedbackActivity;

    .line 861
    .local v1, "feedbackActivity":Lnet/hockeyapp/android/FeedbackActivity;
    if-nez v1, :cond_0

    .line 901
    :goto_0
    return-void

    .line 865
    :cond_0
    new-instance v4, Lnet/hockeyapp/android/objects/ErrorObject;

    invoke-direct {v4}, Lnet/hockeyapp/android/objects/ErrorObject;-><init>()V

    invoke-static {v1, v4}, Lnet/hockeyapp/android/FeedbackActivity;->access$002(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/ErrorObject;)Lnet/hockeyapp/android/objects/ErrorObject;

    .line 867
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 868
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 869
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "parse_feedback_response"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lnet/hockeyapp/android/objects/FeedbackResponse;

    .line 870
    .local v2, "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    if-eqz v2, :cond_1

    .line 871
    invoke-virtual {v2}, Lnet/hockeyapp/android/objects/FeedbackResponse;->getStatus()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "success"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 873
    const/4 v3, 0x1

    .line 875
    invoke-virtual {v2}, Lnet/hockeyapp/android/objects/FeedbackResponse;->getToken()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 877
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v4

    invoke-virtual {v2}, Lnet/hockeyapp/android/objects/FeedbackResponse;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lnet/hockeyapp/android/utils/PrefsUtil;->saveFeedbackTokenToPrefs(Landroid/content/Context;Ljava/lang/String;)V

    .line 879
    invoke-static {v1, v2}, Lnet/hockeyapp/android/FeedbackActivity;->access$800(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/FeedbackResponse;)V

    .line 880
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lnet/hockeyapp/android/FeedbackActivity;->access$902(Lnet/hockeyapp/android/FeedbackActivity;Z)Z

    .line 889
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 890
    new-instance v4, Lnet/hockeyapp/android/FeedbackActivity$ParseFeedbackHandler$1;

    invoke-direct {v4, p0, v1}, Lnet/hockeyapp/android/FeedbackActivity$ParseFeedbackHandler$1;-><init>(Lnet/hockeyapp/android/FeedbackActivity$ParseFeedbackHandler;Lnet/hockeyapp/android/FeedbackActivity;)V

    invoke-virtual {v1, v4}, Lnet/hockeyapp/android/FeedbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 900
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lnet/hockeyapp/android/FeedbackActivity;->enableDisableSendFeedbackButton(Z)V

    goto :goto_0

    .line 883
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method
