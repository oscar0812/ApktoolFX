.class public final Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;
.super Ljava/lang/Object;
.source "UrlTemplate.java"


# static fields
.field private static final BANDWIDTH:Ljava/lang/String; = "Bandwidth"

.field private static final BANDWIDTH_ID:I = 0x3

.field private static final DEFAULT_FORMAT_TAG:Ljava/lang/String; = "%01d"

.field private static final ESCAPED_DOLLAR:Ljava/lang/String; = "$$"

.field private static final NUMBER:Ljava/lang/String; = "Number"

.field private static final NUMBER_ID:I = 0x2

.field private static final REPRESENTATION:Ljava/lang/String; = "RepresentationID"

.field private static final REPRESENTATION_ID:I = 0x1

.field private static final TIME:Ljava/lang/String; = "Time"

.field private static final TIME_ID:I = 0x4


# instance fields
.field private final identifierCount:I

.field private final identifierFormatTags:[Ljava/lang/String;

.field private final identifiers:[I

.field private final urlPieces:[Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;[I[Ljava/lang/String;I)V
    .locals 0
    .param p1, "urlPieces"    # [Ljava/lang/String;
    .param p2, "identifiers"    # [I
    .param p3, "identifierFormatTags"    # [Ljava/lang/String;
    .param p4, "identifierCount"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->urlPieces:[Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->identifiers:[I

    .line 68
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->identifierFormatTags:[Ljava/lang/String;

    .line 69
    iput p4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->identifierCount:I

    .line 70
    return-void
.end method

.method public static compile(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;
    .locals 6
    .param p0, "template"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x4

    .line 54
    const/4 v4, 0x5

    new-array v3, v4, [Ljava/lang/String;

    .line 55
    .local v3, "urlPieces":[Ljava/lang/String;
    new-array v2, v5, [I

    .line 56
    .local v2, "identifiers":[I
    new-array v1, v5, [Ljava/lang/String;

    .line 57
    .local v1, "identifierFormatTags":[Ljava/lang/String;
    invoke-static {p0, v3, v2, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->parseTemplate(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)I

    move-result v0

    .line 58
    .local v0, "identifierCount":I
    new-instance v4, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;

    invoke-direct {v4, v3, v2, v1, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;-><init>([Ljava/lang/String;[I[Ljava/lang/String;I)V

    return-object v4
.end method

.method private static parseTemplate(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)I
    .locals 10
    .param p0, "template"    # Ljava/lang/String;
    .param p1, "urlPieces"    # [Ljava/lang/String;
    .param p2, "identifiers"    # [I
    .param p3, "identifierFormatTags"    # [Ljava/lang/String;

    .prologue
    .line 118
    const/4 v7, 0x0

    const-string/jumbo v8, ""

    aput-object v8, p1, v7

    .line 119
    const/4 v6, 0x0

    .line 120
    .local v6, "templateIndex":I
    const/4 v4, 0x0

    .line 121
    .local v4, "identifierCount":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 122
    const-string/jumbo v7, "$"

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 123
    .local v0, "dollarIndex":I
    const/4 v7, -0x1

    if-ne v0, v7, :cond_0

    .line 124
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, p1, v4

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_0

    .line 126
    :cond_0
    if-eq v0, v6, :cond_1

    .line 127
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, p1, v4

    .line 128
    move v6, v0

    goto :goto_0

    .line 129
    :cond_1
    const-string/jumbo v7, "$$"

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 130
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "$"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, p1, v4

    .line 131
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 133
    :cond_2
    const-string/jumbo v7, "$"

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 134
    .local v5, "secondIndex":I
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "identifier":Ljava/lang/String;
    const-string/jumbo v7, "RepresentationID"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 136
    const/4 v7, 0x1

    aput v7, p2, v4

    .line 162
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 163
    const-string/jumbo v7, ""

    aput-object v7, p1, v4

    .line 164
    add-int/lit8 v6, v5, 0x1

    goto/16 :goto_0

    .line 138
    :cond_3
    const-string/jumbo v7, "%0"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 139
    .local v2, "formatTagIndex":I
    const-string/jumbo v1, "%01d"

    .line 140
    .local v1, "formatTag":Ljava/lang/String;
    const/4 v7, -0x1

    if-eq v2, v7, :cond_5

    .line 141
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    const-string/jumbo v7, "d"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 143
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "d"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v3, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 147
    :cond_5
    const/4 v7, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_6
    :goto_2
    packed-switch v7, :pswitch_data_0

    .line 158
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid template: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 147
    :sswitch_0
    const-string/jumbo v8, "Number"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v7, 0x0

    goto :goto_2

    :sswitch_1
    const-string/jumbo v8, "Bandwidth"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v7, 0x1

    goto :goto_2

    :sswitch_2
    const-string/jumbo v8, "Time"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v7, 0x2

    goto :goto_2

    .line 149
    :pswitch_0
    const/4 v7, 0x2

    aput v7, p2, v4

    .line 160
    :goto_3
    aput-object v1, p3, v4

    goto/16 :goto_1

    .line 152
    :pswitch_1
    const/4 v7, 0x3

    aput v7, p2, v4

    goto :goto_3

    .line 155
    :pswitch_2
    const/4 v7, 0x4

    aput v7, p2, v4

    goto :goto_3

    .line 167
    .end local v0    # "dollarIndex":I
    .end local v1    # "formatTag":Ljava/lang/String;
    .end local v2    # "formatTagIndex":I
    .end local v3    # "identifier":Ljava/lang/String;
    .end local v5    # "secondIndex":I
    :cond_7
    return v4

    .line 147
    :sswitch_data_0
    .sparse-switch
        -0x74423897 -> :sswitch_0
        0x27c6ed -> :sswitch_2
        0x246e091 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public buildUri(Ljava/lang/String;IIJ)Ljava/lang/String;
    .locals 8
    .param p1, "representationId"    # Ljava/lang/String;
    .param p2, "segmentNumber"    # I
    .param p3, "bandwidth"    # I
    .param p4, "time"    # J

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->identifierCount:I

    if-ge v1, v2, :cond_4

    .line 86
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->urlPieces:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->identifiers:[I

    aget v2, v2, v1

    if-ne v2, v6, :cond_1

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->identifiers:[I

    aget v2, v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 90
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->identifierFormatTags:[Ljava/lang/String;

    aget-object v3, v3, v1

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 91
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->identifiers:[I

    aget v2, v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 92
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->identifierFormatTags:[Ljava/lang/String;

    aget-object v3, v3, v1

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 93
    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->identifiers:[I

    aget v2, v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 94
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->identifierFormatTags:[Ljava/lang/String;

    aget-object v3, v3, v1

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 97
    :cond_4
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->urlPieces:[Ljava/lang/String;

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->identifierCount:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
