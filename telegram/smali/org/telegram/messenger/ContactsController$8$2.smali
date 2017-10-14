.class Lorg/telegram/messenger/ContactsController$8$2;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ContactsController$8;

.field final synthetic val$checkType:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$8;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/ContactsController$8;

    .prologue
    .line 895
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$8$2;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iput p2, p0, Lorg/telegram/messenger/ContactsController$8$2;->val$checkType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 898
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->hasNewContactsToImport:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lorg/telegram/messenger/ContactsController$8$2;->val$checkType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/telegram/messenger/ContactsController$8$2;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->val$contactHashMap:Ljava/util/HashMap;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/telegram/messenger/ContactsController$8$2;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-boolean v4, v4, Lorg/telegram/messenger/ContactsController$8;->val$first:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lorg/telegram/messenger/ContactsController$8$2;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-boolean v4, v4, Lorg/telegram/messenger/ContactsController$8;->val$schedule:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 899
    return-void
.end method
