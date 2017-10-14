.class Lnet/hockeyapp/android/UpdateFragment$2;
.super Ljava/lang/Object;
.source "UpdateFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/UpdateFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/UpdateFragment;

.field final synthetic val$updateFragment:Lnet/hockeyapp/android/UpdateFragment;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/UpdateFragment;Lnet/hockeyapp/android/UpdateFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnet/hockeyapp/android/UpdateFragment;

    .prologue
    .line 197
    iput-object p1, p0, Lnet/hockeyapp/android/UpdateFragment$2;->this$0:Lnet/hockeyapp/android/UpdateFragment;

    iput-object p2, p0, Lnet/hockeyapp/android/UpdateFragment$2;->val$updateFragment:Lnet/hockeyapp/android/UpdateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateFragment$2;->val$updateFragment:Lnet/hockeyapp/android/UpdateFragment;

    invoke-virtual {v0}, Lnet/hockeyapp/android/UpdateFragment;->prepareDownload()V

    .line 200
    return-void
.end method
