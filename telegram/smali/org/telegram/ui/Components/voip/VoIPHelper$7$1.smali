.class Lorg/telegram/ui/Components/voip/VoIPHelper$7$1;
.super Ljava/lang/Object;
.source "VoIPHelper.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/VoIPHelper$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/VoIPHelper$7;

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/VoIPHelper$7;Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/voip/VoIPHelper$7;

    .prologue
    .line 281
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$7$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPHelper$7;

    iput-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$7$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 284
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    if-eqz v0, :cond_0

    move-object v8, p1

    .line 285
    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_updates;

    .line 286
    .local v8, "updates":Lorg/telegram/tgnet/TLRPC$TL_updates;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v8, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$7$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPHelper$7;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPHelper$7;->val$includeLogs:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$7$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPHelper$7;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPHelper$7;->val$log:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$7$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;->rating:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$7$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPHelper$7;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPHelper$7;->val$log:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$7$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPHelper$7;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPHelper$7;->val$log:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "text/plain"

    const-wide/32 v4, 0x40c220

    move-object v6, v2

    move-object v7, v2

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocument(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$7$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPHelper$7;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPHelper$7;->val$context:Landroid/content/Context;

    const-string/jumbo v1, "CallReportSent"

    const v2, 0x7f0700ed

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 292
    .end local v8    # "updates":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_0
    return-void
.end method
