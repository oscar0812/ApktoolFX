.class Lorg/telegram/messenger/ContactsController$10;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController;->loadContacts(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ContactsController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 1116
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$10;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1119
    if-nez p2, :cond_1

    move-object v0, p1

    .line 1120
    check-cast v0, Lorg/telegram/tgnet/TLRPC$contacts_Contacts;

    .line 1121
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$contacts_Contacts;
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_contactsNotModified;

    if-eqz v1, :cond_2

    .line 1122
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$10;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    .line 1123
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$10;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->access$900(Lorg/telegram/messenger/ContactsController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$10;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->access$800(Lorg/telegram/messenger/ContactsController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1124
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$10;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v2, p0, Lorg/telegram/messenger/ContactsController$10;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v2}, Lorg/telegram/messenger/ContactsController;->access$900(Lorg/telegram/messenger/ContactsController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2, v3, v3, v3}, Lorg/telegram/messenger/ContactsController;->access$1000(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1125
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$10;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->access$900(Lorg/telegram/messenger/ContactsController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1127
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    sput v1, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    .line 1128
    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1129
    new-instance v1, Lorg/telegram/messenger/ContactsController$10$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ContactsController$10$1;-><init>(Lorg/telegram/messenger/ContactsController$10;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1138
    const-string/jumbo v1, "load contacts don\'t change"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1146
    .end local v0    # "res":Lorg/telegram/tgnet/TLRPC$contacts_Contacts;
    :cond_1
    :goto_0
    return-void

    .line 1141
    .restart local v0    # "res":Lorg/telegram/tgnet/TLRPC$contacts_Contacts;
    :cond_2
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$contacts_Contacts;->saved_count:I

    sput v1, Lorg/telegram/messenger/UserConfig;->contactsSavedCount:I

    .line 1142
    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1144
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$10;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$contacts_Contacts;->contacts:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$contacts_Contacts;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v6}, Lorg/telegram/messenger/ContactsController;->processLoadedContacts(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method
