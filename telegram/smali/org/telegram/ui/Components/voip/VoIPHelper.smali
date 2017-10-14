.class public Lorg/telegram/ui/Components/voip/VoIPHelper;
.super Ljava/lang/Object;
.source "VoIPHelper.java"


# static fields
.field private static final VOIP_SUPPORT_ID:I = 0x40c220

.field public static lastCallTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/telegram/ui/Components/voip/VoIPHelper;->lastCallTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/voip/VoIPHelper;->doInitiateCall(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;)V

    return-void
.end method

.method public static canRateCall(Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;)Z
    .locals 10
    .param p0, "call"    # Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;

    .prologue
    const/4 v4, 0x0

    .line 177
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;

    if-nez v5, :cond_1

    .line 178
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "notifications"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 179
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "calls_access_hashes"

    sget-object v6, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 180
    .local v2, "hashes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 181
    .local v1, "hash":Ljava/lang/String;
    const-string/jumbo v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "d":[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    .line 184
    aget-object v6, v0, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->call_id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 185
    const/4 v4, 0x1

    .line 189
    .end local v0    # "d":[Ljava/lang/String;
    .end local v1    # "hash":Ljava/lang/String;
    .end local v2    # "hashes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    return v4
.end method

.method private static doInitiateCall(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;)V
    .locals 7
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x1

    .line 128
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lorg/telegram/ui/Components/voip/VoIPHelper;->lastCallTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lorg/telegram/ui/Components/voip/VoIPHelper;->lastCallTime:J

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/telegram/messenger/voip/VoIPService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "user_id"

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    const-string/jumbo v1, "is_outgoing"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    const-string/jumbo v1, "start_incall_activity"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static getLogsDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 170
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "voip_logs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    .local v0, "logsDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 173
    :cond_0
    return-object v0
.end method

.method private static initiateCall(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;)V
    .locals 8
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 91
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 95
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 96
    .local v0, "callUser":Lorg/telegram/tgnet/TLRPC$User;
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    if-eq v1, v2, :cond_2

    .line 97
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "VoipOngoingAlertTitle"

    const v3, 0x7f07064a

    .line 98
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "VoipOngoingAlert"

    const v3, 0x7f070649

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 100
    invoke-static {v6, v7}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 101
    invoke-static {v6, v7}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 99
    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "OK"

    const v3, 0x7f070440

    .line 102
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/voip/VoIPHelper$2;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/voip/VoIPHelper$2;-><init>(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "Cancel"

    const v3, 0x7f0700f4

    .line 117
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_0

    .line 120
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/telegram/ui/VoIPActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 122
    .end local v0    # "callUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    sget-object v1, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-nez v1, :cond_0

    .line 123
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/voip/VoIPHelper;->doInitiateCall(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;)V

    goto/16 :goto_0
.end method

.method public static permissionDenied(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "onFinish"    # Ljava/lang/Runnable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 143
    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "AppName"

    const v3, 0x7f07007a

    .line 145
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "VoipNeedMicPermission"

    const v3, 0x7f070642

    .line 146
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "OK"

    const v3, 0x7f070440

    .line 147
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "Settings"

    const v3, 0x7f070584

    .line 148
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/voip/VoIPHelper$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/voip/VoIPHelper$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 158
    .local v0, "dlg":Lorg/telegram/ui/ActionBar/AlertDialog;
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPHelper$4;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/voip/VoIPHelper$4;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 166
    .end local v0    # "dlg":Lorg/telegram/ui/ActionBar/AlertDialog;
    :cond_0
    return-void
.end method

.method public static showRateAlert(Landroid/content/Context;Ljava/lang/Runnable;JJ)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onDismiss"    # Ljava/lang/Runnable;
    .param p2, "callID"    # J
    .param p4, "accessHash"    # J

    .prologue
    .line 210
    new-instance v13, Ljava/io/File;

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPHelper;->getLogsDir()Ljava/io/File;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".log"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v13, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    .local v13, "log":Ljava/io/File;
    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 212
    .local v16, "alertView":Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 214
    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v22

    .line 215
    .local v22, "pad":I
    const/4 v4, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v22

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 217
    new-instance v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 218
    .local v23, "text":Landroid/widget/TextView;
    const/4 v4, 0x2

    const/high16 v6, 0x41800000    # 16.0f

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 219
    const-string/jumbo v4, "dialogTextBlack"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    const/16 v4, 0x11

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 221
    const-string/jumbo v4, "VoipRateCallAlert"

    const v6, 0x7f07064e

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    new-instance v17, Lorg/telegram/ui/Components/BetterRatingView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/BetterRatingView;-><init>(Landroid/content/Context;)V

    .line 225
    .local v17, "bar":Lorg/telegram/ui/Components/BetterRatingView;
    const/4 v4, -0x2

    const/4 v5, -0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    new-instance v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 228
    .local v20, "commentBox":Landroid/widget/EditText;
    const-string/jumbo v4, "CallReportHint"

    const v6, 0x7f0700ea

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 229
    const v4, 0x24001

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 230
    const-string/jumbo v4, "dialogTextBlack"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 231
    const-string/jumbo v4, "dialogTextHint"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 232
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    const/4 v4, 0x0

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v7, 0x0

    const/high16 v8, 0x40800000    # 4.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6, v7, v8}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 234
    const/high16 v4, 0x41900000    # 18.0f

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextSize(F)V

    .line 235
    const/16 v4, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 236
    const/4 v4, -0x1

    const/4 v5, -0x2

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v8, 0x41000000    # 8.0f

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    const/4 v4, 0x1

    new-array v12, v4, [Z

    const/4 v4, 0x0

    const/4 v6, 0x1

    aput-boolean v6, v12, v4

    .line 239
    .local v12, "includeLogs":[Z
    new-instance v19, Lorg/telegram/ui/Cells/CheckBoxCell;

    const/4 v4, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;Z)V

    .line 240
    .local v19, "checkbox":Lorg/telegram/ui/Cells/CheckBoxCell;
    new-instance v18, Lorg/telegram/ui/Components/voip/VoIPHelper$5;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v1}, Lorg/telegram/ui/Components/voip/VoIPHelper$5;-><init>([ZLorg/telegram/ui/Cells/CheckBoxCell;)V

    .line 247
    .local v18, "checkClickListener":Landroid/view/View$OnClickListener;
    const-string/jumbo v4, "CallReportIncludeLogs"

    const v6, 0x7f0700eb

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6, v7, v8}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 248
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;->setClipToPadding(Z)V

    .line 249
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    const/4 v4, -0x1

    const/4 v5, -0x2

    const/high16 v6, -0x3f000000    # -8.0f

    const/4 v7, 0x0

    const/high16 v8, -0x3f000000    # -8.0f

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    new-instance v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 253
    .local v21, "logsText":Landroid/widget/TextView;
    const/4 v4, 0x2

    const/high16 v6, 0x41600000    # 14.0f

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 254
    const-string/jumbo v4, "dialogTextGray3"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    const-string/jumbo v4, "CallReportLogsExplain"

    const v6, 0x7f0700ec

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v6, 0x0

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 257
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    const/16 v4, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;->setVisibility(I)V

    .line 261
    const/16 v4, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 263
    const/4 v4, 0x0

    const/4 v6, 0x0

    aput-boolean v6, v12, v4

    .line 266
    :cond_0
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v6, "CallMessageReportProblem"

    const v7, 0x7f0700e7

    .line 267
    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v4

    .line 268
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v4

    const-string/jumbo v6, "Send"

    const v7, 0x7f070554

    .line 269
    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    new-instance v5, Lorg/telegram/ui/Components/voip/VoIPHelper$7;

    move-object/from16 v6, v17

    move-object/from16 v7, v20

    move-wide/from16 v8, p4

    move-wide/from16 v10, p2

    move-object/from16 v14, p0

    invoke-direct/range {v5 .. v14}, Lorg/telegram/ui/Components/voip/VoIPHelper$7;-><init>(Lorg/telegram/ui/Components/BetterRatingView;Landroid/widget/EditText;JJ[ZLjava/io/File;Landroid/content/Context;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v4

    const-string/jumbo v6, "Cancel"

    const v7, 0x7f0700f4

    .line 297
    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/Components/voip/VoIPHelper$6;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/voip/VoIPHelper$6;-><init>(Ljava/lang/Runnable;)V

    .line 298
    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v4

    .line 305
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v15

    .line 307
    .local v15, "alert":Lorg/telegram/ui/ActionBar/AlertDialog;
    const/4 v4, -0x1

    invoke-virtual {v15, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v5

    .line 308
    .local v5, "btn":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 309
    new-instance v4, Lorg/telegram/ui/Components/voip/VoIPHelper$8;

    move-object/from16 v6, v20

    move-object/from16 v7, p0

    move-object v8, v13

    move-object/from16 v9, v19

    move-object/from16 v10, v21

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/voip/VoIPHelper$8;-><init>(Landroid/view/View;Landroid/widget/EditText;Landroid/content/Context;Ljava/io/File;Lorg/telegram/ui/Cells/CheckBoxCell;Landroid/widget/TextView;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/BetterRatingView;->setOnRatingChangeListener(Lorg/telegram/ui/Components/BetterRatingView$OnRatingChangeListener;)V

    .line 324
    return-void
.end method

.method public static showRateAlert(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "call"    # Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;

    .prologue
    const/4 v12, 0x0

    .line 193
    const-string/jumbo v0, "notifications"

    invoke-virtual {p0, v0, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 194
    .local v9, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v0, "calls_access_hashes"

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v8

    .line 195
    .local v8, "hashes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 196
    .local v7, "hash":Ljava/lang/String;
    const-string/jumbo v1, " "

    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 197
    .local v6, "d":[Ljava/lang/String;
    array-length v1, v6

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 199
    aget-object v1, v6, v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, p1, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->call_id:J

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const/4 v0, 0x1

    :try_start_0
    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 202
    .local v4, "accessHash":J
    const/4 v1, 0x0

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->call_id:J

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/voip/VoIPHelper;->showRateAlert(Landroid/content/Context;Ljava/lang/Runnable;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v4    # "accessHash":J
    .end local v6    # "d":[Ljava/lang/String;
    .end local v7    # "hash":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 203
    .restart local v6    # "d":[Ljava/lang/String;
    .restart local v7    # "hash":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static startCall(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_userFull;)V
    .locals 12
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userFull"    # Lorg/telegram/tgnet/TLRPC$TL_userFull;

    .prologue
    const/4 v11, 0x0

    const v10, 0x7f070440

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 54
    if-eqz p2, :cond_0

    iget-boolean v4, p2, Lorg/telegram/tgnet/TLRPC$TL_userFull;->phone_calls_private:Z

    if-eqz v4, :cond_0

    .line 55
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v4, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "VoipFailed"

    const v6, 0x7f07063d

    .line 56
    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v4

    const-string/jumbo v5, "CallNotAvailable"

    const v6, 0x7f0700e9

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v9, p0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 58
    invoke-static {v8, v9}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 57
    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v3

    const-string/jumbo v4, "OK"

    .line 59
    invoke-static {v4, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v3

    .line 60
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 88
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    .line 64
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    .line 65
    .local v1, "isAirplaneMode":Z
    :goto_1
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v4, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_3

    const-string/jumbo v3, "VoipOfflineAirplaneTitle"

    const v5, 0x7f070646

    .line 66
    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v4

    if-eqz v1, :cond_4

    const-string/jumbo v3, "VoipOfflineAirplane"

    const v5, 0x7f070645

    .line 67
    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v3

    const-string/jumbo v4, "OK"

    .line 68
    invoke-static {v4, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 69
    .local v0, "bldr":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    if-eqz v1, :cond_1

    .line 70
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v2, "settingsIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 72
    const-string/jumbo v3, "VoipOfflineOpenSettings"

    const v4, 0x7f070647

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/voip/VoIPHelper$1;

    invoke-direct {v4, p1, v2}, Lorg/telegram/ui/Components/voip/VoIPHelper$1;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 80
    .end local v2    # "settingsIntent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_0

    .end local v0    # "bldr":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v1    # "isAirplaneMode":Z
    :cond_2
    move v1, v3

    .line 64
    goto :goto_1

    .line 66
    .restart local v1    # "isAirplaneMode":Z
    :cond_3
    const-string/jumbo v3, "VoipOfflineTitle"

    const v5, 0x7f070648

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 67
    :cond_4
    const-string/jumbo v3, "VoipOffline"

    const v5, 0x7f070644

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 83
    .end local v1    # "isAirplaneMode":Z
    :cond_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_6

    const-string/jumbo v4, "android.permission.RECORD_AUDIO"

    invoke-virtual {p1, v4}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_6

    .line 84
    new-array v4, v1, [Ljava/lang/String;

    const-string/jumbo v5, "android.permission.RECORD_AUDIO"

    aput-object v5, v4, v3

    const/16 v3, 0x65

    invoke-virtual {p1, v4, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 86
    :cond_6
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/voip/VoIPHelper;->initiateCall(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;)V

    goto/16 :goto_0
.end method
