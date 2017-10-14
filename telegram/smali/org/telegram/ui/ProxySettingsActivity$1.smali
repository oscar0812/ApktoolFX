.class Lorg/telegram/ui/ProxySettingsActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ProxySettingsActivity.java"


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
    .line 125
    iput-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 11
    .param p1, "id"    # I

    .prologue
    const/4 v10, 0x1

    .line 128
    const/4 v8, -0x1

    if-ne p1, v8, :cond_1

    .line 129
    iget-object v8, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/ProxySettingsActivity;->finishFragment()V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    if-ne p1, v10, :cond_0

    .line 131
    iget-object v8, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/ProxySettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v8, ""

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .local v3, "params":Ljava/lang/StringBuilder;
    iget-object v8, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProxySettingsActivity;->access$000(Lorg/telegram/ui/ProxySettingsActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "address":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProxySettingsActivity;->access$000(Lorg/telegram/ui/ProxySettingsActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "password":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProxySettingsActivity;->access$000(Lorg/telegram/ui/ProxySettingsActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 138
    .local v7, "user":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v8}, Lorg/telegram/ui/ProxySettingsActivity;->access$000(Lorg/telegram/ui/ProxySettingsActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v8

    aget-object v8, v8, v10

    invoke-virtual {v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "port":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 141
    const-string/jumbo v8, "server="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 144
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_3

    .line 145
    const-string/jumbo v8, "&"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_3
    const-string/jumbo v8, "port="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "UTF-8"

    invoke-static {v5, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_5

    .line 151
    const-string/jumbo v8, "&"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_5
    const-string/jumbo v8, "user="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "UTF-8"

    invoke-static {v7, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 156
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_7

    .line 157
    const-string/jumbo v8, "&"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_7
    const-string/jumbo v8, "pass="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "UTF-8"

    invoke-static {v4, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 167
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.SEND"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v6, "shareIntent":Landroid/content/Intent;
    const-string/jumbo v8, "text/plain"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string/jumbo v8, "android.intent.extra.TEXT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "https://t.me/socks?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string/jumbo v8, "ShareLink"

    const v9, 0x7f070589

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 171
    .local v1, "chooserIntent":Landroid/content/Intent;
    const/high16 v8, 0x10000000

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 172
    iget-object v8, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/ProxySettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 161
    .end local v1    # "chooserIntent":Landroid/content/Intent;
    .end local v6    # "shareIntent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 162
    .local v2, "ignore":Ljava/lang/Exception;
    goto/16 :goto_0
.end method
