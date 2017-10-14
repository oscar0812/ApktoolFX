.class public final Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parameters"
.end annotation


# instance fields
.field public final allowMixedMimeAdaptiveness:Z

.field public final allowNonSeamlessAdaptiveness:Z

.field public final exceedRendererCapabilitiesIfNecessary:Z

.field public final exceedVideoConstraintsIfNecessary:Z

.field public final maxVideoBitrate:I

.field public final maxVideoHeight:I

.field public final maxVideoWidth:I

.field public final orientationMayChange:Z

.field public final preferredAudioLanguage:Ljava/lang/String;

.field public final preferredTextLanguage:Ljava/lang/String;

.field public final viewportHeight:I

.field public final viewportWidth:I


# direct methods
.method public constructor <init>()V
    .locals 13

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const v5, 0x7fffffff

    .line 79
    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, v1

    move v6, v5

    move v7, v5

    move v8, v4

    move v9, v4

    move v10, v5

    move v11, v5

    move v12, v4

    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V
    .locals 0
    .param p1, "preferredAudioLanguage"    # Ljava/lang/String;
    .param p2, "preferredTextLanguage"    # Ljava/lang/String;
    .param p3, "allowMixedMimeAdaptiveness"    # Z
    .param p4, "allowNonSeamlessAdaptiveness"    # Z
    .param p5, "maxVideoWidth"    # I
    .param p6, "maxVideoHeight"    # I
    .param p7, "maxVideoBitrate"    # I
    .param p8, "exceedVideoConstraintsIfNecessary"    # Z
    .param p9, "exceedRendererCapabilitiesIfNecessary"    # Z
    .param p10, "viewportWidth"    # I
    .param p11, "viewportHeight"    # I
    .param p12, "orientationMayChange"    # Z

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    .line 109
    iput-boolean p3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    .line 110
    iput-boolean p4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    .line 111
    iput p5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    .line 112
    iput p6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    .line 113
    iput p7, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    .line 114
    iput-boolean p8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    .line 115
    iput-boolean p9, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    .line 116
    iput p10, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    .line 117
    iput p11, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    .line 118
    iput-boolean p12, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    .line 119
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 328
    if-ne p0, p1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return v1

    .line 331
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 332
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 334
    check-cast v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 335
    .local v0, "other":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    if-ne v3, v4, :cond_4

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    if-ne v3, v4, :cond_4

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    .line 343
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    .line 344
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 349
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 350
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v1, v4

    .line 351
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v4, v1

    .line 352
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v4, v1

    .line 353
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    add-int v0, v1, v4

    .line 354
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    add-int v0, v1, v4

    .line 355
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    add-int v0, v1, v4

    .line 356
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v4, v1

    .line 357
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v4, v1

    .line 358
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    if-eqz v4, :cond_4

    :goto_4
    add-int v0, v1, v2

    .line 359
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    add-int v0, v1, v2

    .line 360
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    add-int v0, v1, v2

    .line 361
    return v0

    :cond_0
    move v1, v3

    .line 351
    goto :goto_0

    :cond_1
    move v1, v3

    .line 352
    goto :goto_1

    :cond_2
    move v1, v3

    .line 356
    goto :goto_2

    :cond_3
    move v1, v3

    .line 357
    goto :goto_3

    :cond_4
    move v2, v3

    .line 358
    goto :goto_4
.end method

.method public withAllowMixedMimeAdaptiveness(Z)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 13
    .param p1, "allowMixedMimeAdaptiveness"    # Z

    .prologue
    .line 166
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    if-ne p1, v0, :cond_0

    .line 169
    .end local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iget-boolean v9, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v12, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    move v3, p1

    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withAllowNonSeamlessAdaptiveness(Z)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 13
    .param p1, "allowNonSeamlessAdaptiveness"    # Z

    .prologue
    .line 182
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    if-ne p1, v0, :cond_0

    .line 185
    .end local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iget-boolean v9, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v12, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    move v4, p1

    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withExceedRendererCapabilitiesIfNecessary(Z)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 13
    .param p1, "exceedRendererCapabilitiesIfNecessary"    # Z

    .prologue
    .line 273
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    if-ne p1, v0, :cond_0

    .line 276
    .end local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v12, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    move v9, p1

    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withExceedVideoConstraintsIfNecessary(Z)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 13
    .param p1, "exceedVideoConstraintsIfNecessary"    # Z

    .prologue
    .line 253
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    if-ne p1, v0, :cond_0

    .line 256
    .end local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    iget-boolean v9, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v12, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    move v8, p1

    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withMaxVideoBitrate(I)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 13
    .param p1, "maxVideoBitrate"    # I

    .prologue
    .line 215
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    if-ne p1, v0, :cond_0

    .line 218
    .end local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iget-boolean v9, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v12, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    move v7, p1

    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withMaxVideoSize(II)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 13
    .param p1, "maxVideoWidth"    # I
    .param p2, "maxVideoHeight"    # I

    .prologue
    .line 199
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    if-ne p2, v0, :cond_0

    .line 202
    .end local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iget-boolean v9, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v12, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withMaxVideoSizeSd()Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 2

    .prologue
    .line 230
    const/16 v0, 0x4ff

    const/16 v1, 0x2cf

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->withMaxVideoSize(II)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public withPreferredAudioLanguage(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 13
    .param p1, "preferredAudioLanguage"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 132
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    .end local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iget-boolean v9, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v12, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withPreferredTextLanguage(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 13
    .param p1, "preferredTextLanguage"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 150
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    .end local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iget-boolean v9, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v12, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    move-object v2, p1

    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withViewportSize(IIZ)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 14
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "orientationMayChange"    # Z

    .prologue
    .line 292
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    move/from16 v0, p3

    if-ne v0, v1, :cond_0

    .line 296
    .end local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    :cond_0
    new-instance v1, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    iget-boolean v9, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iget-boolean v10, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    move v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    invoke-direct/range {v1 .. v13}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V

    move-object p0, v1

    goto :goto_0
.end method

.method public withViewportSizeFromContext(Landroid/content/Context;Z)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientationMayChange"    # Z

    .prologue
    .line 313
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Util;->getPhysicalDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 314
    .local v0, "viewportSize":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2, p2}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->withViewportSize(IIZ)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    return-object v1
.end method

.method public withoutVideoSizeConstraints()Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 1

    .prologue
    const v0, 0x7fffffff

    .line 239
    invoke-virtual {p0, v0, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->withMaxVideoSize(II)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public withoutViewportSizeConstraints()Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 2

    .prologue
    const v1, 0x7fffffff

    .line 323
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v1, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->withViewportSize(IIZ)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    return-object v0
.end method
