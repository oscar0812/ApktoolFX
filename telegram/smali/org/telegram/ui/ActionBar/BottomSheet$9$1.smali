.class Lorg/telegram/ui/ActionBar/BottomSheet$9$1;
.super Ljava/lang/Object;
.source "BottomSheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/BottomSheet$9;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ActionBar/BottomSheet$9;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/BottomSheet$9;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ActionBar/BottomSheet$9;

    .prologue
    .line 911
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9$1;->this$1:Lorg/telegram/ui/ActionBar/BottomSheet$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 915
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9$1;->this$1:Lorg/telegram/ui/ActionBar/BottomSheet$9;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet$9;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    :goto_0
    return-void

    .line 916
    :catch_0
    move-exception v0

    .line 917
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
