.class public Lnet/hockeyapp/android/tasks/ParseFeedbackTask;
.super Landroid/os/AsyncTask;
.source "ParseFeedbackTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lnet/hockeyapp/android/objects/FeedbackResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final BUNDLE_PARSE_FEEDBACK_RESPONSE:Ljava/lang/String; = "parse_feedback_response"

.field public static final ID_LAST_MESSAGE_PROCESSED:Ljava/lang/String; = "idLastMessageProcessed"

.field public static final ID_LAST_MESSAGE_SEND:Ljava/lang/String; = "idLastMessageSend"

.field public static final NEW_ANSWER_NOTIFICATION_ID:I = 0x2

.field public static final PREFERENCES_NAME:Ljava/lang/String; = "net.hockeyapp.android.feedback"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFeedbackResponse:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mRequestType:Ljava/lang/String;

.field private mUrlString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "feedbackResponse"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "requestType"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 46
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->mFeedbackResponse:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->mHandler:Landroid/os/Handler;

    .line 49
    iput-object p4, p0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->mRequestType:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->mUrlString:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private checkForNewAnswers(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    const/4 v10, -0x1

    .line 92
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/hockeyapp/android/objects/FeedbackMessage;

    .line 93
    .local v4, "latestMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    invoke-virtual {v4}, Lnet/hockeyapp/android/objects/FeedbackMessage;->getId()I

    move-result v3

    .line 95
    .local v3, "idLatestMessage":I
    iget-object v7, p0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "net.hockeyapp.android.feedback"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 97
    .local v6, "preferences":Landroid/content/SharedPreferences;
    iget-object v7, p0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->mRequestType:Ljava/lang/String;

    const-string/jumbo v8, "send"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 98
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v8, "idLastMessageSend"

    .line 99
    invoke-interface {v7, v8, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v8, "idLastMessageProcessed"

    .line 100
    invoke-interface {v7, v8, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 101
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v7, p0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->mRequestType:Ljava/lang/String;

    const-string/jumbo v8, "fetch"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 103
    const-string/jumbo v7, "idLastMessageSend"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 104
    .local v2, "idLastMessageSend":I
    const-string/jumbo v7, "idLastMessageProcessed"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 106
    .local v1, "idLastMessageProcessed":I
    if-eq v3, v2, :cond_0

    if-eq v3, v1, :cond_0

    .line 108
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v8, "idLastMessageProcessed"

    .line 109
    invoke-interface {v7, v8, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 110
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, "eventHandled":Z
    invoke-static {}, Lnet/hockeyapp/android/FeedbackManager;->getLastListener()Lnet/hockeyapp/android/FeedbackManagerListener;

    move-result-object v5

    .line 114
    .local v5, "listener":Lnet/hockeyapp/android/FeedbackManagerListener;
    if-eqz v5, :cond_2

    .line 115
    invoke-virtual {v5, v4}, Lnet/hockeyapp/android/FeedbackManagerListener;->feedbackAnswered(Lnet/hockeyapp/android/objects/FeedbackMessage;)Z

    move-result v0

    .line 118
    :cond_2
    if-nez v0, :cond_0

    .line 119
    iget-object v7, p0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->startNotification(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private startNotification(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    iget-object v6, p0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->mUrlString:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const-string/jumbo v6, "notification"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 132
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string/jumbo v7, "ic_menu_refresh"

    const-string/jumbo v8, "drawable"

    const-string/jumbo v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 134
    .local v1, "iconId":I
    const/4 v0, 0x0

    .line 135
    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lnet/hockeyapp/android/FeedbackManager;->getLastListener()Lnet/hockeyapp/android/FeedbackManagerListener;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 136
    invoke-static {}, Lnet/hockeyapp/android/FeedbackManager;->getLastListener()Lnet/hockeyapp/android/FeedbackManagerListener;

    move-result-object v6

    invoke-virtual {v6}, Lnet/hockeyapp/android/FeedbackManagerListener;->getFeedbackActivityClass()Ljava/lang/Class;

    move-result-object v0

    .line 138
    :cond_2
    if-nez v0, :cond_3

    .line 139
    const-class v0, Lnet/hockeyapp/android/FeedbackActivity;

    .line 142
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v6, 0x30000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 144
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 145
    const-string/jumbo v6, "url"

    iget-object v7, p0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->mUrlString:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {p1, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 149
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    const-string/jumbo v6, "HockeyApp Feedback"

    const-string/jumbo v7, "A new answer to your feedback is available."

    invoke-static {p1, v5, v6, v7, v1}, Lnet/hockeyapp/android/utils/Util;->createNotification(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v3

    .line 151
    .local v3, "notification":Landroid/app/Notification;
    if-eqz v3, :cond_0

    .line 152
    const/4 v6, 0x2

    invoke-virtual {v4, v6, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->doInBackground([Ljava/lang/Void;)Lnet/hockeyapp/android/objects/FeedbackResponse;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lnet/hockeyapp/android/objects/FeedbackResponse;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 59
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->mFeedbackResponse:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 60
    invoke-static {}, Lnet/hockeyapp/android/utils/FeedbackParser;->getInstance()Lnet/hockeyapp/android/utils/FeedbackParser;

    move-result-object v3

    iget-object v4, p0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->mFeedbackResponse:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lnet/hockeyapp/android/utils/FeedbackParser;->parseFeedbackResponse(Ljava/lang/String;)Lnet/hockeyapp/android/objects/FeedbackResponse;

    move-result-object v2

    .line 62
    .local v2, "response":Lnet/hockeyapp/android/objects/FeedbackResponse;
    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {v2}, Lnet/hockeyapp/android/objects/FeedbackResponse;->getFeedback()Lnet/hockeyapp/android/objects/Feedback;

    move-result-object v0

    .line 64
    .local v0, "feedback":Lnet/hockeyapp/android/objects/Feedback;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v2}, Lnet/hockeyapp/android/objects/FeedbackResponse;->getFeedback()Lnet/hockeyapp/android/objects/Feedback;

    move-result-object v3

    invoke-virtual {v3}, Lnet/hockeyapp/android/objects/Feedback;->getMessages()Ljava/util/ArrayList;

    move-result-object v1

    .line 66
    .local v1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 67
    invoke-direct {p0, v1}, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->checkForNewAnswers(Ljava/util/ArrayList;)V

    .line 75
    .end local v0    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .end local v1    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    .end local v2    # "response":Lnet/hockeyapp/android/objects/FeedbackResponse;
    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lnet/hockeyapp/android/objects/FeedbackResponse;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->onPostExecute(Lnet/hockeyapp/android/objects/FeedbackResponse;)V

    return-void
.end method

.method protected onPostExecute(Lnet/hockeyapp/android/objects/FeedbackResponse;)V
    .locals 3
    .param p1, "result"    # Lnet/hockeyapp/android/objects/FeedbackResponse;

    .prologue
    .line 80
    if-eqz p1, :cond_0

    iget-object v2, p0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 81
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 82
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "parse_feedback_response"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 85
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 87
    iget-object v2, p0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setUrlString(Ljava/lang/String;)V
    .locals 0
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->mUrlString:Ljava/lang/String;

    .line 55
    return-void
.end method
