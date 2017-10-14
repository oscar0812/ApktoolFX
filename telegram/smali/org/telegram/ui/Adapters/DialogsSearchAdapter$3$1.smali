.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3$1;
.super Ljava/lang/Object;
.source "DialogsSearchAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;->run()V
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
        "Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;

    .prologue
    .line 390
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 390
    check-cast p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    check-cast p2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3$1;->compare(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;)I
    .locals 2
    .param p1, "lhs"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;
    .param p2, "rhs"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    .prologue
    .line 393
    iget v0, p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->date:I

    iget v1, p2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->date:I

    if-ge v0, v1, :cond_0

    .line 394
    const/4 v0, 0x1

    .line 398
    :goto_0
    return v0

    .line 395
    :cond_0
    iget v0, p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->date:I

    iget v1, p2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->date:I

    if-le v0, v1, :cond_1

    .line 396
    const/4 v0, -0x1

    goto :goto_0

    .line 398
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
