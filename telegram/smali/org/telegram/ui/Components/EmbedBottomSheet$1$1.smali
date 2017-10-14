.class Lorg/telegram/ui/Components/EmbedBottomSheet$1$1;
.super Ljava/lang/Object;
.source "EmbedBottomSheet.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmbedBottomSheet$1;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmbedBottomSheet$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmbedBottomSheet$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/EmbedBottomSheet$1;

    .prologue
    .line 95
    iput-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$1$1;->this$1:Lorg/telegram/ui/Components/EmbedBottomSheet$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$1$1;->this$1:Lorg/telegram/ui/Components/EmbedBottomSheet$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$1;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 105
    const/4 v0, 0x1

    return v0
.end method
