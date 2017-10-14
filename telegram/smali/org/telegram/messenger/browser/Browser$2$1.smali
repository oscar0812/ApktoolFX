.class Lorg/telegram/messenger/browser/Browser$2$1;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/browser/Browser$2;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/browser/Browser$2;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/browser/Browser$2;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/browser/Browser$2;

    .prologue
    .line 186
    iput-object p1, p0, Lorg/telegram/messenger/browser/Browser$2$1;->this$0:Lorg/telegram/messenger/browser/Browser$2;

    iput-object p2, p0, Lorg/telegram/messenger/browser/Browser$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 190
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/browser/Browser$2$1;->this$0:Lorg/telegram/messenger/browser/Browser$2;

    iget-object v2, v2, Lorg/telegram/messenger/browser/Browser$2;->val$progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/browser/Browser$2$1;->this$0:Lorg/telegram/messenger/browser/Browser$2;

    iget-object v2, v2, Lorg/telegram/messenger/browser/Browser$2;->val$progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v3, 0x0

    aput-object v3, v2, v7

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "ok":Z
    iget-object v2, p0, Lorg/telegram/messenger/browser/Browser$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v2, :cond_0

    .line 198
    iget-object v1, p0, Lorg/telegram/messenger/browser/Browser$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    .line 199
    .local v1, "webPage":Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v2, :cond_0

    .line 200
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->openArticle:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/telegram/messenger/browser/Browser$2$1;->this$0:Lorg/telegram/messenger/browser/Browser$2;

    iget-object v6, v6, Lorg/telegram/messenger/browser/Browser$2;->val$uri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 201
    const/4 v0, 0x1

    .line 204
    .end local v1    # "webPage":Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;
    :cond_0
    if-nez v0, :cond_1

    .line 205
    iget-object v2, p0, Lorg/telegram/messenger/browser/Browser$2$1;->this$0:Lorg/telegram/messenger/browser/Browser$2;

    iget-object v2, v2, Lorg/telegram/messenger/browser/Browser$2;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lorg/telegram/messenger/browser/Browser$2$1;->this$0:Lorg/telegram/messenger/browser/Browser$2;

    iget-object v3, v3, Lorg/telegram/messenger/browser/Browser$2;->val$uri:Landroid/net/Uri;

    iget-object v4, p0, Lorg/telegram/messenger/browser/Browser$2$1;->this$0:Lorg/telegram/messenger/browser/Browser$2;

    iget-boolean v4, v4, Lorg/telegram/messenger/browser/Browser$2;->val$allowCustom:Z

    invoke-static {v2, v3, v4, v7}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZ)V

    .line 207
    :cond_1
    return-void

    .line 191
    .end local v0    # "ok":Z
    :catch_0
    move-exception v2

    goto :goto_0
.end method
