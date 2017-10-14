.class final Lorg/telegram/ui/Components/voip/VoIPHelper$7;
.super Ljava/lang/Object;
.source "VoIPHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/VoIPHelper;->showRateAlert(Landroid/content/Context;Ljava/lang/Runnable;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accessHash:J

.field final synthetic val$bar:Lorg/telegram/ui/Components/BetterRatingView;

.field final synthetic val$callID:J

.field final synthetic val$commentBox:Landroid/widget/EditText;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$includeLogs:[Z

.field final synthetic val$log:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/BetterRatingView;Landroid/widget/EditText;JJ[ZLjava/io/File;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 269
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$7;->val$bar:Lorg/telegram/ui/Components/BetterRatingView;

    iput-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$7;->val$commentBox:Landroid/widget/EditText;

    iput-wide p3, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$7;->val$accessHash:J

    iput-wide p5, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$7;->val$callID:J

    iput-object p7, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$7;->val$includeLogs:[Z

    iput-object p8, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$7;->val$log:Ljava/io/File;

    iput-object p9, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 272
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;-><init>()V

    .line 273
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$7;->val$bar:Lorg/telegram/ui/Components/BetterRatingView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BetterRatingView;->getRating()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;->rating:I

    .line 274
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;->rating:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 275
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$7;->val$commentBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;->comment:Ljava/lang/String;

    .line 278
    :goto_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 279
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-wide v2, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$7;->val$accessHash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 280
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-wide v2, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$7;->val$callID:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 281
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/voip/VoIPHelper$7$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/voip/VoIPHelper$7$1;-><init>(Lorg/telegram/ui/Components/voip/VoIPHelper$7;Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 295
    return-void

    .line 277
    :cond_0
    const-string/jumbo v1, ""

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;->comment:Ljava/lang/String;

    goto :goto_0
.end method
