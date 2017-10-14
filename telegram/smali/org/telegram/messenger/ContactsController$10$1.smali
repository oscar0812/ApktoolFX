.class Lorg/telegram/messenger/ContactsController$10$1;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$10;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ContactsController$10;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$10;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/ContactsController$10;

    .prologue
    .line 1129
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$10$1;->this$1:Lorg/telegram/messenger/ContactsController$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1132
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1133
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$10$1;->this$1:Lorg/telegram/messenger/ContactsController$10;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$10;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/messenger/ContactsController;->access$502(Lorg/telegram/messenger/ContactsController;Z)Z

    .line 1134
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1136
    return-void

    .line 1134
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
