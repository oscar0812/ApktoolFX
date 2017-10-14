.class public Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
.super Ljava/io/IOException;
.source "HttpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpDataSourceException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException$Type;
    }
.end annotation


# static fields
.field public static final TYPE_CLOSE:I = 0x3

.field public static final TYPE_OPEN:I = 0x1

.field public static final TYPE_READ:I = 0x2


# instance fields
.field public final dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/io/IOException;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;I)V
    .locals 0
    .param p1, "cause"    # Ljava/io/IOException;
    .param p2, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p3, "type"    # I

    .prologue
    .line 261
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 262
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    .line 263
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->type:I

    .line 264
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/io/IOException;
    .param p3, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p4, "type"    # I

    .prologue
    .line 268
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    .line 270
    iput p4, p0, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->type:I

    .line 271
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p3, "type"    # I

    .prologue
    .line 255
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 256
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    .line 257
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->type:I

    .line 258
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;I)V
    .locals 0
    .param p1, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p2, "type"    # I

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 250
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    .line 251
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->type:I

    .line 252
    return-void
.end method
