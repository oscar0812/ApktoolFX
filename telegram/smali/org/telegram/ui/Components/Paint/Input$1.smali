.class Lorg/telegram/ui/Components/Paint/Input$1;
.super Ljava/lang/Object;
.source "Input.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Input;->paintPath(Lorg/telegram/ui/Components/Paint/Path;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Input;

.field final synthetic val$path:Lorg/telegram/ui/Components/Paint/Path;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Input;Lorg/telegram/ui/Components/Paint/Path;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/Paint/Input;

    .prologue
    .line 187
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Input$1;->this$0:Lorg/telegram/ui/Components/Paint/Input;

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Input$1;->val$path:Lorg/telegram/ui/Components/Paint/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 190
    new-instance v0, Lorg/telegram/ui/Components/Paint/Input$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Input$1$1;-><init>(Lorg/telegram/ui/Components/Paint/Input$1;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method
