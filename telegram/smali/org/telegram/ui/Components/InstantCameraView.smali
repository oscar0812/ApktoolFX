.class public Lorg/telegram/ui/Components/InstantCameraView;
.super Landroid/widget/FrameLayout;
.source "InstantCameraView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;,
        Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;,
        Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;,
        Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SCREEN_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision lowp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n   gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform float scaleX;\nuniform float scaleY;\nuniform float alpha;\nuniform samplerExternalOES sTexture;\nvoid main() {\n   vec2 coord = vec2((vTextureCoord.x - 0.5) * scaleX, (vTextureCoord.y - 0.5) * scaleY);\n   float coef = ceil(clamp(0.2601 - dot(coord, coord), 0.0, 1.0));\n   vec3 color = texture2D(sTexture, vTextureCoord).rgb * coef + (1.0 - step(0.001, coef));\n   gl_FragColor = vec4(color * alpha, alpha);\n}\n"

.field private static final MSG_AUDIOFRAME_AVAILABLE:I = 0x3

.field private static final MSG_START_RECORDING:I = 0x0

.field private static final MSG_STOP_RECORDING:I = 0x1

.field private static final MSG_VIDEOFRAME_AVAILABLE:I = 0x2

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n   gl_Position = uMVPMatrix * aPosition;\n   vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private aspectRatio:Lorg/telegram/messenger/camera/Size;

.field private baseFragment:Lorg/telegram/ui/ChatActivity;

.field private cameraContainer:Landroid/widget/FrameLayout;

.field private cameraFile:Ljava/io/File;

.field private volatile cameraReady:Z

.field private cameraSession:Lorg/telegram/messenger/camera/CameraSession;

.field private cameraTexture:[I

.field private cameraTextureAlpha:F

.field private cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

.field private cancelled:Z

.field private deviceHasGoodCamera:Z

.field private duration:J

.field private encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

.field private file:Lorg/telegram/tgnet/TLRPC$InputFile;

.field private isFrontface:Z

.field private iv:[B

.field private key:[B

.field private mMVPMatrix:[F

.field private mSTMatrix:[F

.field private moldSTMatrix:[F

.field private muteAnimation:Landroid/animation/AnimatorSet;

.field private muteImageView:Landroid/widget/ImageView;

.field private oldCameraTexture:[I

.field private paint:Landroid/graphics/Paint;

.field private pictureSize:Lorg/telegram/messenger/camera/Size;

.field private position:[I

.field private previewSize:Lorg/telegram/messenger/camera/Size;

.field private progress:F

.field private progressTimer:Ljava/util/Timer;

.field private recordStartTime:J

.field private recordedTime:J

.field private recording:Z

.field private rect:Landroid/graphics/RectF;

.field private requestingPermissions:Z

.field private scaleX:F

.field private scaleY:F

.field private selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

.field private size:J

.field private switchCameraButton:Landroid/widget/ImageView;

.field private textureBuffer:Ljava/nio/FloatBuffer;

.field private textureView:Landroid/view/TextureView;

.field private timerRunnable:Ljava/lang/Runnable;

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentFragment"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    const/16 v0, 0x30

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v3, 0x1

    .line 196
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 107
    iput-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    .line 118
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->position:[I

    .line 119
    new-array v1, v3, [I

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTexture:[I

    .line 120
    new-array v1, v3, [I

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->oldCameraTexture:[I

    .line 121
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTextureAlpha:F

    .line 134
    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/InstantCameraView$1;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->timerRunnable:Ljava/lang/Runnable;

    .line 148
    new-instance v1, Lorg/telegram/messenger/camera/Size;

    const/16 v2, 0x9

    invoke-direct {v1, v5, v2}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->aspectRatio:Lorg/telegram/messenger/camera/Size;

    .line 152
    new-array v1, v5, [F

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->mMVPMatrix:[F

    .line 153
    new-array v1, v5, [F

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->mSTMatrix:[F

    .line 154
    new-array v1, v5, [F

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->moldSTMatrix:[F

    .line 197
    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/InstantCameraView$2;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 230
    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/InstantCameraView;->setWillNotDraw(Z)V

    .line 231
    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->setBackgroundColor(I)V

    .line 232
    iput-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView;->baseFragment:Lorg/telegram/ui/ChatActivity;

    .line 233
    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$3;

    invoke-direct {v1, p0, v3}, Lorg/telegram/ui/Components/InstantCameraView$3;-><init>(Lorg/telegram/ui/Components/InstantCameraView;I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    .line 240
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 241
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 242
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 243
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->rect:Landroid/graphics/RectF;

    .line 247
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 248
    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$4;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    .line 261
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/InstantCameraView$5;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 268
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 269
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 305
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    const/16 v6, 0x11

    invoke-direct {v2, v3, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Landroid/widget/ImageView;

    .line 308
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 309
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Landroid/widget/ImageView;

    const/high16 v1, 0x42400000    # 48.0f

    const/16 v2, 0x53

    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v6, 0x41600000    # 14.0f

    move v5, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v9, v1}, Lorg/telegram/ui/Components/InstantCameraView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/InstantCameraView$7;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    .line 330
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 331
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    const v2, 0x7f0201d2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 332
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 333
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    const/16 v2, 0x11

    invoke-static {v0, v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/InstantCameraView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    div-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 336
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/InstantCameraView;->setVisibility(I)V

    .line 337
    return-void

    .line 271
    :cond_0
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 272
    .local v8, "path":Landroid/graphics/Path;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 273
    .local v7, "paint":Landroid/graphics/Paint;
    const/high16 v1, -0x1000000

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 274
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 275
    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$6;

    invoke-direct {v1, p0, p1, v8, v7}, Lorg/telegram/ui/Components/InstantCameraView$6;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Landroid/content/Context;Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    .line 301
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 302
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/InstantCameraView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/InstantCameraView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/InstantCameraView;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->duration:J

    return-wide v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;
    .param p1, "x1"    # Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    return-object p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/InstantCameraView;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;
    .param p1, "x1"    # J

    .prologue
    .line 97
    iput-wide p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->duration:J

    return-wide p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->switchCamera()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/InstantCameraView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/CameraInfo;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    return-object v0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/VideoEditedInfo;)Lorg/telegram/messenger/VideoEditedInfo;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;
    .param p1, "x1"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/InstantCameraView;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordStartTime:J

    return-wide v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/InstantCameraView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->scaleX:F

    return v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Components/InstantCameraView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;
    .param p1, "x1"    # F

    .prologue
    .line 97
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->scaleX:F

    return p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/InstantCameraView;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;
    .param p1, "x1"    # J

    .prologue
    .line 97
    iput-wide p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordStartTime:J

    return-wide p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/InstantCameraView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->scaleY:F

    return v0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/Components/InstantCameraView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;
    .param p1, "x1"    # F

    .prologue
    .line 97
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->scaleY:F

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->vertexBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;
    .param p1, "x1"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->vertexBuffer:Ljava/nio/FloatBuffer;

    return-object p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;
    .param p1, "x1"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureBuffer:Ljava/nio/FloatBuffer;

    return-object p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/InstantCameraView;)[F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->mSTMatrix:[F

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/InstantCameraView;ILjava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView;->loadShader(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/InstantCameraView;)[I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTexture:[I

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/InstantCameraView;)[F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->mMVPMatrix:[F

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/InstantCameraView;Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->createCamera(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->timerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/InstantCameraView;)[F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->moldSTMatrix:[F

    return-object v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/InstantCameraView;)[I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->oldCameraTexture:[I

    return-object v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/InstantCameraView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTextureAlpha:F

    return v0
.end method

.method static synthetic access$3302(Lorg/telegram/ui/Components/InstantCameraView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;
    .param p1, "x1"    # F

    .prologue
    .line 97
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTextureAlpha:F

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ChatActivity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->baseFragment:Lorg/telegram/ui/ChatActivity;

    return-object v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputFile;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/InstantCameraView;)[B
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->key:[B

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/InstantCameraView;)[B
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->iv:[B

    return-object v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/InstantCameraView;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->size:J

    return-wide v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/view/TextureView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/VideoPlayer;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;
    .param p1, "x1"    # Lorg/telegram/ui/Components/VideoPlayer;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->startProgressTimer()V

    return-void
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/InstantCameraView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/InstantCameraView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraReady:Z

    return v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/InstantCameraView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraReady:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/CameraSession;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    return-object v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/camera/CameraSession;)Lorg/telegram/messenger/camera/CameraSession;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;
    .param p1, "x1"    # Lorg/telegram/messenger/camera/CameraSession;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    return-object p1
.end method

.method private createCamera(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 762
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$10;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$10;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 790
    return-void
.end method

.method private initCamera()Z
    .locals 15

    .prologue
    const/16 v14, 0x1e0

    const/16 v13, 0x10e

    const/16 v12, 0xf0

    const/4 v10, 0x0

    .line 693
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/camera/CameraController;->getCameras()Ljava/util/ArrayList;

    move-result-object v3

    .line 694
    .local v3, "cameraInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/camera/CameraInfo;>;"
    if-nez v3, :cond_1

    .line 758
    :cond_0
    :goto_0
    return v10

    .line 697
    :cond_1
    const/4 v5, 0x0

    .line 698
    .local v5, "notFrontface":Lorg/telegram/messenger/camera/CameraInfo;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_5

    .line 699
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/camera/CameraInfo;

    .line 700
    .local v2, "cameraInfo":Lorg/telegram/messenger/camera/CameraInfo;
    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraInfo;->isFrontface()Z

    move-result v11

    if-nez v11, :cond_2

    .line 701
    move-object v5, v2

    .line 703
    :cond_2
    iget-boolean v11, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    if-eqz v11, :cond_3

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraInfo;->isFrontface()Z

    move-result v11

    if-nez v11, :cond_4

    :cond_3
    iget-boolean v11, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    if-nez v11, :cond_b

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraInfo;->isFrontface()Z

    move-result v11

    if-nez v11, :cond_b

    .line 704
    :cond_4
    iput-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    .line 710
    .end local v2    # "cameraInfo":Lorg/telegram/messenger/camera/CameraInfo;
    :cond_5
    iget-object v11, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    if-nez v11, :cond_6

    .line 711
    iput-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    .line 713
    :cond_6
    iget-object v11, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    if-eqz v11, :cond_0

    .line 717
    iget-object v10, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    invoke-virtual {v10}, Lorg/telegram/messenger/camera/CameraInfo;->getPreviewSizes()Ljava/util/ArrayList;

    move-result-object v9

    .line 718
    .local v9, "previewSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/camera/Size;>;"
    iget-object v10, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    invoke-virtual {v10}, Lorg/telegram/messenger/camera/CameraInfo;->getPictureSizes()Ljava/util/ArrayList;

    move-result-object v7

    .line 719
    .local v7, "pictureSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/camera/Size;>;"
    iget-object v10, p0, Lorg/telegram/ui/Components/InstantCameraView;->aspectRatio:Lorg/telegram/messenger/camera/Size;

    invoke-static {v9, v14, v13, v10}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;

    move-result-object v10

    iput-object v10, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    .line 720
    iget-object v10, p0, Lorg/telegram/ui/Components/InstantCameraView;->aspectRatio:Lorg/telegram/messenger/camera/Size;

    invoke-static {v7, v14, v13, v10}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;

    move-result-object v10

    iput-object v10, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    .line 721
    iget-object v10, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    iget v10, v10, Lorg/telegram/messenger/camera/Size;->mWidth:I

    iget-object v11, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    iget v11, v11, Lorg/telegram/messenger/camera/Size;->mWidth:I

    if-eq v10, v11, :cond_a

    .line 722
    const/4 v4, 0x0

    .line 723
    .local v4, "found":Z
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v0, v10, -0x1

    :goto_2
    if-ltz v0, :cond_8

    .line 724
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/camera/Size;

    .line 725
    .local v8, "preview":Lorg/telegram/messenger/camera/Size;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .local v1, "b":I
    :goto_3
    if-ltz v1, :cond_7

    .line 726
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/camera/Size;

    .line 727
    .local v6, "picture":Lorg/telegram/messenger/camera/Size;
    iget v10, v8, Lorg/telegram/messenger/camera/Size;->mWidth:I

    iget-object v11, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    iget v11, v11, Lorg/telegram/messenger/camera/Size;->mWidth:I

    if-lt v10, v11, :cond_c

    iget v10, v8, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget-object v11, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    iget v11, v11, Lorg/telegram/messenger/camera/Size;->mHeight:I

    if-lt v10, v11, :cond_c

    iget v10, v8, Lorg/telegram/messenger/camera/Size;->mWidth:I

    iget v11, v6, Lorg/telegram/messenger/camera/Size;->mWidth:I

    if-ne v10, v11, :cond_c

    iget v10, v8, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget v11, v6, Lorg/telegram/messenger/camera/Size;->mHeight:I

    if-ne v10, v11, :cond_c

    .line 728
    iput-object v8, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    .line 729
    iput-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    .line 730
    const/4 v4, 0x1

    .line 734
    .end local v6    # "picture":Lorg/telegram/messenger/camera/Size;
    :cond_7
    if-eqz v4, :cond_d

    .line 739
    .end local v1    # "b":I
    .end local v8    # "preview":Lorg/telegram/messenger/camera/Size;
    :cond_8
    if-nez v4, :cond_a

    .line 740
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v0, v10, -0x1

    :goto_4
    if-ltz v0, :cond_a

    .line 741
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/camera/Size;

    .line 742
    .restart local v8    # "preview":Lorg/telegram/messenger/camera/Size;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .restart local v1    # "b":I
    :goto_5
    if-ltz v1, :cond_9

    .line 743
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/camera/Size;

    .line 744
    .restart local v6    # "picture":Lorg/telegram/messenger/camera/Size;
    iget v10, v8, Lorg/telegram/messenger/camera/Size;->mWidth:I

    if-lt v10, v12, :cond_e

    iget v10, v8, Lorg/telegram/messenger/camera/Size;->mHeight:I

    if-lt v10, v12, :cond_e

    iget v10, v8, Lorg/telegram/messenger/camera/Size;->mWidth:I

    iget v11, v6, Lorg/telegram/messenger/camera/Size;->mWidth:I

    if-ne v10, v11, :cond_e

    iget v10, v8, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget v11, v6, Lorg/telegram/messenger/camera/Size;->mHeight:I

    if-ne v10, v11, :cond_e

    .line 745
    iput-object v8, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    .line 746
    iput-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    .line 747
    const/4 v4, 0x1

    .line 751
    .end local v6    # "picture":Lorg/telegram/messenger/camera/Size;
    :cond_9
    if-eqz v4, :cond_f

    .line 757
    .end local v1    # "b":I
    .end local v4    # "found":Z
    .end local v8    # "preview":Lorg/telegram/messenger/camera/Size;
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "preview w = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    iget v11, v11, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " h = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    iget v11, v11, Lorg/telegram/messenger/camera/Size;->mHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 758
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 707
    .end local v7    # "pictureSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/camera/Size;>;"
    .end local v9    # "previewSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/camera/Size;>;"
    .restart local v2    # "cameraInfo":Lorg/telegram/messenger/camera/CameraInfo;
    :cond_b
    move-object v5, v2

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 725
    .end local v2    # "cameraInfo":Lorg/telegram/messenger/camera/CameraInfo;
    .restart local v1    # "b":I
    .restart local v4    # "found":Z
    .restart local v6    # "picture":Lorg/telegram/messenger/camera/Size;
    .restart local v7    # "pictureSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/camera/Size;>;"
    .restart local v8    # "preview":Lorg/telegram/messenger/camera/Size;
    .restart local v9    # "previewSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/camera/Size;>;"
    :cond_c
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_3

    .line 723
    .end local v6    # "picture":Lorg/telegram/messenger/camera/Size;
    :cond_d
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_2

    .line 742
    .restart local v6    # "picture":Lorg/telegram/messenger/camera/Size;
    :cond_e
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 740
    .end local v6    # "picture":Lorg/telegram/messenger/camera/Size;
    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_4
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 4
    .param p1, "type"    # I
    .param p2, "shaderCode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 793
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 794
    .local v1, "shader":I
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 795
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 796
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 797
    .local v0, "compileStatus":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 798
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 799
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 800
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 801
    const/4 v1, 0x0

    .line 803
    :cond_0
    return v1
.end method

.method private startProgressTimer()V
    .locals 7

    .prologue
    .line 809
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->progressTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 811
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->progressTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 812
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->progressTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->progressTimer:Ljava/util/Timer;

    .line 818
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->progressTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/InstantCameraView$11;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x11

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 835
    return-void

    .line 813
    :catch_0
    move-exception v6

    .line 814
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private stopProgressTimer()V
    .locals 2

    .prologue
    .line 838
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->progressTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 840
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->progressTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 841
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->progressTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    :cond_0
    :goto_0
    return-void

    .line 842
    :catch_0
    move-exception v0

    .line 843
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 681
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->destroy()V

    .line 683
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/Semaphore;Ljava/lang/Runnable;)V

    .line 684
    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    .line 686
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    .line 687
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->initCamera()Z

    .line 688
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraReady:Z

    .line 689
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->reinitForNewCamera()V

    .line 690
    return-void

    :cond_1
    move v0, v1

    .line 686
    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 630
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->stopProgressTimer()V

    .line 631
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer()V

    .line 633
    iput-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 635
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    if-nez v0, :cond_1

    .line 651
    :goto_0
    return-void

    .line 638
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    .line 639
    iput-boolean v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    .line 640
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->timerRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 641
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 642
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    if-eqz v0, :cond_2

    .line 643
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->shutdown(I)V

    .line 644
    iput-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    .line 646
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 647
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 648
    iput-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    .line 650
    :cond_3
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(Z)V

    goto :goto_0
.end method

.method public changeVideoPreviewState(IF)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "progress"    # F

    .prologue
    .line 556
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    if-nez p1, :cond_2

    .line 560
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->startProgressTimer()V

    .line 561
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    goto :goto_0

    .line 562
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 563
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->stopProgressTimer()V

    .line 564
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    goto :goto_0

    .line 565
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v2

    long-to-float v1, v2

    mul-float/2addr v1, p2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    goto :goto_0
.end method

.method public destroy(ZLjava/lang/Runnable;)V
    .locals 4
    .param p1, "async"    # Z
    .param p2, "beforeDestroyRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 389
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->destroy()V

    .line 391
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-nez p1, :cond_1

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    :goto_0
    invoke-virtual {v1, v2, v0, p2}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/Semaphore;Ljava/lang/Runnable;)V

    .line 393
    :cond_0
    return-void

    .line 391
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 369
    sget v1, Lorg/telegram/messenger/NotificationCenter;->recordProgressChanged:I

    if-ne p1, v1, :cond_1

    .line 370
    aget-object v1, p2, v4

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 371
    .local v2, "t":J
    long-to-float v1, v2

    const v4, 0x476a6000    # 60000.0f

    div-float/2addr v1, v4

    iput v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->progress:F

    .line 372
    iput-wide v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    .line 373
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView;->invalidate()V

    .line 386
    .end local v2    # "t":J
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    if-ne p1, v1, :cond_0

    .line 375
    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/String;

    .line 376
    .local v0, "location":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    const/4 v1, 0x1

    aget-object v1, p2, v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 378
    const/4 v1, 0x2

    aget-object v1, p2, v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    .line 379
    const/4 v1, 0x5

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->size:J

    .line 380
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    if-eqz v1, :cond_0

    .line 381
    const/4 v1, 0x3

    aget-object v1, p2, v1

    check-cast v1, [B

    check-cast v1, [B

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->key:[B

    .line 382
    const/4 v1, 0x4

    aget-object v1, p2, v1

    check-cast v1, [B

    check-cast v1, [B

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->iv:[B

    goto :goto_0
.end method

.method public getCameraContainer()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getCameraRect()Lorg/telegram/ui/Components/Rect;
    .locals 5

    .prologue
    .line 551
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->position:[I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 552
    new-instance v0, Lorg/telegram/ui/Components/Rect;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->position:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->position:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    return-object v0
.end method

.method public getMuteImageView()Landroid/view/View;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getSwitchButtonView()Landroid/view/View;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public hideCamera(Z)V
    .locals 4
    .param p1, "async"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 673
    invoke-virtual {p0, p1, v3}, Lorg/telegram/ui/Components/InstantCameraView;->destroy(ZLjava/lang/Runnable;)V

    .line 674
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 675
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 676
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 677
    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    .line 678
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 355
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 356
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recordProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 357
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 358
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 362
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 363
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recordProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 364
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 365
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v11, 0x40c00000    # 6.0f

    const/high16 v10, 0x40400000    # 3.0f

    const/high16 v5, 0x41000000    # 8.0f

    .line 397
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v6

    .line 398
    .local v6, "x":F
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v8

    .line 399
    .local v8, "y":F
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->rect:Landroid/graphics/RectF;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v6, v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v8, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 400
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->progress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 401
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->rect:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v0, 0x43b40000    # 360.0f

    iget v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->progress:F

    mul-float/2addr v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 403
    :cond_0
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_roundVideoShadow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 404
    float-to-int v0, v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v7, v0, v1

    .line 405
    .local v7, "x1":I
    float-to-int v0, v8

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v9, v0, v1

    .line 406
    .local v9, "y1":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v7

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 408
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_roundVideoShadow:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 409
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_roundVideoShadow:Landroid/graphics/drawable/Drawable;

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    add-int/2addr v1, v7

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    add-int/2addr v2, v9

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v7, v9, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 410
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_roundVideoShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 411
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 413
    .end local v7    # "x1":I
    .end local v9    # "y1":I
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 341
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 342
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 347
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 348
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 351
    :cond_0
    return-void
.end method

.method public send(I)V
    .locals 18
    .param p1, "state"    # I

    .prologue
    .line 571
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    if-nez v3, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/InstantCameraView;->stopProgressTimer()V

    .line 575
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v3, :cond_2

    .line 576
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer()V

    .line 577
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 579
    :cond_2
    const/4 v3, 0x4

    move/from16 v0, p1

    if-ne v0, v3, :cond_8

    .line 580
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    invoke-virtual {v3}, Lorg/telegram/messenger/VideoEditedInfo;->needConvert()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 581
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 582
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    .line 583
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->key:[B

    .line 584
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->iv:[B

    .line 585
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    long-to-double v0, v4

    move-wide/from16 v16, v0

    .line 586
    .local v16, "totalDuration":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v14, v3, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 587
    .local v14, "startTime":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v12, v3, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 588
    .local v12, "endTime":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    sub-long v4, v12, v14

    iput-wide v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    .line 589
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->size:J

    long-to-double v4, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v6, v6, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    long-to-double v6, v6

    div-double v6, v6, v16

    mul-double/2addr v4, v6

    double-to-long v4, v4

    iput-wide v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 590
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    const v4, 0x61a80

    iput v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 591
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 592
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 594
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    .line 595
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 597
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/FileLoader;->cancelUploadFile(Ljava/lang/String;Z)V

    .line 601
    .end local v12    # "endTime":J
    .end local v14    # "startTime":J
    .end local v16    # "totalDuration":D
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 602
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    iput-object v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->key:[B

    iput-object v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->key:[B

    .line 604
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->iv:[B

    iput-object v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->iv:[B

    .line 605
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/InstantCameraView;->baseFragment:Lorg/telegram/ui/ChatActivity;

    new-instance v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v3 .. v10}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    invoke-virtual {v11, v3, v4}, Lorg/telegram/ui/ChatActivity;->sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;)V

    goto/16 :goto_0

    .line 586
    .restart local v16    # "totalDuration":D
    :cond_5
    const-wide/16 v14, 0x0

    goto/16 :goto_1

    .line 587
    .restart local v14    # "startTime":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v12, v3, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    goto/16 :goto_2

    .line 599
    .end local v14    # "startTime":J
    .end local v16    # "totalDuration":D
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->size:J

    iput-wide v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    goto :goto_3

    .line 607
    :cond_8
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    const-wide/16 v6, 0x320

    cmp-long v3, v4, v6

    if-gez v3, :cond_a

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    .line 608
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    .line 609
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->timerRunnable:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    if-eqz v3, :cond_9

    .line 611
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    if-nez v3, :cond_b

    const/4 v3, 0x3

    move/from16 v0, p1

    if-ne v0, v3, :cond_b

    const/4 v3, 0x2

    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 613
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    if-eqz v3, :cond_c

    .line 614
    const/4 v2, 0x0

    .line 620
    .local v2, "send":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->shutdown(I)V

    .line 621
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    .line 623
    .end local v2    # "send":I
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    if-eqz v3, :cond_0

    .line 624
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(Z)V

    goto/16 :goto_0

    .line 607
    :cond_a
    const/4 v3, 0x0

    goto :goto_4

    .line 611
    :cond_b
    const/4 v3, 0x0

    goto :goto_5

    .line 615
    :cond_c
    const/4 v3, 0x3

    move/from16 v0, p1

    if-ne v0, v3, :cond_d

    .line 616
    const/4 v2, 0x2

    .restart local v2    # "send":I
    goto :goto_6

    .line 618
    .end local v2    # "send":I
    :cond_d
    const/4 v2, 0x1

    .restart local v2    # "send":I
    goto :goto_6
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 655
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 656
    .local v0, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    const/high16 v1, 0x43400000    # 192.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 657
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView;->invalidate()V

    .line 658
    return-void
.end method

.method public setVisibility(I)V
    .locals 5
    .param p1, "visibility"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3dcccccd    # 0.1f

    const/4 v2, 0x0

    .line 417
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 418
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/InstantCameraView;->setAlpha(F)V

    .line 419
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 420
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 421
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 422
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 423
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 424
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 425
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 426
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 428
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 431
    :cond_0
    if-nez p1, :cond_1

    .line 432
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 439
    :goto_0
    return-void

    .line 434
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public showCamera()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 442
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Landroid/widget/ImageView;

    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 447
    iput-boolean v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    .line 448
    iput-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    .line 449
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    .line 450
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->progress:F

    .line 451
    iput-boolean v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    .line 452
    iput-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 453
    iput-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    .line 454
    iput-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->key:[B

    .line 455
    iput-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->iv:[B

    .line 457
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->initCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    .line 462
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    .line 463
    sget v0, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 464
    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 466
    const-string/jumbo v0, "show round camera"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 468
    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    .line 469
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/InstantCameraView$8;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 504
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/InstantCameraView;->setVisibility(I)V

    .line 508
    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(Z)V

    goto/16 :goto_0
.end method

.method public startAnimation(Z)V
    .locals 13
    .param p1, "open"    # Z

    .prologue
    const v6, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 516
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 519
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/PipRoundVideoView;->getInstance()Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v0

    .line 520
    .local v0, "pipRoundVideoView":Lorg/telegram/ui/Components/PipRoundVideoView;
    if-eqz v0, :cond_1

    .line 521
    if-nez p1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PipRoundVideoView;->showTemporary(Z)V

    .line 523
    :cond_1
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 524
    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    const/16 v1, 0x8

    new-array v8, v1, [Landroid/animation/Animator;

    const-string/jumbo v9, "alpha"

    new-array v10, v2, [F

    if-eqz p1, :cond_4

    move v1, v4

    :goto_1
    aput v1, v10, v3

    .line 525
    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v8, v3

    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Landroid/widget/ImageView;

    const-string/jumbo v10, "alpha"

    new-array v11, v2, [F

    if-eqz p1, :cond_5

    move v1, v4

    :goto_2
    aput v1, v11, v3

    .line 526
    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v8, v2

    const/4 v1, 0x2

    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    const-string/jumbo v10, "alpha"

    new-array v11, v2, [F

    aput v5, v11, v3

    .line 527
    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v1

    const/4 v9, 0x3

    iget-object v10, p0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    const-string/jumbo v11, "alpha"

    new-array v12, v2, [I

    if-eqz p1, :cond_6

    const/16 v1, 0xff

    :goto_3
    aput v1, v12, v3

    .line 528
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v8, v9

    const/4 v9, 0x4

    iget-object v10, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v11, "alpha"

    new-array v12, v2, [F

    if-eqz p1, :cond_7

    move v1, v4

    :goto_4
    aput v1, v12, v3

    .line 529
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v8, v9

    const/4 v9, 0x5

    iget-object v10, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v11, "scaleX"

    new-array v12, v2, [F

    if-eqz p1, :cond_8

    move v1, v4

    :goto_5
    aput v1, v12, v3

    .line 530
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v8, v9

    const/4 v1, 0x6

    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v10, "scaleY"

    new-array v11, v2, [F

    if-eqz p1, :cond_9

    :goto_6
    aput v4, v11, v3

    .line 531
    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v8, v1

    const/4 v4, 0x7

    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v9, "translationY"

    const/4 v1, 0x2

    new-array v10, v1, [F

    if-eqz p1, :cond_a

    .line 532
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    :goto_7
    aput v1, v10, v3

    if-eqz p1, :cond_b

    :goto_8
    aput v5, v10, v2

    invoke-static {v6, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v8, v4

    .line 524
    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 534
    if-nez p1, :cond_2

    .line 535
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/InstantCameraView$9;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 545
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xb4

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 546
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 547
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 548
    return-void

    :cond_3
    move v1, v3

    .line 521
    goto/16 :goto_0

    :cond_4
    move v1, v5

    .line 524
    goto/16 :goto_1

    :cond_5
    move v1, v5

    .line 525
    goto/16 :goto_2

    :cond_6
    move v1, v3

    .line 527
    goto/16 :goto_3

    :cond_7
    move v1, v5

    .line 528
    goto :goto_4

    :cond_8
    move v1, v6

    .line 529
    goto :goto_5

    :cond_9
    move v4, v6

    .line 530
    goto :goto_6

    :cond_a
    move v1, v5

    .line 532
    goto :goto_7

    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    goto :goto_8
.end method
