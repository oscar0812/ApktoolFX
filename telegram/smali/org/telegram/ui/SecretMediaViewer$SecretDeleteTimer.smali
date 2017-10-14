.class Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;
.super Landroid/widget/FrameLayout;
.source "SecretMediaViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SecretMediaViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecretDeleteTimer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;
    }
.end annotation


# instance fields
.field private afterDeleteProgressPaint:Landroid/graphics/Paint;

.field private circlePaint:Landroid/graphics/Paint;

.field private deleteProgressPaint:Landroid/graphics/Paint;

.field private deleteProgressRect:Landroid/graphics/RectF;

.field private destroyTime:J

.field private destroyTtl:J

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private freeParticles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;",
            ">;"
        }
    .end annotation
.end field

.field private lastAnimationTime:J

.field private particlePaint:Landroid/graphics/Paint;

.field private particles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/SecretMediaViewer;

.field private useVideoProgress:Z


# direct methods
.method public constructor <init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/content/Context;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const v4, -0x19191a

    const/4 v3, 0x1

    .line 119
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    .line 120
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->particles:Ljava/util/ArrayList;

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->freeParticles:Ljava/util/ArrayList;

    .line 121
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->setWillNotDraw(Z)V

    .line 123
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->particlePaint:Landroid/graphics/Paint;

    .line 124
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->particlePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 125
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->particlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->particlePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 127
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->particlePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->deleteProgressPaint:Landroid/graphics/Paint;

    .line 130
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->deleteProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->afterDeleteProgressPaint:Landroid/graphics/Paint;

    .line 133
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->afterDeleteProgressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->afterDeleteProgressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 135
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->afterDeleteProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->afterDeleteProgressPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 138
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->circlePaint:Landroid/graphics/Paint;

    .line 139
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->circlePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x7f000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->drawable:Landroid/graphics/drawable/Drawable;

    .line 142
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/16 v1, 0x28

    if-ge v0, v1, :cond_0

    .line 143
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->freeParticles:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;-><init>(Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;Lorg/telegram/ui/SecretMediaViewer$1;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;JJZ)V
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # Z

    .prologue
    .line 90
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->setDestroyTime(JJZ)V

    return-void
.end method

.method private setDestroyTime(JJZ)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "ttl"    # J
    .param p5, "videoProgress"    # Z

    .prologue
    .line 148
    iput-wide p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->destroyTime:J

    .line 149
    iput-wide p3, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->destroyTtl:J

    .line 150
    iput-boolean p5, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->useVideoProgress:Z

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->lastAnimationTime:J

    .line 152
    invoke-virtual {p0}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->invalidate()V

    .line 153
    return-void
.end method

.method private updateParticles(J)V
    .locals 9
    .param p1, "dt"    # J

    .prologue
    const/high16 v7, 0x43fa0000    # 500.0f

    .line 156
    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->particles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 157
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 158
    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->particles:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;

    .line 159
    .local v2, "particle":Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;
    iget v3, v2, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->currentTime:F

    iget v4, v2, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->lifeTime:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 160
    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->freeParticles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x28

    if-ge v3, v4, :cond_0

    .line 161
    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->freeParticles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->particles:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 164
    add-int/lit8 v0, v0, -0x1

    .line 165
    add-int/lit8 v1, v1, -0x1

    .line 157
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v5, v2, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->currentTime:F

    iget v6, v2, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->lifeTime:F

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->alpha:F

    .line 169
    iget v3, v2, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->x:F

    iget v4, v2, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->vx:F

    iget v5, v2, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->velocity:F

    mul-float/2addr v4, v5

    long-to-float v5, p1

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iput v3, v2, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->x:F

    .line 170
    iget v3, v2, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->y:F

    iget v4, v2, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->vy:F

    iget v5, v2, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->velocity:F

    mul-float/2addr v4, v5

    long-to-float v5, p1

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iput v3, v2, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->y:F

    .line 171
    iget v3, v2, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->currentTime:F

    long-to-float v4, p1

    add-float/2addr v3, v4

    iput v3, v2, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->currentTime:F

    goto :goto_1

    .line 173
    .end local v2    # "particle":Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;
    :cond_2
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 36
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v4}, Lorg/telegram/ui/SecretMediaViewer;->access$400(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v4}, Lorg/telegram/ui/SecretMediaViewer;->access$400(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    if-nez v4, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->getMeasuredWidth()I

    move-result v4

    const/high16 v5, 0x420c0000    # 35.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->circlePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 193
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->useVideoProgress:Z

    if-eqz v4, :cond_4

    .line 194
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v4}, Lorg/telegram/ui/SecretMediaViewer;->access$500(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 195
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v4}, Lorg/telegram/ui/SecretMediaViewer;->access$500(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v18

    .line 196
    .local v18, "duration":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v4}, Lorg/telegram/ui/SecretMediaViewer;->access$500(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v26

    .line 197
    .local v26, "position":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v18, v4

    if-eqz v4, :cond_2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v26, v4

    if-eqz v4, :cond_2

    .line 198
    const/high16 v4, 0x3f800000    # 1.0f

    move-wide/from16 v0, v26

    long-to-float v5, v0

    move-wide/from16 v0, v18

    long-to-float v6, v0

    div-float/2addr v5, v6

    sub-float v28, v4, v5

    .line 210
    .end local v18    # "duration":J
    .end local v26    # "position":J
    .local v28, "progress":F
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->getMeasuredWidth()I

    move-result v4

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v34, v4, v5

    .line 211
    .local v34, "x":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->getMeasuredHeight()I

    move-result v4

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v35, v4, v5

    .line 212
    .local v35, "y":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->drawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int v5, v5, v34

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int v6, v6, v35

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 213
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 214
    const/high16 v4, -0x3c4c0000    # -360.0f

    mul-float v7, v4, v28

    .line 215
    .local v7, "radProgress":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    const/high16 v6, -0x3d4c0000    # -90.0f

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->afterDeleteProgressPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->particles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 218
    .local v11, "count":I
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_2
    if-ge v10, v11, :cond_5

    .line 219
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->particles:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;

    .line 220
    .local v23, "particle":Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->particlePaint:Landroid/graphics/Paint;

    const/high16 v5, 0x437f0000    # 255.0f

    move-object/from16 v0, v23

    iget v6, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->alpha:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 221
    move-object/from16 v0, v23

    iget v4, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->x:F

    move-object/from16 v0, v23

    iget v5, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->particlePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 218
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 200
    .end local v7    # "radProgress":F
    .end local v10    # "a":I
    .end local v11    # "count":I
    .end local v23    # "particle":Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;
    .end local v28    # "progress":F
    .end local v34    # "x":I
    .end local v35    # "y":I
    .restart local v18    # "duration":J
    .restart local v26    # "position":J
    :cond_2
    const/high16 v28, 0x3f800000    # 1.0f

    .restart local v28    # "progress":F
    goto/16 :goto_1

    .line 203
    .end local v18    # "duration":J
    .end local v26    # "position":J
    .end local v28    # "progress":F
    :cond_3
    const/high16 v28, 0x3f800000    # 1.0f

    .restart local v28    # "progress":F
    goto/16 :goto_1

    .line 206
    .end local v28    # "progress":F
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getTimeDifference()I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v8, v6

    add-long v20, v4, v8

    .line 207
    .local v20, "msTime":J
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->destroyTime:J

    sub-long v8, v8, v20

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-float v4, v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->destroyTtl:J

    long-to-float v5, v8

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v6

    div-float v28, v4, v5

    .restart local v28    # "progress":F
    goto/16 :goto_1

    .line 224
    .end local v20    # "msTime":J
    .restart local v7    # "radProgress":F
    .restart local v10    # "a":I
    .restart local v11    # "count":I
    .restart local v34    # "x":I
    .restart local v35    # "y":I
    :cond_5
    const-wide v4, 0x3f91df46a2529d39L    # 0.017453292519943295

    const/high16 v6, 0x42b40000    # 90.0f

    sub-float v6, v7, v6

    float-to-double v8, v6

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    .line 225
    .local v30, "vx":D
    const-wide v4, 0x3f91df46a2529d39L    # 0.017453292519943295

    const/high16 v6, 0x42b40000    # 90.0f

    sub-float v6, v7, v6

    float-to-double v8, v6

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    neg-double v0, v4

    move-wide/from16 v32, v0

    .line 226
    .local v32, "vy":D
    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v29

    .line 227
    .local v29, "rad":I
    move-wide/from16 v0, v32

    neg-double v4, v0

    move/from16 v0, v29

    int-to-double v8, v0

    mul-double/2addr v4, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    float-to-double v8, v6

    add-double/2addr v4, v8

    double-to-float v14, v4

    .line 228
    .local v14, "cx":F
    move/from16 v0, v29

    int-to-double v4, v0

    mul-double v4, v4, v30

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    float-to-double v8, v6

    add-double/2addr v4, v8

    double-to-float v15, v4

    .line 229
    .local v15, "cy":F
    const/4 v10, 0x0

    :goto_3
    const/4 v4, 0x1

    if-ge v10, v4, :cond_8

    .line 231
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->freeParticles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 232
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->freeParticles:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;

    .line 233
    .local v22, "newParticle":Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->freeParticles:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 237
    :goto_4
    move-object/from16 v0, v22

    iput v14, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->x:F

    .line 238
    move-object/from16 v0, v22

    iput v15, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->y:F

    .line 240
    const-wide v4, 0x3f91df46a2529d39L    # 0.017453292519943295

    sget-object v6, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v8, 0x8c

    invoke-virtual {v6, v8}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x46

    int-to-double v8, v6

    mul-double v12, v4, v8

    .line 241
    .local v12, "angle":D
    const-wide/16 v4, 0x0

    cmpg-double v4, v12, v4

    if-gez v4, :cond_6

    .line 242
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v12, v4

    .line 244
    :cond_6
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v30

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v32

    sub-double/2addr v4, v8

    double-to-float v4, v4

    move-object/from16 v0, v22

    iput v4, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->vx:F

    .line 245
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v30

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v8, v8, v32

    add-double/2addr v4, v8

    double-to-float v4, v4

    move-object/from16 v0, v22

    iput v4, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->vy:F

    .line 247
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v22

    iput v4, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->alpha:F

    .line 248
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->currentTime:F

    .line 250
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v4

    add-int/lit16 v4, v4, 0x190

    int-to-float v4, v4

    move-object/from16 v0, v22

    iput v4, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->lifeTime:F

    .line 251
    const/high16 v4, 0x41a00000    # 20.0f

    sget-object v5, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v5}, Ljava/security/SecureRandom;->nextFloat()F

    move-result v5

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, v22

    iput v4, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;->velocity:F

    .line 252
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->particles:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 235
    .end local v12    # "angle":D
    .end local v22    # "newParticle":Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;
    :cond_7
    new-instance v22, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;

    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;-><init>(Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;Lorg/telegram/ui/SecretMediaViewer$1;)V

    .restart local v22    # "newParticle":Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;
    goto/16 :goto_4

    .line 255
    .end local v22    # "newParticle":Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer$Particle;
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 256
    .local v24, "newTime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->lastAnimationTime:J

    sub-long v16, v24, v4

    .line 257
    .local v16, "dt":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->updateParticles(J)V

    .line 258
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->lastAnimationTime:J

    .line 259
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->invalidate()V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x41e00000    # 28.0f

    .line 177
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 178
    invoke-virtual {p0}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 179
    .local v0, "y":I
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, 0x42440000    # 49.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->getMeasuredWidth()I

    move-result v4

    const/high16 v5, 0x41a80000    # 21.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 180
    return-void
.end method
