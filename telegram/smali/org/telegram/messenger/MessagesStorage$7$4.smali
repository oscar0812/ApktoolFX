.class Lorg/telegram/messenger/MessagesStorage$7$4;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesStorage$7;

.field final synthetic val$did:J

.field final synthetic val$peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field final synthetic val$pin:Z

.field final synthetic val$taskId:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage$7;JZLorg/telegram/tgnet/TLRPC$InputPeer;J)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesStorage$7;

    .prologue
    .line 789
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$7$4;->this$1:Lorg/telegram/messenger/MessagesStorage$7;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesStorage$7$4;->val$did:J

    iput-boolean p4, p0, Lorg/telegram/messenger/MessagesStorage$7$4;->val$pin:Z

    iput-object p5, p0, Lorg/telegram/messenger/MessagesStorage$7$4;->val$peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-wide p6, p0, Lorg/telegram/messenger/MessagesStorage$7$4;->val$taskId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 792
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesStorage$7$4;->val$did:J

    iget-boolean v4, p0, Lorg/telegram/messenger/MessagesStorage$7$4;->val$pin:Z

    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$7$4;->val$peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v6, p0, Lorg/telegram/messenger/MessagesStorage$7$4;->val$taskId:J

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MessagesController;->pinDialog(JZLorg/telegram/tgnet/TLRPC$InputPeer;J)Z

    .line 793
    return-void
.end method
