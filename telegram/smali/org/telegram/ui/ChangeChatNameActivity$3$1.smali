.class Lorg/telegram/ui/ChangeChatNameActivity$3$1;
.super Ljava/lang/Object;
.source "ChangeChatNameActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeChatNameActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChangeChatNameActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeChatNameActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChangeChatNameActivity$3;

    .prologue
    .line 194
    iput-object p1, p0, Lorg/telegram/ui/ChangeChatNameActivity$3$1;->this$1:Lorg/telegram/ui/ChangeChatNameActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v1, 0x0

    .line 197
    if-nez p2, :cond_1

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity$3$1;->this$1:Lorg/telegram/ui/ChangeChatNameActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ChangeChatNameActivity$3;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChangeChatNameActivity;->access$200(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/ui/Components/AvatarUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->openCamera()V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity$3$1;->this$1:Lorg/telegram/ui/ChangeChatNameActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ChangeChatNameActivity$3;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChangeChatNameActivity;->access$200(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/ui/Components/AvatarUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->openGallery()V

    goto :goto_0

    .line 201
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity$3$1;->this$1:Lorg/telegram/ui/ChangeChatNameActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ChangeChatNameActivity$3;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChangeChatNameActivity;->access$702(Lorg/telegram/ui/ChangeChatNameActivity;Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity$3$1;->this$1:Lorg/telegram/ui/ChangeChatNameActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ChangeChatNameActivity$3;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChangeChatNameActivity;->access$502(Lorg/telegram/ui/ChangeChatNameActivity;Lorg/telegram/tgnet/TLRPC$InputFile;)Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity$3$1;->this$1:Lorg/telegram/ui/ChangeChatNameActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ChangeChatNameActivity$3;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChangeChatNameActivity;->access$1100(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity$3$1;->this$1:Lorg/telegram/ui/ChangeChatNameActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ChangeChatNameActivity$3;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChangeChatNameActivity;->access$700(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v1

    const-string/jumbo v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/ChangeChatNameActivity$3$1;->this$1:Lorg/telegram/ui/ChangeChatNameActivity$3;

    iget-object v3, v3, Lorg/telegram/ui/ChangeChatNameActivity$3;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChangeChatNameActivity;->access$1000(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
