.class public Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
.super Lorg/telegram/messenger/audioinfo/m4a/MP4Box;
.source "MP4Atom.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/messenger/audioinfo/m4a/MP4Box",
        "<",
        "Lorg/telegram/messenger/audioinfo/util/RangeInputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/audioinfo/util/RangeInputStream;Lorg/telegram/messenger/audioinfo/m4a/MP4Box;Ljava/lang/String;)V
    .locals 0
    .param p1, "input"    # Lorg/telegram/messenger/audioinfo/util/RangeInputStream;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/audioinfo/util/RangeInputStream;",
            "Lorg/telegram/messenger/audioinfo/m4a/MP4Box",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "parent":Lorg/telegram/messenger/audioinfo/m4a/MP4Box;, "Lorg/telegram/messenger/audioinfo/m4a/MP4Box<*>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;-><init>(Lorg/telegram/messenger/audioinfo/util/PositionInputStream;Lorg/telegram/messenger/audioinfo/m4a/MP4Box;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method private appendPath(Ljava/lang/StringBuffer;Lorg/telegram/messenger/audioinfo/m4a/MP4Box;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "s"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Lorg/telegram/messenger/audioinfo/m4a/MP4Box",
            "<*>;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .prologue
    .line 128
    .local p2, "box":Lorg/telegram/messenger/audioinfo/m4a/MP4Box;, "Lorg/telegram/messenger/audioinfo/m4a/MP4Box<*>;"
    invoke-virtual {p2}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->getParent()Lorg/telegram/messenger/audioinfo/m4a/MP4Box;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p2}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->getParent()Lorg/telegram/messenger/audioinfo/m4a/MP4Box;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->appendPath(Ljava/lang/StringBuffer;Lorg/telegram/messenger/audioinfo/m4a/MP4Box;)Ljava/lang/StringBuffer;

    .line 130
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLength()J
    .locals 4

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getInput()Lorg/telegram/messenger/audioinfo/util/PositionInputStream;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->getPosition()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getInput()Lorg/telegram/messenger/audioinfo/util/PositionInputStream;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->getRemainingLength()J

    move-result-wide v0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getOffset()J
    .locals 4

    .prologue
    .line 34
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getParent()Lorg/telegram/messenger/audioinfo/m4a/MP4Box;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->getPosition()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v0, p0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->appendPath(Ljava/lang/StringBuffer;Lorg/telegram/messenger/audioinfo/m4a/MP4Box;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemaining()J
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getInput()Lorg/telegram/messenger/audioinfo/util/PositionInputStream;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->getRemainingLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasMoreChildren()Z
    .locals 4

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getChild()Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getChild()Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getRemaining()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getRemaining()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public nextChildUpTo(Ljava/lang/String;)Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .locals 6
    .param p1, "expectedTypeExpression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getRemaining()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 47
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->nextChild()Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    .line 48
    .local v0, "atom":Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    return-object v0

    .line 52
    .end local v0    # "atom":Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "atom type mismatch, not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->data:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->data:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    return v0
.end method

.method public readBytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getRemaining()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public readBytes(I)[B
    .locals 2
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    new-array v0, p1, [B

    .line 77
    .local v0, "bytes":[B
    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->data:Ljava/io/DataInput;

    invoke-interface {v1, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 78
    return-object v0
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->data:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    return v0
.end method

.method public readIntegerFixedPoint()Ljava/math/BigDecimal;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->data:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readShort()S

    move-result v1

    .line 93
    .local v1, "integer":I
    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->data:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    .line 94
    .local v0, "decimal":I
    new-instance v2, Ljava/math/BigDecimal;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->data:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->data:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readShort()S

    move-result v0

    return v0
.end method

.method public readShortFixedPoint()Ljava/math/BigDecimal;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->data:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 87
    .local v1, "integer":I
    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->data:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 88
    .local v0, "decimal":I
    new-instance v2, Ljava/math/BigDecimal;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public readString(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "len"    # I
    .param p2, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 98
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readBytes(I)[B

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 99
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 100
    .local v0, "end":I
    if-gez v0, :cond_0

    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getRemaining()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public skip()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getRemaining()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 121
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getInput()Lorg/telegram/messenger/audioinfo/util/PositionInputStream;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getRemaining()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->skip(J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/io/EOFException;

    const-string/jumbo v1, "Cannot skip atom"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    return-void
.end method

.method public skip(I)V
    .locals 4
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, "total":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 110
    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->data:Ljava/io/DataInput;

    sub-int v3, p1, v1

    invoke-interface {v2, v3}, Ljava/io/DataInput;->skipBytes(I)I

    move-result v0

    .line 111
    .local v0, "current":I
    if-lez v0, :cond_0

    .line 112
    add-int/2addr v1, v0

    goto :goto_0

    .line 114
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 117
    .end local v0    # "current":I
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 141
    .local v0, "s":Ljava/lang/StringBuffer;
    invoke-direct {p0, v0, p0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->appendPath(Ljava/lang/StringBuffer;Lorg/telegram/messenger/audioinfo/m4a/MP4Box;)Ljava/lang/StringBuffer;

    .line 142
    const-string/jumbo v1, "[off="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getOffset()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 144
    const-string/jumbo v1, ",pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 146
    const-string/jumbo v1, ",len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getLength()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 148
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
