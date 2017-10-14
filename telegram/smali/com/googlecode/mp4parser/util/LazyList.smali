.class public Lcom/googlecode/mp4parser/util/LazyList;
.super Ljava/util/AbstractList;
.source "LazyList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final LOG:Lcom/googlecode/mp4parser/util/Logger;


# instance fields
.field elementSource:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field underlying:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/googlecode/mp4parser/util/LazyList;

    invoke-static {v0}, Lcom/googlecode/mp4parser/util/Logger;->getLogger(Ljava/lang/Class;)Lcom/googlecode/mp4parser/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/util/LazyList;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/util/Iterator",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/googlecode/mp4parser/util/LazyList;, "Lcom/googlecode/mp4parser/util/LazyList<TE;>;"
    .local p1, "underlying":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p2, "elementSource":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/googlecode/mp4parser/util/LazyList;->underlying:Ljava/util/List;

    .line 20
    iput-object p2, p0, Lcom/googlecode/mp4parser/util/LazyList;->elementSource:Ljava/util/Iterator;

    .line 22
    return-void
.end method

.method private blowup()V
    .locals 2

    .prologue
    .line 29
    .local p0, "this":Lcom/googlecode/mp4parser/util/LazyList;, "Lcom/googlecode/mp4parser/util/LazyList<TE;>;"
    sget-object v0, Lcom/googlecode/mp4parser/util/LazyList;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    const-string/jumbo v1, "blowup running"

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 30
    :goto_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/util/LazyList;->elementSource:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/util/LazyList;->underlying:Ljava/util/List;

    iget-object v1, p0, Lcom/googlecode/mp4parser/util/LazyList;->elementSource:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/googlecode/mp4parser/util/LazyList;, "Lcom/googlecode/mp4parser/util/LazyList<TE;>;"
    iget-object v0, p0, Lcom/googlecode/mp4parser/util/LazyList;->underlying:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/googlecode/mp4parser/util/LazyList;->underlying:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/util/LazyList;->elementSource:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/googlecode/mp4parser/util/LazyList;->underlying:Ljava/util/List;

    iget-object v1, p0, Lcom/googlecode/mp4parser/util/LazyList;->elementSource:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/util/LazyList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public getUnderlying()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/googlecode/mp4parser/util/LazyList;, "Lcom/googlecode/mp4parser/util/LazyList<TE;>;"
    iget-object v0, p0, Lcom/googlecode/mp4parser/util/LazyList;->underlying:Ljava/util/List;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/googlecode/mp4parser/util/LazyList;, "Lcom/googlecode/mp4parser/util/LazyList<TE;>;"
    new-instance v0, Lcom/googlecode/mp4parser/util/LazyList$1;

    invoke-direct {v0, p0}, Lcom/googlecode/mp4parser/util/LazyList$1;-><init>(Lcom/googlecode/mp4parser/util/LazyList;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 76
    .local p0, "this":Lcom/googlecode/mp4parser/util/LazyList;, "Lcom/googlecode/mp4parser/util/LazyList<TE;>;"
    sget-object v0, Lcom/googlecode/mp4parser/util/LazyList;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    const-string/jumbo v1, "potentially expensive size() call"

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/googlecode/mp4parser/util/LazyList;->blowup()V

    .line 78
    iget-object v0, p0, Lcom/googlecode/mp4parser/util/LazyList;->underlying:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
