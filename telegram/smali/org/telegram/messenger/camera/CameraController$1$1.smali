.class Lorg/telegram/messenger/camera/CameraController$1$1;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/messenger/camera/Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/camera/CameraController$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraController$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/camera/CameraController$1;

    .prologue
    .line 128
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$1$1;->this$1:Lorg/telegram/messenger/camera/CameraController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 128
    check-cast p1, Lorg/telegram/messenger/camera/Size;

    check-cast p2, Lorg/telegram/messenger/camera/Size;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/camera/CameraController$1$1;->compare(Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;)I
    .locals 4
    .param p1, "o1"    # Lorg/telegram/messenger/camera/Size;
    .param p2, "o2"    # Lorg/telegram/messenger/camera/Size;

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 131
    iget v2, p1, Lorg/telegram/messenger/camera/Size;->mWidth:I

    iget v3, p2, Lorg/telegram/messenger/camera/Size;->mWidth:I

    if-ge v2, v3, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    iget v2, p1, Lorg/telegram/messenger/camera/Size;->mWidth:I

    iget v3, p2, Lorg/telegram/messenger/camera/Size;->mWidth:I

    if-le v2, v3, :cond_2

    move v0, v1

    .line 134
    goto :goto_0

    .line 136
    :cond_2
    iget v2, p1, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget v3, p2, Lorg/telegram/messenger/camera/Size;->mHeight:I

    if-lt v2, v3, :cond_0

    .line 138
    iget v0, p1, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget v2, p2, Lorg/telegram/messenger/camera/Size;->mHeight:I

    if-le v0, v2, :cond_3

    move v0, v1

    .line 139
    goto :goto_0

    .line 141
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
