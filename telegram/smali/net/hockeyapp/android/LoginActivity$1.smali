.class Lnet/hockeyapp/android/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/LoginActivity;->configureView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/LoginActivity;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnet/hockeyapp/android/LoginActivity;

    .prologue
    .line 147
    iput-object p1, p0, Lnet/hockeyapp/android/LoginActivity$1;->this$0:Lnet/hockeyapp/android/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v0, p0, Lnet/hockeyapp/android/LoginActivity$1;->this$0:Lnet/hockeyapp/android/LoginActivity;

    invoke-static {v0}, Lnet/hockeyapp/android/LoginActivity;->access$000(Lnet/hockeyapp/android/LoginActivity;)V

    .line 151
    return-void
.end method
