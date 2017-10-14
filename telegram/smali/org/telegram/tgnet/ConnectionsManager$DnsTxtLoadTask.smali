.class Lorg/telegram/tgnet/ConnectionsManager$DnsTxtLoadTask;
.super Landroid/os/AsyncTask;
.source "ConnectionsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/ConnectionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DnsTxtLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/telegram/tgnet/NativeByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 645
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/tgnet/ConnectionsManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/tgnet/ConnectionsManager$1;

    .prologue
    .line 645
    invoke-direct {p0}, Lorg/telegram/tgnet/ConnectionsManager$DnsTxtLoadTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 645
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/ConnectionsManager$DnsTxtLoadTask;->doInBackground([Ljava/lang/Void;)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/telegram/tgnet/NativeByteBuffer;
    .locals 24
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 648
    :try_start_0
    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->native_isTestBackend()I

    move-result v19

    if-eqz v19, :cond_2

    const-string/jumbo v19, "tap%1$s.stel.com"

    :goto_0
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, ""

    aput-object v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 649
    .local v10, "domain":Ljava/lang/String;
    new-instance v11, Ljava/net/URL;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "https://google.com/resolve?name="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "&type=16"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 650
    .local v11, "downloadUrl":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    .line 651
    .local v13, "httpConnection":Ljava/net/URLConnection;
    const-string/jumbo v19, "User-Agent"

    const-string/jumbo v20, "Mozilla/5.0 (iPhone; CPU iPhone OS 10_0 like Mac OS X) AppleWebKit/602.1.38 (KHTML, like Gecko) Version/10.0 Mobile/14A5297c Safari/602.1"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string/jumbo v19, "Host"

    const-string/jumbo v20, "dns.google.com"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const/16 v19, 0x1388

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 654
    const/16 v19, 0x1388

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 655
    invoke-virtual {v13}, Ljava/net/URLConnection;->connect()V

    .line 656
    invoke-virtual {v13}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 658
    .local v14, "httpConnectionStream":Ljava/io/InputStream;
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 660
    .local v17, "outbuf":Ljava/io/ByteArrayOutputStream;
    const v19, 0x8000

    move/from16 v0, v19

    new-array v9, v0, [B

    .line 662
    .local v9, "data":[B
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/tgnet/ConnectionsManager$DnsTxtLoadTask;->isCancelled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    if-eqz v19, :cond_3

    .line 675
    :cond_0
    :goto_2
    if-eqz v14, :cond_1

    .line 676
    :try_start_1
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 681
    :cond_1
    :goto_3
    :try_start_2
    new-instance v15, Lorg/json/JSONObject;

    new-instance v19, Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v20

    const-string/jumbo v21, "UTF-8"

    invoke-direct/range {v19 .. v21}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 682
    .local v15, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v19, "Answer"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 683
    .local v4, "array":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v16

    .line 684
    .local v16, "len":I
    new-instance v5, Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 685
    .local v5, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "a":I
    :goto_4
    move/from16 v0, v16

    if-ge v3, v0, :cond_5

    .line 686
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string/jumbo v20, "data"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 648
    .end local v3    # "a":I
    .end local v4    # "array":Lorg/json/JSONArray;
    .end local v5    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "data":[B
    .end local v10    # "domain":Ljava/lang/String;
    .end local v11    # "downloadUrl":Ljava/net/URL;
    .end local v13    # "httpConnection":Ljava/net/URLConnection;
    .end local v14    # "httpConnectionStream":Ljava/io/InputStream;
    .end local v15    # "jsonObject":Lorg/json/JSONObject;
    .end local v16    # "len":I
    .end local v17    # "outbuf":Ljava/io/ByteArrayOutputStream;
    :cond_2
    const-string/jumbo v19, "ap%1$s.stel.com"

    goto/16 :goto_0

    .line 665
    .restart local v9    # "data":[B
    .restart local v10    # "domain":Ljava/lang/String;
    .restart local v11    # "downloadUrl":Ljava/net/URL;
    .restart local v13    # "httpConnection":Ljava/net/URLConnection;
    .restart local v14    # "httpConnectionStream":Ljava/io/InputStream;
    .restart local v17    # "outbuf":Ljava/io/ByteArrayOutputStream;
    :cond_3
    invoke-virtual {v14, v9}, Ljava/io/InputStream;->read([B)I

    move-result v18

    .line 666
    .local v18, "read":I
    if-lez v18, :cond_4

    .line 667
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v9, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 709
    .end local v9    # "data":[B
    .end local v10    # "domain":Ljava/lang/String;
    .end local v11    # "downloadUrl":Ljava/net/URL;
    .end local v13    # "httpConnection":Ljava/net/URLConnection;
    .end local v14    # "httpConnectionStream":Ljava/io/InputStream;
    .end local v17    # "outbuf":Ljava/io/ByteArrayOutputStream;
    .end local v18    # "read":I
    :catch_0
    move-exception v12

    .line 710
    .local v12, "e":Ljava/lang/Throwable;
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 712
    const/4 v6, 0x0

    .end local v12    # "e":Ljava/lang/Throwable;
    :goto_5
    return-object v6

    .line 668
    .restart local v9    # "data":[B
    .restart local v10    # "domain":Ljava/lang/String;
    .restart local v11    # "downloadUrl":Ljava/net/URL;
    .restart local v13    # "httpConnection":Ljava/net/URLConnection;
    .restart local v14    # "httpConnectionStream":Ljava/io/InputStream;
    .restart local v17    # "outbuf":Ljava/io/ByteArrayOutputStream;
    .restart local v18    # "read":I
    :cond_4
    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 678
    .end local v18    # "read":I
    :catch_1
    move-exception v12

    .line 679
    .restart local v12    # "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 688
    .end local v12    # "e":Ljava/lang/Throwable;
    .restart local v3    # "a":I
    .restart local v4    # "array":Lorg/json/JSONArray;
    .restart local v5    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15    # "jsonObject":Lorg/json/JSONObject;
    .restart local v16    # "len":I
    :cond_5
    new-instance v19, Lorg/telegram/tgnet/ConnectionsManager$DnsTxtLoadTask$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/tgnet/ConnectionsManager$DnsTxtLoadTask$1;-><init>(Lorg/telegram/tgnet/ConnectionsManager$DnsTxtLoadTask;)V

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 701
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 702
    .local v7, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v3, v0, :cond_6

    .line 703
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string/jumbo v20, "\""

    const-string/jumbo v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 705
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    .line 706
    .local v8, "bytes":[B
    new-instance v6, Lorg/telegram/tgnet/NativeByteBuffer;

    array-length v0, v8

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v6, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 707
    .local v6, "buffer":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v6, v8}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 645
    check-cast p1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/ConnectionsManager$DnsTxtLoadTask;->onPostExecute(Lorg/telegram/tgnet/NativeByteBuffer;)V

    return-void
.end method

.method protected onPostExecute(Lorg/telegram/tgnet/NativeByteBuffer;)V
    .locals 1
    .param p1, "result"    # Lorg/telegram/tgnet/NativeByteBuffer;

    .prologue
    .line 717
    if-eqz p1, :cond_0

    .line 718
    iget v0, p1, Lorg/telegram/tgnet/NativeByteBuffer;->address:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_applyDnsConfig(I)V

    .line 720
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->access$602(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 721
    return-void
.end method
