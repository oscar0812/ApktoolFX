.class public final Landroid/support/v7/graphics/Target$Builder;
.super Ljava/lang/Object;
.source "Target.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/graphics/Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mTarget:Landroid/support/v7/graphics/Target;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    new-instance v0, Landroid/support/v7/graphics/Target;

    invoke-direct {v0}, Landroid/support/v7/graphics/Target;-><init>()V

    iput-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    .line 293
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/graphics/Target;)V
    .locals 1
    .param p1, "target"    # Landroid/support/v7/graphics/Target;

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    new-instance v0, Landroid/support/v7/graphics/Target;

    invoke-direct {v0, p1}, Landroid/support/v7/graphics/Target;-><init>(Landroid/support/v7/graphics/Target;)V

    iput-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    .line 300
    return-void
.end method


# virtual methods
.method public build()Landroid/support/v7/graphics/Target;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    return-object v0
.end method

.method public setExclusive(Z)Landroid/support/v7/graphics/Target$Builder;
    .locals 1
    .param p1, "exclusive"    # Z

    .prologue
    .line 405
    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    iput-boolean p1, v0, Landroid/support/v7/graphics/Target;->mIsExclusive:Z

    .line 406
    return-object p0
.end method

.method public setLightnessWeight(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1, "weight"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .prologue
    .line 378
    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mWeights:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 379
    return-object p0
.end method

.method public setMaximumLightness(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1, "value"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 346
    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 347
    return-object p0
.end method

.method public setMaximumSaturation(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1, "value"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 322
    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 323
    return-object p0
.end method

.method public setMinimumLightness(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1, "value"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 330
    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 331
    return-object p0
.end method

.method public setMinimumSaturation(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1, "value"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 306
    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 307
    return-object p0
.end method

.method public setPopulationWeight(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1, "weight"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .prologue
    .line 393
    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mWeights:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 394
    return-object p0
.end method

.method public setSaturationWeight(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1, "weight"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .prologue
    .line 362
    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mWeights:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 363
    return-object p0
.end method

.method public setTargetLightness(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1, "value"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 338
    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 339
    return-object p0
.end method

.method public setTargetSaturation(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1, "value"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 314
    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    iget-object v0, v0, Landroid/support/v7/graphics/Target;->mSaturationTargets:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 315
    return-object p0
.end method
