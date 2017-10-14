.class Lorg/telegram/ui/ChannelEditInfoActivity$17;
.super Ljava/lang/Object;
.source "ChannelEditInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditInfoActivity;->didUploadedPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

.field final synthetic val$file:Lorg/telegram/tgnet/TLRPC$InputFile;

.field final synthetic val$small:Lorg/telegram/tgnet/TLRPC$PhotoSize;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditInfoActivity;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 856
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$17;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChannelEditInfoActivity$17;->val$file:Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object p3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$17;->val$small:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 859
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$17;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditInfoActivity$17;->val$file:Lorg/telegram/tgnet/TLRPC$InputFile;

    invoke-static {v1, v2}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1802(Lorg/telegram/ui/ChannelEditInfoActivity;Lorg/telegram/tgnet/TLRPC$InputFile;)Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 860
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$17;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditInfoActivity$17;->val$small:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v1, v2}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1902(Lorg/telegram/ui/ChannelEditInfoActivity;Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 861
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$17;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$2100(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditInfoActivity$17;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1900(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v2

    const-string/jumbo v3, "50_50"

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditInfoActivity$17;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$2000(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 862
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$17;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1100(Lorg/telegram/ui/ChannelEditInfoActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 864
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$17;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1200(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$17;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1200(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$17;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1200(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 866
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$17;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1202(Lorg/telegram/ui/ChannelEditInfoActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$17;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$402(Lorg/telegram/ui/ChannelEditInfoActivity;Z)Z

    .line 872
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$17;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$2200(Lorg/telegram/ui/ChannelEditInfoActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 874
    :cond_1
    return-void

    .line 868
    :catch_0
    move-exception v0

    .line 869
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
