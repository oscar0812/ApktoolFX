.class public final Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field private static final FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lorg/telegram/messenger/exoplayer2/extractor/Extractor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fragmentedMp4Flags:I

.field private matroskaFlags:I

.field private mp3Flags:I

.field private tsFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, "flacExtractorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/telegram/messenger/exoplayer2/extractor/Extractor;>;"
    :try_start_0
    const-string/jumbo v1, "org.telegram.messenger.exoplayer2.ext.flac.FlacExtractor"

    .line 57
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_0
    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;->FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .line 65
    return-void

    .line 61
    :catch_0
    move-exception v1

    goto :goto_0

    .line 59
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized createExtractors()[Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    .locals 5

    .prologue
    const/16 v2, 0xb

    .line 126
    monitor-enter p0

    :try_start_0
    sget-object v3, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;->FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    if-nez v3, :cond_1

    :goto_0
    new-array v1, v2, [Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 127
    .local v1, "extractors":[Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    const/4 v2, 0x0

    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;->matroskaFlags:I

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>(I)V

    aput-object v3, v1, v2

    .line 128
    const/4 v2, 0x1

    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;->fragmentedMp4Flags:I

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    aput-object v3, v1, v2

    .line 129
    const/4 v2, 0x2

    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;

    invoke-direct {v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;-><init>()V

    aput-object v3, v1, v2

    .line 130
    const/4 v2, 0x3

    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;->mp3Flags:I

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(I)V

    aput-object v3, v1, v2

    .line 131
    const/4 v2, 0x4

    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    aput-object v3, v1, v2

    .line 132
    const/4 v2, 0x5

    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    aput-object v3, v1, v2

    .line 133
    const/4 v2, 0x6

    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;->tsFlags:I

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;-><init>(I)V

    aput-object v3, v1, v2

    .line 134
    const/4 v2, 0x7

    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/flv/FlvExtractor;

    invoke-direct {v3}, Lorg/telegram/messenger/exoplayer2/extractor/flv/FlvExtractor;-><init>()V

    aput-object v3, v1, v2

    .line 135
    const/16 v2, 0x8

    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor;

    invoke-direct {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor;-><init>()V

    aput-object v3, v1, v2

    .line 136
    const/16 v2, 0x9

    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor;

    invoke-direct {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor;-><init>()V

    aput-object v3, v1, v2

    .line 137
    const/16 v2, 0xa

    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;

    invoke-direct {v3}, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;-><init>()V

    aput-object v3, v1, v2

    .line 138
    sget-object v2, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;->FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 140
    const/16 v3, 0xb

    :try_start_1
    sget-object v2, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;->FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    aput-object v2, v1, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :cond_0
    monitor-exit p0

    return-object v1

    .line 126
    .end local v1    # "extractors":[Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :cond_1
    const/16 v2, 0xc

    goto :goto_0

    .line 141
    .restart local v1    # "extractors":[Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Unexpected error creating FLAC extractor"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "extractors":[Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setFragmentedMp4ExtractorFlags(I)Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;->fragmentedMp4Flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-object p0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMatroskaExtractorFlags(I)Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;->matroskaFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-object p0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMp3ExtractorFlags(I)Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;->mp3Flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-object p0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTsExtractorFlags(I)Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;->tsFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-object p0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
