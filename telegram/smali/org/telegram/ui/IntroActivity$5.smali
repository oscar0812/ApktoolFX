.class Lorg/telegram/ui/IntroActivity$5;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/IntroActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/IntroActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IntroActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 305
    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$5;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 308
    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$5;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/IntroActivity;->access$1000(Lorg/telegram/ui/IntroActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$5;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/IntroActivity;->access$1200(Lorg/telegram/ui/IntroActivity;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/IntroActivity$5;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-static {v2}, Lorg/telegram/ui/IntroActivity;->access$1200(Lorg/telegram/ui/IntroActivity;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Z)V

    .line 312
    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$5;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/IntroActivity;->access$1002(Lorg/telegram/ui/IntroActivity;Z)Z

    .line 313
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$5;->this$0:Lorg/telegram/ui/IntroActivity;

    const-class v2, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 314
    .local v0, "intent2":Landroid/content/Intent;
    const-string/jumbo v1, "fromIntro"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 315
    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$5;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/IntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 316
    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$5;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/IntroActivity;->access$1102(Lorg/telegram/ui/IntroActivity;Z)Z

    .line 317
    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$5;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/IntroActivity;->finish()V

    goto :goto_0
.end method
