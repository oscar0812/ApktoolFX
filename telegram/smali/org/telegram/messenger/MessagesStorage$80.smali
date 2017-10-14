.class Lorg/telegram/messenger/MessagesStorage$80;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->updateMessageStateAndId(JLjava/lang/Integer;IIZI)[J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$_oldId:Ljava/lang/Integer;

.field final synthetic val$channelId:I

.field final synthetic val$date:I

.field final synthetic val$newId:I

.field final synthetic val$random_id:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Integer;III)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 5403
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesStorage$80;->val$random_id:J

    iput-object p4, p0, Lorg/telegram/messenger/MessagesStorage$80;->val$_oldId:Ljava/lang/Integer;

    iput p5, p0, Lorg/telegram/messenger/MessagesStorage$80;->val$newId:I

    iput p6, p0, Lorg/telegram/messenger/MessagesStorage$80;->val$date:I

    iput p7, p0, Lorg/telegram/messenger/MessagesStorage$80;->val$channelId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 5406
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesStorage$80;->val$random_id:J

    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$80;->val$_oldId:Ljava/lang/Integer;

    iget v5, p0, Lorg/telegram/messenger/MessagesStorage$80;->val$newId:I

    iget v6, p0, Lorg/telegram/messenger/MessagesStorage$80;->val$date:I

    iget v7, p0, Lorg/telegram/messenger/MessagesStorage$80;->val$channelId:I

    invoke-static/range {v1 .. v7}, Lorg/telegram/messenger/MessagesStorage;->access$1200(Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Integer;III)[J

    .line 5407
    return-void
.end method
