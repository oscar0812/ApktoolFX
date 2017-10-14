.class Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;
.super Landroid/os/AsyncTask;
.source "BaseLocationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchGooglePlacesWithQuery(Ljava/lang/String;Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private canRetry:Z

.field final synthetic this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->canRetry:Z

    return-void
.end method

.method private downloadUrlContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 144
    const/4 v3, 0x1

    .line 145
    .local v3, "canRetry":Z
    const/4 v11, 0x0

    .line 146
    .local v11, "httpConnectionStream":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 147
    .local v7, "done":Z
    const/4 v15, 0x0

    .line 148
    .local v15, "result":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 150
    .local v10, "httpConnection":Ljava/net/URLConnection;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 151
    .local v8, "downloadUrl":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    .line 152
    const-string/jumbo v18, "User-Agent"

    const-string/jumbo v19, "Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/20150101 Firefox/47.0 (Chrome)"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string/jumbo v18, "Accept-Language"

    const-string/jumbo v19, "en-us,en;q=0.5"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string/jumbo v18, "Accept"

    const-string/jumbo v19, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string/jumbo v18, "Accept-Charset"

    const-string/jumbo v19, "ISO-8859-1,utf-8;q=0.7,*;q=0.7"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/16 v18, 0x1388

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 157
    const/16 v18, 0x1388

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 158
    instance-of v0, v10, Ljava/net/HttpURLConnection;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 159
    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v12, v0

    .line 160
    .local v12, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 161
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    .line 162
    .local v17, "status":I
    const/16 v18, 0x12e

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    const/16 v18, 0x12d

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    const/16 v18, 0x12f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 163
    :cond_0
    const-string/jumbo v18, "Location"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 164
    .local v13, "newUrl":Ljava/lang/String;
    const-string/jumbo v18, "Set-Cookie"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, "cookies":Ljava/lang/String;
    new-instance v8, Ljava/net/URL;

    .end local v8    # "downloadUrl":Ljava/net/URL;
    invoke-direct {v8, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 166
    .restart local v8    # "downloadUrl":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    .line 167
    const-string/jumbo v18, "Cookie"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string/jumbo v18, "User-Agent"

    const-string/jumbo v19, "Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/20150101 Firefox/47.0 (Chrome)"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string/jumbo v18, "Accept-Language"

    const-string/jumbo v19, "en-us,en;q=0.5"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v18, "Accept"

    const-string/jumbo v19, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string/jumbo v18, "Accept-Charset"

    const-string/jumbo v19, "ISO-8859-1,utf-8;q=0.7,*;q=0.7"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .end local v5    # "cookies":Ljava/lang/String;
    .end local v12    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v13    # "newUrl":Ljava/lang/String;
    .end local v17    # "status":I
    :cond_1
    invoke-virtual {v10}, Ljava/net/URLConnection;->connect()V

    .line 175
    invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 193
    .end local v8    # "downloadUrl":Ljava/net/URL;
    :goto_0
    if-eqz v3, :cond_4

    .line 195
    if-eqz v10, :cond_2

    :try_start_1
    instance-of v0, v10, Ljava/net/HttpURLConnection;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 196
    check-cast v10, Ljava/net/HttpURLConnection;

    .end local v10    # "httpConnection":Ljava/net/URLConnection;
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 197
    .local v4, "code":I
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-eq v4, v0, :cond_2

    const/16 v18, 0xca

    move/from16 v0, v18

    if-eq v4, v0, :cond_2

    const/16 v18, 0x130

    move/from16 v0, v18

    if-eq v4, v0, :cond_2

    .line 205
    .end local v4    # "code":I
    :cond_2
    :goto_1
    if-eqz v11, :cond_3

    .line 207
    const v18, 0x8000

    :try_start_2
    move/from16 v0, v18

    new-array v6, v0, [B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .local v6, "data":[B
    move-object/from16 v16, v15

    .line 209
    .end local v15    # "result":Ljava/lang/StringBuilder;
    .local v16, "result":Ljava/lang/StringBuilder;
    :goto_2
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->isCancelled()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v15, v16

    .line 236
    .end local v6    # "data":[B
    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v15    # "result":Ljava/lang/StringBuilder;
    :cond_3
    :goto_3
    if-eqz v11, :cond_4

    .line 237
    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 243
    :cond_4
    :goto_4
    if-eqz v7, :cond_c

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_5
    return-object v18

    .line 176
    .restart local v10    # "httpConnection":Ljava/net/URLConnection;
    :catch_0
    move-exception v9

    .line 177
    .local v9, "e":Ljava/lang/Throwable;
    instance-of v0, v9, Ljava/net/SocketTimeoutException;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 178
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isNetworkOnline()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 179
    const/4 v3, 0x0

    .line 190
    :cond_5
    :goto_6
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 181
    :cond_6
    instance-of v0, v9, Ljava/net/UnknownHostException;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 182
    const/4 v3, 0x0

    goto :goto_6

    .line 183
    :cond_7
    instance-of v0, v9, Ljava/net/SocketException;

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 184
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_5

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "ECONNRESET"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 185
    const/4 v3, 0x0

    goto :goto_6

    .line 187
    :cond_8
    instance-of v0, v9, Ljava/io/FileNotFoundException;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 188
    const/4 v3, 0x0

    goto :goto_6

    .line 201
    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v10    # "httpConnection":Ljava/net/URLConnection;
    :catch_1
    move-exception v9

    .line 202
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 213
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v15    # "result":Ljava/lang/StringBuilder;
    .restart local v6    # "data":[B
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    :cond_9
    :try_start_5
    invoke-virtual {v11, v6}, Ljava/io/InputStream;->read([B)I

    move-result v14

    .line 214
    .local v14, "read":I
    if-lez v14, :cond_a

    .line 215
    if-nez v16, :cond_d

    .line 216
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 218
    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v15    # "result":Ljava/lang/StringBuilder;
    :goto_7
    :try_start_6
    new-instance v18, Ljava/lang/String;

    const/16 v19, 0x0

    const-string/jumbo v20, "UTF-8"

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v6, v1, v14, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    move-object/from16 v16, v15

    .line 228
    .end local v15    # "result":Ljava/lang/StringBuilder;
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    goto :goto_2

    .line 219
    :cond_a
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_b

    .line 220
    const/4 v7, 0x1

    move-object/from16 v15, v16

    .line 221
    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v15    # "result":Ljava/lang/StringBuilder;
    goto :goto_3

    .end local v15    # "result":Ljava/lang/StringBuilder;
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    :cond_b
    move-object/from16 v15, v16

    .line 223
    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v15    # "result":Ljava/lang/StringBuilder;
    goto :goto_3

    .line 225
    .end local v14    # "read":I
    .end local v15    # "result":Ljava/lang/StringBuilder;
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    :catch_2
    move-exception v9

    move-object/from16 v15, v16

    .line 226
    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v9    # "e":Ljava/lang/Exception;
    .restart local v15    # "result":Ljava/lang/StringBuilder;
    :goto_8
    :try_start_7
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_3

    .line 230
    .end local v6    # "data":[B
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    .line 231
    .local v9, "e":Ljava/lang/Throwable;
    :goto_9
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 239
    .end local v9    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v9

    .line 240
    .restart local v9    # "e":Ljava/lang/Throwable;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 243
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 230
    .end local v15    # "result":Ljava/lang/StringBuilder;
    .restart local v6    # "data":[B
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    :catch_5
    move-exception v9

    move-object/from16 v15, v16

    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v15    # "result":Ljava/lang/StringBuilder;
    goto :goto_9

    .line 225
    .restart local v14    # "read":I
    :catch_6
    move-exception v9

    goto :goto_8

    .end local v15    # "result":Ljava/lang/StringBuilder;
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    :cond_d
    move-object/from16 v15, v16

    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v15    # "result":Ljava/lang/StringBuilder;
    goto :goto_7
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 247
    iget-object v3, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->val$url:Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->downloadUrlContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    :goto_0
    return-object v2

    .line 252
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 139
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 18
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 261
    if-eqz p1, :cond_8

    .line 263
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    iget-object v12, v12, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 264
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    iget-object v12, v12, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->iconUrls:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 266
    const-string/jumbo v12, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string/jumbo v13, "venues"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 268
    .local v10, "result":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    if-ge v2, v12, :cond_3

    .line 270
    :try_start_1
    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 271
    .local v9, "object":Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 272
    .local v7, "iconUrl":Ljava/lang/String;
    const-string/jumbo v12, "categories"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 273
    const-string/jumbo v12, "categories"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 274
    .local v3, "categories":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 275
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 276
    .local v4, "category":Lorg/json/JSONObject;
    const-string/jumbo v12, "icon"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 277
    const-string/jumbo v12, "icon"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 278
    .local v6, "icon":Lorg/json/JSONObject;
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v13, "%s64%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "prefix"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "suffix"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 282
    .end local v3    # "categories":Lorg/json/JSONArray;
    .end local v4    # "category":Lorg/json/JSONObject;
    .end local v6    # "icon":Lorg/json/JSONObject;
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    iget-object v12, v12, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->iconUrls:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    const-string/jumbo v12, "location"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 285
    .local v8, "location":Lorg/json/JSONObject;
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    .line 286
    .local v11, "venue":Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 287
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    const-string/jumbo v13, "lat"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    iput-wide v14, v12, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 288
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    const-string/jumbo v13, "lng"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    iput-wide v14, v12, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 289
    const-string/jumbo v12, "address"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 290
    const-string/jumbo v12, "address"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->address:Ljava/lang/String;

    .line 300
    :goto_1
    const-string/jumbo v12, "name"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 301
    const-string/jumbo v12, "name"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->title:Ljava/lang/String;

    .line 303
    :cond_1
    const-string/jumbo v12, ""

    iput-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->venue_type:Ljava/lang/String;

    .line 304
    const-string/jumbo v12, "id"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->venue_id:Ljava/lang/String;

    .line 305
    const-string/jumbo v12, "foursquare"

    iput-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->provider:Ljava/lang/String;

    .line 306
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    iget-object v12, v12, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .end local v7    # "iconUrl":Ljava/lang/String;
    .end local v8    # "location":Lorg/json/JSONObject;
    .end local v9    # "object":Lorg/json/JSONObject;
    .end local v11    # "venue":Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 291
    .restart local v7    # "iconUrl":Ljava/lang/String;
    .restart local v8    # "location":Lorg/json/JSONObject;
    .restart local v9    # "object":Lorg/json/JSONObject;
    .restart local v11    # "venue":Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    :cond_2
    const-string/jumbo v12, "city"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 292
    const-string/jumbo v12, "city"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->address:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 307
    .end local v7    # "iconUrl":Ljava/lang/String;
    .end local v8    # "location":Lorg/json/JSONObject;
    .end local v9    # "object":Lorg/json/JSONObject;
    .end local v11    # "venue":Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    :catch_0
    move-exception v5

    .line 308
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 311
    .end local v2    # "a":I
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v10    # "result":Lorg/json/JSONArray;
    :catch_1
    move-exception v5

    .line 312
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 314
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    .line 315
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    invoke-virtual {v12}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->notifyDataSetChanged()V

    .line 316
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    invoke-static {v12}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->access$200(Lorg/telegram/ui/Adapters/BaseLocationAdapter;)Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 317
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    invoke-static {v12}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->access$200(Lorg/telegram/ui/Adapters/BaseLocationAdapter;)Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    iget-object v13, v13, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-interface {v12, v13}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;->didLoadedSearchResult(Ljava/util/ArrayList;)V

    .line 326
    :cond_4
    :goto_3
    return-void

    .line 293
    .restart local v2    # "a":I
    .restart local v7    # "iconUrl":Ljava/lang/String;
    .restart local v8    # "location":Lorg/json/JSONObject;
    .restart local v9    # "object":Lorg/json/JSONObject;
    .restart local v10    # "result":Lorg/json/JSONArray;
    .restart local v11    # "venue":Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    :cond_5
    :try_start_3
    const-string/jumbo v12, "state"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 294
    const-string/jumbo v12, "state"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->address:Ljava/lang/String;

    goto/16 :goto_1

    .line 295
    :cond_6
    const-string/jumbo v12, "country"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 296
    const-string/jumbo v12, "country"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->address:Ljava/lang/String;

    goto/16 :goto_1

    .line 298
    :cond_7
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v13, "%f,%f"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->address:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 320
    .end local v2    # "a":I
    .end local v7    # "iconUrl":Ljava/lang/String;
    .end local v8    # "location":Lorg/json/JSONObject;
    .end local v9    # "object":Lorg/json/JSONObject;
    .end local v10    # "result":Lorg/json/JSONArray;
    .end local v11    # "venue":Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    .line 321
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    invoke-virtual {v12}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->notifyDataSetChanged()V

    .line 322
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    invoke-static {v12}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->access$200(Lorg/telegram/ui/Adapters/BaseLocationAdapter;)Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 323
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    invoke-static {v12}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->access$200(Lorg/telegram/ui/Adapters/BaseLocationAdapter;)Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    iget-object v13, v13, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-interface {v12, v13}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;->didLoadedSearchResult(Ljava/util/ArrayList;)V

    goto/16 :goto_3
.end method
