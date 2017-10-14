.class Lorg/telegram/messenger/MessagesStorage$56$1;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage$56;->run()V
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
        "Lorg/telegram/tgnet/TLRPC$Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesStorage$56;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage$56;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesStorage$56;

    .prologue
    .line 3632
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$56$1;->this$1:Lorg/telegram/messenger/MessagesStorage$56;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 3632
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Message;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$56$1;->compare(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Message;)I
    .locals 4
    .param p1, "lhs"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p2, "rhs"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 3635
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-lez v2, :cond_2

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-lez v2, :cond_2

    .line 3636
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-le v2, v3, :cond_1

    .line 3654
    :cond_0
    :goto_0
    return v0

    .line 3638
    :cond_1
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v0, v2, :cond_4

    move v0, v1

    .line 3639
    goto :goto_0

    .line 3641
    :cond_2
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez v2, :cond_3

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez v2, :cond_3

    .line 3642
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-lt v2, v3, :cond_0

    .line 3644
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-le v0, v2, :cond_4

    move v0, v1

    .line 3645
    goto :goto_0

    .line 3648
    :cond_3
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-gt v2, v3, :cond_0

    .line 3650
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-ge v0, v2, :cond_4

    move v0, v1

    .line 3651
    goto :goto_0

    .line 3654
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
