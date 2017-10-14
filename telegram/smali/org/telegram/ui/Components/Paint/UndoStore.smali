.class public Lorg/telegram/ui/Components/Paint/UndoStore;
.super Ljava/lang/Object;
.source "UndoStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/UndoStore$UndoStoreDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Components/Paint/UndoStore$UndoStoreDelegate;

.field private operations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private uuidToOperationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->uuidToOperationMap:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->operations:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Paint/UndoStore;)Lorg/telegram/ui/Components/Paint/UndoStore$UndoStoreDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/UndoStore;

    .prologue
    .line 11
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->delegate:Lorg/telegram/ui/Components/Paint/UndoStore$UndoStoreDelegate;

    return-object v0
.end method

.method private notifyOfHistoryChanges()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lorg/telegram/ui/Components/Paint/UndoStore$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/UndoStore$1;-><init>(Lorg/telegram/ui/Components/Paint/UndoStore;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method


# virtual methods
.method public canUndo()Z
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->operations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerUndo(Ljava/util/UUID;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "undoRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->uuidToOperationMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->operations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/UndoStore;->notifyOfHistoryChanges()V

    .line 34
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->operations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->uuidToOperationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 62
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/UndoStore;->notifyOfHistoryChanges()V

    .line 63
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/Paint/UndoStore$UndoStoreDelegate;)V
    .locals 0
    .param p1, "undoStoreDelegate"    # Lorg/telegram/ui/Components/Paint/UndoStore$UndoStoreDelegate;

    .prologue
    .line 26
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->delegate:Lorg/telegram/ui/Components/Paint/UndoStore$UndoStoreDelegate;

    .line 27
    return-void
.end method

.method public undo()V
    .locals 4

    .prologue
    .line 44
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->operations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 56
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->operations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 49
    .local v0, "lastIndex":I
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->operations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    .line 50
    .local v2, "uuid":Ljava/util/UUID;
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->uuidToOperationMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 51
    .local v1, "undoRunnable":Ljava/lang/Runnable;
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->uuidToOperationMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->operations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 54
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 55
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/UndoStore;->notifyOfHistoryChanges()V

    goto :goto_0
.end method

.method public unregisterUndo(Ljava/util/UUID;)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->uuidToOperationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->operations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 40
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/UndoStore;->notifyOfHistoryChanges()V

    .line 41
    return-void
.end method
