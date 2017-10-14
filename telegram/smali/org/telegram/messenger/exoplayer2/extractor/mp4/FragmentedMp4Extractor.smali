.class public final Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;,
        Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;,
        Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$Flags;
    }
.end annotation


# static fields
.field public static final FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

.field public static final FLAG_ENABLE_CEA608_TRACK:I = 0x8

.field public static final FLAG_ENABLE_EMSG_TRACK:I = 0x4

.field private static final FLAG_SIDELOADED:I = 0x10

.field public static final FLAG_WORKAROUND_EVERY_VIDEO_FRAME_IS_SYNC_FRAME:I = 0x1

.field public static final FLAG_WORKAROUND_IGNORE_TFDT_BOX:I = 0x2

.field private static final PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

.field private static final SAMPLE_GROUP_TYPE_seig:I

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_ENCRYPTION_DATA:I = 0x2

.field private static final STATE_READING_SAMPLE_CONTINUE:I = 0x4

.field private static final STATE_READING_SAMPLE_START:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FragmentedMp4Extractor"


# instance fields
.field private atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private cea608TrackOutputs:[Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field private final containerAtoms:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

.field private durationUs:J

.field private final encryptionSignalByte:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private endOfMdatPosition:J

.field private eventMessageTrackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field private final extendedTypeScratch:[B

.field private extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

.field private final flags:I

.field private haveOutputSeekMap:Z

.field private final nalBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final nalPrefix:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private parserState:I

.field private pendingMetadataSampleBytes:I

.field private final pendingMetadataSampleInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private processSeiNalUnitPayload:Z

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleSize:I

.field private segmentIndexEarliestPresentationTimeUs:J

.field private final sideloadedTrack:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

.field private final timestampAdjuster:Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;

.field private final trackBundles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

    .line 108
    const-string/jumbo v0, "seig"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->SAMPLE_GROUP_TYPE_seig:I

    .line 109
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    .line 167
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;)V

    .line 174
    return-void
.end method

.method public constructor <init>(ILorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "timestampAdjuster"    # Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;)V

    .line 182
    return-void
.end method

.method public constructor <init>(ILorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;)V
    .locals 6
    .param p1, "flags"    # I
    .param p2, "timestampAdjuster"    # Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;
    .param p3, "sideloadedTrack"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    .prologue
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v1, 0x10

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    if-eqz p3, :cond_0

    move v0, v1

    :goto_0
    or-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->flags:I

    .line 193
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;

    .line 194
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    .line 195
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 196
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    sget-object v2, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 197
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 198
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 199
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 200
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extendedTypeScratch:[B

    .line 201
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    .line 202
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/LinkedList;

    .line 203
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 204
    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    .line 205
    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    .line 206
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 207
    return-void

    .line 192
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private appendSampleEncryptionData(Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)I
    .locals 12
    .param p1, "trackBundle"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .prologue
    const/4 v10, 0x0

    .line 1192
    iget-object v7, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    .line 1193
    .local v7, "trackFragment":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    iget-object v3, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 1194
    .local v3, "sampleEncryptionData":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    iget-object v9, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->header:Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    iget v2, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 1195
    .local v2, "sampleDescriptionIndex":I
    iget-object v9, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    if-eqz v9, :cond_0

    iget-object v0, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 1198
    .local v0, "encryptionBox":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;
    :goto_0
    iget v8, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;->initializationVectorSize:I

    .line 1199
    .local v8, "vectorSize":I
    iget-object v9, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget v11, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-boolean v6, v9, v11

    .line 1203
    .local v6, "subsampleEncryption":Z
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v11, v9, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    if-eqz v6, :cond_1

    const/16 v9, 0x80

    :goto_1
    or-int/2addr v9, v8

    int-to-byte v9, v9

    aput-byte v9, v11, v10

    .line 1204
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1205
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 1206
    .local v1, "output":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v10, 0x1

    invoke-interface {v1, v9, v10}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 1208
    invoke-interface {v1, v3, v8}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 1210
    if-nez v6, :cond_2

    .line 1211
    add-int/lit8 v9, v8, 0x1

    .line 1218
    :goto_2
    return v9

    .line 1195
    .end local v0    # "encryptionBox":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .end local v1    # "output":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    .end local v6    # "subsampleEncryption":Z
    .end local v8    # "vectorSize":I
    :cond_0
    iget-object v9, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    iget-object v9, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aget-object v0, v9, v2

    goto :goto_0

    .restart local v0    # "encryptionBox":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .restart local v6    # "subsampleEncryption":Z
    .restart local v8    # "vectorSize":I
    :cond_1
    move v9, v10

    .line 1203
    goto :goto_1

    .line 1214
    .restart local v1    # "output":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    :cond_2
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 1215
    .local v4, "subsampleCount":I
    const/4 v9, -0x2

    invoke-virtual {v3, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1216
    mul-int/lit8 v9, v4, 0x6

    add-int/lit8 v5, v9, 0x2

    .line 1217
    .local v5, "subsampleDataLength":I
    invoke-interface {v1, v3, v5}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 1218
    add-int/lit8 v9, v8, 0x1

    add-int/2addr v9, v5

    goto :goto_2
.end method

.method private enterReadingAtomHeaderState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 268
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 269
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 270
    return-void
.end method

.method private static getDrmInitDataFromAtoms(Ljava/util/List;)Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;",
            ">;)",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;"
        }
    .end annotation

    .prologue
    .line 1224
    .local p0, "leafChildren":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;>;"
    const/4 v4, 0x0

    .line 1225
    .local v4, "schemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1226
    .local v2, "leafChildrenSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 1227
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 1228
    .local v0, "child":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    iget v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_pssh:I

    if-ne v6, v7, :cond_1

    .line 1229
    if-nez v4, :cond_0

    .line 1230
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "schemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1232
    .restart local v4    # "schemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;>;"
    :cond_0
    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v3, v6, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    .line 1233
    .local v3, "psshData":[B
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v5

    .line 1234
    .local v5, "uuid":Ljava/util/UUID;
    if-nez v5, :cond_2

    .line 1235
    const-string/jumbo v6, "FragmentedMp4Extractor"

    const-string/jumbo v7, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    .end local v3    # "psshData":[B
    .end local v5    # "uuid":Ljava/util/UUID;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1237
    .restart local v3    # "psshData":[B
    .restart local v5    # "uuid":Ljava/util/UUID;
    :cond_2
    new-instance v6, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    const-string/jumbo v7, "video/mp4"

    invoke-direct {v6, v5, v7, v3}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1241
    .end local v0    # "child":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v3    # "psshData":[B
    .end local v5    # "uuid":Ljava/util/UUID;
    :cond_3
    if-nez v4, :cond_4

    const/4 v6, 0x0

    :goto_2
    return-object v6

    :cond_4
    new-instance v6, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    invoke-direct {v6, v4}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;-><init>(Ljava/util/List;)V

    goto :goto_2
.end method

.method private static getNextFragmentRun(Landroid/util/SparseArray;)Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;)",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    .prologue
    .line 1164
    .local p0, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    const/4 v1, 0x0

    .line 1165
    .local v1, "nextTrackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    const-wide v2, 0x7fffffffffffffffL

    .line 1167
    .local v2, "nextTrackRunOffset":J
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1168
    .local v5, "trackBundlesSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 1169
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1170
    .local v4, "trackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    iget v8, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    iget-object v9, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iget v9, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunCount:I

    if-ne v8, v9, :cond_1

    .line 1168
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1173
    :cond_1
    iget-object v8, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget v9, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget-wide v6, v8, v9

    .line 1174
    .local v6, "trunOffset":J
    cmp-long v8, v6, v2

    if-gez v8, :cond_0

    .line 1175
    move-object v1, v4

    .line 1176
    move-wide v2, v6

    goto :goto_1

    .line 1180
    .end local v4    # "trackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .end local v6    # "trunOffset":J
    :cond_2
    return-object v1
.end method

.method private maybeInitExtraTracks()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 457
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->eventMessageTrackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    if-nez v1, :cond_0

    .line 458
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x4

    invoke-interface {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(II)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->eventMessageTrackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 459
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->eventMessageTrackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    const-string/jumbo v2, "application/x-emsg"

    const-wide v8, 0x7fffffffffffffffL

    invoke-static {v0, v2, v8, v9}, Lorg/telegram/messenger/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 462
    :cond_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->cea608TrackOutputs:[Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    if-nez v1, :cond_1

    .line 463
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(II)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v7

    .line 465
    .local v7, "cea608TrackOutput":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    const-string/jumbo v1, "application/cea-608"

    const/4 v3, -0x1

    move-object v2, v0

    move-object v5, v0

    move-object v6, v0

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    invoke-interface {v7, v0}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 467
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    aput-object v7, v0, v4

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->cea608TrackOutputs:[Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 469
    .end local v7    # "cea608TrackOutput":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    :cond_1
    return-void
.end method

.method private onContainerAtomRead(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .locals 2
    .param p1, "container"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 381
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_moov:I

    if-ne v0, v1, :cond_1

    .line 382
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onMoovContainerAtomRead(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_moof:I

    if-ne v0, v1, :cond_2

    .line 384
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onMoofContainerAtomRead(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 385
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0
.end method

.method private onEmsgLeafAtomRead(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 18
    .param p1, "atom"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->eventMessageTrackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    if-nez v2, :cond_0

    .line 501
    :goto_0
    return-void

    .line 479
    :cond_0
    const/16 v2, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 480
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 481
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 482
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    .line 484
    .local v6, "timescale":J
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v16

    .line 486
    .local v16, "presentationTimeDeltaUs":J
    const/16 v2, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 487
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v13

    .line 488
    .local v13, "sampleSize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->eventMessageTrackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v13}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 490
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 492
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->eventMessageTrackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    add-long v10, v2, v16

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    goto :goto_0

    .line 497
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/LinkedList;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    move-wide/from16 v0, v16

    invoke-direct {v3, v0, v1, v13}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JI)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 499
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    add-int/2addr v2, v13

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    goto :goto_0
.end method

.method private onLeafAtomRead(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;J)V
    .locals 4
    .param p1, "leaf"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .param p2, "inputPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 369
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget v1, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sidx:I

    if-ne v1, v2, :cond_2

    .line 371
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSidx(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;J)Landroid/util/Pair;

    move-result-object v0

    .line 372
    .local v0, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    .line 373
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    invoke-interface {v2, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V

    .line 374
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    goto :goto_0

    .line 375
    .end local v0    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;>;"
    :cond_2
    iget v1, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_emsg:I

    if-ne v1, v2, :cond_0

    .line 376
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onEmsgLeafAtomRead(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0
.end method

.method private onMoofContainerAtomRead(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .locals 6
    .param p1, "moof"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 446
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->flags:I

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extendedTypeScratch:[B

    invoke-static {p1, v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseMoof(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V

    .line 447
    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-result-object v0

    .line 448
    .local v0, "drmInitData":Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    if-eqz v0, :cond_0

    .line 449
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 450
    .local v2, "trackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 451
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->updateDrmInitData(Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)V

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    .end local v1    # "i":I
    .end local v2    # "trackCount":I
    :cond_0
    return-void
.end method

.method private onMoovContainerAtomRead(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .locals 24
    .param p1, "moov"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 391
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    const-string/jumbo v9, "Unexpected moov box."

    invoke-static {v5, v9}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 393
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-result-object v8

    .line 396
    .local v8, "drmInitData":Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mvex:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v13

    .line 397
    .local v13, "mvex":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 398
    .local v10, "defaultSampleValuesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;>;"
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 399
    .local v6, "duration":J
    iget-object v5, v13, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    .line 400
    .local v14, "mvexChildrenSize":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v14, :cond_3

    .line 401
    iget-object v5, v13, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 402
    .local v4, "atom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    iget v5, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_trex:I

    if-ne v5, v9, :cond_2

    .line 403
    iget-object v5, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTrex(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v19

    .line 404
    .local v19, "trexData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;>;"
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v19

    iget-object v9, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v10, v5, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 400
    .end local v19    # "trexData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;>;"
    :cond_0
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 391
    .end local v4    # "atom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v6    # "duration":J
    .end local v8    # "drmInitData":Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .end local v10    # "defaultSampleValuesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;>;"
    .end local v11    # "i":I
    .end local v13    # "mvex":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .end local v14    # "mvexChildrenSize":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 405
    .restart local v4    # "atom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .restart local v6    # "duration":J
    .restart local v8    # "drmInitData":Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .restart local v10    # "defaultSampleValuesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;>;"
    .restart local v11    # "i":I
    .restart local v13    # "mvex":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .restart local v14    # "mvexChildrenSize":I
    :cond_2
    iget v5, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mehd:I

    if-ne v5, v9, :cond_0

    .line 406
    iget-object v5, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseMehd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v6

    goto :goto_2

    .line 411
    .end local v4    # "atom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    :cond_3
    new-instance v18, Landroid/util/SparseArray;

    invoke-direct/range {v18 .. v18}, Landroid/util/SparseArray;-><init>()V

    .line 412
    .local v18, "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;>;"
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    .line 413
    .local v12, "moovContainerChildrenSize":I
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v12, :cond_5

    .line 414
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 415
    .local v4, "atom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    iget v5, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_trak:I

    if-ne v5, v9, :cond_4

    .line 416
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mvhd:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseTrak(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;JLorg/telegram/messenger/exoplayer2/drm/DrmInitData;Z)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    move-result-object v15

    .line 418
    .local v15, "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    if-eqz v15, :cond_4

    .line 419
    iget v5, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->id:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 413
    .end local v15    # "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 424
    .end local v4    # "atom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    :cond_5
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v17

    .line 425
    .local v17, "trackCount":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_8

    .line 427
    const/4 v11, 0x0

    :goto_4
    move/from16 v0, v17

    if-ge v11, v0, :cond_6

    .line 428
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    .line 429
    .restart local v15    # "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    new-instance v16, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    iget v9, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->type:I

    invoke-interface {v5, v11, v9}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(II)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V

    .line 430
    .local v16, "trackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    iget v5, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->init(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v9, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->id:I

    move-object/from16 v0, v16

    invoke-virtual {v5, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 432
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    move-wide/from16 v20, v0

    iget-wide v0, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->durationUs:J

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    .line 427
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 434
    .end local v15    # "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    .end local v16    # "trackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    :cond_6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->maybeInitExtraTracks()V

    .line 435
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v5}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 443
    :cond_7
    return-void

    .line 437
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v17

    if-ne v5, v0, :cond_9

    const/4 v5, 0x1

    :goto_5
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 438
    const/4 v11, 0x0

    :goto_6
    move/from16 v0, v17

    if-ge v11, v0, :cond_7

    .line 439
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    .line 440
    .restart local v15    # "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v9, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v9, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v5, v15, v9}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->init(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;)V

    .line 438
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 437
    .end local v15    # "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    :cond_9
    const/4 v5, 0x0

    goto :goto_5
.end method

.method private static parseMehd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)J
    .locals 4
    .param p0, "mehd"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 522
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 523
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 524
    .local v0, "fullAtom":I
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 525
    .local v1, "version":I
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    goto :goto_0
.end method

.method private static parseMoof(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V
    .locals 5
    .param p0, "moof"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .param p2, "flags"    # I
    .param p3, "extendedTypeScratch"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 530
    .local p1, "trackBundleArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 531
    .local v2, "moofContainerChildrenSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 532
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 534
    .local v0, "child":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    iget v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_traf:I

    if-ne v3, v4, :cond_0

    .line 535
    invoke-static {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTraf(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V

    .line 531
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 538
    .end local v0    # "child":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    :cond_1
    return-void
.end method

.method private static parseSaio(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 8
    .param p0, "saio"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "out"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 667
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 668
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 669
    .local v2, "fullAtom":I
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    .line 670
    .local v1, "flags":I
    and-int/lit8 v4, v1, 0x1

    if-ne v4, v5, :cond_0

    .line 671
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 674
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 675
    .local v0, "entryCount":I
    if-eq v0, v5, :cond_1

    .line 677
    new-instance v4, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected saio entry count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 680
    :cond_1
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v3

    .line 681
    .local v3, "version":I
    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    if-nez v3, :cond_2

    .line 682
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    :goto_0
    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 683
    return-void

    .line 682
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    goto :goto_0
.end method

.method private static parseSaiz(Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 13
    .param p0, "encryptionBox"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .param p1, "saiz"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "out"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 630
    iget v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;->initializationVectorSize:I

    .line 631
    .local v9, "vectorSize":I
    const/16 v10, 0x8

    invoke-virtual {p1, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 632
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 633
    .local v2, "fullAtom":I
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    .line 634
    .local v1, "flags":I
    and-int/lit8 v10, v1, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 635
    const/16 v10, 0x8

    invoke-virtual {p1, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 637
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 639
    .local v0, "defaultSampleInfoSize":I
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 640
    .local v4, "sampleCount":I
    iget v10, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    if-eq v4, v10, :cond_1

    .line 641
    new-instance v10, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Length mismatch: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 644
    :cond_1
    const/4 v8, 0x0

    .line 645
    .local v8, "totalSize":I
    if-nez v0, :cond_3

    .line 646
    iget-object v5, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    .line 647
    .local v5, "sampleHasSubsampleEncryptionTable":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 648
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 649
    .local v6, "sampleInfoSize":I
    add-int/2addr v8, v6

    .line 650
    if-le v6, v9, :cond_2

    const/4 v10, 0x1

    :goto_1
    aput-boolean v10, v5, v3

    .line 647
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 650
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 653
    .end local v3    # "i":I
    .end local v5    # "sampleHasSubsampleEncryptionTable":[Z
    .end local v6    # "sampleInfoSize":I
    :cond_3
    if-le v0, v9, :cond_5

    const/4 v7, 0x1

    .line 654
    .local v7, "subsampleEncryption":Z
    :goto_2
    mul-int v10, v0, v4

    add-int/2addr v8, v10

    .line 655
    iget-object v10, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    const/4 v11, 0x0

    invoke-static {v10, v11, v4, v7}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 657
    .end local v7    # "subsampleEncryption":Z
    :cond_4
    invoke-virtual {p2, v8}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    .line 658
    return-void

    .line 653
    :cond_5
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private static parseSenc(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ILorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 7
    .param p0, "senc"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "offset"    # I
    .param p2, "out"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 851
    add-int/lit8 v5, p1, 0x8

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 852
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 853
    .local v1, "fullAtom":I
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v0

    .line 855
    .local v0, "flags":I
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    .line 857
    new-instance v4, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v5, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {v4, v5}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 860
    :cond_0
    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    .line 861
    .local v3, "subsampleEncryption":Z
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 862
    .local v2, "sampleCount":I
    iget v5, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    if-eq v2, v5, :cond_2

    .line 863
    new-instance v4, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Length mismatch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "sampleCount":I
    .end local v3    # "subsampleEncryption":Z
    :cond_1
    move v3, v4

    .line 860
    goto :goto_0

    .line 866
    .restart local v2    # "sampleCount":I
    .restart local v3    # "subsampleEncryption":Z
    :cond_2
    iget-object v5, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v5, v4, v2, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 867
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    invoke-virtual {p2, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    .line 868
    invoke-virtual {p2, p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->fillEncryptionData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    .line 869
    return-void
.end method

.method private static parseSenc(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 1
    .param p0, "senc"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "out"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 846
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ILorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 847
    return-void
.end method

.method private static parseSgpd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 13
    .param p0, "sbgp"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "sgpd"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "out"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x4

    const/4 v12, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 873
    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 874
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 875
    .local v3, "sbgpFullAtom":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->SAMPLE_GROUP_TYPE_seig:I

    if-eq v8, v9, :cond_1

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v8

    if-ne v8, v6, :cond_2

    .line 880
    invoke-virtual {p0, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 882
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    if-eq v8, v6, :cond_3

    .line 883
    new-instance v6, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v7, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v6, v7}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 886
    :cond_3
    invoke-virtual {p1, v11}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 887
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 888
    .local v4, "sgpdFullAtom":I
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->SAMPLE_GROUP_TYPE_seig:I

    if-ne v8, v9, :cond_0

    .line 892
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v5

    .line 893
    .local v5, "sgpdVersion":I
    if-ne v5, v6, :cond_4

    .line 894
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    .line 895
    new-instance v6, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v7, "Variable length decription in sgpd found (unsupported)"

    invoke-direct {v6, v7}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 897
    :cond_4
    if-lt v5, v12, :cond_5

    .line 898
    invoke-virtual {p1, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 900
    :cond_5
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_6

    .line 901
    new-instance v6, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v7, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v6, v7}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 904
    :cond_6
    invoke-virtual {p1, v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 905
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    if-ne v8, v6, :cond_7

    move v1, v6

    .line 906
    .local v1, "isProtected":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 909
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 910
    .local v0, "initVectorSize":I
    const/16 v8, 0x10

    new-array v2, v8, [B

    .line 911
    .local v2, "keyId":[B
    array-length v8, v2

    invoke-virtual {p1, v2, v7, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 912
    iput-boolean v6, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    .line 913
    new-instance v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    invoke-direct {v6, v1, v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZI[B)V

    iput-object v6, p2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    goto :goto_0

    .end local v0    # "initVectorSize":I
    .end local v1    # "isProtected":Z
    .end local v2    # "keyId":[B
    :cond_7
    move v1, v7

    .line 905
    goto :goto_1
.end method

.method private static parseSidx(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;J)Landroid/util/Pair;
    .locals 35
    .param p0, "atom"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "inputPosition"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;",
            "J)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 926
    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 927
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v20

    .line 928
    .local v20, "fullAtom":I
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v33

    .line 930
    .local v33, "version":I
    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 931
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    .line 933
    .local v8, "timescale":J
    move-wide/from16 v22, p1

    .line 934
    .local v22, "offset":J
    if-nez v33, :cond_0

    .line 935
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    .line 936
    .local v4, "earliestPresentationTime":J
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    add-long v22, v22, v6

    .line 941
    :goto_0
    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v18

    .line 944
    .local v18, "earliestPresentationTimeUs":J
    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 946
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v25

    .line 947
    .local v25, "referenceCount":I
    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v28, v0

    .line 948
    .local v28, "sizes":[I
    move/from16 v0, v25

    new-array v0, v0, [J

    move-object/from16 v24, v0

    .line 949
    .local v24, "offsets":[J
    move/from16 v0, v25

    new-array v0, v0, [J

    move-object/from16 v16, v0

    .line 950
    .local v16, "durationsUs":[J
    move/from16 v0, v25

    new-array v0, v0, [J

    move-object/from16 v29, v0

    .line 952
    .local v29, "timesUs":[J
    move-wide v10, v4

    .line 953
    .local v10, "time":J
    move-wide/from16 v30, v18

    .line 954
    .local v30, "timeUs":J
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    .line 955
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v17

    .line 957
    .local v17, "firstInt":I
    const/high16 v6, -0x80000000

    and-int v32, v6, v17

    .line 958
    .local v32, "type":I
    if-eqz v32, :cond_1

    .line 959
    new-instance v6, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v7, "Unhandled indirect reference"

    invoke-direct {v6, v7}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 938
    .end local v4    # "earliestPresentationTime":J
    .end local v10    # "time":J
    .end local v16    # "durationsUs":[J
    .end local v17    # "firstInt":I
    .end local v18    # "earliestPresentationTimeUs":J
    .end local v21    # "i":I
    .end local v24    # "offsets":[J
    .end local v25    # "referenceCount":I
    .end local v28    # "sizes":[I
    .end local v29    # "timesUs":[J
    .end local v30    # "timeUs":J
    .end local v32    # "type":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    .line 939
    .restart local v4    # "earliestPresentationTime":J
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    add-long v22, v22, v6

    goto :goto_0

    .line 961
    .restart local v10    # "time":J
    .restart local v16    # "durationsUs":[J
    .restart local v17    # "firstInt":I
    .restart local v18    # "earliestPresentationTimeUs":J
    .restart local v21    # "i":I
    .restart local v24    # "offsets":[J
    .restart local v25    # "referenceCount":I
    .restart local v28    # "sizes":[I
    .restart local v29    # "timesUs":[J
    .restart local v30    # "timeUs":J
    .restart local v32    # "type":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v26

    .line 963
    .local v26, "referenceDuration":J
    const v6, 0x7fffffff

    and-int v6, v6, v17

    aput v6, v28, v21

    .line 964
    aput-wide v22, v24, v21

    .line 968
    aput-wide v30, v29, v21

    .line 969
    add-long v10, v10, v26

    .line 970
    const-wide/32 v12, 0xf4240

    move-wide v14, v8

    invoke-static/range {v10 .. v15}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v30

    .line 971
    aget-wide v6, v29, v21

    sub-long v6, v30, v6

    aput-wide v6, v16, v21

    .line 973
    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 974
    aget v6, v28, v21

    int-to-long v6, v6

    add-long v22, v22, v6

    .line 954
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 977
    .end local v17    # "firstInt":I
    .end local v26    # "referenceDuration":J
    .end local v32    # "type":I
    :cond_2
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    move-object/from16 v3, v29

    invoke-direct {v7, v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;-><init>([I[J[J[J)V

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6
.end method

.method private static parseTfdt(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)J
    .locals 4
    .param p0, "tfdt"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 733
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 734
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 735
    .local v0, "fullAtom":I
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 736
    .local v1, "version":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    goto :goto_0
.end method

.method private static parseTfhd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Landroid/util/SparseArray;I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .locals 13
    .param p0, "tfhd"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I)",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    .prologue
    .line 697
    .local p1, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    const/16 v11, 0x8

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 698
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 699
    .local v8, "fullAtom":I
    invoke-static {v8}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v0

    .line 700
    .local v0, "atomFlags":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 701
    .local v10, "trackId":I
    and-int/lit8 v11, p2, 0x10

    if-nez v11, :cond_0

    .end local v10    # "trackId":I
    :goto_0
    invoke-virtual {p1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 702
    .local v9, "trackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    if-nez v9, :cond_1

    .line 703
    const/4 v9, 0x0

    .line 723
    .end local v9    # "trackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    :goto_1
    return-object v9

    .line 701
    .restart local v10    # "trackId":I
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 705
    .end local v10    # "trackId":I
    .restart local v9    # "trackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    :cond_1
    and-int/lit8 v11, v0, 0x1

    if-eqz v11, :cond_2

    .line 706
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    .line 707
    .local v2, "baseDataPosition":J
    iget-object v11, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iput-wide v2, v11, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->dataPosition:J

    .line 708
    iget-object v11, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iput-wide v2, v11, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 711
    .end local v2    # "baseDataPosition":J
    :cond_2
    iget-object v7, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 712
    .local v7, "defaultSampleValues":Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;
    and-int/lit8 v11, v0, 0x2

    if-eqz v11, :cond_3

    .line 714
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    .line 715
    .local v1, "defaultSampleDescriptionIndex":I
    :goto_2
    and-int/lit8 v11, v0, 0x8

    if-eqz v11, :cond_4

    .line 716
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 717
    .local v4, "defaultSampleDuration":I
    :goto_3
    and-int/lit8 v11, v0, 0x10

    if-eqz v11, :cond_5

    .line 718
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    .line 719
    .local v6, "defaultSampleSize":I
    :goto_4
    and-int/lit8 v11, v0, 0x20

    if-eqz v11, :cond_6

    .line 720
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    .line 721
    .local v5, "defaultSampleFlags":I
    :goto_5
    iget-object v11, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    new-instance v12, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-direct {v12, v1, v4, v6, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    iput-object v12, v11, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->header:Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    goto :goto_1

    .line 714
    .end local v1    # "defaultSampleDescriptionIndex":I
    .end local v4    # "defaultSampleDuration":I
    .end local v5    # "defaultSampleFlags":I
    .end local v6    # "defaultSampleSize":I
    :cond_3
    iget v1, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    goto :goto_2

    .line 716
    .restart local v1    # "defaultSampleDescriptionIndex":I
    :cond_4
    iget v4, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->duration:I

    goto :goto_3

    .line 718
    .restart local v4    # "defaultSampleDuration":I
    :cond_5
    iget v6, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->size:I

    goto :goto_4

    .line 720
    .restart local v6    # "defaultSampleSize":I
    :cond_6
    iget v5, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->flags:I

    goto :goto_5
.end method

.method private static parseTraf(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V
    .locals 21
    .param p0, "traf"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .param p2, "flags"    # I
    .param p3, "extendedTypeScratch"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 545
    .local p1, "trackBundleArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    sget v19, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tfhd:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v16

    .line 546
    .local v16, "tfhd":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTfhd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Landroid/util/SparseArray;I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v17

    .line 547
    .local v17, "trackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    if-nez v17, :cond_1

    .line 592
    :cond_0
    return-void

    .line 551
    :cond_1
    move-object/from16 v0, v17

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    .line 552
    .local v5, "fragment":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    iget-wide v6, v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 553
    .local v6, "decodeTime":J
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset()V

    .line 555
    sget v19, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tfdt:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v15

    .line 556
    .local v15, "tfdtAtom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v15, :cond_2

    and-int/lit8 v19, p2, 0x2

    if-nez v19, :cond_2

    .line 557
    sget v19, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tfdt:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTfdt(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v6

    .line 560
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-static {v0, v1, v6, v7, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTruns(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;JI)V

    .line 562
    sget v19, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_saiz:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v11

    .line 563
    .local v11, "saiz":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v11, :cond_3

    .line 564
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v19, v0

    iget-object v0, v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->header:Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    move/from16 v20, v0

    aget-object v18, v19, v20

    .line 566
    .local v18, "trackEncryptionBox":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;
    iget-object v0, v11, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSaiz(Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 569
    .end local v18    # "trackEncryptionBox":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;
    :cond_3
    sget v19, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_saio:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v10

    .line 570
    .local v10, "saio":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v10, :cond_4

    .line 571
    iget-object v0, v10, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSaio(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 574
    :cond_4
    sget v19, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_senc:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v13

    .line 575
    .local v13, "senc":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v13, :cond_5

    .line 576
    iget-object v0, v13, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 579
    :cond_5
    sget v19, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sbgp:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v12

    .line 580
    .local v12, "sbgp":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    sget v19, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sgpd:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v14

    .line 581
    .local v14, "sgpd":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v12, :cond_6

    if-eqz v14, :cond_6

    .line 582
    iget-object v0, v12, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v19, v0

    iget-object v0, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSgpd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 585
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v9

    .line 586
    .local v9, "leafChildrenSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 588
    .local v4, "atom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    iget v0, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    move/from16 v19, v0

    sget v20, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_uuid:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 589
    iget-object v0, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-static {v0, v5, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseUuid(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;[B)V

    .line 586
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private static parseTrex(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 7
    .param p0, "trex"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 507
    const/16 v5, 0xc

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 508
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 509
    .local v4, "trackId":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 510
    .local v0, "defaultSampleDescriptionIndex":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 511
    .local v1, "defaultSampleDuration":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    .line 512
    .local v3, "defaultSampleSize":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 514
    .local v2, "defaultSampleFlags":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-direct {v6, v0, v1, v3, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method private static parseTrun(Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IJILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)I
    .locals 36
    .param p0, "trackBundle"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .param p1, "index"    # I
    .param p2, "decodeTime"    # J
    .param p4, "flags"    # I
    .param p5, "trun"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p6, "trackRunStart"    # I

    .prologue
    .line 752
    const/16 v4, 0x8

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 753
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v15

    .line 754
    .local v15, "fullAtom":I
    invoke-static {v15}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v8

    .line 756
    .local v8, "atomFlags":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    move-object/from16 v29, v0

    .line 757
    .local v29, "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    .line 758
    .local v14, "fragment":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    iget-object v9, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->header:Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 760
    .local v9, "defaultSampleValues":Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;
    iget-object v4, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    aput v5, v4, p1

    .line 761
    iget-object v4, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget-wide v0, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->dataPosition:J

    move-wide/from16 v32, v0

    aput-wide v32, v4, p1

    .line 762
    and-int/lit8 v4, v8, 0x1

    if-eqz v4, :cond_0

    .line 763
    iget-object v4, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    aget-wide v32, v4, p1

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v34, v0

    add-long v32, v32, v34

    aput-wide v32, v4, p1

    .line 766
    :cond_0
    and-int/lit8 v4, v8, 0x4

    if-eqz v4, :cond_4

    const/4 v13, 0x1

    .line 767
    .local v13, "firstSampleFlagsPresent":Z
    :goto_0
    iget v12, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->flags:I

    .line 768
    .local v12, "firstSampleFlags":I
    if-eqz v13, :cond_1

    .line 769
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    .line 772
    :cond_1
    and-int/lit16 v4, v8, 0x100

    if-eqz v4, :cond_5

    const/16 v21, 0x1

    .line 773
    .local v21, "sampleDurationsPresent":Z
    :goto_1
    and-int/lit16 v4, v8, 0x200

    if-eqz v4, :cond_6

    const/16 v28, 0x1

    .line 774
    .local v28, "sampleSizesPresent":Z
    :goto_2
    and-int/lit16 v4, v8, 0x400

    if-eqz v4, :cond_7

    const/16 v23, 0x1

    .line 775
    .local v23, "sampleFlagsPresent":Z
    :goto_3
    and-int/lit16 v4, v8, 0x800

    if-eqz v4, :cond_8

    const/16 v18, 0x1

    .line 780
    .local v18, "sampleCompositionTimeOffsetsPresent":Z
    :goto_4
    const-wide/16 v10, 0x0

    .line 784
    .local v10, "edtsOffset":J
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    if-eqz v4, :cond_2

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    const-wide/16 v32, 0x0

    cmp-long v4, v4, v32

    if-nez v4, :cond_2

    .line 786
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v5, 0x0

    aget-wide v2, v4, v5

    const-wide/16 v4, 0x3e8

    move-object/from16 v0, v29

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 789
    :cond_2
    iget-object v0, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    move-object/from16 v27, v0

    .line 790
    .local v27, "sampleSizeTable":[I
    iget-object v0, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetTable:[I

    move-object/from16 v17, v0

    .line 791
    .local v17, "sampleCompositionTimeOffsetTable":[I
    iget-object v0, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleDecodingTimeTable:[J

    move-object/from16 v19, v0

    .line 792
    .local v19, "sampleDecodingTimeTable":[J
    iget-object v0, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    move-object/from16 v24, v0

    .line 794
    .local v24, "sampleIsSyncFrameTable":[Z
    move-object/from16 v0, v29

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_9

    const/16 v31, 0x1

    .line 797
    .local v31, "workaroundEveryVideoFrameIsSyncFrame":Z
    :goto_5
    iget-object v4, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    aget v4, v4, p1

    add-int v30, p6, v4

    .line 798
    .local v30, "trackRunEnd":I
    move-object/from16 v0, v29

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 799
    .local v6, "timescale":J
    if-lez p1, :cond_a

    iget-wide v2, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 800
    .local v2, "cumulativeTime":J
    :goto_6
    move/from16 v16, p6

    .local v16, "i":I
    :goto_7
    move/from16 v0, v16

    move/from16 v1, v30

    if-ge v0, v1, :cond_11

    .line 802
    if-eqz v21, :cond_b

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v20

    .line 804
    .local v20, "sampleDuration":I
    :goto_8
    if-eqz v28, :cond_c

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v26

    .line 805
    .local v26, "sampleSize":I
    :goto_9
    if-nez v16, :cond_d

    if-eqz v13, :cond_d

    move/from16 v22, v12

    .line 807
    .local v22, "sampleFlags":I
    :goto_a
    if-eqz v18, :cond_f

    .line 813
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v25

    .line 814
    .local v25, "sampleOffset":I
    move/from16 v0, v25

    mul-int/lit16 v4, v0, 0x3e8

    int-to-long v4, v4

    div-long/2addr v4, v6

    long-to-int v4, v4

    aput v4, v17, v16

    .line 818
    .end local v25    # "sampleOffset":I
    :goto_b
    const-wide/16 v4, 0x3e8

    .line 819
    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    sub-long/2addr v4, v10

    aput-wide v4, v19, v16

    .line 820
    aput v26, v27, v16

    .line 821
    shr-int/lit8 v4, v22, 0x10

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_10

    if-eqz v31, :cond_3

    if-nez v16, :cond_10

    :cond_3
    const/4 v4, 0x1

    :goto_c
    aput-boolean v4, v24, v16

    .line 823
    move/from16 v0, v20

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 800
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 766
    .end local v2    # "cumulativeTime":J
    .end local v6    # "timescale":J
    .end local v10    # "edtsOffset":J
    .end local v12    # "firstSampleFlags":I
    .end local v13    # "firstSampleFlagsPresent":Z
    .end local v16    # "i":I
    .end local v17    # "sampleCompositionTimeOffsetTable":[I
    .end local v18    # "sampleCompositionTimeOffsetsPresent":Z
    .end local v19    # "sampleDecodingTimeTable":[J
    .end local v20    # "sampleDuration":I
    .end local v21    # "sampleDurationsPresent":Z
    .end local v22    # "sampleFlags":I
    .end local v23    # "sampleFlagsPresent":Z
    .end local v24    # "sampleIsSyncFrameTable":[Z
    .end local v26    # "sampleSize":I
    .end local v27    # "sampleSizeTable":[I
    .end local v28    # "sampleSizesPresent":Z
    .end local v30    # "trackRunEnd":I
    .end local v31    # "workaroundEveryVideoFrameIsSyncFrame":Z
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 772
    .restart local v12    # "firstSampleFlags":I
    .restart local v13    # "firstSampleFlagsPresent":Z
    :cond_5
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 773
    .restart local v21    # "sampleDurationsPresent":Z
    :cond_6
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 774
    .restart local v28    # "sampleSizesPresent":Z
    :cond_7
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 775
    .restart local v23    # "sampleFlagsPresent":Z
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 794
    .restart local v10    # "edtsOffset":J
    .restart local v17    # "sampleCompositionTimeOffsetTable":[I
    .restart local v18    # "sampleCompositionTimeOffsetsPresent":Z
    .restart local v19    # "sampleDecodingTimeTable":[J
    .restart local v24    # "sampleIsSyncFrameTable":[Z
    .restart local v27    # "sampleSizeTable":[I
    :cond_9
    const/16 v31, 0x0

    goto :goto_5

    .restart local v6    # "timescale":J
    .restart local v30    # "trackRunEnd":I
    .restart local v31    # "workaroundEveryVideoFrameIsSyncFrame":Z
    :cond_a
    move-wide/from16 v2, p2

    .line 799
    goto :goto_6

    .line 802
    .restart local v2    # "cumulativeTime":J
    .restart local v16    # "i":I
    :cond_b
    iget v0, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->duration:I

    move/from16 v20, v0

    goto :goto_8

    .line 804
    .restart local v20    # "sampleDuration":I
    :cond_c
    iget v0, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->size:I

    move/from16 v26, v0

    goto :goto_9

    .line 805
    .restart local v26    # "sampleSize":I
    :cond_d
    if-eqz v23, :cond_e

    .line 806
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v22

    goto :goto_a

    :cond_e
    iget v0, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->flags:I

    move/from16 v22, v0

    goto :goto_a

    .line 816
    .restart local v22    # "sampleFlags":I
    :cond_f
    const/4 v4, 0x0

    aput v4, v17, v16

    goto :goto_b

    .line 821
    :cond_10
    const/4 v4, 0x0

    goto :goto_c

    .line 825
    .end local v20    # "sampleDuration":I
    .end local v22    # "sampleFlags":I
    .end local v26    # "sampleSize":I
    :cond_11
    iput-wide v2, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 826
    return v30
.end method

.method private static parseTruns(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;JI)V
    .locals 20
    .param p0, "traf"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .param p1, "trackBundle"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .param p2, "decodeTime"    # J
    .param p4, "flags"    # I

    .prologue
    .line 596
    const/4 v15, 0x0

    .line 597
    .local v15, "trunCount":I
    const/4 v13, 0x0

    .line 598
    .local v13, "totalSampleCount":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 599
    .local v11, "leafChildren":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 600
    .local v12, "leafChildrenSize":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v12, :cond_1

    .line 601
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 602
    .local v9, "atom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    iget v2, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_trun:I

    if-ne v2, v4, :cond_0

    .line 603
    iget-object v0, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v16, v0

    .line 604
    .local v16, "trunData":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    const/16 v2, 0xc

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 605
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v18

    .line 606
    .local v18, "trunSampleCount":I
    if-lez v18, :cond_0

    .line 607
    add-int v13, v13, v18

    .line 608
    add-int/lit8 v15, v15, 0x1

    .line 600
    .end local v16    # "trunData":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .end local v18    # "trunSampleCount":I
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 612
    .end local v9    # "atom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 613
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 614
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 615
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    invoke-virtual {v2, v15, v13}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->initTables(II)V

    .line 617
    const/4 v3, 0x0

    .line 618
    .local v3, "trunIndex":I
    const/4 v8, 0x0

    .line 619
    .local v8, "trunStartPosition":I
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v12, :cond_3

    .line 620
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 621
    .local v14, "trun":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    iget v2, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_trun:I

    if-ne v2, v4, :cond_2

    .line 622
    add-int/lit8 v17, v3, 0x1

    .end local v3    # "trunIndex":I
    .local v17, "trunIndex":I
    iget-object v7, v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v2, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    invoke-static/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTrun(Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IJILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)I

    move-result v8

    move/from16 v3, v17

    .line 619
    .end local v17    # "trunIndex":I
    .restart local v3    # "trunIndex":I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 626
    .end local v14    # "trun":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    :cond_3
    return-void
.end method

.method private static parseUuid(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;[B)V
    .locals 2
    .param p0, "uuid"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "out"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    .param p2, "extendedTypeScratch"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x10

    .line 831
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 832
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 835
    sget-object v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 843
    :goto_0
    return-void

    .line 842
    :cond_0
    invoke-static {p0, v1, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ILorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;)V

    goto :goto_0
.end method

.method private processAtomEnded(J)V
    .locals 3
    .param p1, "atomEndPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 361
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onContainerAtomRead(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 364
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 365
    return-void
.end method

.method private readAtomHeader(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 13
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 273
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    if-nez v8, :cond_1

    .line 275
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x1

    invoke-interface {p1, v8, v9, v10, v11}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v8

    if-nez v8, :cond_0

    .line 276
    const/4 v8, 0x0

    .line 346
    :goto_0
    return v8

    .line 278
    :cond_0
    const/16 v8, 0x8

    iput v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 279
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 280
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 281
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    .line 284
    :cond_1
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 286
    const/16 v5, 0x8

    .line 287
    .local v5, "headerBytesRemaining":I
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v9, 0x8

    invoke-interface {p1, v8, v9, v5}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 288
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v8, v5

    iput v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 289
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 292
    .end local v5    # "headerBytesRemaining":I
    :cond_2
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    .line 293
    new-instance v8, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v9, "Atom size less than header length (unsupported)."

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 296
    :cond_3
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v10, v10

    sub-long v0, v8, v10

    .line 297
    .local v0, "atomPosition":J
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_moof:I

    if-ne v8, v9, :cond_4

    .line 299
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 300
    .local v7, "trackCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v7, :cond_4

    .line 301
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v4, v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    .line 302
    .local v4, "fragment":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    iput-wide v0, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->atomPosition:J

    .line 303
    iput-wide v0, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 304
    iput-wide v0, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->dataPosition:J

    .line 300
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 308
    .end local v4    # "fragment":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    .end local v6    # "i":I
    .end local v7    # "trackCount":I
    :cond_4
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mdat:I

    if-ne v8, v9, :cond_6

    .line 309
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 310
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v8, v0

    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    .line 311
    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    if-nez v8, :cond_5

    .line 312
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    new-instance v9, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap$Unseekable;

    iget-wide v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    invoke-direct {v9, v10, v11}, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v8, v9}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V

    .line 313
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    .line 315
    :cond_5
    const/4 v8, 0x2

    iput v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 316
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 319
    :cond_6
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {v8}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 320
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    iget-wide v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v8, v10

    const-wide/16 v10, 0x8

    sub-long v2, v8, v10

    .line 321
    .local v2, "endPosition":J
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    new-instance v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v9, v10, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v8, v9}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 322
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    .line 323
    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    .line 346
    .end local v2    # "endPosition":J
    :goto_2
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 326
    .restart local v2    # "endPosition":J
    :cond_7
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_2

    .line 328
    .end local v2    # "endPosition":J
    :cond_8
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {v8}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->shouldParseLeafAtom(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 329
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    const/16 v9, 0x8

    if-eq v8, v9, :cond_9

    .line 330
    new-instance v8, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v9, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 332
    :cond_9
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v8, v10

    if-lez v8, :cond_a

    .line 333
    new-instance v8, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v9, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 335
    :cond_a
    new-instance v8, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-wide v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v9, v10

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 336
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v10, v10, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    const/4 v8, 0x1

    iput v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto :goto_2

    .line 339
    :cond_b
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v8, v10

    if-lez v8, :cond_c

    .line 340
    new-instance v8, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v9, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 342
    :cond_c
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 343
    const/4 v8, 0x1

    iput v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto :goto_2
.end method

.method private readAtomPayload(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V
    .locals 4
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 350
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v1, v2

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    sub-int v0, v1, v2

    .line 351
    .local v0, "atomPayloadSize":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v2, 0x8

    invoke-interface {p1, v1, v2, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 353
    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;-><init>(ILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onLeafAtomRead(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;J)V

    .line 357
    :goto_0
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    .line 358
    return-void

    .line 355
    :cond_0
    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0
.end method

.method private readEncryptionData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V
    .locals 10
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 982
    const/4 v4, 0x0

    .line 983
    .local v4, "nextTrackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    const-wide v2, 0x7fffffffffffffffL

    .line 984
    .local v2, "nextDataOffset":J
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 985
    .local v5, "trackBundlesSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 986
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v6, v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    .line 987
    .local v6, "trackFragment":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    iget-boolean v7, v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    if-eqz v7, :cond_0

    iget-wide v8, v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    cmp-long v7, v8, v2

    if-gez v7, :cond_0

    .line 989
    iget-wide v2, v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 990
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "nextTrackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    check-cast v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 985
    .restart local v4    # "nextTrackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 993
    .end local v6    # "trackFragment":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    :cond_1
    if-nez v4, :cond_2

    .line 994
    const/4 v7, 0x3

    iput v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 1003
    :goto_1
    return-void

    .line 997
    :cond_2
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    sub-long v8, v2, v8

    long-to-int v0, v8

    .line 998
    .local v0, "bytesToSkip":I
    if-gez v0, :cond_3

    .line 999
    new-instance v7, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v8, "Offset to encryption data was negative."

    invoke-direct {v7, v8}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1001
    :cond_3
    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 1002
    iget-object v7, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    invoke-virtual {v7, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->fillEncryptionData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V

    goto :goto_1
.end method

.method private readSample(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 32
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1020
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    .line 1021
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    if-nez v9, :cond_3

    .line 1022
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-static {v9}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getNextFragmentRun(Landroid/util/SparseArray;)Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v12

    .line 1023
    .local v12, "currentTrackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    if-nez v12, :cond_1

    .line 1026
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    invoke-interface/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v16

    sub-long v14, v14, v16

    long-to-int v4, v14

    .line 1027
    .local v4, "bytesToSkip":I
    if-gez v4, :cond_0

    .line 1028
    new-instance v9, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v10, "Offset to end of mdat was negative."

    invoke-direct {v9, v10}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1030
    :cond_0
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 1031
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 1032
    const/4 v9, 0x0

    .line 1156
    .end local v4    # "bytesToSkip":I
    .end local v12    # "currentTrackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    :goto_0
    return v9

    .line 1035
    .restart local v12    # "currentTrackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    :cond_1
    iget-object v9, v12, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v9, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget v10, v12, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget-wide v24, v9, v10

    .line 1038
    .local v24, "nextDataPosition":J
    invoke-interface/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v14

    sub-long v14, v24, v14

    long-to-int v4, v14

    .line 1039
    .restart local v4    # "bytesToSkip":I
    if-gez v4, :cond_2

    .line 1041
    const-string/jumbo v9, "FragmentedMp4Extractor"

    const-string/jumbo v10, "Ignoring negative offset to sample data."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const/4 v4, 0x0

    .line 1044
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 1045
    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1047
    .end local v4    # "bytesToSkip":I
    .end local v12    # "currentTrackBundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .end local v24    # "nextDataPosition":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v9, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v9, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v10, v10, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v9, v9, v10

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1049
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v9, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    iget-boolean v9, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v9, :cond_6

    .line 1050
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->appendSampleEncryptionData(Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1051
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v9, v10

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1055
    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v9, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    iget v9, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->sampleTransformation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 1056
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/lit8 v9, v9, -0x8

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1057
    const/16 v9, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 1059
    :cond_4
    const/4 v9, 0x4

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 1060
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1063
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v0, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    move-object/from16 v20, v0

    .line 1064
    .local v20, "fragment":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v0, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    move-object/from16 v29, v0

    .line 1065
    .local v29, "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v5, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 1066
    .local v5, "output":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v0, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    move/from16 v27, v0

    .line 1067
    .local v27, "sampleIndex":I
    move-object/from16 v0, v29

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    if-eqz v9, :cond_b

    .line 1070
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v9, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    move-object/from16 v21, v0

    .line 1071
    .local v21, "nalPrefixData":[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-byte v10, v21, v9

    .line 1072
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-byte v10, v21, v9

    .line 1073
    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-byte v10, v21, v9

    .line 1074
    move-object/from16 v0, v29

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    add-int/lit8 v23, v9, 0x1

    .line 1075
    .local v23, "nalUnitPrefixLength":I
    move-object/from16 v0, v29

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v22, v9, 0x4

    .line 1079
    .local v22, "nalUnitLengthFieldLengthDiff":I
    :goto_2
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v9, v10, :cond_c

    .line 1080
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v9, :cond_8

    .line 1082
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1083
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1084
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1086
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v10, 0x4

    invoke-interface {v5, v9, v10}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v10, 0x1

    invoke-interface {v5, v9, v10}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 1090
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->cea608TrackOutputs:[Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    if-eqz v9, :cond_7

    move-object/from16 v0, v29

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v9, v9, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const/4 v10, 0x4

    aget-byte v10, v21, v10

    .line 1091
    invoke-static {v9, v10}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->isNalUnitSei(Ljava/lang/String;B)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    .line 1092
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/lit8 v9, v9, 0x5

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1093
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int v9, v9, v22

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    goto :goto_2

    .line 1053
    .end local v5    # "output":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    .end local v20    # "fragment":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    .end local v21    # "nalPrefixData":[B
    .end local v22    # "nalUnitLengthFieldLengthDiff":I
    .end local v23    # "nalUnitPrefixLength":I
    .end local v27    # "sampleIndex":I
    .end local v29    # "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    :cond_6
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto/16 :goto_1

    .line 1091
    .restart local v5    # "output":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    .restart local v20    # "fragment":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
    .restart local v21    # "nalPrefixData":[B
    .restart local v22    # "nalUnitLengthFieldLengthDiff":I
    .restart local v23    # "nalUnitPrefixLength":I
    .restart local v27    # "sampleIndex":I
    .restart local v29    # "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    .line 1096
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    if-eqz v9, :cond_a

    .line 1098
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v9, v9, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    move-object/from16 v0, p1

    invoke-interface {v0, v9, v10, v13}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    invoke-interface {v5, v9, v10}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 1101
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    move/from16 v31, v0

    .line 1103
    .local v31, "writtenBytes":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v9, v9, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v10

    invoke-static {v9, v10}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v30

    .line 1105
    .local v30, "unescapedLength":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const-string/jumbo v9, "video/hevc"

    move-object/from16 v0, v29

    iget-object v13, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v13, v13, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {v10, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1106
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move/from16 v0, v30

    invoke-virtual {v9, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 1107
    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->getSamplePresentationTime(I)J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->cea608TrackOutputs:[Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    invoke-static {v14, v15, v9, v10}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaUtil;->consume(JLorg/telegram/messenger/exoplayer2/util/ParsableByteArray;[Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V

    .line 1113
    .end local v30    # "unescapedLength":I
    :goto_5
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int v9, v9, v31

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1114
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int v9, v9, v31

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto/16 :goto_2

    .line 1105
    .restart local v30    # "unescapedLength":I
    :cond_9
    const/4 v9, 0x0

    goto :goto_4

    .line 1111
    .end local v30    # "unescapedLength":I
    .end local v31    # "writtenBytes":I
    :cond_a
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-interface {v5, v0, v9, v10}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v31

    .restart local v31    # "writtenBytes":I
    goto :goto_5

    .line 1118
    .end local v21    # "nalPrefixData":[B
    .end local v22    # "nalUnitLengthFieldLengthDiff":I
    .end local v23    # "nalUnitPrefixLength":I
    .end local v31    # "writtenBytes":I
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v9, v10, :cond_c

    .line 1119
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    sub-int/2addr v9, v10

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-interface {v5, v0, v9, v10}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v31

    .line 1120
    .restart local v31    # "writtenBytes":I
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int v9, v9, v31

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_6

    .line 1124
    .end local v31    # "writtenBytes":I
    :cond_c
    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->getSamplePresentationTime(I)J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v6, v14, v16

    .line 1125
    .local v6, "sampleTimeUs":J
    move-object/from16 v0, v20

    iget-boolean v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v9, :cond_f

    const/high16 v9, 0x40000000    # 2.0f

    :goto_7
    move-object/from16 v0, v20

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    aget-boolean v10, v10, v27

    if-eqz v10, :cond_10

    const/4 v10, 0x1

    :goto_8
    or-int v8, v9, v10

    .line 1127
    .local v8, "sampleFlags":I
    move-object/from16 v0, v20

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->header:Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    iget v0, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    move/from16 v26, v0

    .line 1128
    .local v26, "sampleDescriptionIndex":I
    const/4 v11, 0x0

    .line 1129
    .local v11, "encryptionKey":[B
    move-object/from16 v0, v20

    iget-boolean v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v9, :cond_d

    .line 1130
    move-object/from16 v0, v20

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    if-eqz v9, :cond_11

    move-object/from16 v0, v20

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v11, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;->keyId:[B

    .line 1134
    :cond_d
    :goto_9
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;

    if-eqz v9, :cond_e

    .line 1135
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v9, v6, v7}, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v6

    .line 1137
    :cond_e
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v11}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 1139
    :goto_a
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_12

    .line 1140
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    .line 1141
    .local v28, "sampleInfo":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    move-object/from16 v0, v28

    iget v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    sub-int/2addr v9, v10

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 1142
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->eventMessageTrackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-object/from16 v0, v28

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->presentationTimeDeltaUs:J

    add-long/2addr v14, v6

    const/16 v16, 0x1

    move-object/from16 v0, v28

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v13 .. v19}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    goto :goto_a

    .line 1125
    .end local v8    # "sampleFlags":I
    .end local v11    # "encryptionKey":[B
    .end local v26    # "sampleDescriptionIndex":I
    .end local v28    # "sampleInfo":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;
    :cond_f
    const/4 v9, 0x0

    goto :goto_7

    :cond_10
    const/4 v10, 0x0

    goto :goto_8

    .line 1130
    .restart local v8    # "sampleFlags":I
    .restart local v11    # "encryptionKey":[B
    .restart local v26    # "sampleDescriptionIndex":I
    :cond_11
    move-object/from16 v0, v29

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aget-object v9, v9, v26

    iget-object v11, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;->keyId:[B

    goto :goto_9

    .line 1147
    :cond_12
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v10, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1148
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v10, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 1149
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v9, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    move-object/from16 v0, v20

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v13, v13, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget v10, v10, v13

    if-ne v9, v10, :cond_13

    .line 1151
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v10, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 1152
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    const/4 v10, 0x0

    iput v10, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 1153
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1155
    :cond_13
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 1156
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method private static shouldParseContainerAtom(I)Z
    .locals 1
    .param p0, "atom"    # I

    .prologue
    .line 1257
    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_moov:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_trak:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mdia:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_minf:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stbl:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_moof:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_traf:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mvex:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_edts:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static shouldParseLeafAtom(I)Z
    .locals 1
    .param p0, "atom"    # I

    .prologue
    .line 1246
    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_hdlr:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mdhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mvhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sidx:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stsd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tfdt:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tfhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tkhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_trex:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_trun:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_pssh:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_saiz:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_saio:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_senc:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_uuid:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sbgp:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sgpd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_elst:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mehd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_emsg:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public init(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;)V
    .locals 4
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    .prologue
    const/4 v3, 0x0

    .line 216
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    .line 217
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    if-eqz v1, :cond_0

    .line 218
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->type:I

    invoke-interface {p1, v3, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(II)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V

    .line 219
    .local v0, "bundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-direct {v2, v3, v3, v3, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->init(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;)V

    .line 220
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 221
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->maybeInitExtraTracks()V

    .line 222
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 224
    .end local v0    # "bundle":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    :cond_0
    return-void
.end method

.method public read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    .locals 1
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 247
    :cond_0
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    packed-switch v0, :pswitch_data_0

    .line 260
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->readSample(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 249
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->readAtomHeader(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    const/4 v0, -0x1

    goto :goto_1

    .line 254
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->readAtomPayload(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V

    goto :goto_0

    .line 257
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->readEncryptionData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V

    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public seek(JJ)V
    .locals 3
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .prologue
    .line 228
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 229
    .local v1, "trackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 230
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset()V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 233
    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 234
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    .line 235
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 236
    return-void
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Sniffer;->sniffFragmented(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method
