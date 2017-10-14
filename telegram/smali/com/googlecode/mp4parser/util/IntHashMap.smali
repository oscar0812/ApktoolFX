.class public Lcom/googlecode/mp4parser/util/IntHashMap;
.super Ljava/lang/Object;
.source "IntHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/util/IntHashMap$Entry;
    }
.end annotation


# instance fields
.field private transient count:I

.field private loadFactor:F

.field private transient table:[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 94
    const/16 v0, 0x14

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lcom/googlecode/mp4parser/util/IntHashMap;-><init>(IF)V

    .line 95
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 106
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lcom/googlecode/mp4parser/util/IntHashMap;-><init>(IF)V

    .line 107
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    if-gez p1, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Illegal Capacity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Illegal Load: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    if-nez p1, :cond_2

    .line 127
    const/4 p1, 0x1

    .line 130
    :cond_2
    iput p2, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->loadFactor:F

    .line 131
    new-array v0, p1, [Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    iput-object v0, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->table:[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .line 132
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->threshold:I

    .line 133
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 3

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->table:[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .line 351
    .local v1, "tab":[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;
    array-length v0, v1

    .local v0, "index":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 354
    const/4 v2, 0x0

    iput v2, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    .line 352
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    aput-object v2, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 350
    .end local v0    # "index":I
    .end local v1    # "tab":[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 176
    :cond_0
    iget-object v3, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->table:[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .line 177
    .local v3, "tab":[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;
    array-length v1, v3

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-gtz v2, :cond_1

    .line 184
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 178
    :cond_1
    aget-object v0, v3, v1

    .local v0, "e":Lcom/googlecode/mp4parser/util/IntHashMap$Entry;
    :goto_2
    if-nez v0, :cond_2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 179
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_2
    iget-object v4, v0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 180
    const/4 v4, 0x1

    goto :goto_1

    .line 178
    :cond_3
    iget-object v0, v0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->next:Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    goto :goto_2
.end method

.method public containsKey(I)Z
    .locals 6
    .param p1, "key"    # I

    .prologue
    .line 212
    iget-object v3, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->table:[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .line 213
    .local v3, "tab":[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;
    move v1, p1

    .line 214
    .local v1, "hash":I
    const v4, 0x7fffffff

    and-int/2addr v4, v1

    array-length v5, v3

    rem-int v2, v4, v5

    .line 215
    .local v2, "index":I
    aget-object v0, v3, v2

    .local v0, "e":Lcom/googlecode/mp4parser/util/IntHashMap$Entry;
    :goto_0
    if-nez v0, :cond_0

    .line 220
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 216
    :cond_0
    iget v4, v0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->hash:I

    if-ne v4, v1, :cond_1

    .line 217
    const/4 v4, 0x1

    goto :goto_1

    .line 215
    :cond_1
    iget-object v0, v0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->next:Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/util/IntHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # I

    .prologue
    .line 233
    iget-object v3, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->table:[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .line 234
    .local v3, "tab":[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;
    move v1, p1

    .line 235
    .local v1, "hash":I
    const v4, 0x7fffffff

    and-int/2addr v4, v1

    array-length v5, v3

    rem-int v2, v4, v5

    .line 236
    .local v2, "index":I
    aget-object v0, v3, v2

    .local v0, "e":Lcom/googlecode/mp4parser/util/IntHashMap$Entry;
    :goto_0
    if-nez v0, :cond_0

    .line 241
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 237
    :cond_0
    iget v4, v0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->hash:I

    if-ne v4, v1, :cond_1

    .line 238
    iget-object v4, v0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->value:Ljava/lang/Object;

    goto :goto_1

    .line 236
    :cond_1
    iget-object v0, v0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->next:Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->count:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const v7, 0x7fffffff

    .line 290
    iget-object v4, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->table:[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .line 291
    .local v4, "tab":[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;
    move v1, p1

    .line 292
    .local v1, "hash":I
    and-int v5, v1, v7

    array-length v6, v4

    rem-int v2, v5, v6

    .line 293
    .local v2, "index":I
    aget-object v0, v4, v2

    .local v0, "e":Lcom/googlecode/mp4parser/util/IntHashMap$Entry;
    :goto_0
    if-nez v0, :cond_1

    .line 301
    iget v5, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->count:I

    iget v6, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->threshold:I

    if-lt v5, v6, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/util/IntHashMap;->rehash()V

    .line 305
    iget-object v4, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->table:[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .line 306
    and-int v5, v1, v7

    array-length v6, v4

    rem-int v2, v5, v6

    .line 310
    :cond_0
    new-instance v0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .end local v0    # "e":Lcom/googlecode/mp4parser/util/IntHashMap$Entry;
    aget-object v5, v4, v2

    invoke-direct {v0, v1, p1, p2, v5}, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;-><init>(IILjava/lang/Object;Lcom/googlecode/mp4parser/util/IntHashMap$Entry;)V

    .line 311
    .restart local v0    # "e":Lcom/googlecode/mp4parser/util/IntHashMap$Entry;
    aput-object v0, v4, v2

    .line 312
    iget v5, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->count:I

    .line 313
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 294
    :cond_1
    iget v5, v0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->hash:I

    if-ne v5, v1, :cond_2

    .line 295
    iget-object v3, v0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 296
    .local v3, "old":Ljava/lang/Object;
    iput-object p2, v0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->value:Ljava/lang/Object;

    goto :goto_1

    .line 293
    .end local v3    # "old":Ljava/lang/Object;
    :cond_2
    iget-object v0, v0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->next:Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    goto :goto_0
.end method

.method protected rehash()V
    .locals 11

    .prologue
    .line 253
    iget-object v9, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->table:[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    array-length v7, v9

    .line 254
    .local v7, "oldCapacity":I
    iget-object v8, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->table:[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .line 256
    .local v8, "oldMap":[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;
    mul-int/lit8 v9, v7, 0x2

    add-int/lit8 v4, v9, 0x1

    .line 257
    .local v4, "newCapacity":I
    new-array v5, v4, [Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .line 259
    .local v5, "newMap":[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;
    int-to-float v9, v4

    iget v10, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->loadFactor:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->threshold:I

    .line 260
    iput-object v5, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->table:[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .line 262
    move v1, v7

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-gtz v2, :cond_0

    .line 272
    return-void

    .line 263
    :cond_0
    aget-object v6, v8, v1

    .local v6, "old":Lcom/googlecode/mp4parser/util/IntHashMap$Entry;
    :goto_1
    if-nez v6, :cond_1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 264
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    move-object v0, v6

    .line 265
    .local v0, "e":Lcom/googlecode/mp4parser/util/IntHashMap$Entry;
    iget-object v6, v6, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->next:Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .line 267
    iget v9, v0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->hash:I

    const v10, 0x7fffffff

    and-int/2addr v9, v10

    rem-int v3, v9, v4

    .line 268
    .local v3, "index":I
    aget-object v9, v5, v3

    iput-object v9, v0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->next:Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .line 269
    aput-object v0, v5, v3

    goto :goto_1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # I

    .prologue
    const/4 v6, 0x0

    .line 327
    iget-object v5, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->table:[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .line 328
    .local v5, "tab":[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;
    move v1, p1

    .line 329
    .local v1, "hash":I
    const v7, 0x7fffffff

    and-int/2addr v7, v1

    array-length v8, v5

    rem-int v2, v7, v8

    .line 330
    .local v2, "index":I
    aget-object v0, v5, v2

    .local v0, "e":Lcom/googlecode/mp4parser/util/IntHashMap$Entry;
    const/4 v4, 0x0

    .local v4, "prev":Lcom/googlecode/mp4parser/util/IntHashMap$Entry;
    :goto_0
    if-nez v0, :cond_0

    move-object v3, v6

    .line 343
    :goto_1
    return-object v3

    .line 331
    :cond_0
    iget v7, v0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->hash:I

    if-ne v7, v1, :cond_2

    .line 332
    if-eqz v4, :cond_1

    .line 333
    iget-object v7, v0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->next:Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    iput-object v7, v4, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->next:Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .line 337
    :goto_2
    iget v7, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->count:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->count:I

    .line 338
    iget-object v3, v0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 339
    .local v3, "oldValue":Ljava/lang/Object;
    iput-object v6, v0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->value:Ljava/lang/Object;

    goto :goto_1

    .line 335
    .end local v3    # "oldValue":Ljava/lang/Object;
    :cond_1
    iget-object v7, v0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->next:Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    aput-object v7, v5, v2

    goto :goto_2

    .line 330
    :cond_2
    move-object v4, v0

    iget-object v0, v0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->next:Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->count:I

    return v0
.end method
