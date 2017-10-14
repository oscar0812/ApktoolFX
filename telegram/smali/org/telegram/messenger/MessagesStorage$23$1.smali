.class Lorg/telegram/messenger/MessagesStorage$23$1;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesStorage$23;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$photos_Photos;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage$23;Lorg/telegram/tgnet/TLRPC$photos_Photos;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesStorage$23;

    .prologue
    .line 1580
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$23$1;->this$1:Lorg/telegram/messenger/MessagesStorage$23;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$23$1;->val$res:Lorg/telegram/tgnet/TLRPC$photos_Photos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1583
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$23$1;->val$res:Lorg/telegram/tgnet/TLRPC$photos_Photos;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$23$1;->this$1:Lorg/telegram/messenger/MessagesStorage$23;

    iget v2, v2, Lorg/telegram/messenger/MessagesStorage$23;->val$did:I

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$23$1;->this$1:Lorg/telegram/messenger/MessagesStorage$23;

    iget v3, v3, Lorg/telegram/messenger/MessagesStorage$23;->val$count:I

    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$23$1;->this$1:Lorg/telegram/messenger/MessagesStorage$23;

    iget-wide v4, v4, Lorg/telegram/messenger/MessagesStorage$23;->val$max_id:J

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$23$1;->this$1:Lorg/telegram/messenger/MessagesStorage$23;

    iget v7, v7, Lorg/telegram/messenger/MessagesStorage$23;->val$classGuid:I

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/MessagesController;->processLoadedUserPhotos(Lorg/telegram/tgnet/TLRPC$photos_Photos;IIJZI)V

    .line 1584
    return-void
.end method
