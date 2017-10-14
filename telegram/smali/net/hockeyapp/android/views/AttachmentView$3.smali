.class Lnet/hockeyapp/android/views/AttachmentView$3;
.super Ljava/lang/Object;
.source "AttachmentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/views/AttachmentView;->configureViewForThumbnail(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/views/AttachmentView;

.field final synthetic val$openOnClick:Z


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/views/AttachmentView;Z)V
    .locals 0
    .param p1, "this$0"    # Lnet/hockeyapp/android/views/AttachmentView;

    .prologue
    .line 256
    iput-object p1, p0, Lnet/hockeyapp/android/views/AttachmentView$3;->this$0:Lnet/hockeyapp/android/views/AttachmentView;

    iput-boolean p2, p0, Lnet/hockeyapp/android/views/AttachmentView$3;->val$openOnClick:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 259
    iget-boolean v1, p0, Lnet/hockeyapp/android/views/AttachmentView$3;->val$openOnClick:Z

    if-nez v1, :cond_0

    .line 267
    :goto_0
    return-void

    .line 263
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 264
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    iget-object v1, p0, Lnet/hockeyapp/android/views/AttachmentView$3;->this$0:Lnet/hockeyapp/android/views/AttachmentView;

    invoke-static {v1}, Lnet/hockeyapp/android/views/AttachmentView;->access$300(Lnet/hockeyapp/android/views/AttachmentView;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    iget-object v1, p0, Lnet/hockeyapp/android/views/AttachmentView$3;->this$0:Lnet/hockeyapp/android/views/AttachmentView;

    invoke-static {v1}, Lnet/hockeyapp/android/views/AttachmentView;->access$400(Lnet/hockeyapp/android/views/AttachmentView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
