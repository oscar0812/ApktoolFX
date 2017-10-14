.class final Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;
.super Ljava/lang/Object;
.source "DashManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RepresentationInfo"
.end annotation


# instance fields
.field public final baseUrl:Ljava/lang/String;

.field public final drmSchemeDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field

.field public final format:Lorg/telegram/messenger/exoplayer2/Format;

.field public final inbandEventStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SchemeValuePair;",
            ">;"
        }
    .end annotation
.end field

.field public final segmentBase:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/Format;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "segmentBase"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/Format;",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SchemeValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 931
    .local p4, "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;>;"
    .local p5, "inbandEventStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SchemeValuePair;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->format:Lorg/telegram/messenger/exoplayer2/Format;

    .line 933
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->baseUrl:Ljava/lang/String;

    .line 934
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->segmentBase:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;

    .line 935
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->drmSchemeDatas:Ljava/util/ArrayList;

    .line 936
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->inbandEventStreams:Ljava/util/ArrayList;

    .line 937
    return-void
.end method
