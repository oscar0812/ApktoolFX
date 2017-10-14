.class Lorg/telegram/messenger/MessagesController$126;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$clearHistoryMessages:Landroid/util/SparseArray;

.field final synthetic val$deletedMessages:Landroid/util/SparseArray;

.field final synthetic val$markAsReadEncrypted:Ljava/util/HashMap;

.field final synthetic val$markAsReadMessages:Ljava/util/ArrayList;

.field final synthetic val$markAsReadMessagesInbox:Landroid/util/SparseArray;

.field final synthetic val$markAsReadMessagesOutbox:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 8261
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$126;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$126;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$126;->val$markAsReadMessagesOutbox:Landroid/util/SparseArray;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$126;->val$markAsReadEncrypted:Ljava/util/HashMap;

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$126;->val$markAsReadMessages:Ljava/util/ArrayList;

    iput-object p6, p0, Lorg/telegram/messenger/MessagesController$126;->val$deletedMessages:Landroid/util/SparseArray;

    iput-object p7, p0, Lorg/telegram/messenger/MessagesController$126;->val$clearHistoryMessages:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 8264
    new-instance v0, Lorg/telegram/messenger/MessagesController$126$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$126$1;-><init>(Lorg/telegram/messenger/MessagesController$126;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 8373
    return-void
.end method
