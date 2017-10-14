.class final Lnet/hockeyapp/android/FeedbackManager$1;
.super Landroid/os/Handler;
.source "FeedbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/FeedbackManager;->checkForAnswersAndNotify(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 222
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "feedback_response"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "responseString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 225
    new-instance v2, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;

    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackManager$1;->val$context:Landroid/content/Context;

    const/4 v4, 0x0

    const-string/jumbo v5, "fetch"

    invoke-direct {v2, v3, v1, v4, v5}, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    .line 226
    .local v2, "task":Lnet/hockeyapp/android/tasks/ParseFeedbackTask;
    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackManager$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lnet/hockeyapp/android/FeedbackManager;->access$000(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->setUrlString(Ljava/lang/String;)V

    .line 227
    invoke-static {v2}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 229
    .end local v2    # "task":Lnet/hockeyapp/android/tasks/ParseFeedbackTask;
    :cond_0
    return-void
.end method
