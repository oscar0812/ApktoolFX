.class Lorg/telegram/ui/ProxySettingsActivity$5;
.super Ljava/lang/Object;
.source "ProxySettingsActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProxySettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProxySettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProxySettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ProxySettingsActivity;

    .prologue
    .line 336
    iput-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$5;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 339
    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    .line 340
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 341
    .local v0, "num":I
    add-int/lit8 v1, v0, 0x1

    iget-object v3, p0, Lorg/telegram/ui/ProxySettingsActivity$5;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProxySettingsActivity;->access$000(Lorg/telegram/ui/ProxySettingsActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 342
    add-int/lit8 v0, v0, 0x1

    .line 343
    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity$5;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProxySettingsActivity;->access$000(Lorg/telegram/ui/ProxySettingsActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->requestFocus()Z

    :cond_0
    move v1, v2

    .line 350
    .end local v0    # "num":I
    :goto_0
    return v1

    .line 346
    :cond_1
    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    .line 347
    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity$5;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ProxySettingsActivity;->finishFragment()V

    move v1, v2

    .line 348
    goto :goto_0

    .line 350
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
