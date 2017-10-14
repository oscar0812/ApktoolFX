.class Lorg/telegram/ui/Components/TypingDotsDrawable$1;
.super Ljava/lang/Object;
.source "TypingDotsDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TypingDotsDrawable;->checkUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/TypingDotsDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TypingDotsDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/TypingDotsDrawable;

    .prologue
    .line 103
    iput-object p1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable$1;->this$0:Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable$1;->this$0:Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/TypingDotsDrawable;->access$000(Lorg/telegram/ui/Components/TypingDotsDrawable;)V

    .line 107
    return-void
.end method
