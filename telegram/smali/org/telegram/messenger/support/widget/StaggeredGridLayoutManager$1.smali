.class Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$1;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    .prologue
    .line 221
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$1;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$1;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    .line 225
    return-void
.end method
