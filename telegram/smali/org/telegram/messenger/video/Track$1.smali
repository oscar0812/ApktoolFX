.class Lorg/telegram/messenger/video/Track$1;
.super Ljava/lang/Object;
.source "Track.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/video/Track;->prepare()V
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
        "Lorg/telegram/messenger/video/Track$SamplePresentationTime;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/video/Track;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/video/Track;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/video/Track;

    .prologue
    .line 270
    iput-object p1, p0, Lorg/telegram/messenger/video/Track$1;->this$0:Lorg/telegram/messenger/video/Track;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 270
    check-cast p1, Lorg/telegram/messenger/video/Track$SamplePresentationTime;

    check-cast p2, Lorg/telegram/messenger/video/Track$SamplePresentationTime;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/video/Track$1;->compare(Lorg/telegram/messenger/video/Track$SamplePresentationTime;Lorg/telegram/messenger/video/Track$SamplePresentationTime;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/messenger/video/Track$SamplePresentationTime;Lorg/telegram/messenger/video/Track$SamplePresentationTime;)I
    .locals 4
    .param p1, "o1"    # Lorg/telegram/messenger/video/Track$SamplePresentationTime;
    .param p2, "o2"    # Lorg/telegram/messenger/video/Track$SamplePresentationTime;

    .prologue
    .line 273
    invoke-static {p1}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v0

    invoke-static {p2}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 274
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    .line 275
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v0

    invoke-static {p2}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 276
    const/4 v0, -0x1

    goto :goto_0

    .line 278
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
