.class Lnet/hockeyapp/android/utils/UiThreadUtil$3;
.super Ljava/lang/Object;
.source "UiThreadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/utils/UiThreadUtil;->displayToastMessage(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/utils/UiThreadUtil;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$flags:I

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/utils/UiThreadUtil;Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/hockeyapp/android/utils/UiThreadUtil;

    .prologue
    .line 70
    iput-object p1, p0, Lnet/hockeyapp/android/utils/UiThreadUtil$3;->this$0:Lnet/hockeyapp/android/utils/UiThreadUtil;

    iput-object p2, p0, Lnet/hockeyapp/android/utils/UiThreadUtil$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lnet/hockeyapp/android/utils/UiThreadUtil$3;->val$message:Ljava/lang/String;

    iput p4, p0, Lnet/hockeyapp/android/utils/UiThreadUtil$3;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lnet/hockeyapp/android/utils/UiThreadUtil$3;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lnet/hockeyapp/android/utils/UiThreadUtil$3;->val$message:Ljava/lang/String;

    iget v2, p0, Lnet/hockeyapp/android/utils/UiThreadUtil$3;->val$flags:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 74
    return-void
.end method
