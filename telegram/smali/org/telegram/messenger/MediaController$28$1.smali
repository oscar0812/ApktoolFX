.class Lorg/telegram/messenger/MediaController$28$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController$28;->run()V
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
        "Lorg/telegram/messenger/MediaController$PhotoEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController$28;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController$28;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MediaController$28;

    .prologue
    .line 3918
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$28$1;->this$0:Lorg/telegram/messenger/MediaController$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 3918
    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    check-cast p2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MediaController$28$1;->compare(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/MediaController$PhotoEntry;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/MediaController$PhotoEntry;)I
    .locals 4
    .param p1, "o1"    # Lorg/telegram/messenger/MediaController$PhotoEntry;
    .param p2, "o2"    # Lorg/telegram/messenger/MediaController$PhotoEntry;

    .prologue
    .line 3921
    iget-wide v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    iget-wide v2, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 3922
    const/4 v0, 0x1

    .line 3926
    :goto_0
    return v0

    .line 3923
    :cond_0
    iget-wide v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    iget-wide v2, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 3924
    const/4 v0, -0x1

    goto :goto_0

    .line 3926
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
