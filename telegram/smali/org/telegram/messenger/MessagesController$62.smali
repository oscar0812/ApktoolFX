.class Lorg/telegram/messenger/MessagesController$62;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->completeDialogsReset(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;IIIIILjava/util/HashMap;Ljava/util/HashMap;Lorg/telegram/tgnet/TLRPC$Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$date:I

.field final synthetic val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

.field final synthetic val$newPts:I

.field final synthetic val$new_dialogMessage:Ljava/util/HashMap;

.field final synthetic val$new_dialogs_dict:Ljava/util/HashMap;

.field final synthetic val$qts:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;IIILorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 3323
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$62;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$62;->val$newPts:I

    iput p3, p0, Lorg/telegram/messenger/MessagesController$62;->val$date:I

    iput p4, p0, Lorg/telegram/messenger/MessagesController$62;->val$qts:I

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$62;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iput-object p6, p0, Lorg/telegram/messenger/MessagesController$62;->val$new_dialogs_dict:Ljava/util/HashMap;

    iput-object p7, p0, Lorg/telegram/messenger/MessagesController$62;->val$new_dialogMessage:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3326
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$62;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    .line 3327
    iget v0, p0, Lorg/telegram/messenger/MessagesController$62;->val$newPts:I

    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    .line 3328
    iget v0, p0, Lorg/telegram/messenger/MessagesController$62;->val$date:I

    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    .line 3329
    iget v0, p0, Lorg/telegram/messenger/MessagesController$62;->val$qts:I

    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    .line 3330
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$62;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getDifference()V

    .line 3332
    new-instance v0, Lorg/telegram/messenger/MessagesController$62$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$62$1;-><init>(Lorg/telegram/messenger/MessagesController$62;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3387
    return-void
.end method
