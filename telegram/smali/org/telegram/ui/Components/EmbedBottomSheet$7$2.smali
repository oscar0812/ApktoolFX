.class Lorg/telegram/ui/Components/EmbedBottomSheet$7$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EmbedBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmbedBottomSheet$7;->onSwitchInlineMode(Landroid/view/View;ZFIZ)Landroid/view/TextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmbedBottomSheet$7;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmbedBottomSheet$7;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/EmbedBottomSheet$7;

    .prologue
    .line 478
    iput-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7$2;->this$1:Lorg/telegram/ui/Components/EmbedBottomSheet$7;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 481
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7$2;->this$1:Lorg/telegram/ui/Components/EmbedBottomSheet$7;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3002(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)Z

    .line 482
    return-void
.end method
