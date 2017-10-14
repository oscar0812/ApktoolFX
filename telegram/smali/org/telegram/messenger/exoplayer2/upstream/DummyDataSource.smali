.class public final Lorg/telegram/messenger/exoplayer2/upstream/DummyDataSource;
.super Ljava/lang/Object;
.source "DummyDataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# static fields
.field public static final FACTORY:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

.field public static final INSTANCE:Lorg/telegram/messenger/exoplayer2/upstream/DummyDataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DummyDataSource;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DummyDataSource;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/upstream/DummyDataSource;->INSTANCE:Lorg/telegram/messenger/exoplayer2/upstream/DummyDataSource;

    .line 29
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DummyDataSource$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DummyDataSource$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/upstream/DummyDataSource;->FACTORY:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DummyDataSource$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/messenger/exoplayer2/upstream/DummyDataSource$1;

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/DummyDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J
    .locals 2
    .param p1, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Dummy source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
