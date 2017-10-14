.class Lorg/telegram/messenger/ContactsController$5;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController;->syncPhoneBookByAlert(Ljava/util/HashMap;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ContactsController;

.field final synthetic val$cancel:Z

.field final synthetic val$contacts:Ljava/util/HashMap;

.field final synthetic val$first:Z

.field final synthetic val$schedule:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;ZZZ)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 314
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$5;->this$0:Lorg/telegram/messenger/ContactsController;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$5;->val$contacts:Ljava/util/HashMap;

    iput-boolean p3, p0, Lorg/telegram/messenger/ContactsController$5;->val$first:Z

    iput-boolean p4, p0, Lorg/telegram/messenger/ContactsController$5;->val$schedule:Z

    iput-boolean p5, p0, Lorg/telegram/messenger/ContactsController$5;->val$cancel:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 317
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$5;->val$contacts:Ljava/util/HashMap;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lorg/telegram/messenger/ContactsController$5;->val$first:Z

    iget-boolean v4, p0, Lorg/telegram/messenger/ContactsController$5;->val$schedule:Z

    iget-boolean v7, p0, Lorg/telegram/messenger/ContactsController$5;->val$cancel:Z

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/ContactsController;->performSyncPhoneBook(Ljava/util/HashMap;ZZZZZZ)V

    .line 318
    return-void
.end method
