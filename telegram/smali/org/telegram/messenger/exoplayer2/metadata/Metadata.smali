.class public final Lorg/telegram/messenger/exoplayer2/metadata/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/telegram/messenger/exoplayer2/metadata/Metadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final entries:[Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/Metadata$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/metadata/Metadata$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v1, v1, [Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;->entries:[Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;->entries:[Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 57
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;->entries:[Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    const-class v1, Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    aput-object v1, v2, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<+Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-eqz p1, :cond_0

    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;->entries:[Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    .line 48
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;->entries:[Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;->entries:[Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    goto :goto_0
.end method

.method public varargs constructor <init>([Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;)V
    .locals 1
    .param p1, "entries"    # [Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    .end local p1    # "entries":[Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;
    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;->entries:[Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 80
    if-ne p0, p1, :cond_0

    .line 81
    const/4 v1, 0x1

    .line 87
    :goto_0
    return v1

    .line 83
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 84
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 86
    check-cast v0, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    .line 87
    .local v0, "other":Lorg/telegram/messenger/exoplayer2/metadata/Metadata;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;->entries:[Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;->entries:[Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public get(I)Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;->entries:[Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;->entries:[Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;->entries:[Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    array-length v0, v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;->entries:[Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;->entries:[Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 104
    .local v0, "entry":Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "entry":Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;
    :cond_0
    return-void
.end method
