.class public Lcom/googlecode/mp4parser/authoring/TrackMetaData;
.super Ljava/lang/Object;
.source "TrackMetaData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private creationTime:Ljava/util/Date;

.field private group:I

.field private height:D

.field private language:Ljava/lang/String;

.field layer:I

.field private matrix:Lcom/googlecode/mp4parser/util/Matrix;

.field private modificationTime:Ljava/util/Date;

.field private timescale:J

.field private trackId:J

.field private volume:F

.field private width:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string/jumbo v0, "eng"

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->language:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->modificationTime:Ljava/util/Date;

    .line 29
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->creationTime:Ljava/util/Date;

    .line 30
    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_0:Lcom/googlecode/mp4parser/util/Matrix;

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->matrix:Lcom/googlecode/mp4parser/util/Matrix;

    .line 34
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->trackId:J

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->group:I

    .line 25
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 135
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCreationTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->creationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getGroup()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->group:I

    return v0
.end method

.method public getHeight()D
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->height:D

    return-wide v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLayer()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->layer:I

    return v0
.end method

.method public getMatrix()Lcom/googlecode/mp4parser/util/Matrix;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->matrix:Lcom/googlecode/mp4parser/util/Matrix;

    return-object v0
.end method

.method public getModificationTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->modificationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getTimescale()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->timescale:J

    return-wide v0
.end method

.method public getTrackId()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->trackId:J

    return-wide v0
.end method

.method public getVolume()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->volume:F

    return v0
.end method

.method public getWidth()D
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->width:D

    return-wide v0
.end method

.method public setCreationTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "creationTime"    # Ljava/util/Date;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->creationTime:Ljava/util/Date;

    .line 75
    return-void
.end method

.method public setGroup(I)V
    .locals 0
    .param p1, "group"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->group:I

    .line 123
    return-void
.end method

.method public setHeight(D)V
    .locals 1
    .param p1, "height"    # D

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->height:D

    .line 91
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->language:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setLayer(I)V
    .locals 0
    .param p1, "layer"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->layer:I

    .line 107
    return-void
.end method

.method public setMatrix(Lcom/googlecode/mp4parser/util/Matrix;)V
    .locals 0
    .param p1, "matrix"    # Lcom/googlecode/mp4parser/util/Matrix;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->matrix:Lcom/googlecode/mp4parser/util/Matrix;

    .line 131
    return-void
.end method

.method public setModificationTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "modificationTime"    # Ljava/util/Date;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->modificationTime:Ljava/util/Date;

    .line 67
    return-void
.end method

.method public setTimescale(J)V
    .locals 1
    .param p1, "timescale"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->timescale:J

    .line 59
    return-void
.end method

.method public setTrackId(J)V
    .locals 1
    .param p1, "trackId"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->trackId:J

    .line 99
    return-void
.end method

.method public setVolume(F)V
    .locals 0
    .param p1, "volume"    # F

    .prologue
    .line 114
    iput p1, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->volume:F

    .line 115
    return-void
.end method

.method public setWidth(D)V
    .locals 1
    .param p1, "width"    # D

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->width:D

    .line 83
    return-void
.end method
