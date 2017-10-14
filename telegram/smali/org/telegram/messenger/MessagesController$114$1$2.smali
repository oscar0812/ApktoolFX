.class Lorg/telegram/messenger/MessagesController$114$1$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$114$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/MessagesController$114$1;

.field final synthetic val$pushMessages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$114$1;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/messenger/MessagesController$114$1;

    .prologue
    .line 6601
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$114$1$2;->this$2:Lorg/telegram/messenger/MessagesController$114$1;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$114$1$2;->val$pushMessages:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 6604
    new-instance v0, Lorg/telegram/messenger/MessagesController$114$1$2$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$114$1$2$1;-><init>(Lorg/telegram/messenger/MessagesController$114$1$2;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 6610
    return-void
.end method
