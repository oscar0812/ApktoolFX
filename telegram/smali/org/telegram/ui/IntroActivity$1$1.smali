.class Lorg/telegram/ui/IntroActivity$1$1;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/IntroActivity$1;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/IntroActivity$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IntroActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/IntroActivity$1;

    .prologue
    .line 188
    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$1$1;->this$1:Lorg/telegram/ui/IntroActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$1$1;->this$1:Lorg/telegram/ui/IntroActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-static {v0}, Lorg/telegram/ui/IntroActivity;->access$100(Lorg/telegram/ui/IntroActivity;)Lorg/telegram/ui/IntroActivity$EGLThread;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/IntroActivity$EGLThread;->access$200(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 192
    return-void
.end method
