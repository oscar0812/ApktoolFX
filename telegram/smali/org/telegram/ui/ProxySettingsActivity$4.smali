.class Lorg/telegram/ui/ProxySettingsActivity$4;
.super Ljava/lang/Object;
.source "ProxySettingsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 255
    iput-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$4;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 11
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const v10, 0xffff

    const/4 v9, 0x1

    .line 268
    iget-object v8, p0, Lorg/telegram/ui/ProxySettingsActivity$4;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProxySettingsActivity;->access$500(Lorg/telegram/ui/ProxySettingsActivity;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 300
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v8, p0, Lorg/telegram/ui/ProxySettingsActivity$4;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProxySettingsActivity;->access$000(Lorg/telegram/ui/ProxySettingsActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v8

    aget-object v4, v8, v9

    .line 272
    .local v4, "phoneField":Landroid/widget/EditText;
    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v6

    .line 273
    .local v6, "start":I
    const-string/jumbo v3, "0123456789"

    .line 274
    .local v3, "chars":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 275
    .local v7, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 276
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_2

    .line 277
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "ch":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 282
    .end local v2    # "ch":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lorg/telegram/ui/ProxySettingsActivity$4;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v8, v9}, Lorg/telegram/ui/ProxySettingsActivity;->access$502(Lorg/telegram/ui/ProxySettingsActivity;Z)Z

    .line 284
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 285
    .local v5, "port":I
    if-ltz v5, :cond_3

    if-gt v5, v10, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 286
    :cond_3
    if-gez v5, :cond_5

    .line 287
    const-string/jumbo v8, "0"

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 298
    .end local v6    # "start":I
    :cond_4
    :goto_2
    iget-object v8, p0, Lorg/telegram/ui/ProxySettingsActivity$4;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lorg/telegram/ui/ProxySettingsActivity;->access$502(Lorg/telegram/ui/ProxySettingsActivity;Z)Z

    .line 299
    iget-object v8, p0, Lorg/telegram/ui/ProxySettingsActivity$4;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProxySettingsActivity;->access$400(Lorg/telegram/ui/ProxySettingsActivity;)V

    goto :goto_0

    .line 288
    .restart local v6    # "start":I
    :cond_5
    if-le v5, v10, :cond_6

    .line 289
    const-string/jumbo v8, "65535"

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 291
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 294
    :cond_7
    if-ltz v6, :cond_4

    .line 295
    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v8

    if-gt v6, v8, :cond_8

    .end local v6    # "start":I
    :goto_3
    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2

    .restart local v6    # "start":I
    :cond_8
    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v6

    goto :goto_3
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 259
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 264
    return-void
.end method
