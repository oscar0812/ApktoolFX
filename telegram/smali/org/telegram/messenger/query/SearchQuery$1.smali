.class final Lorg/telegram/messenger/query/SearchQuery$1;
.super Ljava/lang/Object;
.source "SearchQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SearchQuery;->buildShortcuts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$hintsFinal:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lorg/telegram/messenger/query/SearchQuery$1;->val$hintsFinal:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 36
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 90
    :try_start_0
    sget-object v31, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v32, Landroid/content/pm/ShortcutManager;

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/ShortcutManager;

    .line 91
    .local v26, "shortcutManager":Landroid/content/pm/ShortcutManager;
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    move-result-object v11

    .line 92
    .local v11, "currentShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v28, "shortcutsToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v19, "newShortcutsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v27, "shortcutsToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v11, :cond_6

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_6

    .line 97
    const-string/jumbo v31, "compose"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/query/SearchQuery$1;->val$hintsFinal:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v4, v0, :cond_2

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/query/SearchQuery$1;->val$hintsFinal:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    .line 101
    .local v15, "hint":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    iget-object v0, v15, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v31, v0

    if-eqz v31, :cond_1

    .line 102
    iget-object v0, v15, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v12, v0

    .line 109
    .local v12, "did":J
    :cond_0
    :goto_1
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "did"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 104
    .end local v12    # "did":J
    :cond_1
    iget-object v0, v15, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v31, v0

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v12, v0

    .line 105
    .restart local v12    # "did":J
    const-wide/16 v32, 0x0

    cmp-long v31, v12, v32

    if-nez v31, :cond_0

    .line 106
    iget-object v0, v15, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v31, v0

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v12, v0

    goto :goto_1

    .line 111
    .end local v12    # "did":J
    .end local v15    # "hint":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v4, v0, :cond_4

    .line 112
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/ShortcutInfo;

    invoke-virtual/range {v31 .. v31}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v16

    .line 113
    .local v16, "id":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_3

    .line 114
    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_3
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 118
    .end local v16    # "id":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v31

    if-eqz v31, :cond_6

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v31

    if-eqz v31, :cond_6

    .line 241
    .end local v4    # "a":I
    .end local v11    # "currentShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v19    # "newShortcutsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26    # "shortcutManager":Landroid/content/pm/ShortcutManager;
    .end local v27    # "shortcutsToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28    # "shortcutsToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    :goto_3
    return-void

    .line 123
    .restart local v11    # "currentShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v19    # "newShortcutsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v26    # "shortcutManager":Landroid/content/pm/ShortcutManager;
    .restart local v27    # "shortcutsToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v28    # "shortcutsToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    new-instance v17, Landroid/content/Intent;

    sget-object v31, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v32, Lorg/telegram/ui/LaunchActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v17, "intent":Landroid/content/Intent;
    const-string/jumbo v31, "new_dialog"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v5, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v31, Landroid/content/pm/ShortcutInfo$Builder;

    sget-object v32, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v33, "compose"

    invoke-direct/range {v31 .. v33}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v32, "NewConversationShortcut"

    const v33, 0x7f0703bd

    .line 127
    invoke-static/range {v32 .. v33}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v31

    const-string/jumbo v32, "NewConversationShortcut"

    const v33, 0x7f0703bd

    .line 128
    invoke-static/range {v32 .. v33}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v31

    sget-object v32, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const v33, 0x7f02019e

    .line 129
    invoke-static/range {v32 .. v33}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v31

    .line 130
    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v31

    .line 131
    invoke-virtual/range {v31 .. v31}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v31

    .line 126
    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    const-string/jumbo v31, "compose"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_8

    .line 133
    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/content/pm/ShortcutManager;->updateShortcuts(Ljava/util/List;)Z

    .line 137
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 139
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_7

    .line 140
    invoke-virtual/range {v26 .. v27}, Landroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    .line 143
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/query/SearchQuery$1;->val$hintsFinal:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v4, v0, :cond_5

    .line 144
    new-instance v25, Landroid/content/Intent;

    sget-object v31, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v32, Lorg/telegram/messenger/OpenChatReceiver;

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v25, "shortcutIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/query/SearchQuery$1;->val$hintsFinal:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    .line 147
    .restart local v15    # "hint":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    const/16 v30, 0x0

    .line 148
    .local v30, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v9, 0x0

    .line 150
    .local v9, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v0, v15, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v31, v0

    if-eqz v31, :cond_9

    .line 151
    const-string/jumbo v31, "userId"

    iget-object v0, v15, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v32, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v31

    iget-object v0, v15, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v30

    .line 153
    iget-object v0, v15, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v12, v0

    .line 163
    .restart local v12    # "did":J
    :goto_6
    if-nez v30, :cond_b

    if-nez v9, :cond_b

    .line 143
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 135
    .end local v4    # "a":I
    .end local v9    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v12    # "did":J
    .end local v15    # "hint":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    .end local v25    # "shortcutIntent":Landroid/content/Intent;
    .end local v30    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_8
    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/content/pm/ShortcutManager;->addDynamicShortcuts(Ljava/util/List;)Z

    goto/16 :goto_4

    .line 238
    .end local v5    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v11    # "currentShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v19    # "newShortcutsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26    # "shortcutManager":Landroid/content/pm/ShortcutManager;
    .end local v27    # "shortcutsToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28    # "shortcutsToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v31

    goto/16 :goto_3

    .line 155
    .restart local v4    # "a":I
    .restart local v5    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v9    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v11    # "currentShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v15    # "hint":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v19    # "newShortcutsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25    # "shortcutIntent":Landroid/content/Intent;
    .restart local v26    # "shortcutManager":Landroid/content/pm/ShortcutManager;
    .restart local v27    # "shortcutsToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v28    # "shortcutsToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v30    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_9
    iget-object v0, v15, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    .line 156
    .local v10, "chat_id":I
    if-nez v10, :cond_a

    .line 157
    iget-object v0, v15, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 159
    :cond_a
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v31

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    .line 160
    const-string/jumbo v31, "chatId"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    neg-int v0, v10

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v12, v0

    .restart local v12    # "did":J
    goto :goto_6

    .line 168
    .end local v10    # "chat_id":I
    :cond_b
    const/16 v21, 0x0

    .line 170
    .local v21, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    if-eqz v30, :cond_10

    .line 171
    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v31 .. v32}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 172
    .local v18, "name":Ljava/lang/String;
    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v31, v0

    if-eqz v31, :cond_c

    .line 173
    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v21, v0

    .line 182
    :cond_c
    :goto_8
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "com.tmessages.openchat"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const/high16 v31, 0x4000000

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    const/4 v6, 0x0

    .line 186
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v21, :cond_e

    .line 188
    const/16 v31, 0x1

    :try_start_1
    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v20

    .line 189
    .local v20, "path":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 190
    if-eqz v6, :cond_e

    .line 191
    const/high16 v31, 0x42400000    # 48.0f

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v29

    .line 192
    .local v29, "size":I
    sget-object v31, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v29

    move/from16 v1, v29

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 193
    .local v22, "result":Landroid/graphics/Bitmap;
    const/16 v31, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 194
    new-instance v8, Landroid/graphics/Canvas;

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 195
    .local v8, "canvas":Landroid/graphics/Canvas;
    new-instance v24, Landroid/graphics/BitmapShader;

    sget-object v31, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v32, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v6, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 196
    .local v24, "shader":Landroid/graphics/BitmapShader;
    invoke-static {}, Lorg/telegram/messenger/query/SearchQuery;->access$000()Landroid/graphics/Paint;

    move-result-object v31

    if-nez v31, :cond_d

    .line 197
    new-instance v31, Landroid/graphics/Paint;

    const/16 v32, 0x1

    invoke-direct/range {v31 .. v32}, Landroid/graphics/Paint;-><init>(I)V

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/query/SearchQuery;->access$002(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 198
    new-instance v31, Landroid/graphics/RectF;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/RectF;-><init>()V

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/query/SearchQuery;->access$102(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 200
    :cond_d
    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v23, v31, v32

    .line 201
    .local v23, "scale":F
    move/from16 v0, v23

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 202
    invoke-static {}, Lorg/telegram/messenger/query/SearchQuery;->access$000()Landroid/graphics/Paint;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 203
    invoke-static {}, Lorg/telegram/messenger/query/SearchQuery;->access$100()Landroid/graphics/RectF;

    move-result-object v31

    const/high16 v32, 0x40000000    # 2.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x40000000    # 2.0f

    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    const/high16 v34, 0x42380000    # 46.0f

    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x42380000    # 46.0f

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    invoke-virtual/range {v31 .. v35}, Landroid/graphics/RectF;->set(FFFF)V

    .line 204
    invoke-static {}, Lorg/telegram/messenger/query/SearchQuery;->access$100()Landroid/graphics/RectF;

    move-result-object v31

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    invoke-static {}, Lorg/telegram/messenger/query/SearchQuery;->access$000()Landroid/graphics/Paint;

    move-result-object v34

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    const/16 v31, 0x0

    :try_start_2
    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 210
    :goto_9
    move-object/from16 v6, v22

    .line 217
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .end local v20    # "path":Ljava/io/File;
    .end local v22    # "result":Landroid/graphics/Bitmap;
    .end local v23    # "scale":F
    .end local v24    # "shader":Landroid/graphics/BitmapShader;
    .end local v29    # "size":I
    :cond_e
    :goto_a
    :try_start_3
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "did"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 218
    .restart local v16    # "id":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 219
    const-string/jumbo v18, " "

    .line 221
    :cond_f
    new-instance v31, Landroid/content/pm/ShortcutInfo$Builder;

    sget-object v32, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v31

    .line 223
    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v31

    .line 224
    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v7

    .line 225
    .local v7, "builder":Landroid/content/pm/ShortcutInfo$Builder;
    if-eqz v6, :cond_11

    .line 226
    invoke-static {v6}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 230
    :goto_b
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_12

    .line 232
    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/content/pm/ShortcutManager;->updateShortcuts(Ljava/util/List;)Z

    .line 236
    :goto_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_7

    .line 176
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "builder":Landroid/content/pm/ShortcutInfo$Builder;
    .end local v16    # "id":Ljava/lang/String;
    .end local v18    # "name":Ljava/lang/String;
    :cond_10
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 177
    .restart local v18    # "name":Ljava/lang/String;
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v31, v0

    if-eqz v31, :cond_c

    .line 178
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v21, v0

    goto/16 :goto_8

    .line 212
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v14

    .line 213
    .local v14, "e":Ljava/lang/Throwable;
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 228
    .end local v14    # "e":Ljava/lang/Throwable;
    .restart local v7    # "builder":Landroid/content/pm/ShortcutInfo$Builder;
    .restart local v16    # "id":Ljava/lang/String;
    :cond_11
    sget-object v31, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const v32, 0x7f02019f

    invoke-static/range {v31 .. v32}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    goto :goto_b

    .line 234
    :cond_12
    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/content/pm/ShortcutManager;->addDynamicShortcuts(Ljava/util/List;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_c

    .line 207
    .end local v7    # "builder":Landroid/content/pm/ShortcutInfo$Builder;
    .end local v16    # "id":Ljava/lang/String;
    .restart local v8    # "canvas":Landroid/graphics/Canvas;
    .restart local v20    # "path":Ljava/io/File;
    .restart local v22    # "result":Landroid/graphics/Bitmap;
    .restart local v23    # "scale":F
    .restart local v24    # "shader":Landroid/graphics/BitmapShader;
    .restart local v29    # "size":I
    :catch_2
    move-exception v31

    goto/16 :goto_9
.end method
