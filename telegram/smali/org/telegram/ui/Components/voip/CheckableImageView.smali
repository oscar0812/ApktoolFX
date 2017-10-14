.class public Lorg/telegram/ui/Components/voip/CheckableImageView;
.super Landroid/widget/ImageView;
.source "CheckableImageView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lorg/telegram/ui/Components/voip/CheckableImageView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/voip/CheckableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/voip/CheckableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/CheckableImageView;->mChecked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 35
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 36
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CheckableImageView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    sget-object v1, Lorg/telegram/ui/Components/voip/CheckableImageView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/voip/CheckableImageView;->mergeDrawableStates([I[I)[I

    .line 39
    :cond_0
    return-object v0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 54
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/CheckableImageView;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 55
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/CheckableImageView;->mChecked:Z

    .line 56
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CheckableImageView;->refreshDrawableState()V

    .line 58
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/CheckableImageView;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setChecked(Z)V

    .line 45
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
