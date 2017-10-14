.class public Lorg/telegram/messenger/SmsListener;
.super Landroid/content/BroadcastReceiver;
.source "SmsListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    const/4 v6, 0x0

    .line 25
    .local v6, "outgoing":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "android.provider.Telephony.NEW_OUTGOING_SMS"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 26
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isWaitingForSms()Z

    move-result v11

    if-nez v11, :cond_2

    .line 67
    :cond_1
    :goto_0
    return-void

    .line 29
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 31
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 33
    :try_start_0
    const-string/jumbo v11, "pdus"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Object;

    move-object v0, v11

    check-cast v0, [Ljava/lang/Object;

    move-object v8, v0

    .line 34
    .local v8, "pdus":[Ljava/lang/Object;
    array-length v11, v8

    new-array v5, v11, [Landroid/telephony/SmsMessage;

    .line 35
    .local v5, "msgs":[Landroid/telephony/SmsMessage;
    const-string/jumbo v10, ""

    .line 36
    .local v10, "wholeString":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v11, v5

    if-ge v3, v11, :cond_3

    .line 37
    aget-object v11, v8, v3

    check-cast v11, [B

    check-cast v11, [B

    invoke-static {v11}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v11

    aput-object v11, v5, v3

    .line 38
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v5, v3

    invoke-virtual {v12}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 36
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 41
    :cond_3
    if-nez v6, :cond_1

    .line 45
    :try_start_1
    const-string/jumbo v11, "[0-9]+"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 46
    .local v7, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 47
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 48
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 49
    .local v9, "str":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x3

    if-lt v11, v12, :cond_1

    .line 50
    new-instance v11, Lorg/telegram/messenger/SmsListener$1;

    invoke-direct {v11, p0, v4}, Lorg/telegram/messenger/SmsListener$1;-><init>(Lorg/telegram/messenger/SmsListener;Ljava/util/regex/Matcher;)V

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 58
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    .end local v7    # "pattern":Ljava/util/regex/Pattern;
    .end local v9    # "str":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 62
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v3    # "i":I
    .end local v5    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v8    # "pdus":[Ljava/lang/Object;
    .end local v10    # "wholeString":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 63
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
