.class public Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SchemeValuePair;
.super Ljava/lang/Object;
.source "SchemeValuePair.java"


# instance fields
.field public final schemeIdUri:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "schemeIdUri"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SchemeValuePair;->schemeIdUri:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SchemeValuePair;->value:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    if-ne p0, p1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v1

    .line 38
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 39
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 41
    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SchemeValuePair;

    .line 42
    .local v0, "other":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SchemeValuePair;
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SchemeValuePair;->schemeIdUri:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SchemeValuePair;->schemeIdUri:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SchemeValuePair;->value:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SchemeValuePair;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 47
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SchemeValuePair;->schemeIdUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SchemeValuePair;->schemeIdUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SchemeValuePair;->value:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SchemeValuePair;->value:Ljava/lang/String;

    .line 48
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 47
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
