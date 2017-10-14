.class Lorg/telegram/messenger/MessagesController$61;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->resetDialogs(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$date:I

.field final synthetic val$newPts:I

.field final synthetic val$qts:I

.field final synthetic val$seq:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;IIII)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 3187
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$61;->val$seq:I

    iput p3, p0, Lorg/telegram/messenger/MessagesController$61;->val$newPts:I

    iput p4, p0, Lorg/telegram/messenger/MessagesController$61;->val$date:I

    iput p5, p0, Lorg/telegram/messenger/MessagesController$61;->val$qts:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 3190
    if-nez p2, :cond_0

    .line 3191
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    .end local p1    # "response":Lorg/telegram/tgnet/TLObject;
    invoke-static {v0, p1}, Lorg/telegram/messenger/MessagesController;->access$1202(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;)Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    .line 3192
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v1, 0x0

    iget v2, p0, Lorg/telegram/messenger/MessagesController$61;->val$seq:I

    iget v3, p0, Lorg/telegram/messenger/MessagesController$61;->val$newPts:I

    iget v4, p0, Lorg/telegram/messenger/MessagesController$61;->val$date:I

    iget v5, p0, Lorg/telegram/messenger/MessagesController$61;->val$qts:I

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->access$4800(Lorg/telegram/messenger/MessagesController;ZIIII)V

    .line 3194
    :cond_0
    return-void
.end method
