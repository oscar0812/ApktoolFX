.class public Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "DTSTrackImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;
    }
.end annotation


# static fields
.field private static final BUFFER:I = 0x4000000


# instance fields
.field bcCoreBitRate:I

.field bcCoreChannelMask:I

.field bcCoreMaxSampleRate:I

.field bitrate:I

.field channelCount:I

.field channelMask:I

.field codecDelayAtMaxFs:I

.field coreBitRate:I

.field coreChannelMask:I

.field coreFramePayloadInBytes:I

.field coreMaxSampleRate:I

.field coreSubStreamPresent:Z

.field private dataOffset:I

.field private dataSource:Lcom/googlecode/mp4parser/DataSource;

.field ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

.field extAvgBitrate:I

.field extFramePayloadInBytes:I

.field extPeakBitrate:I

.field extSmoothBuffSize:I

.field extensionSubStreamPresent:Z

.field frameSize:I

.field isVBR:Z

.field private lang:Ljava/lang/String;

.field lbrCodingPresent:I

.field lsbTrimPercent:I

.field maxSampleRate:I

.field numExtSubStreams:I

.field numFramesTotal:I

.field numSamplesOrigAudioAtMaxFs:I

.field sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field private sampleDurations:[J

.field sampleSize:I

.field samplerate:I

.field private samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation
.end field

.field samplesPerFrame:I

.field samplesPerFrameAtMaxFs:I

.field trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/DataSource;)V
    .locals 2
    .param p1, "dataSource"    # Lcom/googlecode/mp4parser/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 26
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->frameSize:I

    .line 31
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->dataOffset:I

    .line 32
    new-instance v0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    .line 38
    iput-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->isVBR:Z

    .line 39
    iput-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreSubStreamPresent:Z

    .line 40
    iput-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extensionSubStreamPresent:Z

    .line 41
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->numExtSubStreams:I

    .line 42
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreMaxSampleRate:I

    .line 43
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreBitRate:I

    .line 44
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreChannelMask:I

    .line 45
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreFramePayloadInBytes:I

    .line 46
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extAvgBitrate:I

    .line 47
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extPeakBitrate:I

    .line 48
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extSmoothBuffSize:I

    .line 49
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extFramePayloadInBytes:I

    .line 51
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->maxSampleRate:I

    .line 52
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->lbrCodingPresent:I

    .line 53
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->numFramesTotal:I

    .line 54
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samplesPerFrameAtMaxFs:I

    .line 55
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->numSamplesOrigAudioAtMaxFs:I

    .line 56
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->channelMask:I

    .line 57
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->codecDelayAtMaxFs:I

    .line 58
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->bcCoreMaxSampleRate:I

    .line 59
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->bcCoreBitRate:I

    .line 60
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->bcCoreChannelMask:I

    .line 61
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->lsbTrimPercent:I

    .line 63
    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->type:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "eng"

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->lang:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    .line 76
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->parse()V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/DataSource;Ljava/lang/String;)V
    .locals 2
    .param p1, "dataSource"    # Lcom/googlecode/mp4parser/DataSource;
    .param p2, "lang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 26
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->frameSize:I

    .line 31
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->dataOffset:I

    .line 32
    new-instance v0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    .line 38
    iput-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->isVBR:Z

    .line 39
    iput-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreSubStreamPresent:Z

    .line 40
    iput-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extensionSubStreamPresent:Z

    .line 41
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->numExtSubStreams:I

    .line 42
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreMaxSampleRate:I

    .line 43
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreBitRate:I

    .line 44
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreChannelMask:I

    .line 45
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreFramePayloadInBytes:I

    .line 46
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extAvgBitrate:I

    .line 47
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extPeakBitrate:I

    .line 48
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extSmoothBuffSize:I

    .line 49
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extFramePayloadInBytes:I

    .line 51
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->maxSampleRate:I

    .line 52
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->lbrCodingPresent:I

    .line 53
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->numFramesTotal:I

    .line 54
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samplesPerFrameAtMaxFs:I

    .line 55
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->numSamplesOrigAudioAtMaxFs:I

    .line 56
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->channelMask:I

    .line 57
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->codecDelayAtMaxFs:I

    .line 58
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->bcCoreMaxSampleRate:I

    .line 59
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->bcCoreBitRate:I

    .line 60
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->bcCoreChannelMask:I

    .line 61
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->lsbTrimPercent:I

    .line 63
    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->type:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "eng"

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->lang:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->lang:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    .line 70
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->parse()V

    .line 71
    return-void
.end method

.method private generateSamples(Lcom/googlecode/mp4parser/DataSource;IJI)Ljava/util/List;
    .locals 11
    .param p1, "dataSource"    # Lcom/googlecode/mp4parser/DataSource;
    .param p2, "dataOffset"    # I
    .param p3, "dataSize"    # J
    .param p5, "corePresent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/DataSource;",
            "IJI)",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 651
    new-instance v1, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;

    int-to-long v4, p2

    move-object v2, p0

    move-object v3, p1

    move-wide v6, p3

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;Lcom/googlecode/mp4parser/DataSource;JJI)V

    .line 653
    .local v1, "la":Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 655
    .local v9, "mySamples":Ljava/util/List;, "Ljava/util/List<Lcom/googlecode/mp4parser/authoring/Sample;>;"
    :goto_0
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->findNextStart()Ljava/nio/ByteBuffer;

    move-result-object v10

    .local v10, "sample":Ljava/nio/ByteBuffer;
    if-nez v10, :cond_0

    .line 672
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v3, "all samples found"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 673
    return-object v9

    .line 656
    :cond_0
    move-object v0, v10

    .line 657
    .local v0, "finalSample":Ljava/nio/ByteBuffer;
    new-instance v2, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$1;

    invoke-direct {v2, p0, v0}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$1;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;Ljava/nio/ByteBuffer;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getBitRate(I)I
    .locals 3
    .param p1, "rate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 678
    packed-switch p1, :pswitch_data_0

    .line 786
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Unknown bitrate value"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 682
    :pswitch_0
    const/16 v0, 0x20

    .line 789
    .local v0, "bitrate":I
    :goto_0
    return v0

    .line 686
    .end local v0    # "bitrate":I
    :pswitch_1
    const/16 v0, 0x38

    .line 687
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 690
    .end local v0    # "bitrate":I
    :pswitch_2
    const/16 v0, 0x40

    .line 691
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 694
    .end local v0    # "bitrate":I
    :pswitch_3
    const/16 v0, 0x60

    .line 695
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 698
    .end local v0    # "bitrate":I
    :pswitch_4
    const/16 v0, 0x70

    .line 699
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 702
    .end local v0    # "bitrate":I
    :pswitch_5
    const/16 v0, 0x80

    .line 703
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 706
    .end local v0    # "bitrate":I
    :pswitch_6
    const/16 v0, 0xc0

    .line 707
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 710
    .end local v0    # "bitrate":I
    :pswitch_7
    const/16 v0, 0xe0

    .line 711
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 714
    .end local v0    # "bitrate":I
    :pswitch_8
    const/16 v0, 0x100

    .line 715
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 718
    .end local v0    # "bitrate":I
    :pswitch_9
    const/16 v0, 0x140

    .line 719
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 722
    .end local v0    # "bitrate":I
    :pswitch_a
    const/16 v0, 0x180

    .line 723
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 726
    .end local v0    # "bitrate":I
    :pswitch_b
    const/16 v0, 0x1c0

    .line 727
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 730
    .end local v0    # "bitrate":I
    :pswitch_c
    const/16 v0, 0x200

    .line 731
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 734
    .end local v0    # "bitrate":I
    :pswitch_d
    const/16 v0, 0x240

    .line 735
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 738
    .end local v0    # "bitrate":I
    :pswitch_e
    const/16 v0, 0x280

    .line 739
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 742
    .end local v0    # "bitrate":I
    :pswitch_f
    const/16 v0, 0x300

    .line 743
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 746
    .end local v0    # "bitrate":I
    :pswitch_10
    const/16 v0, 0x3c0

    .line 747
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 750
    .end local v0    # "bitrate":I
    :pswitch_11
    const/16 v0, 0x400

    .line 751
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 754
    .end local v0    # "bitrate":I
    :pswitch_12
    const/16 v0, 0x480

    .line 755
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 758
    .end local v0    # "bitrate":I
    :pswitch_13
    const/16 v0, 0x500

    .line 759
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 762
    .end local v0    # "bitrate":I
    :pswitch_14
    const/16 v0, 0x540

    .line 763
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 766
    .end local v0    # "bitrate":I
    :pswitch_15
    const/16 v0, 0x580

    .line 767
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 770
    .end local v0    # "bitrate":I
    :pswitch_16
    const/16 v0, 0x583

    .line 771
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 774
    .end local v0    # "bitrate":I
    :pswitch_17
    const/16 v0, 0x5c0

    .line 775
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 778
    .end local v0    # "bitrate":I
    :pswitch_18
    const/16 v0, 0x600

    .line 779
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 782
    .end local v0    # "bitrate":I
    :pswitch_19
    const/4 v0, -0x1

    .line 783
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 678
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method private getSampleRate(I)I
    .locals 3
    .param p1, "sfreq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 794
    packed-switch p1, :pswitch_data_0

    .line 834
    :pswitch_0
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Unknown Sample Rate"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 798
    :pswitch_1
    const/16 v0, 0x1f40

    .line 837
    .local v0, "samplerate":I
    :goto_0
    return v0

    .line 802
    .end local v0    # "samplerate":I
    :pswitch_2
    const/16 v0, 0x3e80

    .line 803
    .restart local v0    # "samplerate":I
    goto :goto_0

    .line 806
    .end local v0    # "samplerate":I
    :pswitch_3
    const/16 v0, 0x7d00

    .line 807
    .restart local v0    # "samplerate":I
    goto :goto_0

    .line 810
    .end local v0    # "samplerate":I
    :pswitch_4
    const/16 v0, 0x2b11

    .line 811
    .restart local v0    # "samplerate":I
    goto :goto_0

    .line 814
    .end local v0    # "samplerate":I
    :pswitch_5
    const/16 v0, 0x5622

    .line 815
    .restart local v0    # "samplerate":I
    goto :goto_0

    .line 818
    .end local v0    # "samplerate":I
    :pswitch_6
    const v0, 0xac44

    .line 819
    .restart local v0    # "samplerate":I
    goto :goto_0

    .line 822
    .end local v0    # "samplerate":I
    :pswitch_7
    const/16 v0, 0x2ee0

    .line 823
    .restart local v0    # "samplerate":I
    goto :goto_0

    .line 826
    .end local v0    # "samplerate":I
    :pswitch_8
    const/16 v0, 0x5dc0

    .line 827
    .restart local v0    # "samplerate":I
    goto :goto_0

    .line 830
    .end local v0    # "samplerate":I
    :pswitch_9
    const v0, 0xbb80

    .line 831
    .restart local v0    # "samplerate":I
    goto :goto_0

    .line 794
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private parse()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->readVariables()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 88
    :cond_0
    new-instance v1, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 89
    new-instance v0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->type:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "audioSampleEntry":Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->channelCount:I

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setChannelCount(I)V

    .line 91
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samplerate:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleRate(J)V

    .line 92
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setDataReferenceIndex(I)V

    .line 93
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleSize(I)V

    .line 96
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 97
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 99
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    .line 100
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    .line 101
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->lang:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLanguage(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samplerate:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    .line 105
    return-void
.end method

.method private parseAuprhdr(ILjava/nio/ByteBuffer;)Z
    .locals 8
    .param p1, "size"    # I
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v7, 0x1

    const v6, 0xffff

    .line 185
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 186
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 187
    .local v2, "bitwAupresData":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 188
    .local v0, "a":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 189
    .local v1, "b":I
    shl-int/lit8 v4, v0, 0x10

    and-int v5, v1, v6

    or-int/2addr v4, v5

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->maxSampleRate:I

    .line 190
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->numFramesTotal:I

    .line 191
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samplesPerFrameAtMaxFs:I

    .line 192
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 193
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 194
    shl-int/lit8 v4, v0, 0x20

    and-int v5, v1, v6

    or-int/2addr v4, v5

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->numSamplesOrigAudioAtMaxFs:I

    .line 195
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->channelMask:I

    .line 196
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->codecDelayAtMaxFs:I

    .line 197
    const/16 v3, 0x15

    .line 198
    .local v3, "c":I
    and-int/lit8 v4, v2, 0x3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 199
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 200
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 201
    shl-int/lit8 v4, v0, 0x10

    and-int v5, v1, v6

    or-int/2addr v4, v5

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->bcCoreMaxSampleRate:I

    .line 202
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->bcCoreBitRate:I

    .line 203
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->bcCoreChannelMask:I

    .line 204
    add-int/lit8 v3, v3, 0x7

    .line 206
    :cond_0
    and-int/lit8 v4, v2, 0x4

    if-lez v4, :cond_1

    .line 207
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->lsbTrimPercent:I

    .line 208
    add-int/lit8 v3, v3, 0x1

    .line 210
    :cond_1
    and-int/lit8 v4, v2, 0x8

    if-lez v4, :cond_2

    .line 211
    iput v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->lbrCodingPresent:I

    .line 213
    :cond_2
    :goto_0
    if-lt v3, p1, :cond_3

    .line 218
    return v7

    .line 214
    :cond_3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 215
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private parseCoressmd(ILjava/nio/ByteBuffer;)Z
    .locals 5
    .param p1, "size"    # I
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 170
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 171
    .local v0, "cmsr_1":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 172
    .local v1, "cmsr_2":I
    shl-int/lit8 v3, v0, 0x10

    const v4, 0xffff

    and-int/2addr v4, v1

    or-int/2addr v3, v4

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreMaxSampleRate:I

    .line 173
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreBitRate:I

    .line 174
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreChannelMask:I

    .line 175
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreFramePayloadInBytes:I

    .line 176
    const/16 v2, 0xb

    .line 177
    .local v2, "i":I
    :goto_0
    if-lt v2, p1, :cond_0

    .line 181
    const/4 v3, 0x1

    return v3

    .line 178
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private parseDtshdhdr(ILjava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "size"    # I
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v4, 0x1

    .line 142
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 143
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 144
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 145
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 146
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 147
    .local v0, "bitwStreamMetadata":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 148
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->numExtSubStreams:I

    .line 150
    and-int/lit8 v2, v0, 0x1

    if-ne v2, v4, :cond_0

    .line 151
    iput-boolean v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->isVBR:Z

    .line 153
    :cond_0
    and-int/lit8 v2, v0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 154
    iput-boolean v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreSubStreamPresent:Z

    .line 156
    :cond_1
    and-int/lit8 v2, v0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 157
    iput-boolean v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extensionSubStreamPresent:Z

    .line 158
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->numExtSubStreams:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->numExtSubStreams:I

    .line 162
    :goto_0
    const/16 v1, 0xe

    .line 163
    .local v1, "i":I
    :goto_1
    if-lt v1, p1, :cond_3

    .line 167
    return-void

    .line 160
    .end local v1    # "i":I
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->numExtSubStreams:I

    goto :goto_0

    .line 164
    .restart local v1    # "i":I
    :cond_3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private parseExtssmd(ILjava/nio/ByteBuffer;)Z
    .locals 6
    .param p1, "size"    # I
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    const v5, 0xffff

    .line 225
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 226
    .local v0, "a":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 227
    .local v1, "b":I
    shl-int/lit8 v3, v0, 0x10

    and-int v4, v1, v5

    or-int/2addr v3, v4

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extAvgBitrate:I

    .line 228
    const/4 v2, 0x3

    .line 229
    .local v2, "i":I
    iget-boolean v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->isVBR:Z

    if-eqz v3, :cond_0

    .line 230
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 231
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 232
    shl-int/lit8 v3, v0, 0x10

    and-int v4, v1, v5

    or-int/2addr v3, v4

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extPeakBitrate:I

    .line 233
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extSmoothBuffSize:I

    .line 234
    add-int/lit8 v2, v2, 0x5

    .line 239
    :goto_0
    if-lt v2, p1, :cond_1

    .line 243
    const/4 v3, 0x1

    return v3

    .line 236
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extFramePayloadInBytes:I

    .line 237
    add-int/lit8 v2, v2, 0x4

    .line 239
    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private readVariables()Z
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    const-wide/16 v4, 0x0

    const-wide/16 v50, 0x61a8

    move-wide/from16 v0, v50

    invoke-interface {v3, v4, v5, v0, v1}, Lcom/googlecode/mp4parser/DataSource;->map(JJ)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 248
    .local v9, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v46

    .line 249
    .local v46, "testHeader1":I
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v47

    .line 250
    .local v47, "testHeader2":I
    const v3, 0x44545348

    move/from16 v0, v46

    if-ne v0, v3, :cond_0

    const v3, 0x44484452

    move/from16 v0, v47

    if-eq v0, v3, :cond_3

    .line 251
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "data does not start with \'DTSHDHDR\' as required for a DTS-HD file"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 255
    :cond_1
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v43, v0

    .line 256
    .local v43, "size":I
    const v3, 0x44545348

    move/from16 v0, v46

    if-ne v0, v3, :cond_6

    const v3, 0x44484452

    move/from16 v0, v47

    if-ne v0, v3, :cond_6

    .line 257
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1, v9}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->parseDtshdhdr(ILjava/nio/ByteBuffer;)V

    .line 275
    :cond_2
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v46

    .line 276
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v47

    .line 254
    .end local v43    # "size":I
    :cond_3
    const v3, 0x5354524d

    move/from16 v0, v46

    if-ne v0, v3, :cond_4

    const v3, 0x44415441

    move/from16 v0, v47

    if-eq v0, v3, :cond_5

    :cond_4
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/16 v4, 0x64

    if-gt v3, v4, :cond_1

    .line 278
    :cond_5
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    .line 279
    .local v6, "dataSize":J
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->dataOffset:I

    .line 281
    const/4 v2, -0x1

    .line 282
    .local v2, "amode":I
    const/16 v17, 0x0

    .line 283
    .local v17, "extAudioId":I
    const/16 v16, 0x0

    .line 285
    .local v16, "extAudio":I
    const/4 v8, -0x1

    .line 286
    .local v8, "corePresent":I
    const/16 v20, -0x1

    .line 287
    .local v20, "extPresent":I
    const/16 v25, 0x0

    .line 288
    .local v25, "extXch":I
    const/16 v23, 0x0

    .line 289
    .local v23, "extXXch":I
    const/16 v22, 0x0

    .line 290
    .local v22, "extX96k":I
    const/16 v24, 0x0

    .line 291
    .local v24, "extXbr":I
    const/16 v19, 0x0

    .line 292
    .local v19, "extLbr":I
    const/16 v26, 0x0

    .line 293
    .local v26, "extXll":I
    const/16 v18, 0x0

    .line 295
    .local v18, "extCore":I
    const/4 v15, 0x0

    .line 298
    .local v15, "done":Z
    :goto_0
    if-eqz v15, :cond_a

    .line 467
    const/16 v27, -0x1

    .line 468
    .local v27, "fd":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samplesPerFrame:I

    sparse-switch v3, :sswitch_data_0

    .line 488
    :goto_1
    const/4 v3, -0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_23

    .line 491
    const/4 v3, 0x0

    .line 647
    .end local v2    # "amode":I
    .end local v6    # "dataSize":J
    .end local v8    # "corePresent":I
    .end local v15    # "done":Z
    .end local v16    # "extAudio":I
    .end local v17    # "extAudioId":I
    .end local v18    # "extCore":I
    .end local v19    # "extLbr":I
    .end local v20    # "extPresent":I
    .end local v22    # "extX96k":I
    .end local v23    # "extXXch":I
    .end local v24    # "extXbr":I
    .end local v25    # "extXch":I
    .end local v26    # "extXll":I
    .end local v27    # "fd":I
    :goto_2
    return v3

    .line 258
    .restart local v43    # "size":I
    :cond_6
    const v3, 0x434f5245

    move/from16 v0, v46

    if-ne v0, v3, :cond_7

    const v3, 0x53534d44

    move/from16 v0, v47

    if-ne v0, v3, :cond_7

    .line 259
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1, v9}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->parseCoressmd(ILjava/nio/ByteBuffer;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 260
    const/4 v3, 0x0

    goto :goto_2

    .line 262
    :cond_7
    const v3, 0x41555052

    move/from16 v0, v46

    if-ne v0, v3, :cond_8

    const v3, 0x2d484452

    move/from16 v0, v47

    if-ne v0, v3, :cond_8

    .line 263
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1, v9}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->parseAuprhdr(ILjava/nio/ByteBuffer;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 264
    const/4 v3, 0x0

    goto :goto_2

    .line 266
    :cond_8
    const v3, 0x45585453

    move/from16 v0, v46

    if-ne v0, v3, :cond_9

    const v3, 0x535f4d44

    move/from16 v0, v47

    if-ne v0, v3, :cond_9

    .line 267
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1, v9}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->parseExtssmd(ILjava/nio/ByteBuffer;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 268
    const/4 v3, 0x0

    goto :goto_2

    .line 271
    :cond_9
    const/16 v32, 0x0

    .local v32, "i":I
    :goto_3
    move/from16 v0, v32

    move/from16 v1, v43

    if-ge v0, v1, :cond_2

    .line 272
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    .line 271
    add-int/lit8 v32, v32, 0x1

    goto :goto_3

    .line 299
    .end local v32    # "i":I
    .end local v43    # "size":I
    .restart local v2    # "amode":I
    .restart local v6    # "dataSize":J
    .restart local v8    # "corePresent":I
    .restart local v15    # "done":Z
    .restart local v16    # "extAudio":I
    .restart local v17    # "extAudioId":I
    .restart local v18    # "extCore":I
    .restart local v19    # "extLbr":I
    .restart local v20    # "extPresent":I
    .restart local v22    # "extX96k":I
    .restart local v23    # "extXXch":I
    .restart local v24    # "extXbr":I
    .restart local v25    # "extXch":I
    .restart local v26    # "extXll":I
    :cond_a
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v38

    .line 300
    .local v38, "offset":I
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v45

    .line 301
    .local v45, "sync":I
    const v3, 0x7ffe8001

    move/from16 v0, v45

    if-ne v0, v3, :cond_10

    .line 302
    const/4 v3, 0x1

    if-ne v8, v3, :cond_b

    .line 303
    const/4 v15, 0x1

    .line 304
    goto/16 :goto_0

    .line 305
    :cond_b
    const/4 v8, 0x1

    .line 306
    new-instance v11, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v11, v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 308
    .local v11, "brb":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v30

    .line 309
    .local v30, "ftype":I
    const/4 v3, 0x5

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v42

    .line 310
    .local v42, "shrt":I
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v13

    .line 311
    .local v13, "cpf":I
    const/4 v3, 0x1

    move/from16 v0, v30

    if-ne v0, v3, :cond_c

    const/16 v3, 0x1f

    move/from16 v0, v42

    if-ne v0, v3, :cond_c

    if-eqz v13, :cond_d

    .line 314
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 317
    :cond_d
    const/4 v3, 0x7

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v33

    .line 318
    .local v33, "nblks":I
    add-int/lit8 v3, v33, 0x1

    mul-int/lit8 v3, v3, 0x20

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samplesPerFrame:I

    .line 319
    const/16 v3, 0xe

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v29

    .line 320
    .local v29, "fsize":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->frameSize:I

    add-int/lit8 v4, v29, 0x1

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->frameSize:I

    .line 321
    const/4 v3, 0x6

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    .line 322
    const/4 v3, 0x4

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v41

    .line 324
    .local v41, "sfreq":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->getSampleRate(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samplerate:I

    .line 326
    const/4 v3, 0x5

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v40

    .line 328
    .local v40, "rate":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->getBitRate(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->bitrate:I

    .line 330
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v28

    .line 331
    .local v28, "fixedBit":I
    if-eqz v28, :cond_e

    .line 334
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 337
    :cond_e
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 338
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 339
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 340
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 341
    const/4 v3, 0x3

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v17

    .line 342
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    .line 343
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 344
    const/4 v3, 0x2

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 345
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 347
    const/4 v3, 0x1

    if-ne v13, v3, :cond_f

    .line 350
    const/16 v3, 0x10

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 353
    :cond_f
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 354
    const/4 v3, 0x4

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v48

    .line 355
    .local v48, "vernum":I
    const/4 v3, 0x2

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 356
    const/4 v3, 0x3

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v39

    .line 357
    .local v39, "pcmr":I
    packed-switch v39, :pswitch_data_0

    .line 376
    :pswitch_0
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 362
    :pswitch_1
    const/16 v3, 0x10

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->sampleSize:I

    .line 379
    :goto_4
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 380
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 381
    const/4 v14, 0x0

    .line 383
    .local v14, "dialnorm":I
    packed-switch v48, :pswitch_data_1

    .line 397
    const/4 v3, 0x4

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 400
    :goto_5
    add-int v3, v38, v29

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 367
    .end local v14    # "dialnorm":I
    :pswitch_2
    const/16 v3, 0x14

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->sampleSize:I

    goto :goto_4

    .line 372
    :pswitch_3
    const/16 v3, 0x18

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->sampleSize:I

    goto :goto_4

    .line 387
    .restart local v14    # "dialnorm":I
    :pswitch_4
    const/4 v3, 0x4

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    .line 388
    add-int/lit8 v3, v14, 0x10

    neg-int v3, v3

    .line 389
    goto :goto_5

    .line 392
    :pswitch_5
    const/4 v3, 0x4

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    .line 393
    neg-int v3, v14

    .line 394
    goto :goto_5

    .line 402
    .end local v11    # "brb":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    .end local v13    # "cpf":I
    .end local v14    # "dialnorm":I
    .end local v28    # "fixedBit":I
    .end local v29    # "fsize":I
    .end local v30    # "ftype":I
    .end local v33    # "nblks":I
    .end local v39    # "pcmr":I
    .end local v40    # "rate":I
    .end local v41    # "sfreq":I
    .end local v42    # "shrt":I
    .end local v48    # "vernum":I
    :cond_10
    const v3, 0x64582025

    move/from16 v0, v45

    if-ne v0, v3, :cond_22

    .line 403
    const/4 v3, -0x1

    if-ne v8, v3, :cond_11

    .line 404
    const/4 v8, 0x0

    .line 405
    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samplesPerFrameAtMaxFs:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samplesPerFrame:I

    .line 407
    :cond_11
    const/16 v20, 0x1

    .line 408
    new-instance v11, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v11, v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 409
    .restart local v11    # "brb":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    const/16 v3, 0x8

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 410
    const/4 v3, 0x2

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 411
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v31

    .line 412
    .local v31, "headerSizeType":I
    const/16 v35, 0xc

    .line 413
    .local v35, "nuBits4Header":I
    const/16 v34, 0x14

    .line 414
    .local v34, "nuBits4ExSSFsize":I
    if-nez v31, :cond_12

    .line 415
    const/16 v35, 0x8

    .line 416
    const/16 v34, 0x10

    .line 418
    :cond_12
    move/from16 v0, v35

    invoke-virtual {v11, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v3

    add-int/lit8 v37, v3, 0x1

    .line 419
    .local v37, "nuExtSSHeaderSize":I
    move/from16 v0, v34

    invoke-virtual {v11, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v3

    add-int/lit8 v36, v3, 0x1

    .line 420
    .local v36, "nuExtSSFsize":I
    add-int v3, v38, v37

    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 421
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v21

    .line 422
    .local v21, "extSync":I
    const v3, 0x5a5a5a5a

    move/from16 v0, v21

    if-ne v0, v3, :cond_16

    .line 423
    const/4 v3, 0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_13

    .line 424
    const/4 v15, 0x1

    .line 426
    :cond_13
    const/16 v25, 0x1

    .line 458
    :cond_14
    :goto_6
    if-nez v15, :cond_15

    .line 459
    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->frameSize:I

    add-int v3, v3, v36

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->frameSize:I

    .line 461
    :cond_15
    add-int v3, v38, v36

    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 427
    :cond_16
    const v3, 0x47004a03

    move/from16 v0, v21

    if-ne v0, v3, :cond_18

    .line 428
    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_17

    .line 429
    const/4 v15, 0x1

    .line 431
    :cond_17
    const/16 v23, 0x1

    .line 432
    goto :goto_6

    :cond_18
    const v3, 0x1d95f262

    move/from16 v0, v21

    if-ne v0, v3, :cond_1a

    .line 433
    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_19

    .line 434
    const/4 v15, 0x1

    .line 436
    :cond_19
    const/16 v22, 0x1

    .line 437
    goto :goto_6

    :cond_1a
    const v3, 0x655e315e

    move/from16 v0, v21

    if-ne v0, v3, :cond_1c

    .line 438
    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_1b

    .line 439
    const/4 v15, 0x1

    .line 441
    :cond_1b
    const/16 v24, 0x1

    .line 442
    goto :goto_6

    :cond_1c
    const v3, 0xa801921

    move/from16 v0, v21

    if-ne v0, v3, :cond_1e

    .line 443
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_1d

    .line 444
    const/4 v15, 0x1

    .line 446
    :cond_1d
    const/16 v19, 0x1

    .line 447
    goto :goto_6

    :cond_1e
    const v3, 0x41a29547

    move/from16 v0, v21

    if-ne v0, v3, :cond_20

    .line 448
    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_1f

    .line 449
    const/4 v15, 0x1

    .line 451
    :cond_1f
    const/16 v26, 0x1

    .line 452
    goto :goto_6

    :cond_20
    const v3, 0x2b09261

    move/from16 v0, v21

    if-ne v0, v3, :cond_14

    .line 453
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_21

    .line 454
    const/4 v15, 0x1

    .line 456
    :cond_21
    const/16 v18, 0x1

    goto :goto_6

    .line 463
    .end local v11    # "brb":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    .end local v21    # "extSync":I
    .end local v31    # "headerSizeType":I
    .end local v34    # "nuBits4ExSSFsize":I
    .end local v35    # "nuBits4Header":I
    .end local v36    # "nuExtSSFsize":I
    .end local v37    # "nuExtSSHeaderSize":I
    :cond_22
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "No DTS_SYNCWORD_* found at "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 472
    .end local v38    # "offset":I
    .end local v45    # "sync":I
    .restart local v27    # "fd":I
    :sswitch_0
    const/16 v27, 0x0

    .line 473
    goto/16 :goto_1

    .line 476
    :sswitch_1
    const/16 v27, 0x1

    .line 477
    goto/16 :goto_1

    .line 480
    :sswitch_2
    const/16 v27, 0x2

    .line 481
    goto/16 :goto_1

    .line 484
    :sswitch_3
    const/16 v27, 0x3

    goto/16 :goto_1

    .line 494
    :cond_23
    const/16 v12, 0x1f

    .line 495
    .local v12, "coreLayout":I
    packed-switch v2, :pswitch_data_2

    .line 509
    :goto_7
    :pswitch_6
    const/16 v44, 0x0

    .line 510
    .local v44, "streamContruction":I
    if-nez v8, :cond_2c

    .line 511
    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_28

    .line 512
    if-nez v18, :cond_27

    .line 513
    const/16 v44, 0x11

    .line 514
    const-string/jumbo v3, "dtsl"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->type:Ljava/lang/String;

    .line 532
    :cond_24
    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->maxSampleRate:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samplerate:I

    .line 533
    const/16 v3, 0x18

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->sampleSize:I

    .line 595
    :cond_25
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->maxSampleRate:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setDTSSamplingFrequency(J)V

    .line 596
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->isVBR:Z

    if-eqz v3, :cond_3a

    .line 597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreBitRate:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extPeakBitrate:I

    add-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setMaxBitRate(J)V

    .line 601
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreBitRate:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extAvgBitrate:I

    add-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setAvgBitRate(J)V

    .line 602
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->sampleSize:I

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setPcmSampleDepth(I)V

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setFrameDuration(I)V

    .line 604
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    move/from16 v0, v44

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setStreamConstruction(I)V

    .line 605
    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreChannelMask:I

    and-int/lit8 v3, v3, 0x8

    if-gtz v3, :cond_26

    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreChannelMask:I

    and-int/lit16 v3, v3, 0x1000

    if-lez v3, :cond_3b

    .line 606
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setCoreLFEPresent(I)V

    .line 610
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    invoke-virtual {v3, v12}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setCoreLayout(I)V

    .line 611
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreFramePayloadInBytes:I

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setCoreSize(I)V

    .line 612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setStereoDownmix(I)V

    .line 613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setRepresentationType(I)V

    .line 614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->channelMask:I

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setChannelLayout(I)V

    .line 615
    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreMaxSampleRate:I

    if-lez v3, :cond_3c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extAvgBitrate:I

    if-lez v3, :cond_3c

    .line 616
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setMultiAssetFlag(I)V

    .line 620
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->lbrCodingPresent:I

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setLBRDurationMod(I)V

    .line 621
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setReservedBoxPresent(I)V

    .line 623
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->channelCount:I

    .line 624
    const/4 v10, 0x0

    .local v10, "bit":I
    :goto_d
    const/16 v3, 0x10

    if-lt v10, v3, :cond_3d

    .line 643
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->dataOffset:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->generateSamples(Lcom/googlecode/mp4parser/DataSource;IJI)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samples:Ljava/util/List;

    .line 644
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samples:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [J

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->sampleDurations:[J

    .line 645
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->sampleDurations:[J

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samplesPerFrame:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    .line 647
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 506
    .end local v10    # "bit":I
    .end local v44    # "streamContruction":I
    :pswitch_7
    move v12, v2

    goto/16 :goto_7

    .line 516
    .restart local v44    # "streamContruction":I
    :cond_27
    const/16 v44, 0x15

    .line 517
    const-string/jumbo v3, "dtsh"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->type:Ljava/lang/String;

    goto/16 :goto_8

    .line 519
    :cond_28
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_29

    .line 520
    const/16 v44, 0x12

    .line 521
    const-string/jumbo v3, "dtse"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->type:Ljava/lang/String;

    goto/16 :goto_8

    .line 522
    :cond_29
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_24

    .line 523
    const-string/jumbo v3, "dtsh"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->type:Ljava/lang/String;

    .line 524
    if-nez v23, :cond_2a

    if-nez v26, :cond_2a

    .line 525
    const/16 v44, 0x13

    .line 526
    goto/16 :goto_8

    :cond_2a
    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_2b

    if-nez v26, :cond_2b

    .line 527
    const/16 v44, 0x14

    .line 528
    goto/16 :goto_8

    :cond_2b
    if-nez v23, :cond_24

    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_24

    .line 529
    const/16 v44, 0x15

    goto/16 :goto_8

    .line 535
    :cond_2c
    const/4 v3, 0x1

    move/from16 v0, v20

    if-ge v0, v3, :cond_2e

    .line 536
    if-lez v16, :cond_2d

    .line 537
    sparse-switch v17, :sswitch_data_1

    .line 554
    const/16 v44, 0x0

    .line 555
    const-string/jumbo v3, "dtsh"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->type:Ljava/lang/String;

    goto/16 :goto_9

    .line 539
    :sswitch_4
    const/16 v44, 0x2

    .line 540
    const-string/jumbo v3, "dtsc"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->type:Ljava/lang/String;

    goto/16 :goto_9

    .line 544
    :sswitch_5
    const/16 v44, 0x4

    .line 545
    const-string/jumbo v3, "dtsc"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->type:Ljava/lang/String;

    goto/16 :goto_9

    .line 549
    :sswitch_6
    const/16 v44, 0x3

    .line 550
    const-string/jumbo v3, "dtsh"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->type:Ljava/lang/String;

    goto/16 :goto_9

    .line 559
    :cond_2d
    const/16 v44, 0x1

    .line 560
    const-string/jumbo v3, "dtsc"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->type:Ljava/lang/String;

    goto/16 :goto_9

    .line 563
    :cond_2e
    const-string/jumbo v3, "dtsh"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->type:Ljava/lang/String;

    .line 564
    if-nez v16, :cond_34

    .line 565
    if-nez v18, :cond_2f

    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_2f

    if-nez v22, :cond_2f

    if-nez v24, :cond_2f

    if-nez v26, :cond_2f

    if-nez v19, :cond_2f

    .line 566
    const/16 v44, 0x5

    .line 567
    goto/16 :goto_9

    :cond_2f
    if-nez v18, :cond_30

    if-nez v23, :cond_30

    if-nez v22, :cond_30

    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_30

    if-nez v26, :cond_30

    if-nez v19, :cond_30

    .line 568
    const/16 v44, 0x6

    .line 569
    goto/16 :goto_9

    :cond_30
    if-nez v18, :cond_31

    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_31

    if-nez v22, :cond_31

    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_31

    if-nez v26, :cond_31

    if-nez v19, :cond_31

    .line 570
    const/16 v44, 0x9

    .line 571
    goto/16 :goto_9

    :cond_31
    if-nez v18, :cond_32

    if-nez v23, :cond_32

    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_32

    if-nez v24, :cond_32

    if-nez v26, :cond_32

    if-nez v19, :cond_32

    .line 572
    const/16 v44, 0xa

    .line 573
    goto/16 :goto_9

    :cond_32
    if-nez v18, :cond_33

    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_33

    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_33

    if-nez v24, :cond_33

    if-nez v26, :cond_33

    if-nez v19, :cond_33

    .line 574
    const/16 v44, 0xd

    .line 575
    goto/16 :goto_9

    :cond_33
    if-nez v18, :cond_25

    if-nez v23, :cond_25

    if-nez v22, :cond_25

    if-nez v24, :cond_25

    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_25

    if-nez v19, :cond_25

    .line 576
    const/16 v44, 0xe

    .line 578
    goto/16 :goto_9

    .line 579
    :cond_34
    if-nez v17, :cond_35

    if-nez v18, :cond_35

    if-nez v23, :cond_35

    if-nez v22, :cond_35

    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_35

    if-nez v26, :cond_35

    if-nez v19, :cond_35

    .line 580
    const/16 v44, 0x7

    .line 581
    goto/16 :goto_9

    :cond_35
    const/4 v3, 0x6

    move/from16 v0, v17

    if-ne v0, v3, :cond_36

    if-nez v18, :cond_36

    if-nez v23, :cond_36

    if-nez v22, :cond_36

    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_36

    if-nez v26, :cond_36

    if-nez v19, :cond_36

    .line 582
    const/16 v44, 0x8

    .line 583
    goto/16 :goto_9

    :cond_36
    if-nez v17, :cond_37

    if-nez v18, :cond_37

    if-nez v23, :cond_37

    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_37

    if-nez v24, :cond_37

    if-nez v26, :cond_37

    if-nez v19, :cond_37

    .line 584
    const/16 v44, 0xb

    .line 585
    goto/16 :goto_9

    :cond_37
    const/4 v3, 0x6

    move/from16 v0, v17

    if-ne v0, v3, :cond_38

    if-nez v18, :cond_38

    if-nez v23, :cond_38

    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_38

    if-nez v24, :cond_38

    if-nez v26, :cond_38

    if-nez v19, :cond_38

    .line 586
    const/16 v44, 0xc

    .line 587
    goto/16 :goto_9

    :cond_38
    if-nez v17, :cond_39

    if-nez v18, :cond_39

    if-nez v23, :cond_39

    if-nez v22, :cond_39

    if-nez v24, :cond_39

    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_39

    if-nez v19, :cond_39

    .line 588
    const/16 v44, 0xf

    .line 589
    goto/16 :goto_9

    :cond_39
    const/4 v3, 0x2

    move/from16 v0, v17

    if-ne v0, v3, :cond_25

    if-nez v18, :cond_25

    if-nez v23, :cond_25

    if-nez v22, :cond_25

    if-nez v24, :cond_25

    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_25

    if-nez v19, :cond_25

    .line 590
    const/16 v44, 0x10

    goto/16 :goto_9

    .line 599
    :cond_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreBitRate:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extAvgBitrate:I

    add-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setMaxBitRate(J)V

    goto/16 :goto_a

    .line 608
    :cond_3b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setCoreLFEPresent(I)V

    goto/16 :goto_b

    .line 618
    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setMultiAssetFlag(I)V

    goto/16 :goto_c

    .line 625
    .restart local v10    # "bit":I
    :cond_3d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->channelMask:I

    shr-int/2addr v3, v10

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3e

    .line 626
    packed-switch v10, :pswitch_data_3

    .line 638
    :pswitch_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->channelCount:I

    add-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->channelCount:I

    .line 624
    :cond_3e
    :goto_e
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_d

    .line 634
    :pswitch_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->channelCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->channelCount:I

    goto :goto_e

    .line 468
    :sswitch_data_0
    .sparse-switch
        0x200 -> :sswitch_0
        0x400 -> :sswitch_1
        0x800 -> :sswitch_2
        0x1000 -> :sswitch_3
    .end sparse-switch

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 383
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 495
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 537
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x2 -> :sswitch_5
        0x6 -> :sswitch_6
    .end sparse-switch

    .line 626
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/DataSource;->close()V

    .line 81
    return-void
.end method

.method public getCompositionTimeEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string/jumbo v0, "soun"

    return-object v0
.end method

.method public getSampleDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public getSampleDurations()[J
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->sampleDurations:[J

    return-object v0
.end method

.method public getSamples()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samples:Ljava/util/List;

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method
