.class Lorg/telegram/ui/Components/Paint/Painting$2;
.super Ljava/lang/Object;
.source "Painting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Painting;->commitStroke(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Painting;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Painting;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/Paint/Painting;

    .prologue
    .line 214
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    iput p2, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Painting;->access$1000(Lorg/telegram/ui/Components/Paint/Painting;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/Painting;->access$1100(Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/RectF;)V

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Painting;->access$1200(Lorg/telegram/ui/Components/Paint/Painting;)V

    .line 221
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$2$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Painting$2$1;-><init>(Lorg/telegram/ui/Components/Paint/Painting$2;)V

    invoke-static {v0, v2, v1}, Lorg/telegram/ui/Components/Paint/Painting;->access$1500(Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/RectF;Ljava/lang/Runnable;)V

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Painting;->access$1600(Lorg/telegram/ui/Components/Paint/Painting;)V

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Painting;->access$800(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/RenderState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderState;->reset()V

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/Paint/Painting;->access$1002(Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/Paint/Painting;->access$002(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Path;)Lorg/telegram/ui/Components/Paint/Path;

    .line 258
    return-void
.end method
