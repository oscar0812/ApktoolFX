.class Lorg/telegram/messenger/MessagesStorage$87;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeleted(IIZ)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$channelId:I

.field final synthetic val$mid:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;II)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 5989
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$87;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$87;->val$channelId:I

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$87;->val$mid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5992
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$87;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iget v1, p0, Lorg/telegram/messenger/MessagesStorage$87;->val$channelId:I

    iget v2, p0, Lorg/telegram/messenger/MessagesStorage$87;->val$mid:I

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->access$1500(Lorg/telegram/messenger/MessagesStorage;II)Ljava/util/ArrayList;

    .line 5993
    return-void
.end method
