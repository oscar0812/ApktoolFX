.class public Lnet/hockeyapp/android/metrics/model/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Lnet/hockeyapp/android/metrics/model/IJsonSerializable;
.implements Ljava/io/Serializable;


# instance fields
.field private accountAcquisitionDate:Ljava/lang/String;

.field private accountId:Ljava/lang/String;

.field private anonUserAcquisitionDate:Ljava/lang/String;

.field private authUserAcquisitionDate:Ljava/lang/String;

.field private authUserId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private storeRegion:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/User;->InitializeFields()V

    .line 60
    return-void
.end method


# virtual methods
.method protected InitializeFields()V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

.method public addToHashMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->accountAcquisitionDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 182
    const-string/jumbo v0, "ai.user.accountAcquisitionDate"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->accountAcquisitionDate:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->accountId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 185
    const-string/jumbo v0, "ai.user.accountId"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->accountId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_1
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->userAgent:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 188
    const-string/jumbo v0, "ai.user.userAgent"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->userAgent:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_2
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->id:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 191
    const-string/jumbo v0, "ai.user.id"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->id:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_3
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->storeRegion:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 194
    const-string/jumbo v0, "ai.user.storeRegion"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->storeRegion:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_4
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->authUserId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 197
    const-string/jumbo v0, "ai.user.authUserId"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->authUserId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_5
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->anonUserAcquisitionDate:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 200
    const-string/jumbo v0, "ai.user.anonUserAcquisitionDate"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->anonUserAcquisitionDate:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_6
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->authUserAcquisitionDate:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 203
    const-string/jumbo v0, "ai.user.authUserAcquisitionDate"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->authUserAcquisitionDate:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_7
    return-void
.end method

.method public getAccountAcquisitionDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->accountAcquisitionDate:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getAnonUserAcquisitionDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->anonUserAcquisitionDate:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthUserAcquisitionDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->authUserAcquisitionDate:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->authUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->storeRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/User;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public serialize(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    if-nez p1, :cond_0

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "writer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 220
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/User;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    .line 221
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 222
    return-void
.end method

.method protected serializeContent(Ljava/io/Writer;)Ljava/lang/String;
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    const-string/jumbo v0, ""

    .line 231
    .local v0, "prefix":Ljava/lang/String;
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->accountAcquisitionDate:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.user.accountAcquisitionDate\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->accountAcquisitionDate:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 234
    const-string/jumbo v0, ","

    .line 237
    :cond_0
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->accountId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.user.accountId\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->accountId:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 240
    const-string/jumbo v0, ","

    .line 243
    :cond_1
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->userAgent:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.user.userAgent\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->userAgent:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 246
    const-string/jumbo v0, ","

    .line 249
    :cond_2
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->id:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.user.id\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->id:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 252
    const-string/jumbo v0, ","

    .line 255
    :cond_3
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->storeRegion:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.user.storeRegion\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->storeRegion:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 258
    const-string/jumbo v0, ","

    .line 261
    :cond_4
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->authUserId:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.user.authUserId\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->authUserId:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 264
    const-string/jumbo v0, ","

    .line 267
    :cond_5
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->anonUserAcquisitionDate:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.user.anonUserAcquisitionDate\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->anonUserAcquisitionDate:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 270
    const-string/jumbo v0, ","

    .line 273
    :cond_6
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->authUserAcquisitionDate:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.user.authUserAcquisitionDate\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/User;->authUserAcquisitionDate:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 276
    const-string/jumbo v0, ","

    .line 279
    :cond_7
    return-object v0
.end method

.method public setAccountAcquisitionDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/User;->accountAcquisitionDate:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/User;->accountId:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setAnonUserAcquisitionDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/User;->anonUserAcquisitionDate:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setAuthUserAcquisitionDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/User;->authUserAcquisitionDate:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setAuthUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/User;->authUserId:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/User;->id:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setStoreRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/User;->storeRegion:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/User;->userAgent:Ljava/lang/String;

    .line 102
    return-void
.end method
