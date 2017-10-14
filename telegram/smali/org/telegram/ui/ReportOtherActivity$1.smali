.class Lorg/telegram/ui/ReportOtherActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ReportOtherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ReportOtherActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ReportOtherActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ReportOtherActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ReportOtherActivity;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/telegram/ui/ReportOtherActivity$1;->this$0:Lorg/telegram/ui/ReportOtherActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 65
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 66
    iget-object v1, p0, Lorg/telegram/ui/ReportOtherActivity$1;->this$0:Lorg/telegram/ui/ReportOtherActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ReportOtherActivity;->finishFragment()V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 68
    iget-object v1, p0, Lorg/telegram/ui/ReportOtherActivity$1;->this$0:Lorg/telegram/ui/ReportOtherActivity;

    invoke-static {v1}, Lorg/telegram/ui/ReportOtherActivity;->access$000(Lorg/telegram/ui/ReportOtherActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_reportPeer;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_reportPeer;-><init>()V

    .line 70
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_account_reportPeer;
    iget-object v1, p0, Lorg/telegram/ui/ReportOtherActivity$1;->this$0:Lorg/telegram/ui/ReportOtherActivity;

    invoke-static {v1}, Lorg/telegram/ui/ReportOtherActivity;->access$100(Lorg/telegram/ui/ReportOtherActivity;)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_reportPeer;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 71
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonOther;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonOther;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_reportPeer;->reason:Lorg/telegram/tgnet/TLRPC$ReportReason;

    .line 72
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_reportPeer;->reason:Lorg/telegram/tgnet/TLRPC$ReportReason;

    iget-object v2, p0, Lorg/telegram/ui/ReportOtherActivity$1;->this$0:Lorg/telegram/ui/ReportOtherActivity;

    invoke-static {v2}, Lorg/telegram/ui/ReportOtherActivity;->access$000(Lorg/telegram/ui/ReportOtherActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$ReportReason;->text:Ljava/lang/String;

    .line 73
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ReportOtherActivity$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ReportOtherActivity$1$1;-><init>(Lorg/telegram/ui/ReportOtherActivity$1;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 79
    iget-object v1, p0, Lorg/telegram/ui/ReportOtherActivity$1;->this$0:Lorg/telegram/ui/ReportOtherActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ReportOtherActivity;->finishFragment()V

    goto :goto_0
.end method
