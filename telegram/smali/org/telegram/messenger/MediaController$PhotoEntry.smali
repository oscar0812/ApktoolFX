.class public Lorg/telegram/messenger/MediaController$PhotoEntry;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoEntry"
.end annotation


# instance fields
.field public bucketId:I

.field public caption:Ljava/lang/CharSequence;

.field public dateTaken:J

.field public duration:I

.field public editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

.field public imageId:I

.field public imagePath:Ljava/lang/String;

.field public isCropped:Z

.field public isFiltered:Z

.field public isPainted:Z

.field public isVideo:Z

.field public orientation:I

.field public path:Ljava/lang/String;

.field public savedFilterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

.field public stickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$InputDocument;",
            ">;"
        }
    .end annotation
.end field

.field public thumbPath:Ljava/lang/String;

.field public ttl:I


# direct methods
.method public constructor <init>(IIJLjava/lang/String;IZ)V
    .locals 1
    .param p1, "bucketId"    # I
    .param p2, "imageId"    # I
    .param p3, "dateTaken"    # J
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "orientation"    # I
    .param p7, "isVideo"    # Z

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    .line 220
    iput p1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->bucketId:I

    .line 221
    iput p2, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    .line 222
    iput-wide p3, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    .line 223
    iput-object p5, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    .line 224
    if-eqz p7, :cond_0

    .line 225
    iput p6, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    .line 229
    :goto_0
    iput-boolean p7, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    .line 230
    return-void

    .line 227
    :cond_0
    iput p6, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    goto :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isFiltered:Z

    .line 234
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isPainted:Z

    .line 235
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isCropped:Z

    .line 236
    iput v0, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->ttl:I

    .line 237
    iput-object v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    .line 238
    iput-object v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    .line 239
    iput-object v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    .line 240
    iput-object v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->savedFilterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 241
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 242
    return-void
.end method
