.class Lorg/telegram/ui/ChangeBioActivity$3;
.super Landroid/text/InputFilter$LengthFilter;
.source "ChangeBioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeBioActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeBioActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeBioActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChangeBioActivity;
    .param p2, "x0"    # I

    .prologue
    .line 107
    iput-object p1, p0, Lorg/telegram/ui/ChangeBioActivity$3;->this$0:Lorg/telegram/ui/ChangeBioActivity;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 110
    if-eqz p1, :cond_1

    const/16 v2, 0xa

    invoke-static {p1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 111
    iget-object v2, p0, Lorg/telegram/ui/ChangeBioActivity$3;->this$0:Lorg/telegram/ui/ChangeBioActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChangeBioActivity;->access$100(Lorg/telegram/ui/ChangeBioActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    .line 112
    const-string/jumbo v0, ""

    .line 122
    :cond_0
    :goto_0
    return-object v0

    .line 114
    :cond_1
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 115
    .local v0, "result":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 116
    iget-object v2, p0, Lorg/telegram/ui/ChangeBioActivity$3;->this$0:Lorg/telegram/ui/ChangeBioActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChangeBioActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 117
    .local v1, "v":Landroid/os/Vibrator;
    if-eqz v1, :cond_2

    .line 118
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 120
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ChangeBioActivity$3;->this$0:Lorg/telegram/ui/ChangeBioActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChangeBioActivity;->access$200(Lorg/telegram/ui/ChangeBioActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    goto :goto_0
.end method
