.class public abstract Lcom/google/android/search/verification/client/SearchActionVerificationClientService;
.super Landroid/app/IntentService;
.source "SearchActionVerificationClientService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/search/verification/client/SearchActionVerificationClientService$SearchActionVerificationServiceConnection;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT_IN_MS:I = 0x3e8

.field public static final EXTRA_INTENT:Ljava/lang/String; = "SearchActionVerificationClientExtraIntent"

.field private static final MS_TO_NS:J = 0xf4240L

.field private static final REMOTE_SERVICE_ACTION:Ljava/lang/String; = "com.google.android.googlequicksearchbox.SEARCH_ACTION_VERIFICATION_SERVICE"

.field private static final SEARCH_APP_PACKAGE:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final TAG:Ljava/lang/String; = "SAVerificationClientS"

.field private static final TESTING_APP_PACKAGE:Ljava/lang/String; = "com.google.verificationdemo.fakeverification"

.field private static final TIME_TO_SLEEP_IN_MS:I = 0x32


# instance fields
.field private final DBG:Z

.field private final mConnectionTimeout:J

.field private mIRemoteService:Lcom/google/android/search/verification/api/ISearchActionVerificationService;

.field private mSearchActionVerificationServiceConnection:Lcom/google/android/search/verification/client/SearchActionVerificationClientService$SearchActionVerificationServiceConnection;

.field private final mServiceIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    const-string/jumbo v0, "SearchActionVerificationClientService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.google.android.googlequicksearchbox.SEARCH_ACTION_VERIFICATION_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->mServiceIntent:Landroid/content/Intent;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->mIRemoteService:Lcom/google/android/search/verification/api/ISearchActionVerificationService;

    .line 77
    invoke-virtual {p0}, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->isTestingMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->DBG:Z

    .line 78
    invoke-virtual {p0}, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->isTestingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->mServiceIntent:Landroid/content/Intent;

    const-string/jumbo v1, "com.google.verificationdemo.fakeverification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->getConnectionTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->mConnectionTimeout:J

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/search/verification/client/SearchActionVerificationClientService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/search/verification/client/SearchActionVerificationClientService;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->DBG:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/search/verification/client/SearchActionVerificationClientService;Lcom/google/android/search/verification/api/ISearchActionVerificationService;)Lcom/google/android/search/verification/api/ISearchActionVerificationService;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/search/verification/client/SearchActionVerificationClientService;
    .param p1, "x1"    # Lcom/google/android/search/verification/api/ISearchActionVerificationService;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->mIRemoteService:Lcom/google/android/search/verification/api/ISearchActionVerificationService;

    return-object p1
.end method

.method private isConnected()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->mIRemoteService:Lcom/google/android/search/verification/api/ISearchActionVerificationService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logIntentWithExtras(Landroid/content/Intent;)V
    .locals 9
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 154
    const-string/jumbo v4, "SAVerificationClientS"

    const-string/jumbo v5, "Intent:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string/jumbo v4, "SAVerificationClientS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 157
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 158
    const-string/jumbo v4, "SAVerificationClientS"

    const-string/jumbo v5, "Extras:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 160
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 161
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 163
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v4, "SAVerificationClientS"

    const-string/jumbo v5, "\t%s: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public getConnectionTimeout()J
    .locals 2

    .prologue
    .line 64
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public isTestingMode()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public final onCreate()V
    .locals 3

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SAVerificationClientS"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 140
    new-instance v0, Lcom/google/android/search/verification/client/SearchActionVerificationClientService$SearchActionVerificationServiceConnection;

    invoke-direct {v0, p0}, Lcom/google/android/search/verification/client/SearchActionVerificationClientService$SearchActionVerificationServiceConnection;-><init>(Lcom/google/android/search/verification/client/SearchActionVerificationClientService;)V

    iput-object v0, p0, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->mSearchActionVerificationServiceConnection:Lcom/google/android/search/verification/client/SearchActionVerificationClientService$SearchActionVerificationServiceConnection;

    .line 142
    iget-object v0, p0, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->mServiceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->mSearchActionVerificationServiceConnection:Lcom/google/android/search/verification/client/SearchActionVerificationClientService$SearchActionVerificationServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 144
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SAVerificationClientS"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 150
    iget-object v0, p0, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->mSearchActionVerificationServiceConnection:Lcom/google/android/search/verification/client/SearchActionVerificationClientService$SearchActionVerificationServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 151
    return-void
.end method

.method protected final onHandleIntent(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 104
    if-nez p1, :cond_1

    .line 105
    iget-boolean v6, p0, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->DBG:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "SAVerificationClientS"

    const-string/jumbo v7, "Unable to verify null intent"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 109
    .local v4, "startTime":J
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->isConnected()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    iget-wide v8, p0, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->mConnectionTimeout:J

    const-wide/32 v10, 0xf4240

    mul-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 111
    const-wide/16 v6, 0x32

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "exception":Ljava/lang/InterruptedException;
    iget-boolean v6, p0, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->DBG:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "SAVerificationClientS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unexpected InterruptedException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 116
    .end local v0    # "exception":Ljava/lang/InterruptedException;
    :cond_3
    invoke-direct {p0}, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 117
    const-string/jumbo v6, "SearchActionVerificationClientExtraIntent"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 118
    const-string/jumbo v6, "SearchActionVerificationClientExtraIntent"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 119
    .local v1, "extraIntent":Landroid/content/Intent;
    iget-boolean v6, p0, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->DBG:Z

    if-eqz v6, :cond_4

    invoke-static {v1}, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->logIntentWithExtras(Landroid/content/Intent;)V

    .line 121
    :cond_4
    :try_start_1
    const-string/jumbo v6, "SAVerificationClientS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "API version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->mIRemoteService:Lcom/google/android/search/verification/api/ISearchActionVerificationService;

    invoke-interface {v8}, Lcom/google/android/search/verification/api/ISearchActionVerificationService;->getVersion()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v3, "options":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->mIRemoteService:Lcom/google/android/search/verification/api/ISearchActionVerificationService;

    invoke-interface {v6, v1, v3}, Lcom/google/android/search/verification/api/ISearchActionVerificationService;->isSearchAction(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v2

    .line 124
    .local v2, "isVerified":Z
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->performAction(Landroid/content/Intent;ZLandroid/os/Bundle;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 125
    .end local v2    # "isVerified":Z
    .end local v3    # "options":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    .line 126
    .local v0, "exception":Landroid/os/RemoteException;
    const-string/jumbo v6, "SAVerificationClientS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Remote exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 129
    .end local v0    # "exception":Landroid/os/RemoteException;
    .end local v1    # "extraIntent":Landroid/content/Intent;
    :cond_5
    iget-boolean v6, p0, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;->DBG:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "SAVerificationClientS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No extra, nothing to check: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 132
    :cond_6
    const-string/jumbo v6, "SAVerificationClientS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "VerificationService is not connected, unable to check intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public abstract performAction(Landroid/content/Intent;ZLandroid/os/Bundle;)Z
.end method
