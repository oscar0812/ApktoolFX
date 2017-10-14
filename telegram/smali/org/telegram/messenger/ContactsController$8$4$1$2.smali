.class Lorg/telegram/messenger/ContactsController$8$4$1$2;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$8$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/messenger/ContactsController$8$4$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$8$4$1;)V
    .locals 0
    .param p1, "this$3"    # Lorg/telegram/messenger/ContactsController$8$4$1;

    .prologue
    .line 1008
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$8$4$1$2;->this$3:Lorg/telegram/messenger/ContactsController$8$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1011
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getCachedPhoneBook(Z)V

    .line 1012
    return-void
.end method
