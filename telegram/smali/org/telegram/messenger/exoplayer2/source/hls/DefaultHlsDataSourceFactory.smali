.class public final Lorg/telegram/messenger/exoplayer2/source/hls/DefaultHlsDataSourceFactory;
.super Ljava/lang/Object;
.source "DefaultHlsDataSourceFactory.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/hls/HlsDataSourceFactory;


# instance fields
.field private final dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;)V
    .locals 0
    .param p1, "dataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/DefaultHlsDataSourceFactory;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    .line 32
    return-void
.end method


# virtual methods
.method public createDataSource(I)Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .locals 1
    .param p1, "dataType"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/DefaultHlsDataSourceFactory;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-result-object v0

    return-object v0
.end method
