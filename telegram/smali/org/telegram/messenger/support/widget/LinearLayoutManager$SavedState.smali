.class public Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAnchorLayoutFromEnd:Z

.field mAnchorOffset:I

.field mAnchorPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2332
    new-instance v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState$1;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2298
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 2300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 2303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 2304
    return-void

    .line 2303
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;)V
    .locals 1
    .param p1, "other"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    .prologue
    .line 2306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2307
    iget v0, p1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2308
    iget v0, p1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 2309
    iget-boolean v0, p1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 2310
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 2322
    const/4 v0, 0x0

    return v0
.end method

.method hasValidAnchor()Z
    .locals 1

    .prologue
    .line 2313
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method invalidateAnchor()V
    .locals 1

    .prologue
    .line 2317
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2318
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2327
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2328
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2329
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2330
    return-void

    .line 2329
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
