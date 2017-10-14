.class public final Lnet/hockeyapp/android/metrics/JsonHelper;
.super Ljava/lang/Object;
.source "JsonHelper.java"


# static fields
.field private static final CONTROL_CHARACTERS:[Ljava/lang/String;

.field private static final CONTROL_CHARACTER_RANGE:I = 0x80


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 21
    const/16 v1, 0x80

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lnet/hockeyapp/android/metrics/JsonHelper;->CONTROL_CHARACTERS:[Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    .line 25
    sget-object v1, Lnet/hockeyapp/android/metrics/JsonHelper;->CONTROL_CHARACTERS:[Ljava/lang/String;

    const-string/jumbo v2, "\\u%04X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    sget-object v1, Lnet/hockeyapp/android/metrics/JsonHelper;->CONTROL_CHARACTERS:[Ljava/lang/String;

    const/16 v2, 0x22

    const-string/jumbo v3, "\\\""

    aput-object v3, v1, v2

    .line 30
    sget-object v1, Lnet/hockeyapp/android/metrics/JsonHelper;->CONTROL_CHARACTERS:[Ljava/lang/String;

    const/16 v2, 0x5c

    const-string/jumbo v3, "\\\\"

    aput-object v3, v1, v2

    .line 31
    sget-object v1, Lnet/hockeyapp/android/metrics/JsonHelper;->CONTROL_CHARACTERS:[Ljava/lang/String;

    const/16 v2, 0x8

    const-string/jumbo v3, "\\b"

    aput-object v3, v1, v2

    .line 32
    sget-object v1, Lnet/hockeyapp/android/metrics/JsonHelper;->CONTROL_CHARACTERS:[Ljava/lang/String;

    const/16 v2, 0xc

    const-string/jumbo v3, "\\f"

    aput-object v3, v1, v2

    .line 33
    sget-object v1, Lnet/hockeyapp/android/metrics/JsonHelper;->CONTROL_CHARACTERS:[Ljava/lang/String;

    const/16 v2, 0xa

    const-string/jumbo v3, "\\n"

    aput-object v3, v1, v2

    .line 34
    sget-object v1, Lnet/hockeyapp/android/metrics/JsonHelper;->CONTROL_CHARACTERS:[Ljava/lang/String;

    const/16 v2, 0xd

    const-string/jumbo v3, "\\r"

    aput-object v3, v1, v2

    .line 35
    sget-object v1, Lnet/hockeyapp/android/metrics/JsonHelper;->CONTROL_CHARACTERS:[Ljava/lang/String;

    const/16 v2, 0x9

    const-string/jumbo v3, "\\t"

    aput-object v3, v1, v2

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static convert(C)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # C

    .prologue
    .line 104
    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Ljava/lang/Double;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/Double;

    .prologue
    .line 124
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Ljava/lang/Float;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Float;

    .prologue
    .line 114
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Integer;

    .prologue
    .line 84
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Ljava/lang/Long;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/Long;

    .prologue
    .line 94
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 144
    if-nez p0, :cond_0

    .line 145
    const-string/jumbo v0, "null"

    .line 149
    :goto_0
    return-object v0

    .line 146
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 147
    const-string/jumbo v0, "\"\""

    goto :goto_0

    .line 149
    :cond_1
    invoke-static {p0}, Lnet/hockeyapp/android/metrics/JsonHelper;->escapeJSON(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static convert(Z)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 134
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static escapeJSON(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 54
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 55
    .local v1, "charIndex":C
    const/16 v4, 0x80

    if-ge v1, v4, :cond_1

    .line 56
    sget-object v4, Lnet/hockeyapp/android/metrics/JsonHelper;->CONTROL_CHARACTERS:[Ljava/lang/String;

    aget-object v3, v4, v1

    .line 57
    .local v3, "replacement":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .end local v3    # "replacement":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    .restart local v3    # "replacement":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 62
    .end local v3    # "replacement":Ljava/lang/String;
    :cond_1
    const/16 v4, 0x2028

    if-ne v1, v4, :cond_2

    .line 64
    const-string/jumbo v4, "\\u2028"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 65
    :cond_2
    const/16 v4, 0x2029

    if-ne v1, v4, :cond_3

    .line 67
    const-string/jumbo v4, "\\u2029"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 73
    .end local v1    # "charIndex":C
    :cond_4
    const-string/jumbo v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static writeDictionary(Ljava/io/Writer;Ljava/util/Map;)V
    .locals 6
    .param p0, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Writer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 176
    :cond_0
    const-string/jumbo v4, "null"

    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 205
    :cond_1
    :goto_0
    return-void

    .line 178
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 179
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 182
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 183
    const-string/jumbo v4, "{"

    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 185
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, "item":Ljava/lang/Object;, "TT;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 188
    const-string/jumbo v4, ":"

    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 189
    invoke-static {p0, v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->writeItem(Ljava/io/Writer;Ljava/lang/Object;)V

    .line 191
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 192
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "key":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 194
    .restart local v2    # "key":Ljava/lang/String;
    const-string/jumbo v4, ","

    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 196
    const-string/jumbo v4, ":"

    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 198
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 199
    invoke-static {p0, v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->writeItem(Ljava/io/Writer;Ljava/lang/Object;)V

    goto :goto_1

    .line 202
    :cond_3
    const-string/jumbo v4, "}"

    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static writeItem(Ljava/io/Writer;Ljava/lang/Object;)V
    .locals 3
    .param p0, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Writer;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "item":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_5

    .line 246
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 247
    check-cast p1, Ljava/lang/String;

    .end local p1    # "item":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 262
    :goto_0
    return-void

    .line 248
    .restart local p1    # "item":Ljava/lang/Object;, "TT;"
    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 249
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "item":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    .restart local p1    # "item":Ljava/lang/Object;, "TT;"
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 251
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "item":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 252
    .restart local p1    # "item":Ljava/lang/Object;, "TT;"
    :cond_2
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 253
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "item":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 254
    .restart local p1    # "item":Ljava/lang/Object;, "TT;"
    :cond_3
    instance-of v0, p1, Lnet/hockeyapp/android/metrics/model/IJsonSerializable;

    if-eqz v0, :cond_4

    .line 255
    check-cast p1, Lnet/hockeyapp/android/metrics/model/IJsonSerializable;

    .end local p1    # "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p0}, Lnet/hockeyapp/android/metrics/model/IJsonSerializable;->serialize(Ljava/io/Writer;)V

    goto :goto_0

    .line 257
    .restart local p1    # "item":Ljava/lang/Object;, "TT;"
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot serialize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_5
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static writeJsonSerializable(Ljava/io/Writer;Lnet/hockeyapp/android/metrics/model/IJsonSerializable;)V
    .locals 0
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "value"    # Lnet/hockeyapp/android/metrics/model/IJsonSerializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    if-eqz p1, :cond_0

    .line 163
    invoke-interface {p1, p0}, Lnet/hockeyapp/android/metrics/model/IJsonSerializable;->serialize(Ljava/io/Writer;)V

    .line 165
    :cond_0
    return-void
.end method

.method public static writeList(Ljava/io/Writer;Ljava/util/List;)V
    .locals 3
    .param p0, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/hockeyapp/android/metrics/model/IJsonSerializable;",
            ">(",
            "Ljava/io/Writer;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 216
    :cond_0
    const-string/jumbo v2, "null"

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 234
    :cond_1
    :goto_0
    return-void

    .line 218
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 219
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    const-string/jumbo v2, "["

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 222
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/metrics/model/IJsonSerializable;

    .line 223
    .local v0, "item":Lnet/hockeyapp/android/metrics/model/IJsonSerializable;
    invoke-interface {v0, p0}, Lnet/hockeyapp/android/metrics/model/IJsonSerializable;->serialize(Ljava/io/Writer;)V

    .line 225
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 226
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Lnet/hockeyapp/android/metrics/model/IJsonSerializable;
    check-cast v0, Lnet/hockeyapp/android/metrics/model/IJsonSerializable;

    .line 227
    .restart local v0    # "item":Lnet/hockeyapp/android/metrics/model/IJsonSerializable;
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 228
    invoke-interface {v0, p0}, Lnet/hockeyapp/android/metrics/model/IJsonSerializable;->serialize(Ljava/io/Writer;)V

    goto :goto_1

    .line 231
    :cond_3
    const-string/jumbo v2, "]"

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
