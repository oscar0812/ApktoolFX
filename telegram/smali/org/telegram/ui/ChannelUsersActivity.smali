.class public Lorg/telegram/ui/ChannelUsersActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChannelUsersActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;,
        Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;
    }
.end annotation


# static fields
.field private static final search_button:I


# instance fields
.field private addNew2Row:I

.field private addNewRow:I

.field private addNewSectionRow:I

.field private blockedEmptyRow:I

.field private changeAddHeaderRow:I

.field private changeAddRadio1Row:I

.field private changeAddRadio2Row:I

.field private changeAddSectionRow:I

.field private chatId:I

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private firstEndReached:Z

.field private firstLoaded:Z

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private listViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

.field private loadingUsers:Z

.field private needOpenSearch:Z

.field private participants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$ChannelParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private participants2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$ChannelParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private participants2EndRow:I

.field private participants2StartRow:I

.field private participantsDividerRow:I

.field private participantsEndRow:I

.field private participantsInfoRow:I

.field private participantsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$ChannelParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private participantsStartRow:I

.field private restricted1SectionRow:I

.field private restricted2SectionRow:I

.field private rowCount:I

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchListViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

.field private searchWas:Z

.field private searching:Z

.field private selectType:I

.field private type:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants2:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsMap:Ljava/util/HashMap;

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "chat_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->chatId:I

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    .line 124
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "open_search"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->needOpenSearch:Z

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "selectType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->selectType:I

    .line 126
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->chatId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChannelUsersActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->searching:Z

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ChannelUsersActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelUsersActivity;->searching:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChannelUsersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->changeAddRadio1Row:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ChannelUsersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->changeAddRadio2Row:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ChannelUsersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->selectType:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ChannelUsersActivity;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Z)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .param p2, "x2"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelUsersActivity;->createMenuForParticipant(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/ChannelUsersActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ChannelUsersActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/telegram/ui/ChannelUsersActivity;->updateRows()V

    return-void
.end method

.method static synthetic access$1802(Lorg/telegram/ui/ChannelUsersActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelUsersActivity;->firstEndReached:Z

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ChannelUsersActivity;II)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelUsersActivity;->getChannelParticipants(II)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->searchListViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ChannelUsersActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->firstLoaded:Z

    return v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/ChannelUsersActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelUsersActivity;->firstLoaded:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ChannelUsersActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->loadingUsers:Z

    return v0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/ChannelUsersActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelUsersActivity;->loadingUsers:Z

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants2:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/ChannelUsersActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants2:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ChannelUsersActivity;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelUsersActivity;->getChannelAdminParticipantType(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChannelUsersActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->searchWas:Z

    return v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ChannelUsersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/ChannelUsersActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelUsersActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ChannelUsersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsInfoRow:I

    return v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ChannelUsersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->restricted1SectionRow:I

    return v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ChannelUsersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->restricted2SectionRow:I

    return v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ChannelUsersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->changeAddHeaderRow:I

    return v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ChannelUsersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I

    return v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ChannelUsersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsEndRow:I

    return v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ChannelUsersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants2StartRow:I

    return v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ChannelUsersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants2EndRow:I

    return v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/ChannelUsersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->addNewSectionRow:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ChannelUsersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->changeAddSectionRow:I

    return v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/ChannelUsersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsDividerRow:I

    return v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/ChannelUsersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->blockedEmptyRow:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChannelUsersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->addNewRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChannelUsersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChannelUsersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->chatId:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChannelUsersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 74
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->addNew2Row:I

    return v0
.end method

.method private createMenuForParticipant(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Z)Z
    .locals 12
    .param p1, "participant"    # Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .param p2, "resultOnly"    # Z

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 540
    if-eqz p1, :cond_0

    iget v9, p0, Lorg/telegram/ui/ChannelUsersActivity;->selectType:I

    if-eqz v9, :cond_2

    :cond_0
    move v8, v7

    .line 704
    :cond_1
    :goto_0
    return v8

    .line 543
    :cond_2
    iget v9, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v10

    if-ne v9, v10, :cond_3

    move v8, v7

    .line 544
    goto :goto_0

    .line 546
    :cond_3
    iget v9, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-ne v9, v11, :cond_f

    .line 549
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v10, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 550
    .local v6, "user":Lorg/telegram/tgnet/TLRPC$User;
    instance-of v9, p1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;

    if-nez v9, :cond_4

    instance-of v9, p1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned;

    if-eqz v9, :cond_a

    :cond_4
    move v1, v8

    .line 551
    .local v1, "allowSetAdmin":Z
    :goto_1
    instance-of v9, p1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v9, :cond_5

    instance-of v9, p1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v9, :cond_6

    :cond_5
    iget-boolean v9, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->can_edit:Z

    if-eqz v9, :cond_b

    :cond_6
    move v3, v8

    .line 555
    .local v3, "canEditAdmin":Z
    :goto_2
    if-nez p2, :cond_c

    .line 556
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 557
    .local v5, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_3
    if-eqz v1, :cond_7

    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->canAddAdmins(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 564
    if-nez p2, :cond_1

    .line 567
    const-string/jumbo v9, "SetAsAdmin"

    const v10, 0x7f070581

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    :cond_7
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-eqz v9, :cond_8

    if-eqz v3, :cond_8

    .line 571
    if-nez p2, :cond_1

    .line 574
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v9, :cond_d

    .line 575
    const-string/jumbo v9, "KickFromSupergroup"

    const v10, 0x7f070332

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    const-string/jumbo v9, "KickFromGroup"

    const v10, 0x7f070331

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    :cond_8
    :goto_4
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_e

    :cond_9
    move v8, v7

    .line 585
    goto/16 :goto_0

    .end local v0    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "allowSetAdmin":Z
    .end local v3    # "canEditAdmin":Z
    .end local v5    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    move v1, v7

    .line 550
    goto :goto_1

    .restart local v1    # "allowSetAdmin":Z
    :cond_b
    move v3, v7

    .line 551
    goto :goto_2

    .line 559
    .restart local v3    # "canEditAdmin":Z
    :cond_c
    const/4 v5, 0x0

    .line 560
    .restart local v5    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .restart local v0    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_3

    .line 580
    :cond_d
    const-string/jumbo v9, "ChannelRemoveUser"

    const v10, 0x7f07013d

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 588
    :cond_e
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ChannelUsersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 589
    .local v2, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    new-instance v9, Lorg/telegram/ui/ChannelUsersActivity$6;

    invoke-direct {v9, p0, v0, v6, p1}, Lorg/telegram/ui/ChannelUsersActivity$6;-><init>(Lorg/telegram/ui/ChannelUsersActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)V

    invoke-virtual {v2, v7, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 646
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ChannelUsersActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 648
    .end local v0    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "allowSetAdmin":Z
    .end local v2    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v3    # "canEditAdmin":Z
    .end local v5    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_f
    const/4 v4, 0x0

    .line 649
    .local v4, "items":[Ljava/lang/CharSequence;
    iget v9, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-nez v9, :cond_11

    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 650
    if-nez p2, :cond_1

    .line 653
    new-array v4, v8, [Ljava/lang/CharSequence;

    .end local v4    # "items":[Ljava/lang/CharSequence;
    const-string/jumbo v9, "Unban"

    const v10, 0x7f0705e7

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v7

    .line 660
    .restart local v4    # "items":[Ljava/lang/CharSequence;
    :cond_10
    :goto_5
    if-nez v4, :cond_12

    move v8, v7

    .line 661
    goto/16 :goto_0

    .line 654
    :cond_11
    iget v9, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-ne v9, v8, :cond_10

    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->canAddAdmins(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-eqz v9, :cond_10

    iget-boolean v9, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->can_edit:Z

    if-eqz v9, :cond_10

    .line 655
    if-nez p2, :cond_1

    .line 658
    new-array v4, v8, [Ljava/lang/CharSequence;

    .end local v4    # "items":[Ljava/lang/CharSequence;
    const-string/jumbo v9, "ChannelRemoveUserAdmin"

    const v10, 0x7f07013e

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v7

    .restart local v4    # "items":[Ljava/lang/CharSequence;
    goto :goto_5

    .line 663
    :cond_12
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ChannelUsersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 664
    .restart local v2    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    new-instance v7, Lorg/telegram/ui/ChannelUsersActivity$7;

    invoke-direct {v7, p0, p1}, Lorg/telegram/ui/ChannelUsersActivity$7;-><init>(Lorg/telegram/ui/ChannelUsersActivity;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)V

    invoke-virtual {v2, v4, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 702
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ChannelUsersActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0
.end method

.method private getChannelAdminParticipantType(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I
    .locals 1
    .param p1, "participant"    # Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .prologue
    .line 725
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;

    if-eqz v0, :cond_1

    .line 726
    :cond_0
    const/4 v0, 0x0

    .line 730
    :goto_0
    return v0

    .line 727
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-eqz v0, :cond_2

    .line 728
    const/4 v0, 0x1

    goto :goto_0

    .line 730
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getChannelParticipants(II)V
    .locals 5
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v4, 0x1

    .line 735
    iget-boolean v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->loadingUsers:Z

    if-eqz v3, :cond_0

    .line 880
    :goto_0
    return-void

    .line 738
    :cond_0
    iput-boolean v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->loadingUsers:Z

    .line 739
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->firstLoaded:Z

    if-nez v3, :cond_1

    .line 740
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 742
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    if-eqz v3, :cond_2

    .line 743
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 745
    :cond_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    .line 746
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    iget v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->chatId:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 747
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->firstEndReached:Z

    .line 748
    .local v0, "byEndReached":Z
    iget v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-nez v3, :cond_5

    .line 749
    if-eqz v0, :cond_4

    .line 750
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsKicked;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsKicked;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 759
    :cond_3
    :goto_1
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    const-string/jumbo v4, ""

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;->q:Ljava/lang/String;

    .line 760
    iput p1, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    .line 761
    iput p2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    .line 762
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChannelUsersActivity$9;

    invoke-direct {v4, p0, v0}, Lorg/telegram/ui/ChannelUsersActivity$9;-><init>(Lorg/telegram/ui/ChannelUsersActivity;Z)V

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    .line 879
    .local v2, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->classGuid:I

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    .line 752
    .end local v2    # "reqId":I
    :cond_4
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBanned;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBanned;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto :goto_1

    .line 754
    :cond_5
    iget v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-ne v3, v4, :cond_6

    .line 755
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto :goto_1

    .line 756
    :cond_6
    iget v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 757
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto :goto_1
.end method

.method private updateRows()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 130
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->chatId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iput v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->changeAddHeaderRow:I

    .line 135
    iput v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->changeAddRadio1Row:I

    .line 136
    iput v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->changeAddRadio2Row:I

    .line 137
    iput v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->changeAddSectionRow:I

    .line 138
    iput v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->addNewRow:I

    .line 139
    iput v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->addNew2Row:I

    .line 140
    iput v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->addNewSectionRow:I

    .line 141
    iput v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->restricted1SectionRow:I

    .line 142
    iput v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I

    .line 143
    iput v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsDividerRow:I

    .line 144
    iput v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsEndRow:I

    .line 145
    iput v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->restricted2SectionRow:I

    .line 146
    iput v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants2StartRow:I

    .line 147
    iput v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants2EndRow:I

    .line 148
    iput v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsInfoRow:I

    .line 149
    iput v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->blockedEmptyRow:I

    .line 151
    iput v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    .line 152
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-nez v0, :cond_c

    .line 153
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 154
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->addNewRow:I

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 156
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->addNewSectionRow:I

    .line 162
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 163
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->restricted1SectionRow:I

    .line 164
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I

    .line 165
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    .line 166
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsEndRow:I

    .line 168
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 169
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->restricted1SectionRow:I

    if-eq v0, v2, :cond_5

    .line 170
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsDividerRow:I

    .line 172
    :cond_5
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->restricted2SectionRow:I

    .line 173
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants2StartRow:I

    .line 174
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants2:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    .line 175
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants2EndRow:I

    .line 177
    :cond_6
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I

    if-ne v0, v2, :cond_7

    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants2StartRow:I

    if-eq v0, v2, :cond_a

    .line 178
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_8

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 181
    :cond_8
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsInfoRow:I

    goto/16 :goto_0

    .line 159
    :cond_9
    iput v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->addNewRow:I

    .line 160
    iput v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->addNewSectionRow:I

    goto :goto_1

    .line 183
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_b

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 186
    :cond_b
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->blockedEmptyRow:I

    goto/16 :goto_0

    .line 188
    :cond_c
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_d

    .line 190
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->changeAddHeaderRow:I

    .line 191
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->changeAddRadio1Row:I

    .line 192
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->changeAddRadio2Row:I

    .line 193
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->changeAddSectionRow:I

    .line 195
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canAddAdmins(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 196
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->addNewRow:I

    .line 197
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->addNewSectionRow:I

    .line 202
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 203
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I

    .line 204
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    .line 205
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsEndRow:I

    .line 210
    :goto_3
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsInfoRow:I

    goto/16 :goto_0

    .line 199
    :cond_e
    iput v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->addNewRow:I

    .line 200
    iput v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->addNewSectionRow:I

    goto :goto_2

    .line 207
    :cond_f
    iput v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I

    .line 208
    iput v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsEndRow:I

    goto :goto_3

    .line 211
    :cond_10
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 212
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->selectType:I

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canAddUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 213
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->addNewRow:I

    .line 214
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canAddViaLink(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 215
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->addNew2Row:I

    .line 217
    :cond_11
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->addNewSectionRow:I

    .line 219
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 220
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I

    .line 221
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    .line 222
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsEndRow:I

    .line 227
    :goto_4
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    if-eqz v0, :cond_0

    .line 228
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsInfoRow:I

    goto/16 :goto_0

    .line 224
    :cond_13
    iput v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I

    .line 225
    iput v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsEndRow:I

    goto :goto_4
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, -0x1

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v7, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 249
    iput-boolean v7, p0, Lorg/telegram/ui/ChannelUsersActivity;->searching:Z

    .line 250
    iput-boolean v7, p0, Lorg/telegram/ui/ChannelUsersActivity;->searchWas:Z

    .line 252
    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v5, 0x7f020093

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 253
    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 254
    iget v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-nez v4, :cond_6

    .line 255
    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "ChannelBlacklist"

    const v6, 0x7f07010e

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 269
    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/ChannelUsersActivity$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChannelUsersActivity$1;-><init>(Lorg/telegram/ui/ChannelUsersActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 277
    iget v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->selectType:I

    if-nez v4, :cond_1

    iget v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-eq v4, v3, :cond_1

    iget v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-nez v4, :cond_2

    .line 278
    :cond_1
    new-instance v4, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;-><init>(Lorg/telegram/ui/ChannelUsersActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->searchListViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

    .line 279
    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 280
    .local v1, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const v4, 0x7f02009d

    invoke-virtual {v1, v7, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ChannelUsersActivity$2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChannelUsersActivity$2;-><init>(Lorg/telegram/ui/ChannelUsersActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 317
    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v4

    const-string/jumbo v5, "Search"

    const v6, 0x7f070535

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHint(Ljava/lang/CharSequence;)V

    .line 320
    .end local v1    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_2
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->fragmentView:Landroid/view/View;

    .line 321
    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->fragmentView:Landroid/view/View;

    const-string/jumbo v5, "windowBackgroundGray"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 324
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v4, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v4, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 325
    iget v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-eqz v4, :cond_3

    iget v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-ne v4, v3, :cond_4

    .line 326
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v5, "NoResult"

    const v6, 0x7f0703e1

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 328
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-static {v9, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    new-instance v4, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v4, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 331
    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 332
    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {v5, p1, v2, v7}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 333
    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;-><init>(Lorg/telegram/ui/ChannelUsersActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/ChannelUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 334
    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_a

    :goto_1
    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollbarPosition(I)V

    .line 335
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v9, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ChannelUsersActivity$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChannelUsersActivity$3;-><init>(Lorg/telegram/ui/ChannelUsersActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 507
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ChannelUsersActivity$4;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChannelUsersActivity$4;-><init>(Lorg/telegram/ui/ChannelUsersActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 514
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v2, :cond_5

    .line 515
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ChannelUsersActivity$5;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChannelUsersActivity$5;-><init>(Lorg/telegram/ui/ChannelUsersActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 530
    :cond_5
    iget-boolean v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->loadingUsers:Z

    if-eqz v2, :cond_b

    .line 531
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 535
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/ChannelUsersActivity;->updateRows()V

    .line 536
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->fragmentView:Landroid/view/View;

    return-object v2

    .line 256
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_6
    iget v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-ne v4, v2, :cond_7

    .line 257
    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "ChannelAdministrators"

    const v6, 0x7f070109

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 258
    :cond_7
    iget v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-ne v4, v3, :cond_0

    .line 259
    iget v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->selectType:I

    if-nez v4, :cond_8

    .line 260
    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "ChannelMembers"

    const v6, 0x7f070125

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 262
    :cond_8
    iget v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->selectType:I

    if-ne v4, v2, :cond_9

    .line 263
    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "ChannelAddAdmin"

    const v6, 0x7f070104

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 264
    :cond_9
    iget v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->selectType:I

    if-ne v4, v3, :cond_0

    .line 265
    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "ChannelBlockUser"

    const v6, 0x7f07010f

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .restart local v0    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_a
    move v2, v3

    .line 334
    goto/16 :goto_1

    .line 533
    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    goto :goto_2
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 709
    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    if-ne p1, v2, :cond_0

    .line 710
    const/4 v2, 0x0

    aget-object v1, p2, v2

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 711
    .local v1, "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    const/4 v2, 0x2

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 712
    .local v0, "byChannelUsers":Z
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    iget v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->chatId:I

    if-ne v2, v3, :cond_0

    if-nez v0, :cond_0

    .line 713
    new-instance v2, Lorg/telegram/ui/ChannelUsersActivity$8;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelUsersActivity$8;-><init>(Lorg/telegram/ui/ChannelUsersActivity;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 722
    .end local v0    # "byChannelUsers":Z
    .end local v1    # "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    :cond_0
    return-void
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 12

    .prologue
    .line 1553
    new-instance v9, Lorg/telegram/ui/ChannelUsersActivity$10;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChannelUsersActivity$10;-><init>(Lorg/telegram/ui/ChannelUsersActivity;)V

    .line 1566
    .local v9, "\u0441ellDelegate":Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    const/16 v0, 0x20

    new-array v10, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText4"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteValueText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "valueImageView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlueHeader"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "radioButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "radioBackground"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "radioButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "radioBackgroundChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "nameTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "statusColor"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText"

    move-object v7, v9

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "statusOnlineColor"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlueText"

    move-object v7, v9

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_text"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x17

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundRed"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x18

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundOrange"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x19

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundViolet"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundGreen"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundCyan"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundBlue"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundPink"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x1e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "imageView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    return-object v10
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 235
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 236
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 237
    const/4 v0, 0x0

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ChannelUsersActivity;->getChannelParticipants(II)V

    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 243
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 244
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 245
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 884
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 885
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 888
    :cond_0
    return-void
.end method

.method protected onTransitionAnimationEnd(ZZ)V
    .locals 2
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 892
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->needOpenSearch:Z

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->openSearch(Z)V

    .line 895
    :cond_0
    return-void
.end method
