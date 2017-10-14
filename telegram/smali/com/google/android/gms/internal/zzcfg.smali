.class public final Lcom/google/android/gms/internal/zzcfg;
.super Lcom/google/android/gms/internal/zzchj;


# instance fields
.field private mAppId:Ljava/lang/String;

.field private zzXB:Ljava/lang/String;

.field private zzaeH:Ljava/lang/String;

.field private zzaeI:Ljava/lang/String;

.field private zzboB:Ljava/lang/String;

.field private zzboF:J

.field private zzbqC:I

.field private zzbqD:J

.field private zzbqE:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcgl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzchj;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    return-void
.end method

.method private final zzwK()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzjC()V

    :try_start_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Failed to retrieve Firebase Instance Id"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final getGmpAppId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcfg;->zzkD()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfg;->zzXB:Ljava/lang/String;

    return-object v0
.end method

.method final zzdV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzceh;
    .locals 23
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-super/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzjC()V

    new-instance v3, Lcom/google/android/gms/internal/zzceh;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcfg;->zzhl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcfg;->getGmpAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcfg;->zzkD()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcfg;->zzaeI:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcfg;->zzyv()I

    move-result v2

    int-to-long v7, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcfg;->zzkD()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zzcfg;->zzboB:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzwP()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcfg;->zzkD()V

    invoke-super/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzjC()V

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/internal/zzcfg;->zzbqD:J

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcfg;->zzboe:Lcom/google/android/gms/internal/zzcgl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    invoke-super/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-super/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Lcom/google/android/gms/internal/zzcjl;->zzI(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/gms/internal/zzcfg;->zzbqD:J

    :cond_0
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/internal/zzcfg;->zzbqD:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcfg;->zzboe:Lcom/google/android/gms/internal/zzcgl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgl;->isEnabled()Z

    move-result v15

    invoke-super/range {p0 .. p0}, Lcom/google/android/gms/internal/zzchj;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzcfw;->zzbrC:Z

    if-nez v2, :cond_1

    const/16 v16, 0x1

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcfg;->zzwK()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcfg;->zzkD()V

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcfg;->zzboe:Lcom/google/android/gms/internal/zzcgl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgl;->zzyY()J

    move-result-wide v20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcfg;->zzkD()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/zzcfg;->zzbqE:I

    move/from16 v22, v0

    move-object/from16 v14, p1

    invoke-direct/range {v3 .. v22}, Lcom/google/android/gms/internal/zzceh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJI)V

    return-object v3

    :cond_1
    const/16 v16, 0x0

    goto :goto_0
.end method

.method final zzhl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcfg;->zzkD()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfg;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic zzjC()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzjC()V

    return-void
.end method

.method protected final zzjD()V
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v3, "unknown"

    const-string/jumbo v2, "Unknown"

    const/high16 v1, -0x80000000

    const-string/jumbo v0, "Unknown"

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    if-nez v7, :cond_4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v7

    const-string/jumbo v8, "PackageManager is null, app identity information might be inaccurate. appId"

    invoke-static {v6}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iput-object v6, p0, Lcom/google/android/gms/internal/zzcfg;->mAppId:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/internal/zzcfg;->zzboB:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzcfg;->zzaeI:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/zzcfg;->zzbqC:I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcfg;->zzaeH:Ljava/lang/String;

    iput-wide v12, p0, Lcom/google/android/gms/internal/zzcfg;->zzbqD:J

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxE()Z

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdm;->zzaz(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v5

    :goto_1
    if-nez v0, :cond_1

    if-nez v1, :cond_9

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v1

    const-string/jumbo v2, "GoogleService failed to initialize (no status)"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    :cond_1
    :goto_2
    if-eqz v0, :cond_f

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwH()Lcom/google/android/gms/internal/zzcem;

    move-result-object v0

    const-string/jumbo v1, "firebase_analytics_collection_enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcem;->zzdN(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwH()Lcom/google/android/gms/internal/zzcem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcem;->zzxF()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyB()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Collection disabled with firebase_analytics_collection_deactivated=1"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    move v0, v4

    :goto_3
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcfg;->zzXB:Ljava/lang/String;

    iput-wide v12, p0, Lcom/google/android/gms/internal/zzcfg;->zzboF:J

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxE()Z

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/zzbdm;->zzqA()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v1, ""

    :cond_2
    iput-object v1, p0, Lcom/google/android/gms/internal/zzcfg;->zzXB:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "App package, google app id"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcfg;->mAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcfg;->zzXB:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_3
    :goto_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbgy;->zzaN(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_5
    iput v5, p0, Lcom/google/android/gms/internal/zzcfg;->zzbqE:I

    :goto_6
    return-void

    :cond_4
    :try_start_1
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    :goto_7
    if-nez v3, :cond_7

    const-string/jumbo v3, "manual_install"

    :cond_5
    :goto_8
    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v1, v8, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v8

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v8

    const-string/jumbo v9, "Error retrieving app installer package name. appId"

    invoke-static {v6}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    :cond_7
    const-string/jumbo v8, "com.android.vending"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v3, ""

    goto :goto_8

    :catch_1
    move-exception v7

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v7

    const-string/jumbo v8, "Error retrieving package info. appId, appName"

    invoke-static {v6}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v0}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    move v0, v4

    goto/16 :goto_1

    :cond_9
    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "GoogleService failed to initialize, status"

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v7, v1}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyB()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Collection disabled with firebase_analytics_collection_enabled=0"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    move v0, v4

    goto/16 :goto_3

    :cond_b
    if-nez v0, :cond_c

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzqB()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyB()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Collection disabled with google_app_measurement_enable=0"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    move v0, v4

    goto/16 :goto_3

    :cond_c
    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Collection enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    move v0, v5

    goto/16 :goto_3

    :catch_2
    move-exception v0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v1

    const-string/jumbo v2, "getGoogleAppId or isMeasurementEnabled failed with exception. appId"

    invoke-static {v6}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_d
    move v5, v4

    goto/16 :goto_5

    :cond_e
    iput v4, p0, Lcom/google/android/gms/internal/zzcfg;->zzbqE:I

    goto/16 :goto_6

    :cond_f
    move v0, v4

    goto/16 :goto_3
.end method

.method public final bridge synthetic zzkq()Lcom/google/android/gms/common/util/zze;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzkq()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwA()Lcom/google/android/gms/internal/zzcfj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwB()Lcom/google/android/gms/internal/zzcjl;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwC()Lcom/google/android/gms/internal/zzcgf;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwC()Lcom/google/android/gms/internal/zzcgf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwD()Lcom/google/android/gms/internal/zzcja;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwD()Lcom/google/android/gms/internal/zzcja;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwE()Lcom/google/android/gms/internal/zzcgg;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwF()Lcom/google/android/gms/internal/zzcfl;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwG()Lcom/google/android/gms/internal/zzcfw;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwH()Lcom/google/android/gms/internal/zzcem;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwH()Lcom/google/android/gms/internal/zzcem;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwo()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwo()V

    return-void
.end method

.method public final bridge synthetic zzwp()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwp()V

    return-void
.end method

.method public final bridge synthetic zzwq()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwq()V

    return-void
.end method

.method public final bridge synthetic zzwr()Lcom/google/android/gms/internal/zzcec;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwr()Lcom/google/android/gms/internal/zzcec;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzws()Lcom/google/android/gms/internal/zzcej;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzws()Lcom/google/android/gms/internal/zzcej;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwt()Lcom/google/android/gms/internal/zzchl;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwt()Lcom/google/android/gms/internal/zzchl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwu()Lcom/google/android/gms/internal/zzcfg;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwu()Lcom/google/android/gms/internal/zzcfg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwv()Lcom/google/android/gms/internal/zzcet;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwv()Lcom/google/android/gms/internal/zzcet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzww()Lcom/google/android/gms/internal/zzcid;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzww()Lcom/google/android/gms/internal/zzcid;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwx()Lcom/google/android/gms/internal/zzchz;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwx()Lcom/google/android/gms/internal/zzchz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwy()Lcom/google/android/gms/internal/zzcfh;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwy()Lcom/google/android/gms/internal/zzcfh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwz()Lcom/google/android/gms/internal/zzcen;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    return-object v0
.end method

.method final zzyu()Ljava/lang/String;
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v6, 0x1

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchj;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjl;->zzzt()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%032x"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v6, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzyv()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcfg;->zzkD()V

    iget v0, p0, Lcom/google/android/gms/internal/zzcfg;->zzbqC:I

    return v0
.end method
