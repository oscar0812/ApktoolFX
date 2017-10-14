.class Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbGenerateInfo"
.end annotation


# instance fields
.field private count:I

.field private fileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private filter:Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/ImageLoader;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/messenger/ImageLoader;
    .param p2, "x1"    # Lorg/telegram/messenger/ImageLoader$1;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;-><init>(Lorg/telegram/messenger/ImageLoader;)V

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    .prologue
    .line 91
    iget v0, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->count:I

    return v0
.end method

.method static synthetic access$2908(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    .prologue
    .line 91
    iget v0, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->count:I

    return v0
.end method

.method static synthetic access$2910(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    .prologue
    .line 91
    iget v0, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->count:I

    return v0
.end method

.method static synthetic access$3400(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->fileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object v0
.end method

.method static synthetic access$3402(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$FileLocation;

    .prologue
    .line 91
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->fileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object p1
.end method

.method static synthetic access$3500(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->filter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3502(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->filter:Ljava/lang/String;

    return-object p1
.end method
