.class Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$2$1;
.super Ljava/lang/Object;
.source "AudioPlayerAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$2;

.field final synthetic val$copy:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$2;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$2;

    .prologue
    .line 1275
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$2$1;->this$2:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$2;

    iput-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$2$1;->val$copy:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1278
    iget-object v13, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$2$1;->this$2:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$2;

    iget-object v13, v13, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$2;->val$query:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 1279
    .local v11, "search1":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_0

    .line 1280
    iget-object v13, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$2$1;->this$2:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$2;

    iget-object v13, v13, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$2;->this$1:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v13, v14}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->access$4200(Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;Ljava/util/ArrayList;)V

    .line 1335
    :goto_0
    return-void

    .line 1283
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v13

    invoke-virtual {v13, v11}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1284
    .local v12, "search2":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_2

    .line 1285
    :cond_1
    const/4 v12, 0x0

    .line 1287
    :cond_2
    if-eqz v12, :cond_5

    const/4 v13, 0x1

    :goto_1
    add-int/lit8 v13, v13, 0x1

    new-array v10, v13, [Ljava/lang/String;

    .line 1288
    .local v10, "search":[Ljava/lang/String;
    const/4 v13, 0x0

    aput-object v11, v10, v13

    .line 1289
    if-eqz v12, :cond_3

    .line 1290
    const/4 v13, 0x1

    aput-object v12, v10, v13

    .line 1293
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1295
    .local v9, "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    iget-object v13, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$2$1;->val$copy:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v0, v13, :cond_d

    .line 1296
    iget-object v13, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$2$1;->val$copy:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 1297
    .local v5, "messageObject":Lorg/telegram/messenger/MessageObject;
    const/4 v2, 0x0

    .local v2, "b":I
    :goto_3
    array-length v13, v10

    if-ge v2, v13, :cond_7

    .line 1298
    aget-object v8, v10, v2

    .line 1299
    .local v8, "q":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object v6

    .line 1300
    .local v6, "name":Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_6

    .line 1297
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1287
    .end local v0    # "a":I
    .end local v2    # "b":I
    .end local v5    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "q":Ljava/lang/String;
    .end local v9    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v10    # "search":[Ljava/lang/String;
    :cond_5
    const/4 v13, 0x0

    goto :goto_1

    .line 1303
    .restart local v0    # "a":I
    .restart local v2    # "b":I
    .restart local v5    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "q":Ljava/lang/String;
    .restart local v9    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v10    # "search":[Ljava/lang/String;
    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 1304
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1305
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1295
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "q":Ljava/lang/String;
    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1309
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "q":Ljava/lang/String;
    :cond_8
    iget v13, v5, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v13, :cond_b

    .line 1310
    iget-object v13, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1314
    .local v4, "document":Lorg/telegram/tgnet/TLRPC$Document;
    :goto_5
    const/4 v7, 0x0

    .line 1315
    .local v7, "ok":Z
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_6
    iget-object v13, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v3, v13, :cond_a

    .line 1316
    iget-object v13, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1317
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v13, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v13, :cond_c

    .line 1318
    iget-object v13, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    if-eqz v13, :cond_9

    .line 1319
    iget-object v13, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 1321
    :cond_9
    if-nez v7, :cond_a

    iget-object v13, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    if-eqz v13, :cond_a

    .line 1322
    iget-object v13, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 1327
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_a
    if-eqz v7, :cond_4

    .line 1328
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1312
    .end local v3    # "c":I
    .end local v4    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v7    # "ok":Z
    :cond_b
    iget-object v13, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .restart local v4    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    goto :goto_5

    .line 1315
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v3    # "c":I
    .restart local v7    # "ok":Z
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1334
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v2    # "b":I
    .end local v3    # "c":I
    .end local v4    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v5    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "ok":Z
    .end local v8    # "q":Ljava/lang/String;
    :cond_d
    iget-object v13, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$2$1;->this$2:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$2;

    iget-object v13, v13, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$2;->this$1:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-static {v13, v9}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->access$4200(Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method
