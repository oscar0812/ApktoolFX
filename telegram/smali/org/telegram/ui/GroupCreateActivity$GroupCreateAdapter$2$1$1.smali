.class Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1$1;
.super Ljava/lang/Object;
.source "GroupCreateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;)V
    .locals 0
    .param p1, "this$3"    # Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;

    .prologue
    .line 985
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1$1;->this$3:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 988
    iget-object v11, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1$1;->this$3:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;

    iget-object v11, v11, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;->this$2:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;

    iget-object v11, v11, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;->val$query:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 989
    .local v7, "search1":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_0

    .line 990
    iget-object v11, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1$1;->this$3:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;

    iget-object v11, v11, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;->this$2:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;

    iget-object v11, v11, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;->this$1:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v11, v12, v13}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->access$2800(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1035
    :goto_0
    return-void

    .line 993
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v11

    invoke-virtual {v11, v7}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 994
    .local v8, "search2":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_2

    .line 995
    :cond_1
    const/4 v8, 0x0

    .line 997
    :cond_2
    if-eqz v8, :cond_8

    const/4 v11, 0x1

    :goto_1
    add-int/lit8 v11, v11, 0x1

    new-array v6, v11, [Ljava/lang/String;

    .line 998
    .local v6, "search":[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v7, v6, v11

    .line 999
    if-eqz v8, :cond_3

    .line 1000
    const/4 v11, 0x1

    aput-object v8, v6, v11

    .line 1003
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1004
    .local v4, "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1006
    .local v5, "resultArrayNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    iget-object v11, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1$1;->this$3:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;

    iget-object v11, v11, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;->this$2:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;

    iget-object v11, v11, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;->this$1:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    invoke-static {v11}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->access$2900(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_c

    .line 1007
    iget-object v11, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1$1;->this$3:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;

    iget-object v11, v11, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;->this$2:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;

    iget-object v11, v11, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;->this$1:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    invoke-static {v11}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->access$2900(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$User;

    .line 1009
    .local v10, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v11, v10, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v11, v12}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1010
    .local v2, "name":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v11

    invoke-virtual {v11, v2}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1011
    .local v9, "tName":Ljava/lang/String;
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1012
    const/4 v9, 0x0

    .line 1015
    :cond_4
    const/4 v1, 0x0

    .line 1016
    .local v1, "found":I
    array-length v12, v6

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v12, :cond_7

    aget-object v3, v6, v11

    .line 1017
    .local v3, "q":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    if-eqz v9, :cond_9

    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1018
    :cond_5
    const/4 v1, 0x1

    .line 1023
    :cond_6
    :goto_4
    if-eqz v1, :cond_b

    .line 1024
    const/4 v11, 0x1

    if-ne v1, v11, :cond_a

    .line 1025
    iget-object v11, v10, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v11, v12, v3}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1029
    :goto_5
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    .end local v3    # "q":Ljava/lang/String;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 997
    .end local v0    # "a":I
    .end local v1    # "found":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v5    # "resultArrayNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v6    # "search":[Ljava/lang/String;
    .end local v9    # "tName":Ljava/lang/String;
    .end local v10    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1019
    .restart local v0    # "a":I
    .restart local v1    # "found":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "q":Ljava/lang/String;
    .restart local v4    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .restart local v5    # "resultArrayNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v6    # "search":[Ljava/lang/String;
    .restart local v9    # "tName":Ljava/lang/String;
    .restart local v10    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_9
    iget-object v13, v10, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v13, :cond_6

    iget-object v13, v10, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1020
    const/4 v1, 0x2

    goto :goto_4

    .line 1027
    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "@"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1016
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 1034
    .end local v1    # "found":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "q":Ljava/lang/String;
    .end local v9    # "tName":Ljava/lang/String;
    .end local v10    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_c
    iget-object v11, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1$1;->this$3:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;

    iget-object v11, v11, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;->this$2:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;

    iget-object v11, v11, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;->this$1:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    invoke-static {v11, v4, v5}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->access$2800(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method
