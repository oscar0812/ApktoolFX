.class Lorg/telegram/messenger/TgChooserTargetService$1;
.super Ljava/lang/Object;
.source "TgChooserTargetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/TgChooserTargetService;->onGetChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/TgChooserTargetService;

.field final synthetic val$componentName:Landroid/content/ComponentName;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;

.field final synthetic val$targets:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/TgChooserTargetService;Ljava/util/List;Landroid/content/ComponentName;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/TgChooserTargetService;

    .prologue
    .line 61
    iput-object p1, p0, Lorg/telegram/messenger/TgChooserTargetService$1;->this$0:Lorg/telegram/messenger/TgChooserTargetService;

    iput-object p2, p0, Lorg/telegram/messenger/TgChooserTargetService$1;->val$targets:Ljava/util/List;

    iput-object p3, p0, Lorg/telegram/messenger/TgChooserTargetService$1;->val$componentName:Landroid/content/ComponentName;

    iput-object p4, p0, Lorg/telegram/messenger/TgChooserTargetService$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 64
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v14, "dialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v11, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v21, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :try_start_0
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v22, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v12, "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "SELECT did FROM dialogs ORDER BY date DESC LIMIT %d,%d"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const/16 v25, 0x1e

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v13

    .line 72
    .local v13, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_0
    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v18

    .line 75
    .local v18, "id":J
    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    .line 76
    .local v17, "lower_id":I
    const/16 v2, 0x20

    shr-long v24, v18, v2

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v16, v0

    .line 77
    .local v16, "high_id":I
    if-eqz v17, :cond_0

    .line 78
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_0

    .line 81
    if-lez v17, :cond_9

    .line 82
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 83
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_1
    :goto_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_0

    .line 99
    .end local v16    # "high_id":I
    .end local v17    # "lower_id":I
    .end local v18    # "id":J
    :cond_2
    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 100
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 101
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const-string/jumbo v5, ","

    invoke-static {v5, v12}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v11}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 103
    :cond_3
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 104
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const-string/jumbo v5, ","

    move-object/from16 v0, v22

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v2, v5, v0}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v12    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v13    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v22    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    :goto_1
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_f

    .line 110
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v7, "extras":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 112
    .local v4, "icon":Landroid/graphics/drawable/Icon;
    const/4 v3, 0x0

    .line 113
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 114
    .local v18, "id":I
    if-lez v18, :cond_b

    .line 115
    const/4 v9, 0x0

    .local v9, "b":I
    :goto_3
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_6

    .line 116
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/tgnet/TLRPC$User;

    .line 117
    .local v20, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v20

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v0, v18

    if-ne v2, v0, :cond_a

    .line 118
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v2, :cond_6

    .line 119
    const-string/jumbo v2, "dialogId"

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v7, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 120
    move-object/from16 v0, v20

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v2, :cond_5

    move-object/from16 v0, v20

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v2, :cond_5

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/TgChooserTargetService$1;->this$0:Lorg/telegram/messenger/TgChooserTargetService;

    move-object/from16 v0, v20

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/telegram/messenger/TgChooserTargetService;->access$000(Lorg/telegram/messenger/TgChooserTargetService;Ljava/io/File;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 123
    :cond_5
    move-object/from16 v0, v20

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    .end local v20    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_6
    :goto_4
    if-eqz v3, :cond_8

    .line 144
    if-nez v4, :cond_7

    .line 145
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const v5, 0x7f020117

    invoke-static {v2, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 147
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/TgChooserTargetService$1;->val$targets:Ljava/util/List;

    move-object/from16 v23, v0

    new-instance v2, Landroid/service/chooser/ChooserTarget;

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/TgChooserTargetService$1;->val$componentName:Landroid/content/ComponentName;

    invoke-direct/range {v2 .. v7}, Landroid/service/chooser/ChooserTarget;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;FLandroid/content/ComponentName;Landroid/os/Bundle;)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 86
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "icon":Landroid/graphics/drawable/Icon;
    .end local v7    # "extras":Landroid/os/Bundle;
    .end local v8    # "a":I
    .end local v9    # "b":I
    .restart local v12    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v13    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v16    # "high_id":I
    .restart local v17    # "lower_id":I
    .local v18, "id":J
    .restart local v22    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_9
    move/from16 v0, v17

    neg-int v2, v0

    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    move/from16 v0, v17

    neg-int v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 106
    .end local v12    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v13    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v16    # "high_id":I
    .end local v17    # "lower_id":I
    .end local v18    # "id":J
    .end local v22    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v15

    .line 107
    .local v15, "e":Ljava/lang/Exception;
    invoke-static {v15}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 115
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "icon":Landroid/graphics/drawable/Icon;
    .restart local v7    # "extras":Landroid/os/Bundle;
    .restart local v8    # "a":I
    .restart local v9    # "b":I
    .local v18, "id":I
    .restart local v20    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 129
    .end local v9    # "b":I
    .end local v20    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_b
    const/4 v9, 0x0

    .restart local v9    # "b":I
    :goto_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_6

    .line 130
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 131
    .local v10, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v2, v10, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v0, v18

    neg-int v5, v0

    if-ne v2, v5, :cond_e

    .line 132
    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-boolean v2, v10, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_6

    .line 133
    :cond_c
    const-string/jumbo v2, "dialogId"

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v7, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 134
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v2, :cond_d

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v2, :cond_d

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/TgChooserTargetService$1;->this$0:Lorg/telegram/messenger/TgChooserTargetService;

    iget-object v5, v10, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/telegram/messenger/TgChooserTargetService;->access$000(Lorg/telegram/messenger/TgChooserTargetService;Ljava/io/File;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 137
    :cond_d
    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto/16 :goto_4

    .line 129
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 150
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "icon":Landroid/graphics/drawable/Icon;
    .end local v7    # "extras":Landroid/os/Bundle;
    .end local v9    # "b":I
    .end local v10    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v18    # "id":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/TgChooserTargetService$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 151
    return-void
.end method
