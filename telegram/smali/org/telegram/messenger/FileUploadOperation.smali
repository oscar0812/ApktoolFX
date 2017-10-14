.class public Lorg/telegram/messenger/FileUploadOperation;
.super Ljava/lang/Object;
.source "FileUploadOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;,
        Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;
    }
.end annotation


# static fields
.field private static final initialRequestsCount:I = 0x8

.field private static final maxUploadingKBytes:I = 0x800

.field private static final minUploadChunkSize:I = 0x40


# instance fields
.field private cachedResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;",
            ">;"
        }
    .end annotation
.end field

.field private currentFileId:J

.field private currentPartNum:I

.field private currentType:I

.field private currentUploadRequetsCount:I

.field private currentUploadingBytes:I

.field private delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

.field private estimatedSize:I

.field private fileKey:Ljava/lang/String;

.field private fingerprint:I

.field private freeRequestIvs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private isBigFile:Z

.field private isEncrypted:Z

.field private isLastPart:Z

.field private iv:[B

.field private ivChange:[B

.field private key:[B

.field private lastSavedPartNum:I

.field private maxRequestsCount:I

.field private mdEnc:Ljava/security/MessageDigest;

.field private preferences:Landroid/content/SharedPreferences;

.field private readBuffer:[B

.field private readBytesCount:J

.field private requestNum:I

.field private requestTokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private saveInfoTimes:I

.field private started:Z

.field private state:I

.field private stream:Ljava/io/FileInputStream;

.field private totalFileSize:J

.field private totalPartsCount:I

.field private uploadChunkSize:I

.field private uploadStartTime:I

.field private uploadedBytesCount:J

.field private uploadingFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZII)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "encrypted"    # Z
    .param p3, "estimated"    # I
    .param p4, "type"    # I

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z

    .line 43
    const/high16 v0, 0x10000

    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->cachedResults:Ljava/util/HashMap;

    .line 83
    iput-object p1, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    .line 84
    iput-boolean p2, p0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    .line 85
    iput p3, p0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    .line 86
    iput p4, p0, Lorg/telegram/messenger/FileUploadOperation;->currentType:I

    .line 87
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/FileUploadOperation;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/messenger/FileUploadOperation;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;
    .param p1, "x1"    # Landroid/content/SharedPreferences;

    .prologue
    .line 30
    iput-object p1, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/messenger/FileUploadOperation;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->startUploadRequest()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->maxRequestsCount:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentType:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/FileUploadOperation;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/FileUploadOperation;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadedBytesCount:J

    return-wide v0
.end method

.method static synthetic access$1302(Lorg/telegram/messenger/FileUploadOperation;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadedBytesCount:J

    return-wide p1
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/FileUploadOperation;)Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/FileUploadOperation;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    return v0
.end method

.method static synthetic access$1602(Lorg/telegram/messenger/FileUploadOperation;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/FileUploadOperation;)[B
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/FileUploadOperation;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/FileUploadOperation;)Ljava/security/MessageDigest;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->mdEnc:Ljava/security/MessageDigest;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/FileUploadOperation;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/FileUploadOperation;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    return-wide v0
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/FileUploadOperation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/FileUploadOperation;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->cleanup()V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->fingerprint:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/FileUploadOperation;)[B
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    return v0
.end method

.method static synthetic access$2602(Lorg/telegram/messenger/FileUploadOperation;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    return p1
.end method

.method static synthetic access$2608(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    return v0
.end method

.method static synthetic access$2708(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/messenger/FileUploadOperation;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->cachedResults:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/FileUploadOperation;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/FileUploadOperation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/telegram/messenger/FileUploadOperation;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/FileUploadOperation;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    return-wide v0
.end method

.method static synthetic access$402(Lorg/telegram/messenger/FileUploadOperation;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    return-wide p1
.end method

.method static synthetic access$502(Lorg/telegram/messenger/FileUploadOperation;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/FileUploadOperation;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->started:Z

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/FileUploadOperation;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->storeFileUploadInfo()V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    return v0
.end method

.method static synthetic access$910(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 30
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    return v0
.end method

.method private cleanup()V
    .locals 4

    .prologue
    .line 131
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 132
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "uploadinfo"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    .line 134
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_uploaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_iv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_ivc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 144
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_1
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startUploadRequest()V
    .locals 48

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    const/4 v4, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->started:Z

    .line 195
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    if-nez v4, :cond_1c

    .line 196
    new-instance v27, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v27, "cacheFile":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    .line 198
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    if-eqz v4, :cond_2

    .line 199
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    int-to-long v4, v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    .line 203
    :goto_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    const-wide/32 v16, 0xa00000

    cmp-long v4, v4, v16

    if-lez v4, :cond_3

    .line 204
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    .line 213
    :goto_2
    const-wide/16 v4, 0x40

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    move-wide/from16 v16, v0

    const-wide/32 v18, 0x2ee000

    add-long v16, v16, v18

    const-wide/16 v18, 0x1

    sub-long v16, v16, v18

    const-wide/32 v18, 0x2ee000

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    .line 214
    const/16 v4, 0x400

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    rem-int/2addr v4, v5

    if-eqz v4, :cond_5

    .line 215
    const/16 v28, 0x40

    .line 216
    .local v28, "chunkSize":I
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    move/from16 v0, v28

    if-le v4, v0, :cond_4

    .line 217
    mul-int/lit8 v28, v28, 0x2

    goto :goto_3

    .line 201
    .end local v28    # "chunkSize":I
    :cond_2
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 405
    .end local v27    # "cacheFile":Ljava/io/File;
    :catch_0
    move-exception v32

    .line 406
    .local v32, "e":Ljava/lang/Exception;
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didFailedUploadingFile(Lorg/telegram/messenger/FileUploadOperation;)V

    .line 408
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileUploadOperation;->cleanup()V

    goto/16 :goto_0

    .line 207
    .end local v32    # "e":Ljava/lang/Exception;
    .restart local v27    # "cacheFile":Ljava/io/File;
    :cond_3
    :try_start_1
    const-string/jumbo v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->mdEnc:Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 208
    :catch_1
    move-exception v32

    .line 209
    .local v32, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_2
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 219
    .end local v32    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v28    # "chunkSize":I
    :cond_4
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    .line 221
    .end local v28    # "chunkSize":I
    :cond_5
    const/16 v4, 0x800

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    div-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->maxRequestsCount:I

    .line 223
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_6

    .line 224
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/FileUploadOperation;->maxRequestsCount:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;

    .line 225
    const/16 v23, 0x0

    .local v23, "a":I
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->maxRequestsCount:I

    move/from16 v0, v23

    if-ge v0, v4, :cond_6

    .line 226
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;

    const/16 v5, 0x20

    new-array v5, v5, [B

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 230
    .end local v23    # "a":I
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    mul-int/lit16 v4, v4, 0x400

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    .line 231
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v0, v6

    move-wide/from16 v16, v0

    add-long v4, v4, v16

    const-wide/16 v16, 0x1

    sub-long v4, v4, v16

    long-to-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    div-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    .line 232
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_c

    const-string/jumbo v4, "enc"

    :goto_5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    .line 235
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_size"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v34

    .line 236
    .local v34, "fileSize":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v16, 0x3e8

    div-long v4, v4, v16

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadStartTime:I

    .line 237
    const/16 v41, 0x0

    .line 238
    .local v41, "rewrite":Z
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    if-nez v4, :cond_1a

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    cmp-long v4, v34, v4

    if-nez v4, :cond_1a

    .line 239
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    .line 240
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    .line 241
    .local v30, "date":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_uploaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v46

    .line 242
    .local v46, "uploadedSize":J
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_7

    .line 243
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_iv"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 244
    .local v33, "ivString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 245
    .local v37, "keyString":Ljava/lang/String;
    if-eqz v33, :cond_e

    if-eqz v37, :cond_e

    .line 246
    invoke-static/range {v37 .. v37}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    .line 247
    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    .line 248
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    array-length v4, v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    array-length v4, v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_d

    .line 249
    const/16 v4, 0x20

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    .line 250
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/4 v10, 0x0

    const/16 v14, 0x20

    invoke-static {v4, v5, v6, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    .end local v33    # "ivString":Ljava/lang/String;
    .end local v37    # "keyString":Ljava/lang/String;
    :cond_7
    :goto_6
    if-nez v41, :cond_19

    if-eqz v30, :cond_19

    .line 259
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadStartTime:I

    const v5, 0x15180

    sub-int/2addr v4, v5

    move/from16 v0, v30

    if-ge v0, v4, :cond_f

    .line 260
    const/16 v30, 0x0

    .line 264
    :cond_8
    :goto_7
    if-eqz v30, :cond_14

    .line 265
    const-wide/16 v4, 0x0

    cmp-long v4, v46, v4

    if-lez v4, :cond_18

    .line 266
    move-wide/from16 v0, v46

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    .line 267
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v4, v4

    div-long v4, v46, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    .line 268
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-nez v4, :cond_12

    .line 269
    const/16 v25, 0x0

    .local v25, "b":I
    :goto_8
    move/from16 v0, v25

    int-to-long v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v0, v6

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    cmp-long v4, v4, v16

    if-gez v4, :cond_14

    .line 270
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v26

    .line 271
    .local v26, "bytesRead":I
    const/16 v43, 0x0

    .line 272
    .local v43, "toAdd":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_9

    rem-int/lit8 v4, v26, 0x10

    if-eqz v4, :cond_9

    .line 273
    rem-int/lit8 v4, v26, 0x10

    rsub-int/lit8 v4, v4, 0x10

    add-int v43, v43, v4

    .line 275
    :cond_9
    new-instance v42, Lorg/telegram/tgnet/NativeByteBuffer;

    add-int v4, v26, v43

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 276
    .local v42, "sendBuffer":Lorg/telegram/tgnet/NativeByteBuffer;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    move/from16 v0, v26

    if-ne v0, v4, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_b

    .line 277
    :cond_a
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z

    .line 279
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    const/4 v5, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v26

    invoke-virtual {v0, v4, v5, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([BII)V

    .line 280
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_11

    .line 281
    const/16 v23, 0x0

    .restart local v23    # "a":I
    :goto_9
    move/from16 v0, v23

    move/from16 v1, v43

    if-ge v0, v1, :cond_10

    .line 282
    const/4 v4, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->writeByte(I)V

    .line 281
    add-int/lit8 v23, v23, 0x1

    goto :goto_9

    .line 234
    .end local v23    # "a":I
    .end local v25    # "b":I
    .end local v26    # "bytesRead":I
    .end local v30    # "date":I
    .end local v34    # "fileSize":J
    .end local v41    # "rewrite":Z
    .end local v42    # "sendBuffer":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v43    # "toAdd":I
    .end local v46    # "uploadedSize":J
    :cond_c
    const-string/jumbo v4, ""

    goto/16 :goto_5

    .line 252
    .restart local v30    # "date":I
    .restart local v33    # "ivString":Ljava/lang/String;
    .restart local v34    # "fileSize":J
    .restart local v37    # "keyString":Ljava/lang/String;
    .restart local v41    # "rewrite":Z
    .restart local v46    # "uploadedSize":J
    :cond_d
    const/16 v41, 0x1

    goto/16 :goto_6

    .line 255
    :cond_e
    const/16 v41, 0x1

    goto/16 :goto_6

    .line 261
    .end local v33    # "ivString":Ljava/lang/String;
    .end local v37    # "keyString":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-nez v4, :cond_8

    move/from16 v0, v30

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadStartTime:I

    int-to-float v5, v5

    const v6, 0x45a8c000    # 5400.0f

    sub-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_8

    .line 262
    const/16 v30, 0x0

    goto/16 :goto_7

    .line 284
    .restart local v23    # "a":I
    .restart local v25    # "b":I
    .restart local v26    # "bytesRead":I
    .restart local v42    # "sendBuffer":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v43    # "toAdd":I
    :cond_10
    move-object/from16 v0, v42

    iget-object v4, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    add-int v10, v26, v43

    invoke-static/range {v4 .. v10}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    .line 286
    .end local v23    # "a":I
    :cond_11
    invoke-virtual/range {v42 .. v42}, Lorg/telegram/tgnet/NativeByteBuffer;->rewind()V

    .line 287
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->mdEnc:Ljava/security/MessageDigest;

    move-object/from16 v0, v42

    iget-object v5, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 288
    invoke-virtual/range {v42 .. v42}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 269
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_8

    .line 291
    .end local v25    # "b":I
    .end local v26    # "bytesRead":I
    .end local v42    # "sendBuffer":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v43    # "toAdd":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    move-wide/from16 v0, v46

    invoke-virtual {v4, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    .line 292
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_14

    .line 293
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_ivc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 294
    .local v36, "ivcString":Ljava/lang/String;
    if-eqz v36, :cond_17

    .line 295
    invoke-static/range {v36 .. v36}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    .line 296
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    array-length v4, v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_14

    .line 297
    :cond_13
    const/16 v41, 0x1

    .line 298
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    .line 299
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    .line 318
    .end local v30    # "date":I
    .end local v36    # "ivcString":Ljava/lang/String;
    .end local v46    # "uploadedSize":J
    :cond_14
    :goto_a
    if-eqz v41, :cond_16

    .line 319
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_15

    .line 320
    const/16 v4, 0x20

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    .line 321
    const/16 v4, 0x20

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    .line 322
    const/16 v4, 0x20

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    .line 323
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 324
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 325
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/4 v10, 0x0

    const/16 v14, 0x20

    invoke-static {v4, v5, v6, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    :cond_15
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    .line 328
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    if-nez v4, :cond_16

    .line 329
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileUploadOperation;->storeFileUploadInfo()V

    .line 333
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v4, :cond_1b

    .line 335
    :try_start_3
    const-string/jumbo v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v38

    .line 336
    .local v38, "md":Ljava/security/MessageDigest;
    const/16 v4, 0x40

    new-array v0, v4, [B

    move-object/from16 v24, v0

    .line 337
    .local v24, "arr":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v10, 0x20

    move-object/from16 v0, v24

    invoke-static {v4, v5, v0, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    const/4 v5, 0x0

    const/16 v6, 0x20

    const/16 v10, 0x20

    move-object/from16 v0, v24

    invoke-static {v4, v5, v0, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    move-object/from16 v0, v38

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v31

    .line 340
    .local v31, "digest":[B
    const/16 v23, 0x0

    .restart local v23    # "a":I
    :goto_b
    const/4 v4, 0x4

    move/from16 v0, v23

    if-ge v0, v4, :cond_1b

    .line 341
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->fingerprint:I

    aget-byte v5, v31, v23

    add-int/lit8 v6, v23, 0x4

    aget-byte v6, v31, v6

    xor-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v23, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->fingerprint:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 340
    add-int/lit8 v23, v23, 0x1

    goto :goto_b

    .line 302
    .end local v23    # "a":I
    .end local v24    # "arr":[B
    .end local v31    # "digest":[B
    .end local v38    # "md":Ljava/security/MessageDigest;
    .restart local v30    # "date":I
    .restart local v36    # "ivcString":Ljava/lang/String;
    .restart local v46    # "uploadedSize":J
    :cond_17
    const/16 v41, 0x1

    .line 303
    const-wide/16 v4, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    .line 304
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    goto/16 :goto_a

    .line 309
    .end local v36    # "ivcString":Ljava/lang/String;
    :cond_18
    const/16 v41, 0x1

    goto/16 :goto_a

    .line 313
    :cond_19
    const/16 v41, 0x1

    goto/16 :goto_a

    .line 316
    .end local v30    # "date":I
    .end local v46    # "uploadedSize":J
    :cond_1a
    const/16 v41, 0x1

    goto/16 :goto_a

    .line 343
    :catch_2
    move-exception v32

    .line 344
    .local v32, "e":Ljava/lang/Exception;
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 347
    .end local v32    # "e":Ljava/lang/Exception;
    :cond_1b
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadedBytesCount:J

    .line 348
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    .line 351
    .end local v27    # "cacheFile":Ljava/io/File;
    .end local v34    # "fileSize":J
    .end local v41    # "rewrite":Z
    :cond_1c
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    if-eqz v4, :cond_1d

    .line 352
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v44

    .line 353
    .local v44, "size":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v0, v6

    move-wide/from16 v16, v0

    add-long v4, v4, v16

    cmp-long v4, v4, v44

    if-gtz v4, :cond_0

    .line 358
    .end local v44    # "size":J
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v29

    .line 359
    .local v29, "currentRequestBytes":I
    const/4 v4, -0x1

    move/from16 v0, v29

    if-eq v0, v4, :cond_0

    .line 362
    const/16 v43, 0x0

    .line 363
    .restart local v43    # "toAdd":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_1e

    rem-int/lit8 v4, v29, 0x10

    if-eqz v4, :cond_1e

    .line 364
    rem-int/lit8 v4, v29, 0x10

    rsub-int/lit8 v4, v4, 0x10

    add-int v43, v43, v4

    .line 366
    :cond_1e
    new-instance v42, Lorg/telegram/tgnet/NativeByteBuffer;

    add-int v4, v29, v43

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 367
    .restart local v42    # "sendBuffer":Lorg/telegram/tgnet/NativeByteBuffer;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    move/from16 v0, v29

    if-ne v0, v4, :cond_1f

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    if-nez v4, :cond_20

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_20

    .line 368
    :cond_1f
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z

    .line 370
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    const/4 v5, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v29

    invoke-virtual {v0, v4, v5, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([BII)V

    .line 371
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_23

    .line 372
    const/16 v23, 0x0

    .restart local v23    # "a":I
    :goto_c
    move/from16 v0, v23

    move/from16 v1, v43

    if-ge v0, v1, :cond_21

    .line 373
    const/4 v4, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->writeByte(I)V

    .line 372
    add-int/lit8 v23, v23, 0x1

    goto :goto_c

    .line 375
    :cond_21
    move-object/from16 v0, v42

    iget-object v4, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    add-int v10, v29, v43

    invoke-static/range {v4 .. v10}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    .line 376
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 377
    .local v8, "currentRequestIv":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v10, 0x20

    invoke-static {v4, v5, v8, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 382
    .end local v23    # "a":I
    :goto_d
    invoke-virtual/range {v42 .. v42}, Lorg/telegram/tgnet/NativeByteBuffer;->rewind()V

    .line 383
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-nez v4, :cond_22

    .line 384
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->mdEnc:Ljava/security/MessageDigest;

    move-object/from16 v0, v42

    iget-object v5, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 386
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-eqz v4, :cond_25

    .line 387
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;-><init>()V

    .line 388
    .local v39, "req":Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    move-object/from16 v0, v39

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_part:I

    .line 389
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    move-object/from16 v0, v39

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_id:J

    .line 390
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    if-eqz v4, :cond_24

    .line 391
    const/4 v4, -0x1

    move-object/from16 v0, v39

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_total_parts:I

    .line 395
    :goto_e
    move-object/from16 v0, v42

    move-object/from16 v1, v39

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    .line 396
    move-object/from16 v15, v39

    .line 404
    .end local v39    # "req":Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;
    .local v15, "finalRequest":Lorg/telegram/tgnet/TLObject;
    :goto_f
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v4, v4, v16

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 411
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    .line 412
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/FileUploadOperation;->requestNum:I

    add-int/lit8 v4, v9, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->requestNum:I

    .line 413
    .local v9, "requestNumFinal":I
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    .line 414
    .local v12, "currentRequestBytesOffset":J
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    add-int/lit8 v4, v11, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    .line 415
    .local v11, "currentRequestPartNum":I
    invoke-virtual {v15}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v4

    add-int/lit8 v7, v4, 0x4

    .line 417
    .local v7, "requestSize":I
    rem-int/lit8 v4, v9, 0x4

    shl-int/lit8 v4, v4, 0x10

    or-int/lit8 v21, v4, 0x4

    .line 419
    .local v21, "connectionType":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v14

    new-instance v5, Lorg/telegram/messenger/FileUploadOperation$4;

    move-object/from16 v6, p0

    move/from16 v10, v29

    invoke-direct/range {v5 .. v13}, Lorg/telegram/messenger/FileUploadOperation$4;-><init>(Lorg/telegram/messenger/FileUploadOperation;I[BIIIJ)V

    const/16 v17, 0x0

    new-instance v18, Lorg/telegram/messenger/FileUploadOperation$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/FileUploadOperation$5;-><init>(Lorg/telegram/messenger/FileUploadOperation;)V

    const/16 v19, 0x0

    const v20, 0x7fffffff

    const/16 v22, 0x1

    move-object/from16 v16, v5

    invoke-virtual/range {v14 .. v22}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    move-result v40

    .line 534
    .local v40, "requestToken":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 380
    .end local v7    # "requestSize":I
    .end local v8    # "currentRequestIv":[B
    .end local v9    # "requestNumFinal":I
    .end local v11    # "currentRequestPartNum":I
    .end local v12    # "currentRequestBytesOffset":J
    .end local v15    # "finalRequest":Lorg/telegram/tgnet/TLObject;
    .end local v21    # "connectionType":I
    .end local v40    # "requestToken":I
    :cond_23
    const/4 v8, 0x0

    .restart local v8    # "currentRequestIv":[B
    goto/16 :goto_d

    .line 393
    .restart local v39    # "req":Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;
    :cond_24
    :try_start_5
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    move-object/from16 v0, v39

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_total_parts:I

    goto/16 :goto_e

    .line 398
    .end local v39    # "req":Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;
    :cond_25
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;-><init>()V

    .line 399
    .local v39, "req":Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    move-object/from16 v0, v39

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;->file_part:I

    .line 400
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    move-object/from16 v0, v39

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;->file_id:J

    .line 401
    move-object/from16 v0, v42

    move-object/from16 v1, v39

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 402
    move-object/from16 v15, v39

    .restart local v15    # "finalRequest":Lorg/telegram/tgnet/TLObject;
    goto/16 :goto_f
.end method

.method private storeFileUploadInfo()V
    .locals 4

    .prologue
    .line 171
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 172
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadStartTime:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_uploaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    iget-boolean v1, p0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v1, :cond_0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_iv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_ivc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 182
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    .line 118
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileUploadOperation$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileUploadOperation$2;-><init>(Lorg/telegram/messenger/FileUploadOperation;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 126
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didFailedUploadingFile(Lorg/telegram/messenger/FileUploadOperation;)V

    .line 127
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->cleanup()V

    goto :goto_0
.end method

.method protected checkNewDataAvailable(J)V
    .locals 3
    .param p1, "finalSize"    # J

    .prologue
    .line 152
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileUploadOperation$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/FileUploadOperation$3;-><init>(Lorg/telegram/messenger/FileUploadOperation;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method

.method public getTotalFileSize()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    return-wide v0
.end method

.method public setDelegate(Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;)V
    .locals 0
    .param p1, "fileUploadOperationDelegate"    # Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    .line 95
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    if-eqz v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    .line 102
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileUploadOperation$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileUploadOperation$1;-><init>(Lorg/telegram/messenger/FileUploadOperation;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
