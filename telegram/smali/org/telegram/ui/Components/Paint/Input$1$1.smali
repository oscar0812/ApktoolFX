.class Lorg/telegram/ui/Components/Paint/Input$1$1;
.super Ljava/lang/Object;
.source "Input.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Input$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/Paint/Input$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Input$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/Paint/Input$1;

    .prologue
    .line 190
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Input$1$1;->this$1:Lorg/telegram/ui/Components/Paint/Input$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 193
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input$1$1;->this$1:Lorg/telegram/ui/Components/Paint/Input$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Input$1;->this$0:Lorg/telegram/ui/Components/Paint/Input;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Input$1$1;->this$1:Lorg/telegram/ui/Components/Paint/Input$1;

    iget-object v1, v1, Lorg/telegram/ui/Components/Paint/Input$1;->val$path:Lorg/telegram/ui/Components/Paint/Path;

    iget-wide v2, v1, Lorg/telegram/ui/Components/Paint/Path;->remainder:D

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Components/Paint/Input;->access$002(Lorg/telegram/ui/Components/Paint/Input;D)D

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input$1$1;->this$1:Lorg/telegram/ui/Components/Paint/Input$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Input$1;->this$0:Lorg/telegram/ui/Components/Paint/Input;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/Input;->access$102(Lorg/telegram/ui/Components/Paint/Input;Z)Z

    .line 195
    return-void
.end method
