.class Lorg/telegram/ui/IntroActivity$3;
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
    .line 273
    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$3;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 276
    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$3;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/IntroActivity;->access$1000(Lorg/telegram/ui/IntroActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$3;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/IntroActivity;->access$1002(Lorg/telegram/ui/IntroActivity;Z)Z

    .line 280
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$3;->this$0:Lorg/telegram/ui/IntroActivity;

    const-class v2, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    .local v0, "intent2":Landroid/content/Intent;
    const-string/jumbo v1, "fromIntro"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 282
    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$3;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/IntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 283
    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$3;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/IntroActivity;->access$1102(Lorg/telegram/ui/IntroActivity;Z)Z

    .line 284
    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$3;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/IntroActivity;->finish()V

    goto :goto_0
.end method
