.class public Lorg/telegram/ui/Components/Paint/Painting;
.super Ljava/lang/Object;
.source "Painting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Painting$PaintingData;,
        Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;
    }
.end annotation


# instance fields
.field private activePath:Lorg/telegram/ui/Components/Paint/Path;

.field private activeStrokeBounds:Landroid/graphics/RectF;

.field private backupSlice:Lorg/telegram/ui/Components/Paint/Slice;

.field private bitmapTexture:Lorg/telegram/ui/Components/Paint/Texture;

.field private brush:Lorg/telegram/ui/Components/Paint/Brush;

.field private brushTexture:Lorg/telegram/ui/Components/Paint/Texture;

.field private buffers:[I

.field private dataBuffer:Ljava/nio/ByteBuffer;

.field private delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

.field private paintTexture:I

.field private paused:Z

.field private projection:[F

.field private renderProjection:[F

.field private renderState:Lorg/telegram/ui/Components/Paint/RenderState;

.field private renderView:Lorg/telegram/ui/Components/Paint/RenderView;

.field private reusableFramebuffer:I

.field private shaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/Components/Paint/Shader;",
            ">;"
        }
    .end annotation
.end field

.field private size:Lorg/telegram/ui/Components/Size;

.field private suppressChangesCounter:I

.field private textureBuffer:Ljava/nio/ByteBuffer;

.field private vertexBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Size;)V
    .locals 7
    .param p1, "sz"    # Lorg/telegram/ui/Components/Size;

    .prologue
    const/16 v6, 0x20

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    .line 63
    new-instance v1, Lorg/telegram/ui/Components/Paint/RenderState;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Paint/RenderState;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderState:Lorg/telegram/ui/Components/Paint/RenderState;

    .line 65
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    .line 67
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v1, v1, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v2, v2, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v2, v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 69
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v1, v1, Lorg/telegram/ui/Components/Size;->width:F

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v3, v2, Lorg/telegram/ui/Components/Size;->height:F

    const/high16 v4, -0x40800000    # -1.0f

    move v2, v0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/GLMatrix;->LoadOrtho(FFFFFF)[F

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->projection:[F

    .line 71
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    .line 72
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    .line 73
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 75
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 76
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 77
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v2, v2, Lorg/telegram/ui/Components/Size;->width:F

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 78
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 79
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 80
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v2, v2, Lorg/telegram/ui/Components/Size;->height:F

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 81
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v2, v2, Lorg/telegram/ui/Components/Size;->width:F

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 82
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v2, v2, Lorg/telegram/ui/Components/Size;->height:F

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 83
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 85
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_1

    .line 86
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    .line 87
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 88
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 89
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 90
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 91
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 92
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 98
    :cond_1
    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Path;)Lorg/telegram/ui/Components/Paint/Path;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Painting;
    .param p1, "x1"    # Lorg/telegram/ui/Components/Paint/Path;

    .prologue
    .line 19
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->activePath:Lorg/telegram/ui/Components/Paint/Path;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Paint/Painting;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Painting;

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getReusableFramebuffer()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/Paint/Painting;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Painting;

    .prologue
    .line 19
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeStrokeBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Painting;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 19
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeStrokeBounds:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/RectF;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Painting;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Painting;->registerUndo(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Paint/Painting;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Painting;

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->beginSuppressingChanges()V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/Paint/Painting;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Painting;

    .prologue
    .line 19
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/Paint/Painting;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Painting;

    .prologue
    .line 19
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/RectF;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Painting;
    .param p1, "x1"    # Landroid/graphics/RectF;
    .param p2, "x2"    # Ljava/lang/Runnable;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Painting;->update(Landroid/graphics/RectF;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/Paint/Painting;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Painting;

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->endSuppressingChanges()V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Slice;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Painting;
    .param p1, "x1"    # Lorg/telegram/ui/Components/Paint/Slice;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Painting;->restoreSlice(Lorg/telegram/ui/Components/Paint/Slice;)V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/Paint/Painting;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Painting;

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/Paint/Painting;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Painting;

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->isSuppressingChanges()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Paint/Painting;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Painting;

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintTexture()I

    move-result v0

    return v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Components/Paint/Painting;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Painting;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->paused:Z

    return p1
.end method

.method static synthetic access$2102(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Slice;)Lorg/telegram/ui/Components/Paint/Slice;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Painting;
    .param p1, "x1"    # Lorg/telegram/ui/Components/Paint/Slice;

    .prologue
    .line 19
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->backupSlice:Lorg/telegram/ui/Components/Paint/Slice;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Size;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Painting;

    .prologue
    .line 19
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Paint/Painting;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Painting;

    .prologue
    .line 19
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/Brush;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Painting;

    .prologue
    .line 19
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/Texture;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Painting;

    .prologue
    .line 19
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->brushTexture:Lorg/telegram/ui/Components/Paint/Texture;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Texture;)Lorg/telegram/ui/Components/Paint/Texture;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Painting;
    .param p1, "x1"    # Lorg/telegram/ui/Components/Paint/Texture;

    .prologue
    .line 19
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->brushTexture:Lorg/telegram/ui/Components/Paint/Texture;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Paint/Painting;)[F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Painting;

    .prologue
    .line 19
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->projection:[F

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/RenderState;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Painting;

    .prologue
    .line 19
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderState:Lorg/telegram/ui/Components/Paint/RenderState;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Painting;

    .prologue
    .line 19
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    return-object v0
.end method

.method private beginSuppressingChanges()V
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->suppressChangesCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->suppressChangesCounter:I

    .line 122
    return-void
.end method

.method private endSuppressingChanges()V
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->suppressChangesCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->suppressChangesCounter:I

    .line 126
    return-void
.end method

.method private getPaintTexture()I
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->paintTexture:I

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Texture;->generateTexture(Lorg/telegram/ui/Components/Size;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->paintTexture:I

    .line 546
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->paintTexture:I

    return v0
.end method

.method private getReusableFramebuffer()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 525
    iget v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->reusableFramebuffer:I

    if-nez v1, :cond_0

    .line 526
    new-array v0, v3, [I

    .line 527
    .local v0, "buffers":[I
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 528
    aget v1, v0, v2

    iput v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->reusableFramebuffer:I

    .line 530
    invoke-static {}, Lorg/telegram/ui/Components/Paint/Utils;->HasGLError()V

    .line 532
    .end local v0    # "buffers":[I
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->reusableFramebuffer:I

    return v1
.end method

.method private getTexture()I
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->bitmapTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->bitmapTexture:Lorg/telegram/ui/Components/Paint/Texture;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Texture;->texture()I

    move-result v0

    .line 539
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSuppressingChanges()Z
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->suppressChangesCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerUndo(Landroid/graphics/RectF;)V
    .locals 7
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 263
    if-nez p1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getBounds()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {p1, p1, v4}, Landroid/graphics/RectF;->setIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v1

    .line 268
    .local v1, "intersect":Z
    if-eqz v1, :cond_0

    .line 272
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintingData(Landroid/graphics/RectF;Z)Lorg/telegram/ui/Components/Paint/Painting$PaintingData;

    move-result-object v2

    .line 273
    .local v2, "paintingData":Lorg/telegram/ui/Components/Paint/Painting$PaintingData;
    iget-object v0, v2, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;->data:Ljava/nio/ByteBuffer;

    .line 275
    .local v0, "data":Ljava/nio/ByteBuffer;
    new-instance v3, Lorg/telegram/ui/Components/Paint/Slice;

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    invoke-interface {v4}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->requestDispatchQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    invoke-direct {v3, v0, p1, v4}, Lorg/telegram/ui/Components/Paint/Slice;-><init>(Ljava/nio/ByteBuffer;Landroid/graphics/RectF;Lorg/telegram/messenger/DispatchQueue;)V

    .line 276
    .local v3, "slice":Lorg/telegram/ui/Components/Paint/Slice;
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    invoke-interface {v4}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->requestUndoStore()Lorg/telegram/ui/Components/Paint/UndoStore;

    move-result-object v4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Components/Paint/Painting$3;

    invoke-direct {v6, p0, v3}, Lorg/telegram/ui/Components/Paint/Painting$3;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Slice;)V

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/Paint/UndoStore;->registerUndo(Ljava/util/UUID;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private render(II)V
    .locals 13
    .param p1, "mask"    # I
    .param p2, "color"    # I

    .prologue
    const/16 v5, 0xde1

    const/16 v4, 0x8

    const/4 v1, 0x2

    const/4 v12, 0x1

    const/4 v0, 0x0

    .line 318
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    invoke-interface {v2}, Lorg/telegram/ui/Components/Paint/Brush;->isLightSaber()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "blitWithMaskLight"

    :goto_0
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/Paint/Shader;

    .line 319
    .local v11, "shader":Lorg/telegram/ui/Components/Paint/Shader;
    if-nez v11, :cond_1

    .line 346
    :goto_1
    return-void

    .line 318
    .end local v11    # "shader":Lorg/telegram/ui/Components/Paint/Shader;
    :cond_0
    const-string/jumbo v2, "blitWithMask"

    goto :goto_0

    .line 323
    .restart local v11    # "shader":Lorg/telegram/ui/Components/Paint/Shader;
    :cond_1
    iget v2, v11, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 325
    const-string/jumbo v2, "mvpMatrix"

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderProjection:[F

    invoke-static {v3}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-static {v2, v12, v0, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    .line 326
    const-string/jumbo v2, "texture"

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 327
    const-string/jumbo v2, "mask"

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v12}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 328
    const-string/jumbo v2, "color"

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, p2}, Lorg/telegram/ui/Components/Paint/Shader;->SetColorUniform(II)V

    .line 330
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 331
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v2

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 333
    const v2, 0x84c1

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 334
    invoke-static {v5, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 336
    const/16 v2, 0x303

    invoke-static {v12, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 338
    const/16 v2, 0x1406

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    move v3, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 339
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 340
    const/16 v7, 0x1406

    iget-object v10, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    move v5, v12

    move v6, v1

    move v8, v0

    move v9, v4

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 341
    invoke-static {v12}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 343
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 345
    invoke-static {}, Lorg/telegram/ui/Components/Paint/Utils;->HasGLError()V

    goto :goto_1
.end method

.method private renderBlit()V
    .locals 13

    .prologue
    const/16 v2, 0x1406

    const/16 v4, 0x8

    const/4 v1, 0x2

    const/4 v12, 0x1

    const/4 v0, 0x0

    .line 349
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    const-string/jumbo v5, "blit"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/Paint/Shader;

    .line 350
    .local v11, "shader":Lorg/telegram/ui/Components/Paint/Shader;
    if-nez v11, :cond_0

    .line 372
    :goto_0
    return-void

    .line 354
    :cond_0
    iget v3, v11, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 356
    const-string/jumbo v3, "mvpMatrix"

    invoke-virtual {v11, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderProjection:[F

    invoke-static {v5}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-static {v3, v12, v0, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    .line 357
    const-string/jumbo v3, "texture"

    invoke-virtual {v11, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 359
    const v3, 0x84c0

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 360
    const/16 v3, 0xde1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v5

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 362
    const/16 v3, 0x303

    invoke-static {v12, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 364
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    move v3, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 365
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 366
    iget-object v10, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    move v5, v12

    move v6, v1

    move v7, v2

    move v8, v0

    move v9, v4

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 367
    invoke-static {v12}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 369
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 371
    invoke-static {}, Lorg/telegram/ui/Components/Paint/Utils;->HasGLError()V

    goto :goto_0
.end method

.method private restoreSlice(Lorg/telegram/ui/Components/Paint/Slice;)V
    .locals 2
    .param p1, "slice"    # Lorg/telegram/ui/Components/Paint/Slice;

    .prologue
    .line 285
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/Painting$4;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Slice;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    .line 299
    return-void
.end method

.method private update(Landroid/graphics/RectF;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "action"    # Ljava/lang/Runnable;

    .prologue
    const v5, 0x8d40

    const/4 v4, 0x0

    .line 137
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getReusableFramebuffer()I

    move-result v1

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 138
    const v1, 0x8ce0

    const/16 v2, 0xde1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v3

    invoke-static {v5, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 140
    invoke-static {v5}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    .line 141
    .local v0, "status":I
    const v1, 0x8cd5

    if-ne v0, v1, :cond_0

    .line 142
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v1, v1, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v2, v2, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v2, v2

    invoke-static {v4, v4, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 143
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 145
    :cond_0
    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 147
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->isSuppressingChanges()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    invoke-interface {v1, p1}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->contentChanged(Landroid/graphics/RectF;)V

    .line 150
    :cond_1
    return-void
.end method


# virtual methods
.method public cleanResources(Z)V
    .locals 6
    .param p1, "recycle"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 497
    iget v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->reusableFramebuffer:I

    if-eqz v1, :cond_0

    .line 498
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->reusableFramebuffer:I

    aput v2, v1, v3

    .line 499
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    invoke-static {v4, v1, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 500
    iput v3, p0, Lorg/telegram/ui/Components/Paint/Painting;->reusableFramebuffer:I

    .line 503
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->bitmapTexture:Lorg/telegram/ui/Components/Paint/Texture;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/Paint/Texture;->cleanResources(Z)V

    .line 505
    iget v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->paintTexture:I

    if-eqz v1, :cond_1

    .line 506
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->paintTexture:I

    aput v2, v1, v3

    .line 507
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    invoke-static {v4, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 508
    iput v3, p0, Lorg/telegram/ui/Components/Paint/Painting;->paintTexture:I

    .line 511
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->brushTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz v1, :cond_2

    .line 512
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->brushTexture:Lorg/telegram/ui/Components/Paint/Texture;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Paint/Texture;->cleanResources(Z)V

    .line 513
    iput-object v5, p0, Lorg/telegram/ui/Components/Paint/Painting;->brushTexture:Lorg/telegram/ui/Components/Paint/Texture;

    .line 516
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 517
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Shader;

    .line 518
    .local v0, "shader":Lorg/telegram/ui/Components/Paint/Shader;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Shader;->cleanResources()V

    goto :goto_0

    .line 520
    .end local v0    # "shader":Lorg/telegram/ui/Components/Paint/Shader;
    :cond_3
    iput-object v5, p0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    .line 522
    :cond_4
    return-void
.end method

.method public commitStroke(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/Painting$2;-><init>(Lorg/telegram/ui/Components/Paint/Painting;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    .line 260
    return-void
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v1, v1, Lorg/telegram/ui/Components/Size;->width:F

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v2, v2, Lorg/telegram/ui/Components/Size;->height:F

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getPaintingData(Landroid/graphics/RectF;Z)Lorg/telegram/ui/Components/Paint/Painting$PaintingData;
    .locals 22
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "undo"    # Z

    .prologue
    .line 375
    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v1

    move/from16 v17, v0

    .line 376
    .local v17, "minX":I
    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v1

    move/from16 v18, v0

    .line 377
    .local v18, "minY":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v4, v1

    .line 378
    .local v4, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v5, v1

    .line 380
    .local v5, "height":I
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 381
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    const/4 v2, 0x0

    aget v16, v1, v2

    .line 382
    .local v16, "framebuffer":I
    const v1, 0x8d40

    move/from16 v0, v16

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 384
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 385
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    const/4 v2, 0x0

    aget v20, v1, v2

    .line 387
    .local v20, "texture":I
    const/16 v1, 0xde1

    move/from16 v0, v20

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 388
    const/16 v1, 0xde1

    const/16 v2, 0x2801

    const/16 v3, 0x2601

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 389
    const/16 v1, 0xde1

    const/16 v2, 0x2800

    const/16 v3, 0x2601

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 390
    const/16 v1, 0xde1

    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 391
    const/16 v1, 0xde1

    const/16 v2, 0x2803

    const v3, 0x812f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 392
    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 394
    const v1, 0x8d40

    const v2, 0x8ce0

    const/16 v3, 0xde1

    const/4 v6, 0x0

    move/from16 v0, v20

    invoke-static {v1, v2, v3, v0, v6}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 396
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v3, v3, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v6, v6, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v6, v6

    invoke-static {v1, v2, v3, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 399
    const/4 v13, 0x0

    .line 459
    :goto_0
    return-object v13

    .line 401
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    if-eqz p2, :cond_1

    const-string/jumbo v1, "nonPremultipliedBlit"

    :goto_1
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/ui/Components/Paint/Shader;

    .line 402
    .local v19, "shader":Lorg/telegram/ui/Components/Paint/Shader;
    if-nez v19, :cond_2

    .line 403
    const/4 v13, 0x0

    goto :goto_0

    .line 401
    .end local v19    # "shader":Lorg/telegram/ui/Components/Paint/Shader;
    :cond_1
    const-string/jumbo v1, "blit"

    goto :goto_1

    .line 405
    .restart local v19    # "shader":Lorg/telegram/ui/Components/Paint/Shader;
    :cond_2
    move-object/from16 v0, v19

    iget v1, v0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 407
    new-instance v21, Landroid/graphics/Matrix;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Matrix;-><init>()V

    .line 408
    .local v21, "translate":Landroid/graphics/Matrix;
    move/from16 v0, v17

    neg-int v1, v0

    int-to-float v1, v1

    move/from16 v0, v18

    neg-int v2, v0

    int-to-float v2, v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 409
    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/Components/Paint/GLMatrix;->LoadGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v14

    .line 410
    .local v14, "effective":[F
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->projection:[F

    invoke-static {v1, v14}, Lorg/telegram/ui/Components/Paint/GLMatrix;->MultiplyMat4f([F[F)[F

    move-result-object v15

    .line 412
    .local v15, "finalProjection":[F
    const-string/jumbo v1, "mvpMatrix"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v15}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-static {v1, v2, v3, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    .line 414
    if-eqz p2, :cond_3

    .line 415
    const-string/jumbo v1, "texture"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 417
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 418
    const/16 v1, 0xde1

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 428
    :goto_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v2, v3, v6}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 429
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 431
    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 433
    const/4 v6, 0x0

    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0x8

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 434
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 435
    const/4 v6, 0x1

    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0x8

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 436
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 438
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 440
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->dataBuffer:Ljava/nio/ByteBuffer;

    mul-int v2, v4, v5

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 441
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Painting;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 444
    if-eqz p2, :cond_4

    .line 445
    new-instance v13, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Painting;->dataBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;)V

    .line 453
    .local v13, "data":Lorg/telegram/ui/Components/Paint/Painting$PaintingData;
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    const/4 v2, 0x0

    aput v16, v1, v2

    .line 454
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 456
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    const/4 v2, 0x0

    aput v20, v1, v2

    .line 457
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    goto/16 :goto_0

    .line 420
    .end local v13    # "data":Lorg/telegram/ui/Components/Paint/Painting$PaintingData;
    :cond_3
    const-string/jumbo v1, "texture"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 422
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 423
    const/16 v1, 0xde1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Painting;->bitmapTexture:Lorg/telegram/ui/Components/Paint/Texture;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Texture;->texture()I

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 425
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 426
    const/16 v1, 0xde1

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto/16 :goto_2

    .line 447
    :cond_4
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 448
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v12, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 450
    new-instance v13, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v12, v1}, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;)V

    .restart local v13    # "data":Lorg/telegram/ui/Components/Paint/Painting$PaintingData;
    goto :goto_3
.end method

.method public getSize()Lorg/telegram/ui/Components/Size;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    return-object v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 471
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->paused:Z

    return v0
.end method

.method public onPause(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "completionRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 475
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/Painting$5;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    .line 488
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->backupSlice:Lorg/telegram/ui/Components/Paint/Slice;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Painting;->restoreSlice(Lorg/telegram/ui/Components/Paint/Slice;)V

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->backupSlice:Lorg/telegram/ui/Components/Paint/Slice;

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->paused:Z

    .line 494
    return-void
.end method

.method public paintStroke(Lorg/telegram/ui/Components/Paint/Path;ZLjava/lang/Runnable;)V
    .locals 2
    .param p1, "path"    # Lorg/telegram/ui/Components/Paint/Path;
    .param p2, "clearBuffer"    # Z
    .param p3, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 153
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Painting$1;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Path;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    .line 211
    return-void
.end method

.method public render()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->activePath:Lorg/telegram/ui/Components/Paint/Path;

    if-eqz v0, :cond_1

    .line 311
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintTexture()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->activePath:Lorg/telegram/ui/Components/Paint/Path;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Path;->getColor()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/Paint/Painting;->render(II)V

    goto :goto_0

    .line 313
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->renderBlit()V

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->bitmapTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Paint/Texture;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Paint/Texture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->bitmapTexture:Lorg/telegram/ui/Components/Paint/Texture;

    goto :goto_0
.end method

.method public setBrush(Lorg/telegram/ui/Components/Paint/Brush;)V
    .locals 2
    .param p1, "value"    # Lorg/telegram/ui/Components/Paint/Brush;

    .prologue
    .line 463
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->brushTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->brushTexture:Lorg/telegram/ui/Components/Paint/Texture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Texture;->cleanResources(Z)V

    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->brushTexture:Lorg/telegram/ui/Components/Paint/Texture;

    .line 468
    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;)V
    .locals 0
    .param p1, "paintingDelegate"    # Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    .prologue
    .line 101
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    .line 102
    return-void
.end method

.method public setRenderProjection([F)V
    .locals 0
    .param p1, "proj"    # [F

    .prologue
    .line 302
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderProjection:[F

    .line 303
    return-void
.end method

.method public setRenderView(Lorg/telegram/ui/Components/Paint/RenderView;)V
    .locals 0
    .param p1, "view"    # Lorg/telegram/ui/Components/Paint/RenderView;

    .prologue
    .line 105
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    .line 106
    return-void
.end method

.method public setupShaders()V
    .locals 1

    .prologue
    .line 550
    invoke-static {}, Lorg/telegram/ui/Components/Paint/ShaderSet;->setup()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    .line 551
    return-void
.end method
