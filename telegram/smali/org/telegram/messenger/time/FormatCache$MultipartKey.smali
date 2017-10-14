.class Lorg/telegram/messenger/time/FormatCache$MultipartKey;
.super Ljava/lang/Object;
.source "FormatCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/time/FormatCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultipartKey"
.end annotation


# instance fields
.field private hashCode:I

.field private final keys:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .param p1, "keys"    # [Ljava/lang/Object;

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lorg/telegram/messenger/time/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    .line 235
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 245
    iget-object v0, p0, Lorg/telegram/messenger/time/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    check-cast p1, Lorg/telegram/messenger/time/FormatCache$MultipartKey;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lorg/telegram/messenger/time/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 253
    iget v2, p0, Lorg/telegram/messenger/time/FormatCache$MultipartKey;->hashCode:I

    if-nez v2, :cond_2

    .line 254
    const/4 v1, 0x0

    .line 255
    .local v1, "rc":I
    iget-object v3, p0, Lorg/telegram/messenger/time/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 256
    .local v0, "key":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 257
    mul-int/lit8 v5, v1, 0x7

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    add-int v1, v5, v6

    .line 255
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    .end local v0    # "key":Ljava/lang/Object;
    :cond_1
    iput v1, p0, Lorg/telegram/messenger/time/FormatCache$MultipartKey;->hashCode:I

    .line 262
    .end local v1    # "rc":I
    :cond_2
    iget v2, p0, Lorg/telegram/messenger/time/FormatCache$MultipartKey;->hashCode:I

    return v2
.end method
