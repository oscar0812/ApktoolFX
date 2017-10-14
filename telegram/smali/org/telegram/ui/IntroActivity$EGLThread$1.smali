.class Lorg/telegram/ui/IntroActivity$EGLThread$1;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/IntroActivity$EGLThread;
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
    .line 656
    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$EGLThread$1;->this$1:Lorg/telegram/ui/IntroActivity$EGLThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 659
    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$EGLThread$1;->this$1:Lorg/telegram/ui/IntroActivity$EGLThread;

    invoke-static {v1}, Lorg/telegram/ui/IntroActivity$EGLThread;->access$1700(Lorg/telegram/ui/IntroActivity$EGLThread;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 681
    :goto_0
    return-void

    .line 663
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$EGLThread$1;->this$1:Lorg/telegram/ui/IntroActivity$EGLThread;

    invoke-static {v1}, Lorg/telegram/ui/IntroActivity$EGLThread;->access$1900(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/IntroActivity$EGLThread$1;->this$1:Lorg/telegram/ui/IntroActivity$EGLThread;

    invoke-static {v2}, Lorg/telegram/ui/IntroActivity$EGLThread;->access$1800(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v2

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$EGLThread$1;->this$1:Lorg/telegram/ui/IntroActivity$EGLThread;

    invoke-static {v1}, Lorg/telegram/ui/IntroActivity$EGLThread;->access$2000(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/IntroActivity$EGLThread$1;->this$1:Lorg/telegram/ui/IntroActivity$EGLThread;

    invoke-static {v2}, Lorg/telegram/ui/IntroActivity$EGLThread;->access$1800(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v2

    const/16 v3, 0x3059

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 664
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$EGLThread$1;->this$1:Lorg/telegram/ui/IntroActivity$EGLThread;

    invoke-static {v1}, Lorg/telegram/ui/IntroActivity$EGLThread;->access$1800(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/IntroActivity$EGLThread$1;->this$1:Lorg/telegram/ui/IntroActivity$EGLThread;

    invoke-static {v2}, Lorg/telegram/ui/IntroActivity$EGLThread;->access$2100(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/IntroActivity$EGLThread$1;->this$1:Lorg/telegram/ui/IntroActivity$EGLThread;

    invoke-static {v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->access$2000(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/IntroActivity$EGLThread$1;->this$1:Lorg/telegram/ui/IntroActivity$EGLThread;

    invoke-static {v4}, Lorg/telegram/ui/IntroActivity$EGLThread;->access$2000(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/IntroActivity$EGLThread$1;->this$1:Lorg/telegram/ui/IntroActivity$EGLThread;

    invoke-static {v5}, Lorg/telegram/ui/IntroActivity$EGLThread;->access$1900(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "eglMakeCurrent failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/IntroActivity$EGLThread$1;->this$1:Lorg/telegram/ui/IntroActivity$EGLThread;

    invoke-static {v2}, Lorg/telegram/ui/IntroActivity$EGLThread;->access$1800(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v2

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 669
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$EGLThread$1;->this$1:Lorg/telegram/ui/IntroActivity$EGLThread;

    iget-object v1, v1, Lorg/telegram/ui/IntroActivity$EGLThread;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/IntroActivity;->access$1600(Lorg/telegram/ui/IntroActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v0, v1, v2

    .line 670
    .local v0, "time":F
    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$EGLThread$1;->this$1:Lorg/telegram/ui/IntroActivity$EGLThread;

    iget-object v1, v1, Lorg/telegram/ui/IntroActivity$EGLThread;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/IntroActivity;->access$500(Lorg/telegram/ui/IntroActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/Intro;->setPage(I)V

    .line 671
    invoke-static {v0}, Lorg/telegram/messenger/Intro;->setDate(F)V

    .line 672
    invoke-static {}, Lorg/telegram/messenger/Intro;->onDrawFrame()V

    .line 673
    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$EGLThread$1;->this$1:Lorg/telegram/ui/IntroActivity$EGLThread;

    invoke-static {v1}, Lorg/telegram/ui/IntroActivity$EGLThread;->access$1800(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/IntroActivity$EGLThread$1;->this$1:Lorg/telegram/ui/IntroActivity$EGLThread;

    invoke-static {v2}, Lorg/telegram/ui/IntroActivity$EGLThread;->access$2100(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/IntroActivity$EGLThread$1;->this$1:Lorg/telegram/ui/IntroActivity$EGLThread;

    invoke-static {v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->access$2000(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 675
    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$EGLThread$1;->this$1:Lorg/telegram/ui/IntroActivity$EGLThread;

    new-instance v2, Lorg/telegram/ui/IntroActivity$EGLThread$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/IntroActivity$EGLThread$1$1;-><init>(Lorg/telegram/ui/IntroActivity$EGLThread$1;)V

    const-wide/16 v4, 0x10

    invoke-virtual {v1, v2, v4, v5}, Lorg/telegram/ui/IntroActivity$EGLThread;->postRunnable(Ljava/lang/Runnable;J)V

    goto/16 :goto_0
.end method
