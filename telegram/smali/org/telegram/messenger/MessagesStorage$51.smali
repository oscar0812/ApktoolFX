.class Lorg/telegram/messenger/MessagesStorage$51;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->getCachedPhoneBook(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$byError:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 2896
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$51;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagesStorage$51;->val$byError:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2899
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2901
    .local v1, "contactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$51;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v3, "SELECT us.uid, us.fname, us.sname, up.phone, up.sphone, up.deleted, us.imported FROM user_contacts_v6 as us LEFT JOIN user_phones_v6 as up ON us.uid = up.uid WHERE 1"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v9

    .line 2902
    .local v9, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_0
    :goto_0
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2903
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    .line 2904
    .local v13, "uid":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/ContactsController$Contact;

    .line 2905
    .local v8, "contact":Lorg/telegram/messenger/ContactsController$Contact;
    if-nez v8, :cond_3

    .line 2906
    new-instance v8, Lorg/telegram/messenger/ContactsController$Contact;

    .end local v8    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    invoke-direct {v8}, Lorg/telegram/messenger/ContactsController$Contact;-><init>()V

    .line 2907
    .restart local v8    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 2908
    const/4 v0, 0x2

    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 2909
    const/4 v0, 0x6

    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    iput v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->imported:I

    .line 2910
    iget-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2911
    const-string/jumbo v0, ""

    iput-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 2913
    :cond_1
    iget-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2914
    const-string/jumbo v0, ""

    iput-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 2916
    :cond_2
    iput v13, v8, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    .line 2917
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2919
    :cond_3
    const/4 v0, 0x3

    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v11

    .line 2920
    .local v11, "phone":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 2923
    iget-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2924
    const/4 v0, 0x4

    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v12

    .line 2925
    .local v12, "sphone":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 2928
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v6, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v6, :cond_4

    .line 2929
    invoke-static {v11}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2931
    :cond_4
    iget-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2932
    iget-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-virtual {v9, v3}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2933
    iget-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2936
    .end local v8    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v9    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v11    # "phone":Ljava/lang/String;
    .end local v12    # "sphone":Ljava/lang/String;
    .end local v13    # "uid":I
    :catch_0
    move-exception v10

    .line 2937
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2938
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2940
    .end local v10    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-boolean v3, p0, Lorg/telegram/messenger/MessagesStorage$51;->val$byError:Z

    if-nez v3, :cond_6

    move v6, v2

    :goto_2
    move v3, v2

    move v5, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/ContactsController;->performSyncPhoneBook(Ljava/util/HashMap;ZZZZZZ)V

    .line 2941
    return-void

    .line 2935
    .restart local v9    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_5
    :try_start_1
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local v9    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_6
    move v6, v4

    .line 2940
    goto :goto_2
.end method
