.class Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler$1;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler;

.field final synthetic val$feedbackActivity:Lnet/hockeyapp/android/FeedbackActivity;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler;Lnet/hockeyapp/android/FeedbackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler;

    .prologue
    .line 832
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler$1;->this$0:Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler;

    iput-object p2, p0, Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler$1;->val$feedbackActivity:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 837
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler$1;->val$feedbackActivity:Lnet/hockeyapp/android/FeedbackActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->enableDisableSendFeedbackButton(Z)V

    .line 838
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler$1;->val$feedbackActivity:Lnet/hockeyapp/android/FeedbackActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->showDialog(I)V

    .line 839
    return-void
.end method
