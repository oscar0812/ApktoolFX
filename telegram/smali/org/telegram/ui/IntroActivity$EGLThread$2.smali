.class Lorg/telegram/ui/IntroActivity$EGLThread$2;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/IntroActivity$EGLThread;->shutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/IntroActivity$EGLThread;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IntroActivity$EGLThread;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/IntroActivity$EGLThread;

    .prologue
    .line 698
    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$EGLThread$2;->this$1:Lorg/telegram/ui/IntroActivity$EGLThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 701
    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$EGLThread$2;->this$1:Lorg/telegram/ui/IntroActivity$EGLThread;

    invoke-virtual {v1}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    .line 702
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 703
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 706
    :cond_0
    return-void
.end method
