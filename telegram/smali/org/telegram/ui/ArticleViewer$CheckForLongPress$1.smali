.class Lorg/telegram/ui/ArticleViewer$CheckForLongPress$1;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$CheckForLongPress;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

.field final synthetic val$urlFinal:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$CheckForLongPress;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    .prologue
    .line 799
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$CheckForLongPress$1;->this$1:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$CheckForLongPress$1;->val$urlFinal:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 802
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$CheckForLongPress$1;->this$1:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$CheckForLongPress;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$1900(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    if-nez p2, :cond_2

    .line 806
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$CheckForLongPress$1;->this$1:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$CheckForLongPress;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$1900(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$CheckForLongPress$1;->val$urlFinal:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 807
    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 808
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$CheckForLongPress$1;->val$urlFinal:Ljava/lang/String;

    .line 809
    .local v0, "url":Ljava/lang/String;
    const-string/jumbo v1, "mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 810
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 814
    :cond_3
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 811
    :cond_4
    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 812
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
