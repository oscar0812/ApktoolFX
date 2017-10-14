.class Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$AttachedPicture;
.super Ljava/lang/Object;
.source "ID3v2Info.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttachedPicture"
.end annotation


# static fields
.field static final TYPE_COVER_FRONT:B = 0x3t

.field static final TYPE_OTHER:B


# instance fields
.field final description:Ljava/lang/String;

.field final imageData:[B

.field final imageType:Ljava/lang/String;

.field final type:B


# direct methods
.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "type"    # B
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "imageType"    # Ljava/lang/String;
    .param p4, "imageData"    # [B

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-byte p1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$AttachedPicture;->type:B

    .line 42
    iput-object p2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$AttachedPicture;->description:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$AttachedPicture;->imageType:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$AttachedPicture;->imageData:[B

    .line 45
    return-void
.end method
