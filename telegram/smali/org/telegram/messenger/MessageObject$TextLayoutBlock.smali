.class public Lorg/telegram/messenger/MessageObject$TextLayoutBlock;
.super Ljava/lang/Object;
.source "MessageObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextLayoutBlock"
.end annotation


# instance fields
.field public charactersEnd:I

.field public charactersOffset:I

.field public directionFlags:B

.field public height:I

.field public textLayout:Landroid/text/StaticLayout;

.field public textYOffset:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRtl()Z
    .locals 1

    .prologue
    .line 103
    iget-byte v0, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
