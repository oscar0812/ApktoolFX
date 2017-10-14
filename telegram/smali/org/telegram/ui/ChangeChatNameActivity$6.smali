.class Lorg/telegram/ui/ChangeChatNameActivity$6;
.super Ljava/lang/Object;
.source "ChangeChatNameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeChatNameActivity;->didUploadedPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeChatNameActivity;

.field final synthetic val$file:Lorg/telegram/tgnet/TLRPC$InputFile;

.field final synthetic val$small:Lorg/telegram/tgnet/TLRPC$PhotoSize;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeChatNameActivity;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChangeChatNameActivity;

    .prologue
    .line 325
    iput-object p1, p0, Lorg/telegram/ui/ChangeChatNameActivity$6;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChangeChatNameActivity$6;->val$file:Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object p3, p0, Lorg/telegram/ui/ChangeChatNameActivity$6;->val$small:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 328
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$6;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    iget-object v2, p0, Lorg/telegram/ui/ChangeChatNameActivity$6;->val$file:Lorg/telegram/tgnet/TLRPC$InputFile;

    invoke-static {v1, v2}, Lorg/telegram/ui/ChangeChatNameActivity;->access$502(Lorg/telegram/ui/ChangeChatNameActivity;Lorg/telegram/tgnet/TLRPC$InputFile;)Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 329
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$6;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    iget-object v2, p0, Lorg/telegram/ui/ChangeChatNameActivity$6;->val$small:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v1, v2}, Lorg/telegram/ui/ChangeChatNameActivity;->access$702(Lorg/telegram/ui/ChangeChatNameActivity;Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 330
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$6;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChangeChatNameActivity;->access$1100(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChangeChatNameActivity$6;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChangeChatNameActivity;->access$700(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v2

    const-string/jumbo v3, "50_50"

    iget-object v4, p0, Lorg/telegram/ui/ChangeChatNameActivity$6;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChangeChatNameActivity;->access$1000(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 331
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$6;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChangeChatNameActivity;->access$300(Lorg/telegram/ui/ChangeChatNameActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$6;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ChangeChatNameActivity;->access$002(Lorg/telegram/ui/ChangeChatNameActivity;Z)Z

    .line 334
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$6;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChangeChatNameActivity;->access$400(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$6;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChangeChatNameActivity;->access$400(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$6;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChangeChatNameActivity;->access$400(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 336
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$6;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ChangeChatNameActivity;->access$402(Lorg/telegram/ui/ChangeChatNameActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$6;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChangeChatNameActivity;->access$1200(Lorg/telegram/ui/ChangeChatNameActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 343
    :cond_1
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
