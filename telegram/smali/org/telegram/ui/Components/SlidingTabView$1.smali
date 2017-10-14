.class Lorg/telegram/ui/Components/SlidingTabView$1;
.super Ljava/lang/Object;
.source "SlidingTabView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SlidingTabView;->addTextTab(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SlidingTabView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SlidingTabView;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/SlidingTabView;

    .prologue
    .line 63
    iput-object p1, p0, Lorg/telegram/ui/Components/SlidingTabView$1;->this$0:Lorg/telegram/ui/Components/SlidingTabView;

    iput p2, p0, Lorg/telegram/ui/Components/SlidingTabView$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/SlidingTabView$1;->this$0:Lorg/telegram/ui/Components/SlidingTabView;

    iget v1, p0, Lorg/telegram/ui/Components/SlidingTabView$1;->val$position:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SlidingTabView;->access$000(Lorg/telegram/ui/Components/SlidingTabView;I)V

    .line 67
    return-void
.end method
