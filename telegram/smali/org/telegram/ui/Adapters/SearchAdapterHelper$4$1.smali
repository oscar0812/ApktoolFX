.class Lorg/telegram/ui/Adapters/SearchAdapterHelper$4$1;
.super Ljava/lang/Object;
.source "SearchAdapterHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/SearchAdapterHelper$4;->run()V
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
        "Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper$4;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper$4;

    .prologue
    .line 220
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$4$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 220
    check-cast p1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    check-cast p2, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$4$1;->compare(Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;)I
    .locals 2
    .param p1, "lhs"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;
    .param p2, "rhs"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    .prologue
    .line 223
    iget v0, p1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->date:I

    iget v1, p2, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->date:I

    if-ge v0, v1, :cond_0

    .line 224
    const/4 v0, 0x1

    .line 228
    :goto_0
    return v0

    .line 225
    :cond_0
    iget v0, p1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->date:I

    iget v1, p2, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->date:I

    if-le v0, v1, :cond_1

    .line 226
    const/4 v0, -0x1

    goto :goto_0

    .line 228
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
