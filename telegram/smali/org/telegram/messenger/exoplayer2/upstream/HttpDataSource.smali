.class public interface abstract Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource;
.super Ljava/lang/Object;
.source "HttpDataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;,
        Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;,
        Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;,
        Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$BaseFactory;,
        Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$RequestProperties;,
        Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$Factory;
    }
.end annotation


# static fields
.field public static final REJECT_PAYWALL_TYPES:Lorg/telegram/messenger/exoplayer2/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/util/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource;->REJECT_PAYWALL_TYPES:Lorg/telegram/messenger/exoplayer2/util/Predicate;

    return-void
.end method


# virtual methods
.method public abstract clearAllRequestProperties()V
.end method

.method public abstract clearRequestProperty(Ljava/lang/String;)V
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation
.end method

.method public abstract getResponseHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation
.end method

.method public abstract read([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation
.end method

.method public abstract setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method
