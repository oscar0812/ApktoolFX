.class Lorg/telegram/tgnet/ConnectionsManager$DnsTxtLoadTask$1;
.super Ljava/lang/Object;
.source "ConnectionsManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/tgnet/ConnectionsManager$DnsTxtLoadTask;->doInBackground([Ljava/lang/Void;)Lorg/telegram/tgnet/NativeByteBuffer;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/tgnet/ConnectionsManager$DnsTxtLoadTask;


# direct methods
.method constructor <init>(Lorg/telegram/tgnet/ConnectionsManager$DnsTxtLoadTask;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/tgnet/ConnectionsManager$DnsTxtLoadTask;

    .prologue
    .line 688
    iput-object p1, p0, Lorg/telegram/tgnet/ConnectionsManager$DnsTxtLoadTask$1;->this$0:Lorg/telegram/tgnet/ConnectionsManager$DnsTxtLoadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 688
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/tgnet/ConnectionsManager$DnsTxtLoadTask$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "o1"    # Ljava/lang/String;
    .param p2, "o2"    # Ljava/lang/String;

    .prologue
    .line 691
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 692
    .local v0, "l1":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 693
    .local v1, "l2":I
    if-le v0, v1, :cond_0

    .line 694
    const/4 v2, -0x1

    .line 698
    :goto_0
    return v2

    .line 695
    :cond_0
    if-ge v0, v1, :cond_1

    .line 696
    const/4 v2, 0x1

    goto :goto_0

    .line 698
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
