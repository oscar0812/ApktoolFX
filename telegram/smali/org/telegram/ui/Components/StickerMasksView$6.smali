.class Lorg/telegram/ui/Components/StickerMasksView$6;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "StickerMasksView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickerMasksView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/StickerMasksView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickerMasksView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/StickerMasksView;

    .prologue
    .line 165
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksView$6;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView$6;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksView;->access$1600(Lorg/telegram/ui/Components/StickerMasksView;)V

    .line 169
    return-void
.end method
