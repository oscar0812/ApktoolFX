.class Lorg/telegram/messenger/MessagesController$111$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$111;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$111;

.field final synthetic val$newPinnedOrder:Ljava/util/ArrayList;

.field final synthetic val$new_dialogMessage:Ljava/util/HashMap;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;

.field final synthetic val$toCache:Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$111;Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;Ljava/util/ArrayList;Ljava/util/HashMap;Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$111;

    .prologue
    .line 6381
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$111$1;->this$1:Lorg/telegram/messenger/MessagesController$111;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$111$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$111$1;->val$newPinnedOrder:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$111$1;->val$new_dialogMessage:Ljava/util/HashMap;

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$111$1;->val$toCache:Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 6384
    new-instance v0, Lorg/telegram/messenger/MessagesController$111$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$111$1$1;-><init>(Lorg/telegram/messenger/MessagesController$111$1;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 6485
    return-void
.end method
