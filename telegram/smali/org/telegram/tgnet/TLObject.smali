.class public Lorg/telegram/tgnet/TLObject;
.super Ljava/lang/Object;
.source "TLObject.java"


# static fields
.field private static final sizeCalculator:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/telegram/tgnet/NativeByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public disableFree:Z

.field public networkType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lorg/telegram/tgnet/TLObject$1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLObject$1;-><init>()V

    sput-object v0, Lorg/telegram/tgnet/TLObject;->sizeCalculator:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 25
    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public freeResources()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public getObjectSize()I
    .locals 2

    .prologue
    .line 44
    sget-object v1, Lorg/telegram/tgnet/TLObject;->sizeCalculator:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/NativeByteBuffer;

    .line 45
    .local v0, "byteBuffer":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->rewind()V

    .line 46
    sget-object v1, Lorg/telegram/tgnet/TLObject;->sizeCalculator:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/AbstractSerializedData;

    invoke-virtual {p0, v1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 47
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->length()I

    move-result v1

    return v1
.end method

.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 0
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 29
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 0
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 33
    return-void
.end method
