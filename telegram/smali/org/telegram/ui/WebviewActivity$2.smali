.class Lorg/telegram/ui/WebviewActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "WebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/WebviewActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/WebviewActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/WebviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/WebviewActivity;

    .prologue
    .line 140
    iput-object p1, p0, Lorg/telegram/ui/WebviewActivity$2;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 143
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity$2;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/WebviewActivity;->finishFragment()V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity$2;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/WebviewActivity;->access$000(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->with_my_score:Z

    .line 147
    iget-object v7, p0, Lorg/telegram/ui/WebviewActivity$2;->this$0:Lorg/telegram/ui/WebviewActivity;

    new-instance v0, Lorg/telegram/ui/Components/ShareAlert;

    iget-object v1, p0, Lorg/telegram/ui/WebviewActivity$2;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/WebviewActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/WebviewActivity$2;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {v2}, Lorg/telegram/ui/WebviewActivity;->access$000(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v5, p0, Lorg/telegram/ui/WebviewActivity$2;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {v5}, Lorg/telegram/ui/WebviewActivity;->access$100(Lorg/telegram/ui/WebviewActivity;)Ljava/lang/String;

    move-result-object v5

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {v7, v0}, Lorg/telegram/ui/WebviewActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 148
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity$2;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/WebviewActivity;->access$200(Lorg/telegram/ui/WebviewActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/WebviewActivity$2;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {v1}, Lorg/telegram/ui/WebviewActivity;->access$000(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/WebviewActivity$2;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/WebviewActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/WebviewActivity$2;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {v3}, Lorg/telegram/ui/WebviewActivity;->access$300(Lorg/telegram/ui/WebviewActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/WebviewActivity$2;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {v4}, Lorg/telegram/ui/WebviewActivity;->access$400(Lorg/telegram/ui/WebviewActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/WebviewActivity;->openGameInBrowser(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
