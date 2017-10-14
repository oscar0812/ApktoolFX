.class Lorg/telegram/ui/SecretMediaViewer$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecretMediaViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecretMediaViewer;->closePhoto(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SecretMediaViewer;

.field final synthetic val$object:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecretMediaViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/SecretMediaViewer;

    .prologue
    .line 1240
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$11;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    iput-object p2, p0, Lorg/telegram/ui/SecretMediaViewer$11;->val$object:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x1

    .line 1243
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$11;->val$object:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$11;->val$object:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 1246
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$11;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/SecretMediaViewer;->access$3002(Lorg/telegram/ui/SecretMediaViewer;Z)Z

    .line 1247
    new-instance v0, Lorg/telegram/ui/SecretMediaViewer$11$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SecretMediaViewer$11$1;-><init>(Lorg/telegram/ui/SecretMediaViewer$11;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1256
    return-void
.end method
