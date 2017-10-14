.class public Lorg/telegram/messenger/GcmRegistrationIntentService;
.super Landroid/app/IntentService;
.source "GcmRegistrationIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "GcmRegistrationIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/GcmRegistrationIntentService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/GcmRegistrationIntentService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lorg/telegram/messenger/GcmRegistrationIntentService;->sendRegistrationToServer(Ljava/lang/String;)V

    return-void
.end method

.method private sendRegistrationToServer(Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 59
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/GcmRegistrationIntentService$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/GcmRegistrationIntentService$3;-><init>(Lorg/telegram/messenger/GcmRegistrationIntentService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v2

    .line 27
    .local v2, "instanceID":Lcom/google/android/gms/iid/InstanceID;
    const v4, 0x7f0706eb

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/GcmRegistrationIntentService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "GCM"

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/google/android/gms/iid/InstanceID;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, "token":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GCM Registration Token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 29
    new-instance v4, Lorg/telegram/messenger/GcmRegistrationIntentService$1;

    invoke-direct {v4, p0, v3}, Lorg/telegram/messenger/GcmRegistrationIntentService$1;-><init>(Lorg/telegram/messenger/GcmRegistrationIntentService;Ljava/lang/String;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v2    # "instanceID":Lcom/google/android/gms/iid/InstanceID;
    .end local v3    # "token":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 38
    if-eqz p1, :cond_0

    .line 39
    const-string/jumbo v4, "failCount"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 40
    .local v1, "failCount":I
    const/16 v4, 0x3c

    if-ge v1, v4, :cond_0

    .line 41
    new-instance v6, Lorg/telegram/messenger/GcmRegistrationIntentService$2;

    invoke-direct {v6, p0, v1}, Lorg/telegram/messenger/GcmRegistrationIntentService$2;-><init>(Lorg/telegram/messenger/GcmRegistrationIntentService;I)V

    const/16 v4, 0x14

    if-ge v1, v4, :cond_1

    const-wide/16 v4, 0x2710

    :goto_1
    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_1
    const-wide/32 v4, 0x1b7740

    goto :goto_1
.end method
