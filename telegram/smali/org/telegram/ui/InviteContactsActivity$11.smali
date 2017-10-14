.class Lorg/telegram/ui/InviteContactsActivity$11;
.super Ljava/lang/Object;
.source "InviteContactsActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/InviteContactsActivity;->fetchContacts()V
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
        "Lorg/telegram/messenger/ContactsController$Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/InviteContactsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/InviteContactsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/InviteContactsActivity;

    .prologue
    .line 693
    iput-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$11;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 693
    check-cast p1, Lorg/telegram/messenger/ContactsController$Contact;

    check-cast p2, Lorg/telegram/messenger/ContactsController$Contact;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/InviteContactsActivity$11;->compare(Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/messenger/ContactsController$Contact;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/messenger/ContactsController$Contact;)I
    .locals 2
    .param p1, "o1"    # Lorg/telegram/messenger/ContactsController$Contact;
    .param p2, "o2"    # Lorg/telegram/messenger/ContactsController$Contact;

    .prologue
    .line 696
    iget v0, p1, Lorg/telegram/messenger/ContactsController$Contact;->imported:I

    iget v1, p2, Lorg/telegram/messenger/ContactsController$Contact;->imported:I

    if-le v0, v1, :cond_0

    .line 697
    const/4 v0, -0x1

    .line 701
    :goto_0
    return v0

    .line 698
    :cond_0
    iget v0, p1, Lorg/telegram/messenger/ContactsController$Contact;->imported:I

    iget v1, p2, Lorg/telegram/messenger/ContactsController$Contact;->imported:I

    if-ge v0, v1, :cond_1

    .line 699
    const/4 v0, 0x1

    goto :goto_0

    .line 701
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
