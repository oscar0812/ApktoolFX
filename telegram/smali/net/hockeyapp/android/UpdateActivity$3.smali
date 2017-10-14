.class Lnet/hockeyapp/android/UpdateActivity$3;
.super Lnet/hockeyapp/android/listeners/DownloadFileListener;
.source "UpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/UpdateActivity;->configureView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/UpdateActivity;

.field final synthetic val$fileDate:Ljava/lang/String;

.field final synthetic val$versionLabel:Landroid/widget/TextView;

.field final synthetic val$versionString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/UpdateActivity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/hockeyapp/android/UpdateActivity;

    .prologue
    .line 236
    iput-object p1, p0, Lnet/hockeyapp/android/UpdateActivity$3;->this$0:Lnet/hockeyapp/android/UpdateActivity;

    iput-object p2, p0, Lnet/hockeyapp/android/UpdateActivity$3;->val$versionLabel:Landroid/widget/TextView;

    iput-object p3, p0, Lnet/hockeyapp/android/UpdateActivity$3;->val$versionString:Ljava/lang/String;

    iput-object p4, p0, Lnet/hockeyapp/android/UpdateActivity$3;->val$fileDate:Ljava/lang/String;

    invoke-direct {p0}, Lnet/hockeyapp/android/listeners/DownloadFileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadSuccessful(Lnet/hockeyapp/android/tasks/DownloadFileTask;)V
    .locals 11
    .param p1, "task"    # Lnet/hockeyapp/android/tasks/DownloadFileTask;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 239
    instance-of v3, p1, Lnet/hockeyapp/android/tasks/GetFileSizeTask;

    if-eqz v3, :cond_0

    .line 240
    check-cast p1, Lnet/hockeyapp/android/tasks/GetFileSizeTask;

    .end local p1    # "task":Lnet/hockeyapp/android/tasks/DownloadFileTask;
    invoke-virtual {p1}, Lnet/hockeyapp/android/tasks/GetFileSizeTask;->getSize()J

    move-result-wide v0

    .line 241
    .local v0, "appSize":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%.2f"

    new-array v6, v10, [Ljava/lang/Object;

    long-to-float v7, v0

    const/high16 v8, 0x49800000    # 1048576.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "appSizeString":Ljava/lang/String;
    iget-object v3, p0, Lnet/hockeyapp/android/UpdateActivity$3;->val$versionLabel:Landroid/widget/TextView;

    iget-object v4, p0, Lnet/hockeyapp/android/UpdateActivity$3;->this$0:Lnet/hockeyapp/android/UpdateActivity;

    sget v5, Lnet/hockeyapp/android/R$string;->hockeyapp_update_version_details_label:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lnet/hockeyapp/android/UpdateActivity$3;->val$versionString:Ljava/lang/String;

    aput-object v7, v6, v9

    iget-object v7, p0, Lnet/hockeyapp/android/UpdateActivity$3;->val$fileDate:Ljava/lang/String;

    aput-object v7, v6, v10

    const/4 v7, 0x2

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Lnet/hockeyapp/android/UpdateActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    .end local v0    # "appSize":J
    .end local v2    # "appSizeString":Ljava/lang/String;
    :cond_0
    return-void
.end method
