.class Lorg/telegram/messenger/MessagesStorage$9;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->saveDiffParams(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$date:I

.field final synthetic val$pts:I

.field final synthetic val$qts:I

.field final synthetic val$seq:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;IIII)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 880
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$9;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$9;->val$seq:I

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$9;->val$pts:I

    iput p4, p0, Lorg/telegram/messenger/MessagesStorage$9;->val$date:I

    iput p5, p0, Lorg/telegram/messenger/MessagesStorage$9;->val$qts:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 883
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$9;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iget v1, p0, Lorg/telegram/messenger/MessagesStorage$9;->val$seq:I

    iget v2, p0, Lorg/telegram/messenger/MessagesStorage$9;->val$pts:I

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$9;->val$date:I

    iget v4, p0, Lorg/telegram/messenger/MessagesStorage$9;->val$qts:I

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->access$300(Lorg/telegram/messenger/MessagesStorage;IIII)V

    .line 884
    return-void
.end method
