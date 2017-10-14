.class Lorg/telegram/messenger/ContactsController$11$1$2;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$11$1;->run()V
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
.field final synthetic this$2:Lorg/telegram/messenger/ContactsController$11$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$11$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/messenger/ContactsController$11$1;

    .prologue
    .line 1282
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$11$1$2;->this$2:Lorg/telegram/messenger/ContactsController$11$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1282
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/ContactsController$11$1$2;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x23

    const/4 v2, 0x0

    .line 1285
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1286
    .local v0, "cv1":C
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1287
    .local v1, "cv2":C
    if-ne v0, v3, :cond_0

    .line 1288
    const/4 v2, 0x1

    .line 1292
    :goto_0
    return v2

    .line 1289
    :cond_0
    if-ne v1, v3, :cond_1

    .line 1290
    const/4 v2, -0x1

    goto :goto_0

    .line 1292
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method
