.class public Lcom/googlecode/mp4parser/h264/model/ScalingList;
.super Ljava/lang/Object;
.source "ScalingList.java"


# instance fields
.field public scalingList:[I

.field public useDefaultScalingMatrixFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lcom/googlecode/mp4parser/h264/read/CAVLCReader;I)Lcom/googlecode/mp4parser/h264/model/ScalingList;
    .locals 6
    .param p0, "is"    # Lcom/googlecode/mp4parser/h264/read/CAVLCReader;
    .param p1, "sizeOfScalingList"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v4, Lcom/googlecode/mp4parser/h264/model/ScalingList;

    invoke-direct {v4}, Lcom/googlecode/mp4parser/h264/model/ScalingList;-><init>()V

    .line 61
    .local v4, "sl":Lcom/googlecode/mp4parser/h264/model/ScalingList;
    new-array v5, p1, [I

    iput-object v5, v4, Lcom/googlecode/mp4parser/h264/model/ScalingList;->scalingList:[I

    .line 62
    const/16 v2, 0x8

    .line 63
    .local v2, "lastScale":I
    const/16 v3, 0x8

    .line 64
    .local v3, "nextScale":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-lt v1, p1, :cond_0

    .line 73
    return-object v4

    .line 65
    :cond_0
    if-eqz v3, :cond_1

    .line 66
    const-string/jumbo v5, "deltaScale"

    invoke-virtual {p0, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readSE(Ljava/lang/String;)I

    move-result v0

    .line 67
    .local v0, "deltaScale":I
    add-int v5, v2, v0

    add-int/lit16 v5, v5, 0x100

    rem-int/lit16 v3, v5, 0x100

    .line 68
    if-nez v1, :cond_2

    if-nez v3, :cond_2

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, v4, Lcom/googlecode/mp4parser/h264/model/ScalingList;->useDefaultScalingMatrixFlag:Z

    .line 70
    .end local v0    # "deltaScale":I
    :cond_1
    iget-object v5, v4, Lcom/googlecode/mp4parser/h264/model/ScalingList;->scalingList:[I

    if-nez v3, :cond_3

    .end local v2    # "lastScale":I
    :goto_2
    aput v2, v5, v1

    .line 71
    iget-object v5, v4, Lcom/googlecode/mp4parser/h264/model/ScalingList;->scalingList:[I

    aget v2, v5, v1

    .line 64
    .restart local v2    # "lastScale":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .restart local v0    # "deltaScale":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .end local v0    # "deltaScale":I
    :cond_3
    move v2, v3

    .line 70
    goto :goto_2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ScalingList{scalingList="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/model/ScalingList;->scalingList:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    const-string/jumbo v1, ", useDefaultScalingMatrixFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/ScalingList;->useDefaultScalingMatrixFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;)V
    .locals 6
    .param p1, "out"    # Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-boolean v4, p0, Lcom/googlecode/mp4parser/h264/model/ScalingList;->useDefaultScalingMatrixFlag:Z

    if-eqz v4, :cond_1

    .line 42
    const/4 v4, 0x0

    const-string/jumbo v5, "SPS: "

    invoke-virtual {p1, v4, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeSE(ILjava/lang/String;)V

    .line 55
    :cond_0
    return-void

    .line 46
    :cond_1
    const/16 v2, 0x8

    .line 47
    .local v2, "lastScale":I
    const/16 v3, 0x8

    .line 48
    .local v3, "nextScale":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v4, p0, Lcom/googlecode/mp4parser/h264/model/ScalingList;->scalingList:[I

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 49
    if-eqz v3, :cond_2

    .line 50
    iget-object v4, p0, Lcom/googlecode/mp4parser/h264/model/ScalingList;->scalingList:[I

    aget v4, v4, v1

    sub-int/2addr v4, v2

    add-int/lit16 v0, v4, -0x100

    .line 51
    .local v0, "deltaScale":I
    const-string/jumbo v4, "SPS: "

    invoke-virtual {p1, v0, v4}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeSE(ILjava/lang/String;)V

    .line 53
    .end local v0    # "deltaScale":I
    :cond_2
    iget-object v4, p0, Lcom/googlecode/mp4parser/h264/model/ScalingList;->scalingList:[I

    aget v2, v4, v1

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
