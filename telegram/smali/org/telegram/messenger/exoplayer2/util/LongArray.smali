.class public final Lorg/telegram/messenger/exoplayer2/util/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x20


# instance fields
.field private size:I

.field private values:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/LongArray;-><init>(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array v0, p1, [J

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/LongArray;->values:[J

    .line 39
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/LongArray;->size:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/LongArray;->values:[J

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 48
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/LongArray;->values:[J

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/LongArray;->size:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/LongArray;->values:[J

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/LongArray;->values:[J

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/LongArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/LongArray;->size:I

    aput-wide p1, v0, v1

    .line 51
    return-void
.end method

.method public get(I)J
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 62
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/LongArray;->size:I

    if-lt p1, v0, :cond_1

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/LongArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/LongArray;->values:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/LongArray;->size:I

    return v0
.end method

.method public toArray()[J
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/LongArray;->values:[J

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/LongArray;->size:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method
