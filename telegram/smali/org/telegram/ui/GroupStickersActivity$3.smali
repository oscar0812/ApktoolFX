.class Lorg/telegram/ui/GroupStickersActivity$3;
.super Ljava/lang/Object;
.source "GroupStickersActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupStickersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field ignoreTextChange:Z

.field final synthetic this$0:Lorg/telegram/ui/GroupStickersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupStickersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/GroupStickersActivity;

    .prologue
    .line 221
    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$3;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 237
    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity$3;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupStickersActivity;->access$500(Lorg/telegram/ui/GroupStickersActivity;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity$3;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupStickersActivity;->access$500(Lorg/telegram/ui/GroupStickersActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/GroupStickersActivity$3;->ignoreTextChange:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity$3;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupStickersActivity;->access$600(Lorg/telegram/ui/GroupStickersActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 262
    :cond_1
    :goto_1
    return-void

    .line 238
    :cond_2
    const/4 v2, 0x4

    goto :goto_0

    .line 243
    :cond_3
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v4, 0x5

    if-le v2, v4, :cond_5

    .line 244
    iput-boolean v5, p0, Lorg/telegram/ui/GroupStickersActivity$3;->ignoreTextChange:Z

    .line 246
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 247
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_4

    .line 248
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 249
    .local v0, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 250
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "addstickers"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 251
    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity$3;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupStickersActivity;->access$700(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v4

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity$3;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupStickersActivity;->access$700(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/GroupStickersActivity$3;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupStickersActivity;->access$700(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v0    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_4
    :goto_2
    iput-boolean v3, p0, Lorg/telegram/ui/GroupStickersActivity$3;->ignoreTextChange:Z

    .line 261
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity$3;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupStickersActivity;->access$800(Lorg/telegram/ui/GroupStickersActivity;)V

    goto :goto_1

    .line 256
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 228
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 233
    return-void
.end method
