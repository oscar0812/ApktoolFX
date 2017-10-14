.class Lorg/telegram/messenger/ContactsController$8$4$1$1;
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
    .line 1001
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$8$4$1$1;->this$3:Lorg/telegram/messenger/ContactsController$8$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1004
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsImported:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1005
    return-void
.end method
