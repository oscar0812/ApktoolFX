.class Lnet/hockeyapp/android/tasks/AttachmentDownloader$1$1;
.super Ljava/lang/Object;
.source "AttachmentDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;

.field final synthetic val$retryCandidate:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;)V
    .locals 0
    .param p1, "this$1"    # Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;

    .prologue
    .line 74
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1$1;->this$1:Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;

    iput-object p2, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1$1;->val$retryCandidate:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1$1;->this$1:Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;

    iget-object v0, v0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;->this$0:Lnet/hockeyapp/android/tasks/AttachmentDownloader;

    invoke-static {v0}, Lnet/hockeyapp/android/tasks/AttachmentDownloader;->access$200(Lnet/hockeyapp/android/tasks/AttachmentDownloader;)Ljava/util/Queue;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1$1;->val$retryCandidate:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1$1;->this$1:Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;

    iget-object v0, v0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;->this$0:Lnet/hockeyapp/android/tasks/AttachmentDownloader;

    invoke-static {v0}, Lnet/hockeyapp/android/tasks/AttachmentDownloader;->access$300(Lnet/hockeyapp/android/tasks/AttachmentDownloader;)V

    .line 79
    return-void
.end method
