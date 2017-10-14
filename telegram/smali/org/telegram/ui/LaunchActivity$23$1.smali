.class Lorg/telegram/ui/LaunchActivity$23$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LaunchActivity$23;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity$23;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/LaunchActivity$23;

    .prologue
    .line 2256
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$23$1;->this$1:Lorg/telegram/ui/LaunchActivity$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2260
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$23$1;->this$1:Lorg/telegram/ui/LaunchActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity$23;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/AlertsCreator;->createFreeSpaceDialog(Lorg/telegram/ui/LaunchActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2264
    :goto_0
    return-void

    .line 2261
    :catch_0
    move-exception v0

    goto :goto_0
.end method
