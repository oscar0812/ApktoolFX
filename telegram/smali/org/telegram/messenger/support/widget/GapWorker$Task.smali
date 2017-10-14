.class Lorg/telegram/messenger/support/widget/GapWorker$Task;
.super Ljava/lang/Object;
.source "GapWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Task"
.end annotation


# instance fields
.field public distanceToItem:I

.field public immediate:Z

.field public position:I

.field public view:Lorg/telegram/messenger/support/widget/RecyclerView;

.field public viewVelocity:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/GapWorker$Task;->immediate:Z

    .line 45
    iput v1, p0, Lorg/telegram/messenger/support/widget/GapWorker$Task;->viewVelocity:I

    .line 46
    iput v1, p0, Lorg/telegram/messenger/support/widget/GapWorker$Task;->distanceToItem:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GapWorker$Task;->view:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 48
    iput v1, p0, Lorg/telegram/messenger/support/widget/GapWorker$Task;->position:I

    .line 49
    return-void
.end method
