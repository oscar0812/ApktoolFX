.class Lorg/telegram/messenger/MessagesController$52;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->updatePrintingStrings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$newPrintingStrings:Ljava/util/HashMap;

.field final synthetic val$newPrintingStringsTypes:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 2673
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$52;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$52;->val$newPrintingStrings:Ljava/util/HashMap;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$52;->val$newPrintingStringsTypes:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2676
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$52;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$52;->val$newPrintingStrings:Ljava/util/HashMap;

    iput-object v1, v0, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    .line 2677
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$52;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$52;->val$newPrintingStringsTypes:Ljava/util/HashMap;

    iput-object v1, v0, Lorg/telegram/messenger/MessagesController;->printingStringsTypes:Ljava/util/HashMap;

    .line 2678
    return-void
.end method
