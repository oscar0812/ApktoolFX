.class final Lorg/telegram/messenger/support/util/DiffUtil$1;
.super Ljava/lang/Object;
.source "DiffUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/messenger/support/util/DiffUtil$Snake;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 72
    check-cast p1, Lorg/telegram/messenger/support/util/DiffUtil$Snake;

    check-cast p2, Lorg/telegram/messenger/support/util/DiffUtil$Snake;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/util/DiffUtil$1;->compare(Lorg/telegram/messenger/support/util/DiffUtil$Snake;Lorg/telegram/messenger/support/util/DiffUtil$Snake;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/messenger/support/util/DiffUtil$Snake;Lorg/telegram/messenger/support/util/DiffUtil$Snake;)I
    .locals 3
    .param p1, "o1"    # Lorg/telegram/messenger/support/util/DiffUtil$Snake;
    .param p2, "o2"    # Lorg/telegram/messenger/support/util/DiffUtil$Snake;

    .prologue
    .line 75
    iget v1, p1, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->x:I

    iget v2, p2, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->x:I

    sub-int v0, v1, v2

    .line 76
    .local v0, "cmpX":I
    if-nez v0, :cond_0

    iget v1, p1, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->y:I

    iget v2, p2, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->y:I

    sub-int v0, v1, v2

    .end local v0    # "cmpX":I
    :cond_0
    return v0
.end method
