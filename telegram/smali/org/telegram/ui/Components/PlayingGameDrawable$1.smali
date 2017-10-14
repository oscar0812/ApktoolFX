.class Lorg/telegram/ui/Components/PlayingGameDrawable$1;
.super Ljava/lang/Object;
.source "PlayingGameDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PlayingGameDrawable;->checkUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PlayingGameDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PlayingGameDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PlayingGameDrawable;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/telegram/ui/Components/PlayingGameDrawable$1;->this$0:Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Components/PlayingGameDrawable$1;->this$0:Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/PlayingGameDrawable;->access$000(Lorg/telegram/ui/Components/PlayingGameDrawable;)V

    .line 115
    return-void
.end method
