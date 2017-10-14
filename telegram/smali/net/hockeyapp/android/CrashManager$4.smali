.class final Lnet/hockeyapp/android/CrashManager$4;
.super Ljava/lang/Object;
.source "CrashManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/CrashManager;->showDialog(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ignoreDefaultHandler:Z

.field final synthetic val$listener:Lnet/hockeyapp/android/CrashManagerListener;

.field final synthetic val$weakContext:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/CrashManagerListener;Ljava/lang/ref/WeakReference;Z)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lnet/hockeyapp/android/CrashManager$4;->val$listener:Lnet/hockeyapp/android/CrashManagerListener;

    iput-object p2, p0, Lnet/hockeyapp/android/CrashManager$4;->val$weakContext:Ljava/lang/ref/WeakReference;

    iput-boolean p3, p0, Lnet/hockeyapp/android/CrashManager$4;->val$ignoreDefaultHandler:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 544
    sget-object v0, Lnet/hockeyapp/android/objects/CrashManagerUserInput;->CrashManagerUserInputSend:Lnet/hockeyapp/android/objects/CrashManagerUserInput;

    const/4 v1, 0x0

    iget-object v2, p0, Lnet/hockeyapp/android/CrashManager$4;->val$listener:Lnet/hockeyapp/android/CrashManagerListener;

    iget-object v3, p0, Lnet/hockeyapp/android/CrashManager$4;->val$weakContext:Ljava/lang/ref/WeakReference;

    iget-boolean v4, p0, Lnet/hockeyapp/android/CrashManager$4;->val$ignoreDefaultHandler:Z

    invoke-static {v0, v1, v2, v3, v4}, Lnet/hockeyapp/android/CrashManager;->handleUserInput(Lnet/hockeyapp/android/objects/CrashManagerUserInput;Lnet/hockeyapp/android/objects/CrashMetaData;Lnet/hockeyapp/android/CrashManagerListener;Ljava/lang/ref/WeakReference;Z)Z

    .line 546
    return-void
.end method
