.class Lorg/telegram/ui/DocumentSelectActivity$7;
.super Ljava/lang/Object;
.source "DocumentSelectActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DocumentSelectActivity;->loadRecentFiles()V
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
        "Lorg/telegram/ui/DocumentSelectActivity$ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DocumentSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DocumentSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 385
    iput-object p1, p0, Lorg/telegram/ui/DocumentSelectActivity$7;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 385
    check-cast p1, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    check-cast p2, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/DocumentSelectActivity$7;->compare(Lorg/telegram/ui/DocumentSelectActivity$ListItem;Lorg/telegram/ui/DocumentSelectActivity$ListItem;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/ui/DocumentSelectActivity$ListItem;Lorg/telegram/ui/DocumentSelectActivity$ListItem;)I
    .locals 5
    .param p1, "o1"    # Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .param p2, "o2"    # Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    .prologue
    .line 388
    iget-object v4, p1, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 389
    .local v0, "lm":J
    iget-object v4, p2, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 390
    .local v2, "rm":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 391
    const/4 v4, 0x0

    .line 395
    :goto_0
    return v4

    .line 392
    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 393
    const/4 v4, -0x1

    goto :goto_0

    .line 395
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method
