.class Lorg/telegram/messenger/SendMessagesHelper$18$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SendMessagesHelper$18;

.field final synthetic val$params:Ljava/util/HashMap;

.field final synthetic val$photoFinal:Lorg/telegram/tgnet/TLRPC$TL_photo;

.field final synthetic val$ttl:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$18;Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/util/HashMap;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/SendMessagesHelper$18;

    .prologue
    .line 3750
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$18$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$18;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$18$1;->val$photoFinal:Lorg/telegram/tgnet/TLRPC$TL_photo;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$18$1;->val$params:Ljava/util/HashMap;

    iput p4, p0, Lorg/telegram/messenger/SendMessagesHelper$18$1;->val$ttl:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 3753
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$18$1;->val$photoFinal:Lorg/telegram/tgnet/TLRPC$TL_photo;

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$18$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$18;

    iget-wide v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$dialog_id:J

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$18$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$18;

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    iget-object v8, p0, Lorg/telegram/messenger/SendMessagesHelper$18$1;->val$params:Ljava/util/HashMap;

    iget v9, p0, Lorg/telegram/messenger/SendMessagesHelper$18$1;->val$ttl:I

    move-object v7, v3

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;I)V

    .line 3754
    return-void
.end method
