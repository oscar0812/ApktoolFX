.class public final Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
.super Ljava/lang/Object;
.source "RangedUri.java"


# instance fields
.field private hashCode:I

.field public final length:J

.field private final referenceUri:Ljava/lang/String;

.field public final start:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "referenceUri"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "length"    # J

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "referenceUri":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    .line 51
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->start:J

    .line 52
    iput-wide p4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->length:J

    .line 53
    return-void
.end method


# virtual methods
.method public attemptMerge(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .locals 8
    .param p1, "other"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .param p2, "baseUri"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-wide/16 v4, -0x1

    .line 89
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->resolveUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "resolvedUri":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->resolveUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-object v0

    .line 92
    :cond_1
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->length:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->length:J

    add-long/2addr v2, v6

    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->start:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    .line 93
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->length:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_2

    :goto_1
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_2
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->length:J

    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->length:J

    add-long/2addr v4, v6

    goto :goto_1

    .line 95
    :cond_3
    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->length:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->length:J

    add-long/2addr v2, v6

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->start:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    .line 96
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->length:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_4

    :goto_2
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_4
    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->length:J

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->length:J

    add-long/2addr v4, v6

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    if-ne p0, p1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v1

    .line 120
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 121
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 123
    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    .line 124
    .local v0, "other":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->start:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->length:J

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->length:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 105
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->hashCode:I

    if-nez v1, :cond_0

    .line 106
    const/16 v0, 0x11

    .line 107
    .local v0, "result":I
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->start:J

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    .line 108
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->length:J

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 109
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 110
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->hashCode:I

    .line 112
    .end local v0    # "result":I
    :cond_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->hashCode:I

    return v1
.end method

.method public resolveUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/messenger/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public resolveUriString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/messenger/exoplayer2/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
