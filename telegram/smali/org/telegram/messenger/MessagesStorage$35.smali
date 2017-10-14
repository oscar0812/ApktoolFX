.class Lorg/telegram/messenger/MessagesStorage$35;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithReadMessages(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$inbox:Landroid/util/SparseArray;

.field final synthetic val$mentions:Ljava/util/ArrayList;

.field final synthetic val$outbox:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 2226
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$35;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$35;->val$inbox:Landroid/util/SparseArray;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$35;->val$outbox:Landroid/util/SparseArray;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesStorage$35;->val$mentions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2229
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$35;->this$0:Lorg/telegram/messenger/MessagesStorage;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$35;->val$inbox:Landroid/util/SparseArray;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$35;->val$outbox:Landroid/util/SparseArray;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$35;->val$mentions:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->access$800(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/ArrayList;)V

    .line 2230
    return-void
.end method
