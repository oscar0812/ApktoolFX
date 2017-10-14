.class Lnet/hockeyapp/android/tasks/DownloadFileTask$2;
.super Ljava/lang/Object;
.source "DownloadFileTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/tasks/DownloadFileTask;->onPostExecute(Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/tasks/DownloadFileTask;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/tasks/DownloadFileTask;)V
    .locals 0
    .param p1, "this$0"    # Lnet/hockeyapp/android/tasks/DownloadFileTask;

    .prologue
    .line 239
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask$2;->this$0:Lnet/hockeyapp/android/tasks/DownloadFileTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask$2;->this$0:Lnet/hockeyapp/android/tasks/DownloadFileTask;

    iget-object v0, v0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mNotifier:Lnet/hockeyapp/android/listeners/DownloadFileListener;

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask$2;->this$0:Lnet/hockeyapp/android/tasks/DownloadFileTask;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/hockeyapp/android/listeners/DownloadFileListener;->downloadFailed(Lnet/hockeyapp/android/tasks/DownloadFileTask;Ljava/lang/Boolean;)V

    .line 242
    return-void
.end method
