.class public Lcom/google/android/gms/internal/zzcgl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzcgl$zza;
    }
.end annotation


# static fields
.field private static volatile zzbsm:Lcom/google/android/gms/internal/zzcgl;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzafK:Z

.field private final zzbsA:Lcom/google/android/gms/internal/zzchz;

.field private final zzbsB:Lcom/google/android/gms/internal/zzcid;

.field private final zzbsC:Lcom/google/android/gms/internal/zzcet;

.field private final zzbsD:Lcom/google/android/gms/internal/zzchl;

.field private final zzbsE:Lcom/google/android/gms/internal/zzcfg;

.field private final zzbsF:Lcom/google/android/gms/internal/zzcfu;

.field private final zzbsG:Lcom/google/android/gms/internal/zzcjg;

.field private final zzbsH:Lcom/google/android/gms/internal/zzcej;

.field private final zzbsI:Lcom/google/android/gms/internal/zzcec;

.field private zzbsJ:Z

.field private zzbsK:Ljava/lang/Boolean;

.field private zzbsL:J

.field private zzbsM:Ljava/nio/channels/FileLock;

.field private zzbsN:Ljava/nio/channels/FileChannel;

.field private zzbsO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzbsP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private zzbsQ:I

.field private zzbsR:I

.field private zzbsS:J

.field private zzbsT:J

.field private zzbsU:Z

.field private zzbsV:Z

.field private zzbsW:Z

.field private final zzbsX:J

.field private final zzbsn:Lcom/google/android/gms/internal/zzcem;

.field private final zzbso:Lcom/google/android/gms/internal/zzcfw;

.field private final zzbsp:Lcom/google/android/gms/internal/zzcfl;

.field private final zzbsq:Lcom/google/android/gms/internal/zzcgg;

.field private final zzbsr:Lcom/google/android/gms/internal/zzcja;

.field private final zzbss:Lcom/google/android/gms/internal/zzcgf;

.field private final zzbst:Lcom/google/android/gms/measurement/AppMeasurement;

.field private final zzbsu:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private final zzbsv:Lcom/google/android/gms/internal/zzcjl;

.field private final zzbsw:Lcom/google/android/gms/internal/zzcfj;

.field private final zzbsx:Lcom/google/android/gms/internal/zzcen;

.field private final zzbsy:Lcom/google/android/gms/internal/zzcfh;

.field private final zzbsz:Lcom/google/android/gms/internal/zzcfp;

.field private final zzvw:Lcom/google/android/gms/common/util/zze;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzchk;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzchk;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->mContext:Landroid/content/Context;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsS:J

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzrY()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzvw:Lcom/google/android/gms/common/util/zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsX:J

    new-instance v0, Lcom/google/android/gms/internal/zzcem;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcem;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsn:Lcom/google/android/gms/internal/zzcem;

    new-instance v0, Lcom/google/android/gms/internal/zzcfw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcfw;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfw;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbso:Lcom/google/android/gms/internal/zzcfw;

    new-instance v0, Lcom/google/android/gms/internal/zzcfl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcfl;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsp:Lcom/google/android/gms/internal/zzcfl;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyB()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "App measurement is starting up, version"

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzwP()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxE()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyB()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzcjl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcjl;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsv:Lcom/google/android/gms/internal/zzcjl;

    new-instance v0, Lcom/google/android/gms/internal/zzcfj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcfj;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfj;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsw:Lcom/google/android/gms/internal/zzcfj;

    new-instance v0, Lcom/google/android/gms/internal/zzcet;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcet;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcet;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsC:Lcom/google/android/gms/internal/zzcet;

    new-instance v0, Lcom/google/android/gms/internal/zzcfg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcfg;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfg;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsE:Lcom/google/android/gms/internal/zzcfg;

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxE()Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfg;->zzhl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcjl;->zzey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyB()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v1

    const-string/jumbo v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyC()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Debug-level message logging enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzcen;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcen;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsx:Lcom/google/android/gms/internal/zzcen;

    new-instance v0, Lcom/google/android/gms/internal/zzcfh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcfh;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfh;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsy:Lcom/google/android/gms/internal/zzcfh;

    new-instance v0, Lcom/google/android/gms/internal/zzcej;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcej;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcej;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsH:Lcom/google/android/gms/internal/zzcej;

    new-instance v0, Lcom/google/android/gms/internal/zzcec;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcec;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsI:Lcom/google/android/gms/internal/zzcec;

    new-instance v0, Lcom/google/android/gms/internal/zzcfp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcfp;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfp;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsz:Lcom/google/android/gms/internal/zzcfp;

    new-instance v0, Lcom/google/android/gms/internal/zzchz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzchz;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchz;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsA:Lcom/google/android/gms/internal/zzchz;

    new-instance v0, Lcom/google/android/gms/internal/zzcid;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcid;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcid;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsB:Lcom/google/android/gms/internal/zzcid;

    new-instance v0, Lcom/google/android/gms/internal/zzchl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzchl;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchl;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsD:Lcom/google/android/gms/internal/zzchl;

    new-instance v0, Lcom/google/android/gms/internal/zzcjg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcjg;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjg;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsG:Lcom/google/android/gms/internal/zzcjg;

    new-instance v0, Lcom/google/android/gms/internal/zzcfu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcfu;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsF:Lcom/google/android/gms/internal/zzcfu;

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbst:Lcom/google/android/gms/measurement/AppMeasurement;

    new-instance v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {v0, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsu:Lcom/google/firebase/analytics/FirebaseAnalytics;

    new-instance v0, Lcom/google/android/gms/internal/zzcja;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcja;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcja;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsr:Lcom/google/android/gms/internal/zzcja;

    new-instance v0, Lcom/google/android/gms/internal/zzcgf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcgf;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgf;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbss:Lcom/google/android/gms/internal/zzcgf;

    new-instance v0, Lcom/google/android/gms/internal/zzcgg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcgg;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgg;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsq:Lcom/google/android/gms/internal/zzcgg;

    iget v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsQ:I

    iget v1, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsR:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Not all components initialized"

    iget v2, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsQ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsR:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzafK:Z

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxE()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwt()Lcom/google/android/gms/internal/zzchl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzchl;->zzbto:Lcom/google/android/gms/internal/zzchy;

    if-nez v2, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/zzchy;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/zzchy;-><init>(Lcom/google/android/gms/internal/zzchl;Lcom/google/android/gms/internal/zzchm;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/zzchl;->zzbto:Lcom/google/android/gms/internal/zzchy;

    :cond_1
    iget-object v2, v1, Lcom/google/android/gms/internal/zzchl;->zzbto:Lcom/google/android/gms/internal/zzchy;

    invoke-virtual {v0, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/zzchl;->zzbto:Lcom/google/android/gms/internal/zzchy;

    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsq:Lcom/google/android/gms/internal/zzcgg;

    new-instance v1, Lcom/google/android/gms/internal/zzcgm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcgm;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgg;->zzj(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->zzyB()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v1

    const-string/jumbo v2, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private final zza(Ljava/nio/channels/FileChannel;)I
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v4, 0x4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v1

    const-string/jumbo v2, "Bad chanel to read from"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-eq v2, v4, :cond_3

    const/4 v1, -0x1

    if-eq v2, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v1

    const-string/jumbo v3, "Unexpected data length. Bytes read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "Failed to read from channel"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0
.end method

.method private final zza(Lcom/google/android/gms/internal/zzceu;Lcom/google/android/gms/internal/zzceh;)V
    .locals 13

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzkD()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzceu;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzceu;->mAppId:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    new-instance v2, Lcom/google/android/gms/internal/zzcjz;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzcjz;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzcjz;->zzbvD:Ljava/lang/Integer;

    const-string/jumbo v0, "android"

    iput-object v0, v2, Lcom/google/android/gms/internal/zzcjz;->zzbvL:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/zzcjz;->zzaH:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzceh;->zzboR:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/zzcjz;->zzboR:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzceh;->zzbgW:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/zzcjz;->zzbgW:Ljava/lang/String;

    iget-wide v0, p2, Lcom/google/android/gms/internal/zzceh;->zzboX:J

    const-wide/32 v4, -0x80000000

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iput-object v0, v2, Lcom/google/android/gms/internal/zzcjz;->zzbvY:Ljava/lang/Integer;

    iget-wide v0, p2, Lcom/google/android/gms/internal/zzceh;->zzboS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzcjz;->zzbvP:Ljava/lang/Long;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzceh;->zzboQ:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/zzcjz;->zzboQ:Ljava/lang/String;

    iget-wide v0, p2, Lcom/google/android/gms/internal/zzceh;->zzboT:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    iput-object v0, v2, Lcom/google/android/gms/internal/zzcjz;->zzbvU:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfw;->zzeb(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/zzcjz;->zzbvR:Ljava/lang/String;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, v2, Lcom/google/android/gms/internal/zzcjz;->zzbvS:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwv()Lcom/google/android/gms/internal/zzcet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcet;->zzkD()V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/zzcjz;->zzbvM:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwv()Lcom/google/android/gms/internal/zzcet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcet;->zzkD()V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/zzcjz;->zzaY:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwv()Lcom/google/android/gms/internal/zzcet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcet;->zzyq()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzcjz;->zzbvO:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwv()Lcom/google/android/gms/internal/zzcet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcet;->zzyr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzcjz;->zzbvN:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzcjz;->zzbvQ:Ljava/lang/Long;

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzcjz;->zzbvG:Ljava/lang/Long;

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzcjz;->zzbvH:Ljava/lang/Long;

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzcjz;->zzbvI:Ljava/lang/Long;

    iget-wide v0, p2, Lcom/google/android/gms/internal/zzceh;->zzboZ:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzcjz;->zzbwc:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzyb()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwu()Lcom/google/android/gms/internal/zzcfg;

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzcjz;->zzbwd:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcen;->zzdQ(Ljava/lang/String;)Lcom/google/android/gms/internal/zzceg;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzceg;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzceg;-><init>(Lcom/google/android/gms/internal/zzcgl;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwu()Lcom/google/android/gms/internal/zzcfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfg;->zzyu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzceg;->zzdG(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/google/android/gms/internal/zzceh;->zzboY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzceg;->zzdJ(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/google/android/gms/internal/zzceh;->zzboQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzceg;->zzdH(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v1

    iget-object v3, p2, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzcfw;->zzec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzceg;->zzdI(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzceg;->zzQ(J)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzceg;->zzL(J)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzceg;->zzM(J)V

    iget-object v1, p2, Lcom/google/android/gms/internal/zzceh;->zzbgW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzceg;->setAppVersion(Ljava/lang/String;)V

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzceh;->zzboX:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzceg;->zzN(J)V

    iget-object v1, p2, Lcom/google/android/gms/internal/zzceh;->zzboR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzceg;->zzdK(Ljava/lang/String;)V

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzceh;->zzboS:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzceg;->zzO(J)V

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzceh;->zzboT:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzceg;->zzP(J)V

    iget-boolean v1, p2, Lcom/google/android/gms/internal/zzceh;->zzboV:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzceg;->setMeasurementEnabled(Z)V

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzceh;->zzboZ:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzceg;->zzZ(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcen;->zza(Lcom/google/android/gms/internal/zzceg;)V

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzceg;->getAppInstanceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/gms/internal/zzcjz;->zzbvT:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzceg;->zzwK()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzcjz;->zzboY:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcen;->zzdP(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzckb;

    iput-object v0, v2, Lcom/google/android/gms/internal/zzcjz;->zzbvF:[Lcom/google/android/gms/internal/zzckb;

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    new-instance v4, Lcom/google/android/gms/internal/zzckb;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzckb;-><init>()V

    iget-object v0, v2, Lcom/google/android/gms/internal/zzcjz;->zzbvF:[Lcom/google/android/gms/internal/zzckb;

    aput-object v4, v0, v1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcjk;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcjk;->mName:Ljava/lang/String;

    iput-object v0, v4, Lcom/google/android/gms/internal/zzckb;->name:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcjk;

    iget-wide v6, v0, Lcom/google/android/gms/internal/zzcjk;->zzbuC:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/internal/zzckb;->zzbwh:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcjk;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcjk;->mValue:Ljava/lang/Object;

    invoke-virtual {v5, v4, v0}, Lcom/google/android/gms/internal/zzcjl;->zza(Lcom/google/android/gms/internal/zzckb;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    iget-wide v0, p2, Lcom/google/android/gms/internal/zzceh;->zzboX:J

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    iget-wide v0, p2, Lcom/google/android/gms/internal/zzceh;->zzboT:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcen;->zza(Lcom/google/android/gms/internal/zzcjz;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v12

    iget-object v0, p1, Lcom/google/android/gms/internal/zzceu;->zzbpF:Lcom/google/android/gms/internal/zzcew;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/google/android/gms/internal/zzceu;->zzbpF:Lcom/google/android/gms/internal/zzcew;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcew;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "_r"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v12, p1, v10, v11, v0}, Lcom/google/android/gms/internal/zzcen;->zza(Lcom/google/android/gms/internal/zzceu;JZ)Z

    move-result v0

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsT:J

    :cond_7
    :goto_4
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v1

    const-string/jumbo v3, "Data loss. Failed to insert raw event metadata. appId"

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcjz;->zzaH:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwC()Lcom/google/android/gms/internal/zzcgf;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzceu;->mAppId:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzceu;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcgf;->zzO(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzyZ()J

    move-result-wide v2

    iget-object v4, p1, Lcom/google/android/gms/internal/zzceu;->mAppId:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/internal/zzcen;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzceo;

    move-result-object v1

    if-eqz v0, :cond_9

    iget-wide v0, v1, Lcom/google/android/gms/internal/zzceo;->zzbpy:J

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsn:Lcom/google/android/gms/internal/zzcem;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzceu;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcem;->zzdM(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static zza(Lcom/google/android/gms/internal/zzchi;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzchj;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchj;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Component not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private final zza(ILjava/nio/channels/FileChannel;)Z
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v2, "Bad chanel to read from"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v4, 0x0

    :try_start_0
    invoke-virtual {p2, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p2, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "Failed to write to channel"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method private final zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzckb;[Lcom/google/android/gms/internal/zzcjw;)[Lcom/google/android/gms/internal/zzcjv;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzws()Lcom/google/android/gms/internal/zzcej;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/gms/internal/zzcej;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzcjw;[Lcom/google/android/gms/internal/zzckb;)[Lcom/google/android/gms/internal/zzcjv;

    move-result-object v0

    return-object v0
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzceg;)V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzceg;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzceg;->zzhl()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xcc

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcgl;->zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzceg;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzceg;->getAppInstanceId()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/zzcfb;->zzbpZ:Lcom/google/android/gms/internal/zzcfc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfc;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    sget-object v0, Lcom/google/android/gms/internal/zzcfb;->zzbqa:Lcom/google/android/gms/internal/zzcfc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfc;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string/jumbo v6, "config/app/"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v5, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "app_instance_id"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "platform"

    const-string/jumbo v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "gmp_version"

    const-string/jumbo v2, "11020"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v4, "Fetching remote configuration"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzceg;->zzhl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwC()Lcom/google/android/gms/internal/zzcgf;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzceg;->zzhl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzcgf;->zzeh(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcjt;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwC()Lcom/google/android/gms/internal/zzcgf;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzceg;->zzhl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzcgf;->zzei(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v3, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V

    const-string/jumbo v2, "If-Modified-Since"

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsU:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzyU()Lcom/google/android/gms/internal/zzcfp;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzceg;->zzhl()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/zzcgp;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/zzcgp;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    invoke-virtual {v2, v4, v1, v3, v5}, Lcom/google/android/gms/internal/zzcfp;->zza(Ljava/lang/String;Ljava/net/URL;Ljava/util/Map;Lcom/google/android/gms/internal/zzcfr;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v1

    const-string/jumbo v2, "Failed to parse config URL. Not fetching. appId"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzceg;->zzhl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static zzbj(Landroid/content/Context;)Lcom/google/android/gms/internal/zzcgl;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcgl;->zzbsm:Lcom/google/android/gms/internal/zzcgl;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/zzcgl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzcgl;->zzbsm:Lcom/google/android/gms/internal/zzcgl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzchk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzchk;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/android/gms/internal/zzcgl;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzcgl;-><init>(Lcom/google/android/gms/internal/zzchk;)V

    sput-object v2, Lcom/google/android/gms/internal/zzcgl;->zzbsm:Lcom/google/android/gms/internal/zzcgl;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzcgl;->zzbsm:Lcom/google/android/gms/internal/zzcgl;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final zzc(Lcom/google/android/gms/internal/zzcez;Lcom/google/android/gms/internal/zzceh;)V
    .locals 18
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzkD()V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/zzcjl;->zzd(Lcom/google/android/gms/internal/zzcez;Lcom/google/android/gms/internal/zzceh;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/zzceh;->zzboV:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzcgl;->zzf(Lcom/google/android/gms/internal/zzceh;)V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwC()Lcom/google/android/gms/internal/zzcgf;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcez;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcgf;->zzN(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v4, "Dropping blacklisted event. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/zzcez;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/zzcfj;->zzdW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcjl;->zzeA(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcjl;->zzeB(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    const/4 v2, 0x1

    move v8, v2

    :goto_1
    if-nez v8, :cond_4

    const-string/jumbo v2, "_err"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcez;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const/16 v4, 0xb

    const-string/jumbo v5, "_ev"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcez;->name:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_4
    if-eqz v8, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcen;->zzdQ(Ljava/lang/String;)Lcom/google/android/gms/internal/zzceg;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzwU()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzwT()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgl;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxI()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcfl;->zzyC()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v3

    const-string/jumbo v4, "Fetching config for blacklisted app"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzcgl;->zzb(Lcom/google/android/gms/internal/zzceg;)V

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    move v8, v2

    goto :goto_1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzcfl;->zzz(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v4, "Logging event"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/zzcfj;->zzb(Lcom/google/android/gms/internal/zzcez;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->beginTransaction()V

    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcez;->zzbpM:Lcom/google/android/gms/internal/zzcew;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcew;->zzyt()Landroid/os/Bundle;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzcgl;->zzf(Lcom/google/android/gms/internal/zzceh;)V

    const-string/jumbo v2, "_iap"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcez;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "ecommerce_purchase"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcez;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_8
    const-string/jumbo v2, "currency"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "ecommerce_purchase"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcez;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string/jumbo v4, "value"

    invoke-virtual {v14, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-nez v6, :cond_9

    const-string/jumbo v4, "value"

    invoke-virtual {v14, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, v6

    :cond_9
    const-wide/high16 v6, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_d

    const-wide/high16 v6, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_d

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    move-wide v8, v4

    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "[A-Z]{3}"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string/jumbo v4, "_ltv_"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/zzcen;->zzG(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcjk;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcjk;->mValue:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Long;

    if-nez v4, :cond_10

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcgl;->zzbsn:Lcom/google/android/gms/internal/zzcem;

    sget-object v6, Lcom/google/android/gms/internal/zzcfb;->zzbqz:Lcom/google/android/gms/internal/zzcfc;

    invoke-virtual {v2, v3, v6}, Lcom/google/android/gms/internal/zzcem;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzcfc;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcen;->zzjC()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcen;->zzkD()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcen;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string/jumbo v7, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    const/4 v11, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v11

    invoke-virtual {v6, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    :try_start_2
    new-instance v2, Lcom/google/android/gms/internal/zzcjk;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcez;->zzbpc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcgl;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v6}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/zzcjk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/zzcen;->zza(Lcom/google/android/gms/internal/zzcjk;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v4

    const-string/jumbo v5, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcjk;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzcfj;->zzdY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcjk;->mValue:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/google/android/gms/internal/zzcfn;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_b
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcez;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcjl;->zzeo(Ljava/lang/String;)Z

    move-result v10

    const-string/jumbo v2, "_err"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcez;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzyZ()J

    move-result-wide v6

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v8, v3

    invoke-virtual/range {v5 .. v13}, Lcom/google/android/gms/internal/zzcen;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzceo;

    move-result-object v2

    iget-wide v4, v2, Lcom/google/android/gms/internal/zzceo;->zzbpv:J

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxq()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_11

    const-wide/16 v6, 0x3e8

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v4

    const-string/jumbo v5, "Data loss. Too many events logged. appId, count"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v6, v2, Lcom/google/android/gms/internal/zzceo;->zzbpv:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v3, v2}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    goto/16 :goto_0

    :cond_d
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v6, "Data lost. Currency value is too big. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v6, v3, v4}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    goto/16 :goto_0

    :cond_e
    :try_start_4
    const-string/jumbo v4, "value"

    invoke-virtual {v14, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    move-wide v8, v4

    goto/16 :goto_2

    :cond_f
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    throw v2

    :catch_0
    move-exception v2

    :try_start_5
    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcen;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v4

    const-string/jumbo v6, "Error pruning currencies. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v2}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_10
    iget-object v2, v2, Lcom/google/android/gms/internal/zzcjk;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    new-instance v2, Lcom/google/android/gms/internal/zzcjk;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcez;->zzbpc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcgl;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v6}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/zzcjk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto/16 :goto_5

    :cond_11
    if-eqz v10, :cond_13

    iget-wide v4, v2, Lcom/google/android/gms/internal/zzceo;->zzbpu:J

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxr()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_13

    const-wide/16 v6, 0x3e8

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v4

    const-string/jumbo v5, "Data loss. Too many public events logged. appId, count"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iget-wide v8, v2, Lcom/google/android/gms/internal/zzceo;->zzbpu:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v6, v2}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const/16 v4, 0x10

    const-string/jumbo v5, "_ev"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcez;->name:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    goto/16 :goto_0

    :cond_13
    if-eqz v12, :cond_15

    :try_start_6
    iget-wide v4, v2, Lcom/google/android/gms/internal/zzceo;->zzbpx:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcgl;->zzbsn:Lcom/google/android/gms/internal/zzcem;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/zzcfb;->zzbqg:Lcom/google/android/gms/internal/zzcfc;

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/zzcem;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzcfc;)I

    move-result v6

    const v7, 0xf4240

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_15

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v4

    const-string/jumbo v5, "Too many error events logged. appId, count"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v6, v2, Lcom/google/android/gms/internal/zzceo;->zzbpx:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v3, v2}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    goto/16 :goto_0

    :cond_15
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string/jumbo v4, "_o"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcez;->zzbpc:Ljava/lang/String;

    invoke-virtual {v2, v14, v4, v5}, Lcom/google/android/gms/internal/zzcjl;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcjl;->zzey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string/jumbo v4, "_dbg"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v14, v4, v5}, Lcom/google/android/gms/internal/zzcjl;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string/jumbo v4, "_r"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v14, v4, v5}, Lcom/google/android/gms/internal/zzcjl;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcen;->zzdR(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v6, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v6, v7, v4}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    new-instance v5, Lcom/google/android/gms/internal/zzceu;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/zzcez;->zzbpc:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/gms/internal/zzcez;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/gms/internal/zzcez;->zzbpN:J

    const-wide/16 v12, 0x0

    move-object/from16 v6, p0

    move-object v8, v3

    invoke-direct/range {v5 .. v14}, Lcom/google/android/gms/internal/zzceu;-><init>(Lcom/google/android/gms/internal/zzcgl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    iget-object v4, v5, Lcom/google/android/gms/internal/zzceu;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcen;->zzE(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcev;

    move-result-object v2

    if-nez v2, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcen;->zzdU(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxp()I

    const-wide/16 v8, 0x1f4

    cmp-long v2, v6, v8

    if-ltz v2, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v4, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v7

    iget-object v5, v5, Lcom/google/android/gms/internal/zzceu;->mName:Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/zzcfj;->zzdW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxp()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v4, v6, v5, v7}, Lcom/google/android/gms/internal/zzcfn;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    goto/16 :goto_0

    :cond_18
    :try_start_8
    new-instance v7, Lcom/google/android/gms/internal/zzcev;

    iget-object v9, v5, Lcom/google/android/gms/internal/zzceu;->mName:Ljava/lang/String;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    iget-wide v14, v5, Lcom/google/android/gms/internal/zzceu;->zzayS:J

    move-object v8, v3

    invoke-direct/range {v7 .. v15}, Lcom/google/android/gms/internal/zzcev;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/zzcen;->zza(Lcom/google/android/gms/internal/zzcev;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lcom/google/android/gms/internal/zzcgl;->zza(Lcom/google/android/gms/internal/zzceu;Lcom/google/android/gms/internal/zzceh;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->setTransactionSuccessful()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcfl;->zzz(I)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "Event recorded"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzcfj;->zza(Lcom/google/android/gms/internal/zzceu;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzzc()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "Background event processing time, ms"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v16

    const-wide/32 v6, 0x7a120

    add-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1a
    :try_start_9
    iget-wide v6, v2, Lcom/google/android/gms/internal/zzcev;->zzbpI:J

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v6, v7}, Lcom/google/android/gms/internal/zzceu;->zza(Lcom/google/android/gms/internal/zzcgl;J)Lcom/google/android/gms/internal/zzceu;

    move-result-object v5

    iget-wide v6, v5, Lcom/google/android/gms/internal/zzceu;->zzayS:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/zzcev;->zzab(J)Lcom/google/android/gms/internal/zzcev;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v7

    goto :goto_6
.end method

.method private final zzel(Ljava/lang/String;)Lcom/google/android/gms/internal/zzceh;
    .locals 23
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzcen;->zzdQ(Ljava/lang/String;)Lcom/google/android/gms/internal/zzceg;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzjH()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyC()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "No app data available; dropping"

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbha;->zzaP(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbgz;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/zzbgz;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzjH()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzjH()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v3

    const-string/jumbo v4, "App version does not match; dropping. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v3

    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/zzceh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->getGmpAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzjH()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzwN()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzwO()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzwP()J

    move-result-wide v10

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzwQ()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzwR()Z

    move-result v15

    const/16 v16, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzwK()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzxe()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v22}, Lcom/google/android/gms/internal/zzceh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJI)V

    goto :goto_0
.end method

.method private final zzf(Lcom/google/android/gms/internal/zzceh;)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzkD()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcen;->zzdQ(Ljava/lang/String;)Lcom/google/android/gms/internal/zzceg;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v0

    iget-object v3, p1, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcfw;->zzec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    if-nez v2, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/zzceg;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/zzceg;-><init>(Lcom/google/android/gms/internal/zzcgl;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwu()Lcom/google/android/gms/internal/zzcfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfg;->zzyu()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzceg;->zzdG(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzceg;->zzdI(Ljava/lang/String;)V

    move-object v2, v0

    move v0, v1

    :cond_0
    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/internal/zzceh;->zzboQ:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/google/android/gms/internal/zzceh;->zzboQ:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->getGmpAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzceh;->zzboQ:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzceg;->zzdH(Ljava/lang/String;)V

    move v0, v1

    :cond_1
    iget-object v3, p1, Lcom/google/android/gms/internal/zzceh;->zzboY:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzceh;->zzboY:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzwK()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/zzceh;->zzboY:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzceg;->zzdJ(Ljava/lang/String;)V

    move v0, v1

    :cond_2
    iget-wide v4, p1, Lcom/google/android/gms/internal/zzceh;->zzboS:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzceh;->zzboS:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzwP()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzceh;->zzboS:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzceg;->zzO(J)V

    move v0, v1

    :cond_3
    iget-object v3, p1, Lcom/google/android/gms/internal/zzceh;->zzbgW:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/google/android/gms/internal/zzceh;->zzbgW:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzjH()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v0, p1, Lcom/google/android/gms/internal/zzceh;->zzbgW:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzceg;->setAppVersion(Ljava/lang/String;)V

    move v0, v1

    :cond_4
    iget-wide v4, p1, Lcom/google/android/gms/internal/zzceh;->zzboX:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzwN()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzceh;->zzboX:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzceg;->zzN(J)V

    move v0, v1

    :cond_5
    iget-object v3, p1, Lcom/google/android/gms/internal/zzceh;->zzboR:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/google/android/gms/internal/zzceh;->zzboR:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzwO()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v0, p1, Lcom/google/android/gms/internal/zzceh;->zzboR:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzceg;->zzdK(Ljava/lang/String;)V

    move v0, v1

    :cond_6
    iget-wide v4, p1, Lcom/google/android/gms/internal/zzceh;->zzboT:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzwQ()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_7

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzceh;->zzboT:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzceg;->zzP(J)V

    move v0, v1

    :cond_7
    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzceh;->zzboV:Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzwR()Z

    move-result v4

    if-eq v3, v4, :cond_8

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzceh;->zzboV:Z

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzceg;->setMeasurementEnabled(Z)V

    move v0, v1

    :cond_8
    iget-object v3, p1, Lcom/google/android/gms/internal/zzceh;->zzboU:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p1, Lcom/google/android/gms/internal/zzceh;->zzboU:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzxc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v0, p1, Lcom/google/android/gms/internal/zzceh;->zzboU:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzceg;->zzdL(Ljava/lang/String;)V

    move v0, v1

    :cond_9
    iget-wide v4, p1, Lcom/google/android/gms/internal/zzceh;->zzboZ:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzxe()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_c

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzceh;->zzboZ:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzceg;->zzZ(J)V

    :goto_1
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcen;->zza(Lcom/google/android/gms/internal/zzceg;)V

    :cond_a
    return-void

    :cond_b
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzwJ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzceg;->zzdI(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwu()Lcom/google/android/gms/internal/zzcfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfg;->zzyu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzceg;->zzdG(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_c
    move v1, v0

    goto :goto_1
.end method

.method private final zzg(Ljava/lang/String;J)Z
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->beginTransaction()V

    :try_start_0
    new-instance v15, Lcom/google/android/gms/internal/zzcgl$zza;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2}, Lcom/google/android/gms/internal/zzcgl$zza;-><init>(Lcom/google/android/gms/internal/zzcgl;Lcom/google/android/gms/internal/zzcgm;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v14

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzcgl;->zzbsS:J

    move-wide/from16 v16, v0

    invoke-static {v15}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcen;->zzjC()V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcen;->zzkD()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcen;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-wide/16 v6, -0x1

    cmp-long v5, v16, v6

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v6, v5

    :goto_0
    const-wide/16 v8, -0x1

    cmp-long v5, v16, v8

    if-eqz v5, :cond_4

    const-string/jumbo v5, "rowid <= ? and "

    :goto_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit16 v7, v7, 0x94

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v7, "select app_id, metadata_fingerprint from raw_events where "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_5

    if-eqz v3, :cond_0

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_2
    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zztH:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zztH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_1
    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_31

    const/4 v13, 0x0

    iget-object v0, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zzbsZ:Lcom/google/android/gms/internal/zzcjz;

    move-object/from16 v16, v0

    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zztH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/zzcjw;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvE:[Lcom/google/android/gms/internal/zzcjw;

    const/4 v12, 0x0

    const/4 v2, 0x0

    move v14, v2

    :goto_4
    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zztH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwC()Lcom/google/android/gms/internal/zzcgf;

    move-result-object v3

    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zzbsZ:Lcom/google/android/gms/internal/zzcjz;

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcjz;->zzaH:Ljava/lang/String;

    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zztH:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcjw;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcjw;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/zzcgf;->zzN(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v3

    const-string/jumbo v4, "Dropping blacklisted raw event. appId"

    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zzbsZ:Lcom/google/android/gms/internal/zzcjz;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcjz;->zzaH:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v6

    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zztH:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcjw;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcjw;->name:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/zzcfj;->zzdW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    iget-object v3, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zzbsZ:Lcom/google/android/gms/internal/zzcjz;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcjz;->zzaH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcjl;->zzeA(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    iget-object v3, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zzbsZ:Lcom/google/android/gms/internal/zzcjz;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcjz;->zzaH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcjl;->zzeB(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_2
    const/4 v2, 0x1

    :goto_5
    if-nez v2, :cond_37

    const-string/jumbo v3, "_err"

    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zztH:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcjw;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcjw;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    iget-object v3, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zzbsZ:Lcom/google/android/gms/internal/zzcjz;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcjz;->zzaH:Ljava/lang/String;

    const/16 v4, 0xb

    const-string/jumbo v5, "_ev"

    iget-object v6, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zztH:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzcjw;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzcjw;->name:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v12

    move v3, v13

    :goto_6
    add-int/lit8 v4, v14, 0x1

    move v14, v4

    move v12, v2

    move v13, v3

    goto/16 :goto_4

    :cond_3
    const/4 v5, 0x1

    :try_start_3
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v6, v5

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v5, ""

    goto/16 :goto_1

    :cond_5
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v13, v5

    move-object v11, v3

    move-object v12, v4

    :goto_7
    :try_start_4
    const-string/jumbo v3, "raw_events_metadata"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "metadata"

    aput-object v6, v4, v5

    const-string/jumbo v5, "app_id = ? and metadata_fingerprint = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v12, v6, v7

    const/4 v7, 0x1

    aput-object v13, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "rowid"

    const-string/jumbo v10, "2"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcen;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "Raw event metadata record is missing. appId"

    invoke-static {v12}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v11, :cond_0

    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    throw v2

    :cond_6
    const-wide/16 v6, -0x1

    cmp-long v5, v16, v6

    if-eqz v5, :cond_7

    const/4 v5, 0x2

    :try_start_6
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v6, v5

    :goto_8
    const-wide/16 v8, -0x1

    cmp-long v5, v16, v8

    if-eqz v5, :cond_8

    const-string/jumbo v5, " and rowid <= ?"

    :goto_9
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x54

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v7, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " order by rowid limit 1;"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v5

    if-nez v5, :cond_9

    if-eqz v3, :cond_0

    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    :cond_7
    const/4 v5, 0x1

    :try_start_8
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    move-object v6, v5

    goto :goto_8

    :cond_8
    const-string/jumbo v5, ""

    goto :goto_9

    :cond_9
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v13, v5

    move-object v11, v3

    move-object v12, v4

    goto/16 :goto_7

    :cond_a
    const/4 v3, 0x0

    :try_start_9
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v3

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/adg;->zzb([BII)Lcom/google/android/gms/internal/adg;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/zzcjz;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzcjz;-><init>()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zzcjz;->zza(Lcom/google/android/gms/internal/adg;)Lcom/google/android/gms/internal/adp;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcen;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v3

    const-string/jumbo v5, "Get multiple raw event metadata records, expected one. appId"

    invoke-static {v12}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    invoke-interface {v15, v4}, Lcom/google/android/gms/internal/zzcep;->zzb(Lcom/google/android/gms/internal/zzcjz;)V

    const-wide/16 v4, -0x1

    cmp-long v3, v16, v4

    if-eqz v3, :cond_c

    const-string/jumbo v5, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v12, v6, v3

    const/4 v3, 0x1

    aput-object v13, v6, v3

    const/4 v3, 0x2

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    :goto_a
    const-string/jumbo v3, "raw_events"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "rowid"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "name"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "timestamp"

    aput-object v8, v4, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "data"

    aput-object v8, v4, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "rowid"

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result-object v3

    :try_start_c
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcen;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v4, "Raw event data disappeared while in transaction. appId"

    invoke-static {v12}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v3, :cond_0

    :try_start_d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    :try_start_e
    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcen;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v3

    const-string/jumbo v4, "Data loss. Failed to merge raw event metadata. appId"

    invoke-static {v12}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v11, :cond_0

    :try_start_f
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_2

    :cond_c
    :try_start_10
    const-string/jumbo v5, "app_id = ? and metadata_fingerprint = ?"

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v12, v6, v3

    const/4 v3, 0x1

    aput-object v13, v6, v3
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_a

    :catch_1
    move-exception v2

    move-object v3, v11

    move-object v4, v12

    :goto_b
    :try_start_11
    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcen;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v5

    const-string/jumbo v6, "Data loss. Error selecting raw event. appId"

    invoke-static {v4}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v6, v4, v2}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v3, :cond_0

    :try_start_12
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_2

    :cond_d
    const/4 v2, 0x0

    :try_start_13
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v2, 0x3

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {v2, v6, v7}, Lcom/google/android/gms/internal/adg;->zzb([BII)Lcom/google/android/gms/internal/adg;

    move-result-object v2

    new-instance v6, Lcom/google/android/gms/internal/zzcjw;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzcjw;-><init>()V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :try_start_14
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/zzcjw;->zza(Lcom/google/android/gms/internal/adg;)Lcom/google/android/gms/internal/adp;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    const/4 v2, 0x1

    :try_start_15
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/gms/internal/zzcjw;->name:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/gms/internal/zzcjw;->zzbvx:Ljava/lang/Long;

    invoke-interface {v15, v4, v5, v6}, Lcom/google/android/gms/internal/zzcep;->zza(JLcom/google/android/gms/internal/zzcjw;)Z
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    move-result v2

    if-nez v2, :cond_e

    if-eqz v3, :cond_0

    :try_start_16
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_2

    :catch_2
    move-exception v2

    :try_start_17
    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzcen;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v4

    const-string/jumbo v5, "Data loss. Failed to merge raw event. appId"

    invoke-static {v12}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    move-result v2

    if-nez v2, :cond_d

    if-eqz v3, :cond_0

    :try_start_18
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_1
    move-exception v2

    :goto_c
    if-eqz v3, :cond_f

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v2

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwC()Lcom/google/android/gms/internal/zzcgf;

    move-result-object v3

    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zzbsZ:Lcom/google/android/gms/internal/zzcjz;

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcjz;->zzaH:Ljava/lang/String;

    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zztH:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcjw;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcjw;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/zzcgf;->zzO(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zztH:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcjw;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcjw;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcjl;->zzeC(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_13
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zztH:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcjw;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcjw;->zzbvw:[Lcom/google/android/gms/internal/zzcjx;

    if-nez v2, :cond_14

    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zztH:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcjw;

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/google/android/gms/internal/zzcjx;

    iput-object v5, v2, Lcom/google/android/gms/internal/zzcjw;->zzbvw:[Lcom/google/android/gms/internal/zzcjx;

    :cond_14
    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zztH:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcjw;

    iget-object v6, v2, Lcom/google/android/gms/internal/zzcjw;->zzbvw:[Lcom/google/android/gms/internal/zzcjx;

    array-length v7, v6

    const/4 v2, 0x0

    move v5, v2

    :goto_d
    if-ge v5, v7, :cond_16

    aget-object v2, v6, v5

    const-string/jumbo v8, "_c"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcjx;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/zzcjx;->zzbvA:Ljava/lang/Long;

    const/4 v2, 0x1

    move v3, v2

    move v2, v4

    :goto_e
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v2

    goto :goto_d

    :cond_15
    const-string/jumbo v8, "_r"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcjx;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_36

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/internal/zzcjx;->zzbvA:Ljava/lang/Long;

    const/4 v2, 0x1

    goto :goto_e

    :cond_16
    if-nez v3, :cond_17

    if-eqz v17, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v3

    const-string/jumbo v5, "Marking event as conversion"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v6

    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zztH:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcjw;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcjw;->name:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/zzcfj;->zzdW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zztH:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcjw;

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcjw;->zzbvw:[Lcom/google/android/gms/internal/zzcjx;

    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zztH:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcjw;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcjw;->zzbvw:[Lcom/google/android/gms/internal/zzcjx;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/zzcjx;

    new-instance v3, Lcom/google/android/gms/internal/zzcjx;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzcjx;-><init>()V

    const-string/jumbo v5, "_c"

    iput-object v5, v3, Lcom/google/android/gms/internal/zzcjx;->name:Ljava/lang/String;

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v3, Lcom/google/android/gms/internal/zzcjx;->zzbvA:Ljava/lang/Long;

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aput-object v3, v2, v5

    iget-object v3, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zztH:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzcjw;

    iput-object v2, v3, Lcom/google/android/gms/internal/zzcjw;->zzbvw:[Lcom/google/android/gms/internal/zzcjx;

    :cond_17
    if-nez v4, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v3

    const-string/jumbo v4, "Marking event as real-time"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v5

    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zztH:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcjw;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcjw;->name:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/zzcfj;->zzdW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zztH:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcjw;

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcjw;->zzbvw:[Lcom/google/android/gms/internal/zzcjx;

    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zztH:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcjw;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcjw;->zzbvw:[Lcom/google/android/gms/internal/zzcjx;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/zzcjx;

    new-instance v3, Lcom/google/android/gms/internal/zzcjx;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzcjx;-><init>()V

    const-string/jumbo v4, "_r"

    iput-object v4, v3, Lcom/google/android/gms/internal/zzcjx;->name:Ljava/lang/String;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/zzcjx;->zzbvA:Ljava/lang/Long;

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aput-object v3, v2, v4

    iget-object v3, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zztH:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzcjw;

    iput-object v2, v3, Lcom/google/android/gms/internal/zzcjw;->zzbvw:[Lcom/google/android/gms/internal/zzcjx;

    :cond_18
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzyZ()J

    move-result-wide v4

    iget-object v6, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zzbsZ:Lcom/google/android/gms/internal/zzcjz;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzcjz;->zzaH:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/internal/zzcen;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzceo;

    move-result-object v3

    iget-wide v4, v3, Lcom/google/android/gms/internal/zzceo;->zzbpy:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgl;->zzbsn:Lcom/google/android/gms/internal/zzcem;

    iget-object v6, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zzbsZ:Lcom/google/android/gms/internal/zzcjz;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzcjz;->zzaH:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/zzcem;->zzdM(Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-lez v3, :cond_35

    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zztH:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcjw;

    const/4 v3, 0x0

    :goto_f
    iget-object v4, v2, Lcom/google/android/gms/internal/zzcjw;->zzbvw:[Lcom/google/android/gms/internal/zzcjx;

    array-length v4, v4

    if-ge v3, v4, :cond_1b

    const-string/jumbo v4, "_r"

    iget-object v5, v2, Lcom/google/android/gms/internal/zzcjw;->zzbvw:[Lcom/google/android/gms/internal/zzcjx;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcjx;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcjw;->zzbvw:[Lcom/google/android/gms/internal/zzcjx;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [Lcom/google/android/gms/internal/zzcjx;

    if-lez v3, :cond_19

    iget-object v5, v2, Lcom/google/android/gms/internal/zzcjw;->zzbvw:[Lcom/google/android/gms/internal/zzcjx;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v4, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_19
    array-length v5, v4

    if-ge v3, v5, :cond_1a

    iget-object v5, v2, Lcom/google/android/gms/internal/zzcjw;->zzbvw:[Lcom/google/android/gms/internal/zzcjx;

    add-int/lit8 v6, v3, 0x1

    array-length v7, v4

    sub-int/2addr v7, v3

    invoke-static {v5, v6, v4, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    iput-object v4, v2, Lcom/google/android/gms/internal/zzcjw;->zzbvw:[Lcom/google/android/gms/internal/zzcjx;

    :cond_1b
    :goto_10
    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zztH:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcjw;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcjw;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcjl;->zzeo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    if-eqz v17, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzyZ()J

    move-result-wide v4

    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zzbsZ:Lcom/google/android/gms/internal/zzcjz;

    iget-object v6, v2, Lcom/google/android/gms/internal/zzcjz;->zzaH:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/internal/zzcen;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzceo;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzceo;->zzbpw:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcgl;->zzbsn:Lcom/google/android/gms/internal/zzcem;

    iget-object v5, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zzbsZ:Lcom/google/android/gms/internal/zzcjz;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcjz;->zzaH:Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/zzcfb;->zzbqi:Lcom/google/android/gms/internal/zzcfc;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/zzcem;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzcfc;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "Too many conversions. Not logging as conversion. appId"

    iget-object v4, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zzbsZ:Lcom/google/android/gms/internal/zzcjz;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcjz;->zzaH:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zztH:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcjw;

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v7, v2, Lcom/google/android/gms/internal/zzcjw;->zzbvw:[Lcom/google/android/gms/internal/zzcjx;

    array-length v8, v7

    const/4 v3, 0x0

    move v6, v3

    :goto_11
    if-ge v6, v8, :cond_1e

    aget-object v3, v7, v6

    const-string/jumbo v9, "_c"

    iget-object v10, v3, Lcom/google/android/gms/internal/zzcjx;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    move v4, v5

    :goto_12
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v4

    move-object v4, v3

    goto :goto_11

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_f

    :cond_1d
    const-string/jumbo v9, "_err"

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcjx;->name:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    const/4 v3, 0x1

    move-object/from16 v18, v4

    move v4, v3

    move-object/from16 v3, v18

    goto :goto_12

    :cond_1e
    if-eqz v5, :cond_20

    if-eqz v4, :cond_20

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcjw;->zzbvw:[Lcom/google/android/gms/internal/zzcjx;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    new-array v7, v3, [Lcom/google/android/gms/internal/zzcjx;

    const/4 v5, 0x0

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcjw;->zzbvw:[Lcom/google/android/gms/internal/zzcjx;

    array-length v9, v8

    const/4 v3, 0x0

    move v6, v3

    :goto_13
    if-ge v6, v9, :cond_1f

    aget-object v10, v8, v6

    if-eq v10, v4, :cond_33

    add-int/lit8 v3, v5, 0x1

    aput-object v10, v7, v5

    :goto_14
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v3

    goto :goto_13

    :cond_1f
    iput-object v7, v2, Lcom/google/android/gms/internal/zzcjw;->zzbvw:[Lcom/google/android/gms/internal/zzcjx;

    move v4, v13

    :goto_15
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvE:[Lcom/google/android/gms/internal/zzcjw;

    add-int/lit8 v3, v12, 0x1

    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zztH:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcjw;

    aput-object v2, v5, v12

    move v2, v3

    move v3, v4

    goto/16 :goto_6

    :cond_20
    if-eqz v4, :cond_21

    const-string/jumbo v2, "_err"

    iput-object v2, v4, Lcom/google/android/gms/internal/zzcjx;->name:Ljava/lang/String;

    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/internal/zzcjx;->zzbvA:Ljava/lang/Long;

    move v4, v13

    goto :goto_15

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "Did not find conversion parameter. appId"

    iget-object v4, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zzbsZ:Lcom/google/android/gms/internal/zzcjz;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcjz;->zzaH:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_22
    move v4, v13

    goto :goto_15

    :cond_23
    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zztH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_24

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvE:[Lcom/google/android/gms/internal/zzcjw;

    invoke-static {v2, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/zzcjw;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvE:[Lcom/google/android/gms/internal/zzcjw;

    :cond_24
    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zzbsZ:Lcom/google/android/gms/internal/zzcjz;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcjz;->zzaH:Ljava/lang/String;

    iget-object v3, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zzbsZ:Lcom/google/android/gms/internal/zzcjz;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcjz;->zzbvF:[Lcom/google/android/gms/internal/zzckb;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvE:[Lcom/google/android/gms/internal/zzcjw;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/zzcgl;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzckb;[Lcom/google/android/gms/internal/zzcjw;)[Lcom/google/android/gms/internal/zzcjv;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvX:[Lcom/google/android/gms/internal/zzcjv;

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvH:Ljava/lang/Long;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvI:Ljava/lang/Long;

    const/4 v2, 0x0

    :goto_16
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvE:[Lcom/google/android/gms/internal/zzcjw;

    array-length v3, v3

    if-ge v2, v3, :cond_27

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvE:[Lcom/google/android/gms/internal/zzcjw;

    aget-object v3, v3, v2

    iget-object v4, v3, Lcom/google/android/gms/internal/zzcjw;->zzbvx:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvH:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_25

    iget-object v4, v3, Lcom/google/android/gms/internal/zzcjw;->zzbvx:Ljava/lang/Long;

    move-object/from16 v0, v16

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvH:Ljava/lang/Long;

    :cond_25
    iget-object v4, v3, Lcom/google/android/gms/internal/zzcjw;->zzbvx:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvI:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_26

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcjw;->zzbvx:Ljava/lang/Long;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvI:Ljava/lang/Long;

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_27
    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zzbsZ:Lcom/google/android/gms/internal/zzcjz;

    iget-object v6, v2, Lcom/google/android/gms/internal/zzcjz;->zzaH:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/zzcen;->zzdQ(Ljava/lang/String;)Lcom/google/android/gms/internal/zzceg;

    move-result-object v7

    if-nez v7, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "Bundling raw events w/o app info. appId"

    iget-object v4, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zzbsZ:Lcom/google/android/gms/internal/zzcjz;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcjz;->zzaH:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_28
    :goto_17
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvE:[Lcom/google/android/gms/internal/zzcjw;

    array-length v2, v2

    if-lez v2, :cond_2a

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxE()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwC()Lcom/google/android/gms/internal/zzcgf;

    move-result-object v2

    iget-object v3, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zzbsZ:Lcom/google/android/gms/internal/zzcjz;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcjz;->zzaH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgf;->zzeh(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcjt;

    move-result-object v2

    if-eqz v2, :cond_29

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcjt;->zzbvl:Ljava/lang/Long;

    if-nez v3, :cond_2f

    :cond_29
    iget-object v2, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zzbsZ:Lcom/google/android/gms/internal/zzcjz;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcjz;->zzboQ:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbwb:Ljava/lang/Long;

    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v13}, Lcom/google/android/gms/internal/zzcen;->zza(Lcom/google/android/gms/internal/zzcjz;Z)Z

    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    iget-object v3, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zzbta:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcen;->zzG(Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcen;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    move-result-object v2

    :try_start_19
    const-string/jumbo v4, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_3
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    :goto_19
    :try_start_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->setTransactionSuccessful()V

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvE:[Lcom/google/android/gms/internal/zzcjw;

    array-length v2, v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    if-lez v2, :cond_30

    const/4 v2, 0x1

    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    :goto_1b
    return v2

    :cond_2b
    :try_start_1b
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvE:[Lcom/google/android/gms/internal/zzcjw;

    array-length v2, v2

    if-lez v2, :cond_28

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzceg;->zzwM()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2c

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_1c
    move-object/from16 v0, v16

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvK:Ljava/lang/Long;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzceg;->zzwL()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_32

    :goto_1d
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2d

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_1e
    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvJ:Ljava/lang/Long;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzceg;->zzwV()V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzceg;->zzwS()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvV:Ljava/lang/Integer;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvH:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/google/android/gms/internal/zzceg;->zzL(J)V

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvI:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/google/android/gms/internal/zzceg;->zzM(J)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzceg;->zzxd()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzboU:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/zzcen;->zza(Lcom/google/android/gms/internal/zzceg;)V

    goto/16 :goto_17

    :cond_2c
    const/4 v4, 0x0

    goto :goto_1c

    :cond_2d
    const/4 v2, 0x0

    goto :goto_1e

    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "Did not find measurement config or missing version info. appId"

    iget-object v4, v15, Lcom/google/android/gms/internal/zzcgl$zza;->zzbsZ:Lcom/google/android/gms/internal/zzcjz;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcjz;->zzaH:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_18

    :cond_2f
    iget-object v2, v2, Lcom/google/android/gms/internal/zzcjt;->zzbvl:Ljava/lang/Long;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbwb:Ljava/lang/Long;

    goto/16 :goto_18

    :catch_3
    move-exception v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcen;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v3

    const-string/jumbo v4, "Failed to remove unused event metadata. appId"

    invoke-static {v6}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_19

    :cond_30
    const/4 v2, 0x0

    goto/16 :goto_1a

    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->setTransactionSuccessful()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    const/4 v2, 0x0

    goto/16 :goto_1b

    :catchall_2
    move-exception v2

    move-object v3, v11

    goto/16 :goto_c

    :catch_4
    move-exception v2

    goto/16 :goto_b

    :catch_5
    move-exception v2

    move-object v4, v12

    goto/16 :goto_b

    :cond_32
    move-wide v2, v4

    goto/16 :goto_1d

    :cond_33
    move v3, v5

    goto/16 :goto_14

    :cond_34
    move-object v3, v4

    move v4, v5

    goto/16 :goto_12

    :cond_35
    move v13, v2

    goto/16 :goto_10

    :cond_36
    move v2, v4

    goto/16 :goto_e

    :cond_37
    move v2, v12

    move v3, v13

    goto/16 :goto_6
.end method

.method static zzwo()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxE()Z

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzyV()Lcom/google/android/gms/internal/zzcfu;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsF:Lcom/google/android/gms/internal/zzcfu;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsF:Lcom/google/android/gms/internal/zzcfu;

    return-object v0
.end method

.method private final zzyW()Lcom/google/android/gms/internal/zzcjg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsG:Lcom/google/android/gms/internal/zzcjg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgl;->zza(Lcom/google/android/gms/internal/zzchj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsG:Lcom/google/android/gms/internal/zzcjg;

    return-object v0
.end method

.method private final zzyX()Z
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxC()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "rw"

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsN:Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsN:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsM:Ljava/nio/channels/FileLock;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsM:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Storage concurrent access okay"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v1

    const-string/jumbo v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v1

    const-string/jumbo v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private final zzyZ()J
    .locals 10

    const-wide/16 v8, 0x3c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfw;->zzkD()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfw;->zzjC()V

    iget-object v0, v4, Lcom/google/android/gms/internal/zzcfw;->zzbro:Lcom/google/android/gms/internal/zzcfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfz;->get()J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfw;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->zzzt()Ljava/security/SecureRandom;

    move-result-object v0

    const v1, 0x5265c00

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcfw;->zzbro:Lcom/google/android/gms/internal/zzcfz;

    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/internal/zzcfz;->set(J)V

    :cond_0
    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    div-long/2addr v0, v8

    div-long/2addr v0, v8

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzzb()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzkD()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->zzyh()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->zzyc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final zzzc()V
    .locals 18
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzkD()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzzf()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzcgl;->zzbsT:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcgl;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/internal/zzcgl;->zzbsT:J

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sub-long v2, v4, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v4

    const-string/jumbo v5, "Upload has been suspended. Will update scheduling later in approximately ms"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzyV()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfu;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzyW()Lcom/google/android/gms/internal/zzcjg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjg;->cancel()V

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzcgl;->zzbsT:J

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzyP()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzzb()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "Nothing to upload or uploading impossible"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzyV()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfu;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzyW()Lcom/google/android/gms/internal/zzcjg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjg;->cancel()V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcgl;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxX()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->zzyi()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->zzyd()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/4 v2, 0x1

    move v6, v2

    :goto_1
    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcgl;->zzbsn:Lcom/google/android/gms/internal/zzcem;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcem;->zzya()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, ".none."

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxT()J

    move-result-wide v2

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/zzcfw;->zzbrk:Lcom/google/android/gms/internal/zzcfz;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcfz;->get()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/zzcfw;->zzbrl:Lcom/google/android/gms/internal/zzcfz;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcfz;->get()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcen;->zzyf()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcen;->zzyg()J

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v7, v14, v16

    if-nez v7, :cond_9

    const-wide/16 v4, 0x0

    move-wide v2, v4

    :goto_3
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "Next upload time is 0"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzyV()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfu;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzyW()Lcom/google/android/gms/internal/zzcjg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjg;->cancel()V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    move v6, v2

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxS()J

    move-result-wide v2

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxR()J

    move-result-wide v2

    goto :goto_2

    :cond_9
    sub-long/2addr v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    sub-long v14, v4, v14

    sub-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long v10, v4, v10

    sub-long/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    sub-long v12, v4, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    add-long v4, v14, v8

    if-eqz v6, :cond_a

    const-wide/16 v6, 0x0

    cmp-long v6, v10, v6

    if-lez v6, :cond_a

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-long/2addr v4, v2

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v6

    invoke-virtual {v6, v10, v11, v2, v3}, Lcom/google/android/gms/internal/zzcjl;->zzf(JJ)Z

    move-result v6

    if-nez v6, :cond_b

    add-long v4, v10, v2

    :cond_b
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-eqz v2, :cond_e

    cmp-long v2, v12, v14

    if-ltz v2, :cond_e

    const/4 v2, 0x0

    :goto_4
    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxZ()I

    move-result v3

    if-ge v2, v3, :cond_d

    const/4 v3, 0x1

    shl-int/2addr v3, v2

    int-to-long v6, v3

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxY()J

    move-result-wide v8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    cmp-long v3, v4, v12

    if-lez v3, :cond_c

    move-wide v2, v4

    goto/16 :goto_3

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    const-wide/16 v4, 0x0

    move-wide v2, v4

    goto/16 :goto_3

    :cond_e
    move-wide v2, v4

    goto/16 :goto_3

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzyU()Lcom/google/android/gms/internal/zzcfp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfp;->zzlQ()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "No network"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzyV()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfu;->zzlN()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzyW()Lcom/google/android/gms/internal/zzcjg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjg;->cancel()V

    goto/16 :goto_0

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcfw;->zzbrm:Lcom/google/android/gms/internal/zzcfz;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfz;->get()J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxQ()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v8

    invoke-virtual {v8, v4, v5, v6, v7}, Lcom/google/android/gms/internal/zzcjl;->zzf(JJ)Z

    move-result v8

    if-nez v8, :cond_11

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzyV()Lcom/google/android/gms/internal/zzcfu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfu;->unregister()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcgl;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_12

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxU()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcfw;->zzbrk:Lcom/google/android/gms/internal/zzcfz;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcgl;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v5}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/zzcfz;->set(J)V

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v4

    const-string/jumbo v5, "Upload scheduled in approximately ms"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzyW()Lcom/google/android/gms/internal/zzcjg;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/zzcjg;->zzs(J)V

    goto/16 :goto_0
.end method

.method private final zzzf()Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzkD()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsJ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final zzzg()V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsU:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsV:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsW:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Not stopping services. fetch, network, upload"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsU:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsV:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsW:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzcfn;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsP:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final isEnabled()Z
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzkD()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsn:Lcom/google/android/gms/internal/zzcem;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcem;->zzxF()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsn:Lcom/google/android/gms/internal/zzcem;

    const-string/jumbo v2, "firebase_analytics_collection_enabled"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcem;->zzdN(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcfw;->zzal(Z)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzqB()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected final start()V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->zzye()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfw;->zzbrk:Lcom/google/android/gms/internal/zzcfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfz;->get()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfw;->zzbrk:Lcom/google/android/gms/internal/zzcfz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgl;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzcfz;->set(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfw;->zzbrp:Lcom/google/android/gms/internal/zzcfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfz;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Persisting first open"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsX:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfw;->zzbrp:Lcom/google/android/gms/internal/zzcfz;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsX:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzcfz;->set(J)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzyP()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string/jumbo v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcjl;->zzbv(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "App is missing INTERNET permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string/jumbo v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcjl;->zzbv(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxE()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbha;->zzaP(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbgz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbgz;->zzsl()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/zzcgc;->zzj(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/zzciw;->zzk(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzzc()V

    return-void

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxE()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwu()Lcom/google/android/gms/internal/zzcfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfg;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfw;->zzyG()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwu()Lcom/google/android/gms/internal/zzcfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfg;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfw;->zzed(Ljava/lang/String;)V

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwt()Lcom/google/android/gms/internal/zzchl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcfw;->zzbrq:Lcom/google/android/gms/internal/zzcgb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgb;->zzyL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzchl;->zzee(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxE()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwu()Lcom/google/android/gms/internal/zzcfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfg;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwt()Lcom/google/android/gms/internal/zzchl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchl;->zzjC()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchl;->zzwp()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchl;->zzkD()V

    iget-object v1, v0, Lcom/google/android/gms/internal/zzchl;->zzboe:Lcom/google/android/gms/internal/zzcgl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgl;->zzyP()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchl;->zzww()Lcom/google/android/gms/internal/zzcid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcid;->zzzk()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfw;->zzyK()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchl;->zzwv()Lcom/google/android/gms/internal/zzcet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcet;->zzkD()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "_po"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "auto"

    const-string/jumbo v3, "_ou"

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzchl;->zzd(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzww()Lcom/google/android/gms/internal/zzcid;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcid;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwu()Lcom/google/android/gms/internal/zzcfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfg;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyB()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfw;->zzyJ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsB:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcid;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsB:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcid;->zzla()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwu()Lcom/google/android/gms/internal/zzcfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfg;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfw;->zzed(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfw;->zzbrp:Lcom/google/android/gms/internal/zzcfz;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsX:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzcfz;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfw;->zzbrq:Lcom/google/android/gms/internal/zzcgb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgb;->zzef(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected final zza(ILjava/lang/Throwable;[B)V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzkD()V

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-array p3, v0, [B

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsO:Ljava/util/List;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsO:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0xc8

    if-eq p1, v3, :cond_1

    const/16 v3, 0xcc

    if-ne p1, v3, :cond_5

    :cond_1
    if-nez p2, :cond_5

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcfw;->zzbrk:Lcom/google/android/gms/internal/zzcfz;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcgl;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzcfz;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcfw;->zzbrl:Lcom/google/android/gms/internal/zzcfz;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzcfz;->set(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzzc()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v3

    const-string/jumbo v4, "Successful upload. Got network response. code, size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    array-length v6, p3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcen;->beginTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcen;->zzjC()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcen;->zzkD()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcen;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string/jumbo v6, "queue"

    const-string/jumbo v7, "rowid=?"

    invoke-virtual {v0, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_2

    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string/jumbo v2, "Deleted fewer rows from queue than expected"

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcen;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "Failed to delete a bundle in a queue table"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    throw v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsT:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v2, "Disable upload, time"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsT:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsV:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzzg()V

    return-void

    :cond_3
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzyU()Lcom/google/android/gms/internal/zzcfp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfp;->zzlQ()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzzb()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzza()V

    :goto_1
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsT:J
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsV:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzzg()V

    throw v0

    :cond_4
    const-wide/16 v2, -0x1

    :try_start_9
    iput-wide v2, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsS:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzzc()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    :cond_5
    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v3, "Network upload failed. Will retry later. code, error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4, p2}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfw;->zzbrl:Lcom/google/android/gms/internal/zzcfz;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcgl;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzcfz;->set(J)V

    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_6

    const/16 v0, 0x1ad

    if-ne p1, v0, :cond_8

    :cond_6
    move v0, v2

    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfw;->zzbrm:Lcom/google/android/gms/internal/zzcfz;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgl;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzcfz;->set(J)V

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzzc()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_2
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcez;Ljava/lang/String;)[B
    .locals 18
    .param p1    # Lcom/google/android/gms/internal/zzcez;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzkD()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    invoke-static {}, Lcom/google/android/gms/internal/zzcgl;->zzwo()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    new-instance v13, Lcom/google/android/gms/internal/zzcjy;

    invoke-direct {v13}, Lcom/google/android/gms/internal/zzcjy;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->beginTransaction()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzcen;->zzdQ(Ljava/lang/String;)Lcom/google/android/gms/internal/zzceg;

    move-result-object v16

    if-nez v16, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyC()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "Log and bundle not available. package_name"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    new-array v2, v2, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    :goto_0
    return-object v2

    :cond_0
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzceg;->zzwR()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyC()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "Log and bundle disabled. package_name"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    new-array v2, v2, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v17, Lcom/google/android/gms/internal/zzcjz;

    invoke-direct/range {v17 .. v17}, Lcom/google/android/gms/internal/zzcjz;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/zzcjz;

    const/4 v3, 0x0

    aput-object v17, v2, v3

    iput-object v2, v13, Lcom/google/android/gms/internal/zzcjy;->zzbvB:[Lcom/google/android/gms/internal/zzcjz;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvD:Ljava/lang/Integer;

    const-string/jumbo v2, "android"

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvL:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzceg;->zzhl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzaH:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzceg;->zzwO()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzboR:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzceg;->zzjH()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbgW:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzceg;->zzwN()J

    move-result-wide v2

    const-wide/32 v4, -0x80000000

    cmp-long v4, v2, v4

    if-nez v4, :cond_4

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvY:Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzceg;->zzwP()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvP:Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzceg;->getGmpAppId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzboQ:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzceg;->zzwQ()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvU:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzyb()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcgl;->zzbsn:Lcom/google/android/gms/internal/zzcem;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcjz;->zzaH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcem;->zzdO(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwu()Lcom/google/android/gms/internal/zzcfg;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbwd:Ljava/lang/String;

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzceg;->zzhl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcfw;->zzeb(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvR:Ljava/lang/String;

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvS:Ljava/lang/Boolean;

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwv()Lcom/google/android/gms/internal/zzcet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcet;->zzkD()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvM:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwv()Lcom/google/android/gms/internal/zzcet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcet;->zzkD()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzaY:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwv()Lcom/google/android/gms/internal/zzcet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcet;->zzyq()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvO:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwv()Lcom/google/android/gms/internal/zzcet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcet;->zzyr()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvN:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzceg;->getAppInstanceId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvT:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzceg;->zzwK()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzboY:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzceg;->zzhl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcen;->zzdP(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/zzckb;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvF:[Lcom/google/android/gms/internal/zzckb;

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_5

    new-instance v5, Lcom/google/android/gms/internal/zzckb;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzckb;-><init>()V

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvF:[Lcom/google/android/gms/internal/zzckb;

    aput-object v5, v2, v3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcjk;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcjk;->mName:Ljava/lang/String;

    iput-object v2, v5, Lcom/google/android/gms/internal/zzckb;->name:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcjk;

    iget-wide v6, v2, Lcom/google/android/gms/internal/zzcjk;->zzbuC:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lcom/google/android/gms/internal/zzckb;->zzbwh:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v6

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcjk;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcjk;->mValue:Ljava/lang/Object;

    invoke-virtual {v6, v5, v2}, Lcom/google/android/gms/internal/zzcjl;->zza(Lcom/google/android/gms/internal/zzckb;Ljava/lang/Object;)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_4
    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcez;->zzbpM:Lcom/google/android/gms/internal/zzcew;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcew;->zzyt()Landroid/os/Bundle;

    move-result-object v12

    const-string/jumbo v2, "_iap"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcez;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "_c"

    const-wide/16 v4, 0x1

    invoke-virtual {v12, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyC()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "Marking in-app purchase as real-time"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    const-string/jumbo v2, "_r"

    const-wide/16 v4, 0x1

    invoke-virtual {v12, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_6
    const-string/jumbo v2, "_o"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcez;->zzbpc:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcjz;->zzaH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcjl;->zzey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string/jumbo v3, "_dbg"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v12, v3, v4}, Lcom/google/android/gms/internal/zzcjl;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string/jumbo v3, "_r"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v12, v3, v4}, Lcom/google/android/gms/internal/zzcjl;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcez;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzcen;->zzE(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcev;

    move-result-object v2

    if-nez v2, :cond_8

    const-wide/16 v14, 0x0

    new-instance v3, Lcom/google/android/gms/internal/zzcev;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcez;->name:Ljava/lang/String;

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/gms/internal/zzcez;->zzbpN:J

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/zzcev;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcen;->zza(Lcom/google/android/gms/internal/zzcev;)V

    move-wide v10, v14

    :goto_3
    new-instance v3, Lcom/google/android/gms/internal/zzceu;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcez;->zzbpc:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/zzcez;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/gms/internal/zzcez;->zzbpN:J

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/zzceu;-><init>(Lcom/google/android/gms/internal/zzcgl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    new-instance v6, Lcom/google/android/gms/internal/zzcjw;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzcjw;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/zzcjw;

    const/4 v4, 0x0

    aput-object v6, v2, v4

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvE:[Lcom/google/android/gms/internal/zzcjw;

    iget-wide v4, v3, Lcom/google/android/gms/internal/zzceu;->zzayS:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/gms/internal/zzcjw;->zzbvx:Ljava/lang/Long;

    iget-object v2, v3, Lcom/google/android/gms/internal/zzceu;->mName:Ljava/lang/String;

    iput-object v2, v6, Lcom/google/android/gms/internal/zzcjw;->name:Ljava/lang/String;

    iget-wide v4, v3, Lcom/google/android/gms/internal/zzceu;->zzbpE:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/gms/internal/zzcjw;->zzbvy:Ljava/lang/Long;

    iget-object v2, v3, Lcom/google/android/gms/internal/zzceu;->zzbpF:Lcom/google/android/gms/internal/zzcew;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcew;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/zzcjx;

    iput-object v2, v6, Lcom/google/android/gms/internal/zzcjw;->zzbvw:[Lcom/google/android/gms/internal/zzcjx;

    const/4 v2, 0x0

    iget-object v4, v3, Lcom/google/android/gms/internal/zzceu;->zzbpF:Lcom/google/android/gms/internal/zzcew;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcew;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v4, v2

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v8, Lcom/google/android/gms/internal/zzcjx;

    invoke-direct {v8}, Lcom/google/android/gms/internal/zzcjx;-><init>()V

    iget-object v9, v6, Lcom/google/android/gms/internal/zzcjw;->zzbvw:[Lcom/google/android/gms/internal/zzcjx;

    add-int/lit8 v5, v4, 0x1

    aput-object v8, v9, v4

    iput-object v2, v8, Lcom/google/android/gms/internal/zzcjx;->name:Ljava/lang/String;

    iget-object v4, v3, Lcom/google/android/gms/internal/zzceu;->zzbpF:Lcom/google/android/gms/internal/zzcew;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/zzcew;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v4

    invoke-virtual {v4, v8, v2}, Lcom/google/android/gms/internal/zzcjl;->zza(Lcom/google/android/gms/internal/zzcjx;Ljava/lang/Object;)V

    move v4, v5

    goto :goto_4

    :cond_8
    iget-wide v10, v2, Lcom/google/android/gms/internal/zzcev;->zzbpI:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzcez;->zzbpN:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzcev;->zzab(J)Lcom/google/android/gms/internal/zzcev;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcev;->zzys()Lcom/google/android/gms/internal/zzcev;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzcen;->zza(Lcom/google/android/gms/internal/zzcev;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    throw v2

    :cond_9
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzceg;->zzhl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvF:[Lcom/google/android/gms/internal/zzckb;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvE:[Lcom/google/android/gms/internal/zzcjw;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/zzcgl;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzckb;[Lcom/google/android/gms/internal/zzcjw;)[Lcom/google/android/gms/internal/zzcjv;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvX:[Lcom/google/android/gms/internal/zzcjv;

    iget-object v2, v6, Lcom/google/android/gms/internal/zzcjw;->zzbvx:Ljava/lang/Long;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvH:Ljava/lang/Long;

    iget-object v2, v6, Lcom/google/android/gms/internal/zzcjw;->zzbvx:Ljava/lang/Long;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvI:Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzceg;->zzwM()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_a

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_5
    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvK:Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzceg;->zzwL()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_c

    :goto_6
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_b

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_7
    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvJ:Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzceg;->zzwV()V

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzceg;->zzwS()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvV:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzwP()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvQ:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcgl;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvG:Ljava/lang/Long;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvW:Ljava/lang/Boolean;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvH:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzceg;->zzL(J)V

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvI:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzceg;->zzM(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzcen;->zza(Lcom/google/android/gms/internal/zzceg;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    :try_start_4
    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzcjy;->zzLV()I

    move-result v2

    new-array v2, v2, [B

    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/adh;->zzc([BII)Lcom/google/android/gms/internal/adh;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/zzcjy;->zza(Lcom/google/android/gms/internal/adh;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/adh;->zzLM()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzcjl;->zzl([B)[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v2

    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_7

    :catch_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v3

    const-string/jumbo v4, "Data loss. Failed to bundle and serialize. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_c
    move-wide v2, v4

    goto/16 :goto_6
.end method

.method public final zzam(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzzc()V

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/zzcek;Lcom/google/android/gms/internal/zzceh;)V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcek;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcek;->zzbpc:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzkD()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzceh;->zzboQ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzceh;->zzboV:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcgl;->zzf(Lcom/google/android/gms/internal/zzceh;)V

    goto :goto_0

    :cond_1
    new-instance v8, Lcom/google/android/gms/internal/zzcek;

    invoke-direct {v8, p1}, Lcom/google/android/gms/internal/zzcek;-><init>(Lcom/google/android/gms/internal/zzcek;)V

    iput-boolean v6, v8, Lcom/google/android/gms/internal/zzcek;->zzbpf:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    iget-object v1, v8, Lcom/google/android/gms/internal/zzcek;->packageName:Ljava/lang/String;

    iget-object v2, v8, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcen;->zzH(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcek;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v0, v5, Lcom/google/android/gms/internal/zzcek;->zzbpc:Ljava/lang/String;

    iget-object v1, v8, Lcom/google/android/gms/internal/zzcek;->zzbpc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcfj;->zzdY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/internal/zzcek;->zzbpc:Ljava/lang/String;

    iget-object v4, v5, Lcom/google/android/gms/internal/zzcek;->zzbpc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzcfn;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    if-eqz v5, :cond_4

    iget-boolean v0, v5, Lcom/google/android/gms/internal/zzcek;->zzbpf:Z

    if-eqz v0, :cond_4

    iget-object v0, v5, Lcom/google/android/gms/internal/zzcek;->zzbpc:Ljava/lang/String;

    iput-object v0, v8, Lcom/google/android/gms/internal/zzcek;->zzbpc:Ljava/lang/String;

    iget-wide v0, v5, Lcom/google/android/gms/internal/zzcek;->zzbpe:J

    iput-wide v0, v8, Lcom/google/android/gms/internal/zzcek;->zzbpe:J

    iget-wide v0, v5, Lcom/google/android/gms/internal/zzcek;->zzbpi:J

    iput-wide v0, v8, Lcom/google/android/gms/internal/zzcek;->zzbpi:J

    iget-object v0, v5, Lcom/google/android/gms/internal/zzcek;->zzbpg:Ljava/lang/String;

    iput-object v0, v8, Lcom/google/android/gms/internal/zzcek;->zzbpg:Ljava/lang/String;

    iget-object v0, v5, Lcom/google/android/gms/internal/zzcek;->zzbpj:Lcom/google/android/gms/internal/zzcez;

    iput-object v0, v8, Lcom/google/android/gms/internal/zzcek;->zzbpj:Lcom/google/android/gms/internal/zzcez;

    iget-boolean v0, v5, Lcom/google/android/gms/internal/zzcek;->zzbpf:Z

    iput-boolean v0, v8, Lcom/google/android/gms/internal/zzcek;->zzbpf:Z

    new-instance v0, Lcom/google/android/gms/internal/zzcji;

    iget-object v1, v8, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    iget-object v2, v5, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzcji;->zzbuy:J

    iget-object v4, v8, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcji;->getValue()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcji;->zzbpc:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcji;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v8, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    move v7, v6

    :goto_1
    iget-boolean v0, v8, Lcom/google/android/gms/internal/zzcek;->zzbpf:Z

    if-eqz v0, :cond_3

    iget-object v6, v8, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    new-instance v0, Lcom/google/android/gms/internal/zzcjk;

    iget-object v1, v8, Lcom/google/android/gms/internal/zzcek;->packageName:Ljava/lang/String;

    iget-object v2, v8, Lcom/google/android/gms/internal/zzcek;->zzbpc:Ljava/lang/String;

    iget-object v3, v6, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    iget-wide v4, v6, Lcom/google/android/gms/internal/zzcji;->zzbuy:J

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcji;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcjk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcen;->zza(Lcom/google/android/gms/internal/zzcjk;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->zzyC()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v1

    const-string/jumbo v2, "User property updated immediately"

    iget-object v3, v8, Lcom/google/android/gms/internal/zzcek;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcjk;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzcfj;->zzdY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcjk;->mValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzcfn;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    if-eqz v7, :cond_3

    iget-object v0, v8, Lcom/google/android/gms/internal/zzcek;->zzbpj:Lcom/google/android/gms/internal/zzcez;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzcez;

    iget-object v1, v8, Lcom/google/android/gms/internal/zzcek;->zzbpj:Lcom/google/android/gms/internal/zzcez;

    iget-wide v2, v8, Lcom/google/android/gms/internal/zzcek;->zzbpe:J

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcez;-><init>(Lcom/google/android/gms/internal/zzcez;J)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzcgl;->zzc(Lcom/google/android/gms/internal/zzcez;Lcom/google/android/gms/internal/zzceh;)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/zzcen;->zza(Lcom/google/android/gms/internal/zzcek;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyC()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Conditional property added"

    iget-object v2, v8, Lcom/google/android/gms/internal/zzcek;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v3

    iget-object v4, v8, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzcfj;->zzdY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcji;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzcfn;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-object v0, v8, Lcom/google/android/gms/internal/zzcek;->zzbpg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/google/android/gms/internal/zzcji;

    iget-object v1, v8, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    iget-wide v2, v8, Lcom/google/android/gms/internal/zzcek;->zzbpe:J

    iget-object v4, v8, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcji;->getValue()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v8, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcji;->zzbpc:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcji;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v8, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/google/android/gms/internal/zzcek;->zzbpf:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    throw v0

    :cond_5
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v1

    const-string/jumbo v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v8, Lcom/google/android/gms/internal/zzcek;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcjk;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzcfj;->zzdY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcjk;->mValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzcfn;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Too many conditional properties, ignoring"

    iget-object v2, v8, Lcom/google/android/gms/internal/zzcek;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v3

    iget-object v4, v8, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzcfj;->zzdY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcji;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzcfn;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :cond_7
    move v7, v6

    goto/16 :goto_1
.end method

.method final zzb(Lcom/google/android/gms/internal/zzcez;Lcom/google/android/gms/internal/zzceh;)V
    .locals 13
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p2, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzkD()V

    iget-object v5, p2, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    iget-wide v6, p1, Lcom/google/android/gms/internal/zzcez;->zzbpN:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzcjl;->zzd(Lcom/google/android/gms/internal/zzcez;Lcom/google/android/gms/internal/zzceh;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p2, Lcom/google/android/gms/internal/zzceh;->zzboV:Z

    if-nez v2, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcgl;->zzf(Lcom/google/android/gms/internal/zzceh;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-static {v5}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->zzjC()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->zzkD()V

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "Invalid time querying timed out conditional properties"

    invoke-static {v5}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v3, v4, v8}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcek;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfl;->zzyC()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v4

    const-string/jumbo v8, "User property timed out"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcek;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v10

    iget-object v11, v2, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    iget-object v11, v11, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/zzcfj;->zzdY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v2, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/zzcji;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v8, v9, v10, v11}, Lcom/google/android/gms/internal/zzcfn;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcek;->zzbph:Lcom/google/android/gms/internal/zzcez;

    if-eqz v4, :cond_3

    new-instance v4, Lcom/google/android/gms/internal/zzcez;

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcek;->zzbph:Lcom/google/android/gms/internal/zzcez;

    invoke-direct {v4, v8, v6, v7}, Lcom/google/android/gms/internal/zzcez;-><init>(Lcom/google/android/gms/internal/zzcez;J)V

    invoke-direct {p0, v4, p2}, Lcom/google/android/gms/internal/zzcgl;->zzc(Lcom/google/android/gms/internal/zzcez;Lcom/google/android/gms/internal/zzceh;)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v4

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/internal/zzcen;->zzI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    throw v2

    :cond_4
    :try_start_1
    const-string/jumbo v3, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v4, v8

    const/4 v8, 0x1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcen;->zzc(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-static {v5}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->zzjC()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->zzkD()V

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "Invalid time querying expired conditional properties"

    invoke-static {v5}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v3, v4, v8}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcek;

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcfl;->zzyC()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v8

    const-string/jumbo v9, "User property expired"

    iget-object v10, v2, Lcom/google/android/gms/internal/zzcek;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    iget-object v12, v12, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/zzcfj;->zzdY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzcji;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/android/gms/internal/zzcfn;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    invoke-virtual {v8, v5, v9}, Lcom/google/android/gms/internal/zzcen;->zzF(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcek;->zzbpl:Lcom/google/android/gms/internal/zzcez;

    if-eqz v8, :cond_7

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcek;->zzbpl:Lcom/google/android/gms/internal/zzcez;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v8

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    invoke-virtual {v8, v5, v2}, Lcom/google/android/gms/internal/zzcen;->zzI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    const-string/jumbo v3, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v4, v8

    const/4 v8, 0x1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcen;->zzc(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_3

    :cond_9
    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v3, 0x0

    move v4, v3

    :goto_5
    if-ge v4, v8, :cond_a

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Lcom/google/android/gms/internal/zzcez;

    new-instance v9, Lcom/google/android/gms/internal/zzcez;

    invoke-direct {v9, v3, v6, v7}, Lcom/google/android/gms/internal/zzcez;-><init>(Lcom/google/android/gms/internal/zzcez;J)V

    invoke-direct {p0, v9, p2}, Lcom/google/android/gms/internal/zzcgl;->zzc(Lcom/google/android/gms/internal/zzcez;Lcom/google/android/gms/internal/zzceh;)V

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcez;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->zzjC()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->zzkD()V

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gez v4, :cond_d

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v4

    const-string/jumbo v8, "Invalid time querying triggered conditional properties"

    invoke-static {v5}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcfj;->zzdW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v8, v5, v2, v3}, Lcom/google/android/gms/internal/zzcfn;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_6
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_b
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/zzcek;

    move-object v9, v0

    if-eqz v9, :cond_b

    iget-object v8, v9, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    new-instance v2, Lcom/google/android/gms/internal/zzcjk;

    iget-object v3, v9, Lcom/google/android/gms/internal/zzcek;->packageName:Ljava/lang/String;

    iget-object v4, v9, Lcom/google/android/gms/internal/zzcek;->zzbpc:Ljava/lang/String;

    iget-object v5, v8, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcji;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/zzcjk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzcen;->zza(Lcom/google/android/gms/internal/zzcjk;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcfl;->zzyC()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v3

    const-string/jumbo v4, "User property triggered"

    iget-object v5, v9, Lcom/google/android/gms/internal/zzcek;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v8

    iget-object v12, v2, Lcom/google/android/gms/internal/zzcjk;->mName:Ljava/lang/String;

    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/zzcfj;->zzdY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v12, v2, Lcom/google/android/gms/internal/zzcjk;->mValue:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v8, v12}, Lcom/google/android/gms/internal/zzcfn;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_8
    iget-object v3, v9, Lcom/google/android/gms/internal/zzcek;->zzbpj:Lcom/google/android/gms/internal/zzcez;

    if-eqz v3, :cond_c

    iget-object v3, v9, Lcom/google/android/gms/internal/zzcek;->zzbpj:Lcom/google/android/gms/internal/zzcez;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    new-instance v3, Lcom/google/android/gms/internal/zzcji;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/zzcji;-><init>(Lcom/google/android/gms/internal/zzcjk;)V

    iput-object v3, v9, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/google/android/gms/internal/zzcek;->zzbpf:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/zzcen;->zza(Lcom/google/android/gms/internal/zzcek;)Z

    goto :goto_7

    :cond_d
    const-string/jumbo v4, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    aput-object v3, v8, v5

    const/4 v3, 0x2

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v3

    invoke-virtual {v2, v4, v8}, Lcom/google/android/gms/internal/zzcen;->zzc(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_6

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v3

    const-string/jumbo v4, "Too many active user properties, ignoring"

    iget-object v5, v9, Lcom/google/android/gms/internal/zzcek;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v8

    iget-object v12, v2, Lcom/google/android/gms/internal/zzcjk;->mName:Ljava/lang/String;

    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/zzcfj;->zzdY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v12, v2, Lcom/google/android/gms/internal/zzcjk;->mValue:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v8, v12}, Lcom/google/android/gms/internal/zzcfn;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzcgl;->zzc(Lcom/google/android/gms/internal/zzcez;Lcom/google/android/gms/internal/zzceh;)V

    move-object v0, v10

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    if-ge v4, v5, :cond_10

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Lcom/google/android/gms/internal/zzcez;

    new-instance v8, Lcom/google/android/gms/internal/zzcez;

    invoke-direct {v8, v3, v6, v7}, Lcom/google/android/gms/internal/zzcez;-><init>(Lcom/google/android/gms/internal/zzcez;J)V

    invoke-direct {p0, v8, p2}, Lcom/google/android/gms/internal/zzcgl;->zzc(Lcom/google/android/gms/internal/zzcez;Lcom/google/android/gms/internal/zzceh;)V

    goto :goto_9

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    goto/16 :goto_0
.end method

.method final zzb(Lcom/google/android/gms/internal/zzcez;Ljava/lang/String;)V
    .locals 23
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzcen;->zzdQ(Ljava/lang/String;)Lcom/google/android/gms/internal/zzceg;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzjH()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyC()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "No app data available; dropping event"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbha;->zzaP(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbgz;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/zzbgz;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzjH()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzjH()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v3

    const-string/jumbo v4, "App version does not match; dropping event. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v3, "_ui"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcez;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v3

    const-string/jumbo v4, "Could not find package. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/zzceh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->getGmpAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzjH()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzwN()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzwO()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzwP()J

    move-result-wide v10

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzwQ()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzwR()Z

    move-result v15

    const/16 v16, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzwK()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzceg;->zzxe()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v22}, Lcom/google/android/gms/internal/zzceh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJI)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zzcgl;->zzb(Lcom/google/android/gms/internal/zzcez;Lcom/google/android/gms/internal/zzceh;)V

    goto/16 :goto_0
.end method

.method final zzb(Lcom/google/android/gms/internal/zzchj;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsQ:I

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/zzcji;Lcom/google/android/gms/internal/zzceh;)V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzkD()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzceh;->zzboQ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzceh;->zzboV:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcgl;->zzf(Lcom/google/android/gms/internal/zzceh;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcjl;->zzes(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxi()I

    move-result v1

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "_ev"

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcji;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcjl;->zzl(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxi()I

    move-result v1

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcji;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_5

    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "_ev"

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcji;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcjl;->zzm(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzcjk;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcji;->zzbpc:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzcji;->zzbuy:J

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcjk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->zzyC()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v1

    const-string/jumbo v2, "Setting user property"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcjk;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzcfj;->zzdY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcen;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcgl;->zzf(Lcom/google/android/gms/internal/zzceh;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcen;->zza(Lcom/google/android/gms/internal/zzcjk;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->setTransactionSuccessful()V

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->zzyC()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v1

    const-string/jumbo v2, "User property set"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcjk;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzcfj;->zzdY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcjk;->mValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    goto/16 :goto_0

    :cond_8
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v1

    const-string/jumbo v2, "Too many unique user properties are set. Ignoring user property"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcjk;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzcfj;->zzdY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcjk;->mValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    throw v0
.end method

.method final zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/16 v7, 0x130

    const/4 v0, 0x1

    const/16 v6, 0x194

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzkD()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    if-nez p4, :cond_0

    const/4 v3, 0x0

    :try_start_0
    new-array p4, v3, [B

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v3

    const-string/jumbo v4, "onConfigFetched. Response size"

    array-length v5, p4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcen;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/zzcen;->zzdQ(Ljava/lang/String;)Lcom/google/android/gms/internal/zzceg;

    move-result-object v4

    const/16 v3, 0xc8

    if-eq p2, v3, :cond_1

    const/16 v3, 0xcc

    if-eq p2, v3, :cond_1

    if-ne p2, v7, :cond_2

    :cond_1
    if-nez p3, :cond_2

    move v3, v0

    :goto_0
    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v2, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsU:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzzg()V

    :goto_2
    return-void

    :cond_2
    move v3, v1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    if-ne p2, v6, :cond_c

    :cond_4
    if-eqz p5, :cond_6

    :try_start_3
    const-string/jumbo v0, "Last-Modified"

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_3
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_4
    if-eq p2, v6, :cond_5

    if-ne p2, v7, :cond_8

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwC()Lcom/google/android/gms/internal/zzcgf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcgf;->zzeh(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcjt;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwC()Lcom/google/android/gms/internal/zzcgf;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/zzcgf;->zzb(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-nez v0, :cond_9

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsU:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzzg()V

    goto :goto_2

    :cond_6
    move-object v0, v2

    goto :goto_3

    :cond_7
    move-object v0, v2

    goto :goto_4

    :cond_8
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwC()Lcom/google/android/gms/internal/zzcgf;

    move-result-object v2

    invoke-virtual {v2, p1, p4, v0}, Lcom/google/android/gms/internal/zzcgf;->zzb(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    if-nez v0, :cond_9

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsU:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzzg()V

    goto :goto_2

    :cond_9
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/zzceg;->zzR(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/zzcen;->zza(Lcom/google/android/gms/internal/zzceg;)V

    if-ne p2, v6, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyA()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v2, "Config not found. Using empty config. appId"

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzyU()Lcom/google/android/gms/internal/zzcfp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfp;->zzlQ()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzzb()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzza()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :try_start_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsU:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzzg()V

    throw v0

    :cond_a
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v2, "Successfully fetched config. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    array-length v4, p4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzzc()V

    goto/16 :goto_1

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgl;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/zzceg;->zzS(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzcen;->zza(Lcom/google/android/gms/internal/zzceg;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwC()Lcom/google/android/gms/internal/zzcgf;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzcgf;->zzej(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcfw;->zzbrl:Lcom/google/android/gms/internal/zzcfz;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcgl;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzcfz;->set(J)V

    const/16 v2, 0x1f7

    if-eq p2, v2, :cond_d

    const/16 v2, 0x1ad

    if-ne p2, v2, :cond_f

    :cond_d
    :goto_6
    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfw;->zzbrm:Lcom/google/android/gms/internal/zzcfz;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgl;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzcfz;->set(J)V

    :cond_e
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzzc()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :cond_f
    move v0, v1

    goto :goto_6
.end method

.method final zzc(Lcom/google/android/gms/internal/zzcek;Lcom/google/android/gms/internal/zzceh;)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcek;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzkD()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzceh;->zzboQ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzceh;->zzboV:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcgl;->zzf(Lcom/google/android/gms/internal/zzceh;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcgl;->zzf(Lcom/google/android/gms/internal/zzceh;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcek;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcen;->zzH(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcek;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyC()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Removing conditional user property"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcek;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzcfj;->zzdY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcek;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcen;->zzI(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v3, Lcom/google/android/gms/internal/zzcek;->zzbpf:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcek;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcen;->zzF(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/zzcek;->zzbpl:Lcom/google/android/gms/internal/zzcez;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcek;->zzbpl:Lcom/google/android/gms/internal/zzcez;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcez;->zzbpM:Lcom/google/android/gms/internal/zzcew;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcek;->zzbpl:Lcom/google/android/gms/internal/zzcez;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcez;->zzbpM:Lcom/google/android/gms/internal/zzcew;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcew;->zzyt()Landroid/os/Bundle;

    move-result-object v2

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcek;->zzbpl:Lcom/google/android/gms/internal/zzcez;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcez;->name:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcek;->zzbpc:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzcek;->zzbpl:Lcom/google/android/gms/internal/zzcez;

    iget-wide v4, v4, Lcom/google/android/gms/internal/zzcez;->zzbpN:J

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzcez;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzcgl;->zzc(Lcom/google/android/gms/internal/zzcez;Lcom/google/android/gms/internal/zzceh;)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Conditional user property doesn\'t exist"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcek;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/internal/zzcek;->zzbpd:Lcom/google/android/gms/internal/zzcji;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzcfj;->zzdY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    throw v0
.end method

.method final zzc(Lcom/google/android/gms/internal/zzcji;Lcom/google/android/gms/internal/zzceh;)V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzkD()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzceh;->zzboQ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzceh;->zzboV:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcgl;->zzf(Lcom/google/android/gms/internal/zzceh;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyC()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Removing user property"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcfj;->zzdY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcgl;->zzf(Lcom/google/android/gms/internal/zzceh;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcen;->zzF(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->setTransactionSuccessful()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyC()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "User property removed"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcfj;->zzdY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    throw v0
.end method

.method final zzd(Lcom/google/android/gms/internal/zzceh;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzkD()V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcgl;->zzf(Lcom/google/android/gms/internal/zzceh;)V

    return-void
.end method

.method final zzd(Lcom/google/android/gms/internal/zzcek;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcek;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcgl;->zzel(Ljava/lang/String;)Lcom/google/android/gms/internal/zzceh;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzcgl;->zzb(Lcom/google/android/gms/internal/zzcek;Lcom/google/android/gms/internal/zzceh;)V

    :cond_0
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/zzceh;)V
    .locals 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzkD()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzceh;->zzboQ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcen;->zzdQ(Ljava/lang/String;)Lcom/google/android/gms/internal/zzceg;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzceg;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/internal/zzceh;->zzboQ:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzceg;->zzR(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcen;->zza(Lcom/google/android/gms/internal/zzceg;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwC()Lcom/google/android/gms/internal/zzcgf;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgf;->zzek(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzceh;->zzboV:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcgl;->zzf(Lcom/google/android/gms/internal/zzceh;)V

    goto :goto_0

    :cond_2
    iget-wide v4, p1, Lcom/google/android/gms/internal/zzceh;->zzbpa:J

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    :cond_3
    iget v0, p1, Lcom/google/android/gms/internal/zzceh;->zzbpb:I

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v1

    const-string/jumbo v2, "Incorrect app type, assuming installed app. appId, appType"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcen;->zzdQ(Ljava/lang/String;)Lcom/google/android/gms/internal/zzceg;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzceg;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzceg;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzceh;->zzboQ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v1

    const-string/jumbo v2, "New GMP App Id passed in. Removing cached database data. appId"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzceg;->zzhl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzceg;->zzhl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcen;->zzkD()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcen;->zzjC()V

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcen;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v3, v7

    const-string/jumbo v7, "events"

    const-string/jumbo v8, "app_id=?"

    invoke-virtual {v0, v7, v8, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x0

    const-string/jumbo v8, "user_attributes"

    const-string/jumbo v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string/jumbo v8, "conditional_properties"

    const-string/jumbo v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string/jumbo v8, "apps"

    const-string/jumbo v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string/jumbo v8, "raw_events"

    const-string/jumbo v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string/jumbo v8, "raw_events_metadata"

    const-string/jumbo v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string/jumbo v8, "event_filters"

    const-string/jumbo v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string/jumbo v8, "property_filters"

    const-string/jumbo v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    const-string/jumbo v8, "audience_filter_values"

    const-string/jumbo v9, "app_id=?"

    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v7

    if-lez v0, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcen;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v3

    const-string/jumbo v7, "Deleted application data. app, records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v7, v2, v0}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_2
    const/4 v0, 0x0

    :cond_5
    if-eqz v0, :cond_6

    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzceg;->zzjH()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzceg;->zzjH()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzceh;->zzbgW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "_pv"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzceg;->zzjH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzcez;

    const-string/jumbo v1, "_au"

    new-instance v2, Lcom/google/android/gms/internal/zzcew;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzcew;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcez;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcew;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzcgl;->zzb(Lcom/google/android/gms/internal/zzcez;Lcom/google/android/gms/internal/zzceh;)V

    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcgl;->zzf(Lcom/google/android/gms/internal/zzceh;)V

    const/4 v0, 0x0

    if-nez v6, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "_f"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcen;->zzE(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcev;

    move-result-object v0

    :cond_7
    :goto_3
    if-nez v0, :cond_13

    const-wide/16 v0, 0x1

    const-wide/32 v2, 0x36ee80

    div-long v2, v4, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    mul-long/2addr v0, v2

    if-nez v6, :cond_12

    new-instance v2, Lcom/google/android/gms/internal/zzcji;

    const-string/jumbo v3, "_fot"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, "auto"

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzcji;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/zzcgl;->zzb(Lcom/google/android/gms/internal/zzcji;Lcom/google/android/gms/internal/zzceh;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzkD()V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "_c"

    const-wide/16 v2, 0x1

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "_r"

    const-wide/16 v2, 0x1

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "_uwa"

    const-wide/16 v2, 0x0

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "_pfo"

    const-wide/16 v2, 0x0

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "_sys"

    const-wide/16 v2, 0x0

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "_sysu"

    const-wide/16 v2, 0x0

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->zzjC()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->zzkD()V

    const-string/jumbo v2, "first_open_count"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcen;->zzL(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_9

    const-string/jumbo v2, "_pfo"

    invoke-virtual {v8, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/zzcez;

    const-string/jumbo v1, "_f"

    new-instance v2, Lcom/google/android/gms/internal/zzcew;

    invoke-direct {v2, v8}, Lcom/google/android/gms/internal/zzcew;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcez;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcew;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzcgl;->zzb(Lcom/google/android/gms/internal/zzcez;Lcom/google/android/gms/internal/zzceh;)V

    :cond_a
    :goto_5
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "_et"

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Lcom/google/android/gms/internal/zzcez;

    const-string/jumbo v1, "_e"

    new-instance v2, Lcom/google/android/gms/internal/zzcew;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzcew;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcez;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcew;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzcgl;->zzb(Lcom/google/android/gms/internal/zzcez;Lcom/google/android/gms/internal/zzceh;)V

    :cond_b
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcen;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v1

    const-string/jumbo v3, "Error deleting application data. appId, error"

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcen;->endTransaction()V

    throw v0

    :cond_c
    const/4 v1, 0x1

    if-ne v6, v1, :cond_7

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "_v"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcen;->zzE(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcev;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto/16 :goto_3

    :cond_d
    const/4 v1, 0x0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbha;->zzaP(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbgz;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzbgz;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    move-object v1, v0

    :goto_7
    if-eqz v1, :cond_e

    :try_start_6
    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v6, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_10

    const-string/jumbo v1, "_uwa"

    const-wide/16 v2, 0x1

    invoke-virtual {v8, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :goto_8
    new-instance v2, Lcom/google/android/gms/internal/zzcji;

    const-string/jumbo v3, "_fi"

    if-eqz v0, :cond_11

    const-wide/16 v0, 0x1

    :goto_9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, "auto"

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzcji;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/zzcgl;->zzb(Lcom/google/android/gms/internal/zzcji;Lcom/google/android/gms/internal/zzceh;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_e
    const/4 v1, 0x0

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbha;->zzaP(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbgz;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzbgz;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    :goto_a
    if-eqz v0, :cond_8

    :try_start_8
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_f

    const-string/jumbo v1, "_sys"

    const-wide/16 v2, 0x1

    invoke-virtual {v8, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_f
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const-string/jumbo v0, "_sysu"

    const-wide/16 v2, 0x1

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "Package info is null, first open report might be inaccurate. appId"

    iget-object v6, p1, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v3, v6, v0}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    :cond_10
    const/4 v0, 0x1

    goto :goto_8

    :cond_11
    const-wide/16 v0, 0x0

    goto :goto_9

    :catch_2
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "Application info is null, first open report might be inaccurate. appId"

    iget-object v6, p1, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v3, v6, v0}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_a

    :cond_12
    const/4 v2, 0x1

    if-ne v6, v2, :cond_a

    new-instance v2, Lcom/google/android/gms/internal/zzcji;

    const-string/jumbo v3, "_fvt"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, "auto"

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzcji;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/zzcgl;->zzb(Lcom/google/android/gms/internal/zzcji;Lcom/google/android/gms/internal/zzceh;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzkD()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "_c"

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "_r"

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Lcom/google/android/gms/internal/zzcez;

    const-string/jumbo v1, "_v"

    new-instance v2, Lcom/google/android/gms/internal/zzcew;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzcew;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcez;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcew;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzcgl;->zzb(Lcom/google/android/gms/internal/zzcez;Lcom/google/android/gms/internal/zzceh;)V

    goto/16 :goto_5

    :cond_13
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzceh;->zzboW:Z

    if-eqz v0, :cond_b

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzcez;

    const-string/jumbo v1, "_cd"

    new-instance v2, Lcom/google/android/gms/internal/zzcew;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzcew;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcez;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcew;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzcgl;->zzb(Lcom/google/android/gms/internal/zzcez;Lcom/google/android/gms/internal/zzceh;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_6

    :cond_14
    move v6, v0

    goto/16 :goto_1
.end method

.method final zze(Lcom/google/android/gms/internal/zzcek;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcek;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcgl;->zzel(Ljava/lang/String;)Lcom/google/android/gms/internal/zzceh;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzcgl;->zzc(Lcom/google/android/gms/internal/zzcek;Lcom/google/android/gms/internal/zzceh;)V

    :cond_0
    return-void
.end method

.method public final zzem(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcgn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcgn;-><init>(Lcom/google/android/gms/internal/zzcgl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgg;->zze(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v2, 0x7530

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v1

    const-string/jumbo v2, "Failed to get app instance id. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method final zzkD()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzafK:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final zzkq()Lcom/google/android/gms/common/util/zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzvw:Lcom/google/android/gms/common/util/zze;

    return-object v0
.end method

.method final zzl(Ljava/lang/Runnable;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsP:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsP:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzwA()Lcom/google/android/gms/internal/zzcfj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsw:Lcom/google/android/gms/internal/zzcfj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgl;->zza(Lcom/google/android/gms/internal/zzchi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsw:Lcom/google/android/gms/internal/zzcfj;

    return-object v0
.end method

.method public final zzwB()Lcom/google/android/gms/internal/zzcjl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsv:Lcom/google/android/gms/internal/zzcjl;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgl;->zza(Lcom/google/android/gms/internal/zzchi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsv:Lcom/google/android/gms/internal/zzcjl;

    return-object v0
.end method

.method public final zzwC()Lcom/google/android/gms/internal/zzcgf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbss:Lcom/google/android/gms/internal/zzcgf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgl;->zza(Lcom/google/android/gms/internal/zzchj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbss:Lcom/google/android/gms/internal/zzcgf;

    return-object v0
.end method

.method public final zzwD()Lcom/google/android/gms/internal/zzcja;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsr:Lcom/google/android/gms/internal/zzcja;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgl;->zza(Lcom/google/android/gms/internal/zzchj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsr:Lcom/google/android/gms/internal/zzcja;

    return-object v0
.end method

.method public final zzwE()Lcom/google/android/gms/internal/zzcgg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsq:Lcom/google/android/gms/internal/zzcgg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgl;->zza(Lcom/google/android/gms/internal/zzchj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsq:Lcom/google/android/gms/internal/zzcgg;

    return-object v0
.end method

.method public final zzwF()Lcom/google/android/gms/internal/zzcfl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsp:Lcom/google/android/gms/internal/zzcfl;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgl;->zza(Lcom/google/android/gms/internal/zzchj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsp:Lcom/google/android/gms/internal/zzcfl;

    return-object v0
.end method

.method public final zzwG()Lcom/google/android/gms/internal/zzcfw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbso:Lcom/google/android/gms/internal/zzcfw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgl;->zza(Lcom/google/android/gms/internal/zzchi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbso:Lcom/google/android/gms/internal/zzcfw;

    return-object v0
.end method

.method public final zzwH()Lcom/google/android/gms/internal/zzcem;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsn:Lcom/google/android/gms/internal/zzcem;

    return-object v0
.end method

.method public final zzwr()Lcom/google/android/gms/internal/zzcec;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsI:Lcom/google/android/gms/internal/zzcec;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgl;->zza(Lcom/google/android/gms/internal/zzchi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsI:Lcom/google/android/gms/internal/zzcec;

    return-object v0
.end method

.method public final zzws()Lcom/google/android/gms/internal/zzcej;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsH:Lcom/google/android/gms/internal/zzcej;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgl;->zza(Lcom/google/android/gms/internal/zzchj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsH:Lcom/google/android/gms/internal/zzcej;

    return-object v0
.end method

.method public final zzwt()Lcom/google/android/gms/internal/zzchl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsD:Lcom/google/android/gms/internal/zzchl;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgl;->zza(Lcom/google/android/gms/internal/zzchj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsD:Lcom/google/android/gms/internal/zzchl;

    return-object v0
.end method

.method public final zzwu()Lcom/google/android/gms/internal/zzcfg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsE:Lcom/google/android/gms/internal/zzcfg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgl;->zza(Lcom/google/android/gms/internal/zzchj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsE:Lcom/google/android/gms/internal/zzcfg;

    return-object v0
.end method

.method public final zzwv()Lcom/google/android/gms/internal/zzcet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsC:Lcom/google/android/gms/internal/zzcet;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgl;->zza(Lcom/google/android/gms/internal/zzchj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsC:Lcom/google/android/gms/internal/zzcet;

    return-object v0
.end method

.method public final zzww()Lcom/google/android/gms/internal/zzcid;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsB:Lcom/google/android/gms/internal/zzcid;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgl;->zza(Lcom/google/android/gms/internal/zzchj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsB:Lcom/google/android/gms/internal/zzcid;

    return-object v0
.end method

.method public final zzwx()Lcom/google/android/gms/internal/zzchz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsA:Lcom/google/android/gms/internal/zzchz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgl;->zza(Lcom/google/android/gms/internal/zzchj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsA:Lcom/google/android/gms/internal/zzchz;

    return-object v0
.end method

.method public final zzwy()Lcom/google/android/gms/internal/zzcfh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsy:Lcom/google/android/gms/internal/zzcfh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgl;->zza(Lcom/google/android/gms/internal/zzchj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsy:Lcom/google/android/gms/internal/zzcfh;

    return-object v0
.end method

.method public final zzwz()Lcom/google/android/gms/internal/zzcen;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsx:Lcom/google/android/gms/internal/zzcen;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgl;->zza(Lcom/google/android/gms/internal/zzchj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsx:Lcom/google/android/gms/internal/zzcen;

    return-object v0
.end method

.method protected final zzyP()Z
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzkD()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsK:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsL:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsK:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsK:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgl;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsL:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgl;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsL:J

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxE()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string/jumbo v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcjl;->zzbv(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string/jumbo v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcjl;->zzbv(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbha;->zzaP(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbgz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbgz;->zzsl()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgl;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzcgc;->zzj(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgl;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzciw;->zzk(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsK:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsK:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwu()Lcom/google/android/gms/internal/zzcfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfg;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcjl;->zzev(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsK:Ljava/lang/Boolean;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsK:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzyQ()Lcom/google/android/gms/internal/zzcfl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsp:Lcom/google/android/gms/internal/zzcfl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsp:Lcom/google/android/gms/internal/zzcfl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsp:Lcom/google/android/gms/internal/zzcfl;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final zzyR()Lcom/google/android/gms/internal/zzcgg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsq:Lcom/google/android/gms/internal/zzcgg;

    return-object v0
.end method

.method public final zzyS()Lcom/google/android/gms/measurement/AppMeasurement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbst:Lcom/google/android/gms/measurement/AppMeasurement;

    return-object v0
.end method

.method public final zzyT()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsu:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object v0
.end method

.method public final zzyU()Lcom/google/android/gms/internal/zzcfp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsz:Lcom/google/android/gms/internal/zzcfp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgl;->zza(Lcom/google/android/gms/internal/zzchj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsz:Lcom/google/android/gms/internal/zzcfp;

    return-object v0
.end method

.method final zzyY()J
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfw;->zzbrp:Lcom/google/android/gms/internal/zzcfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfz;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsX:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsX:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final zzza()V
    .locals 14
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v10, 0x0

    const-wide/16 v12, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzkD()V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsW:Z

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxE()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfw;->zzyI()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Upload data called on the client side before use of service was decided"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v6, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsW:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzzg()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v6, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsW:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzzg()V

    goto :goto_0

    :cond_1
    :try_start_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsT:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzzc()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-boolean v6, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsW:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzzg()V

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsO:Ljava/util/List;

    if-eqz v0, :cond_3

    move v0, v4

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Uploading requested multiple times"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-boolean v6, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsW:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzzg()V

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_1

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzyU()Lcom/google/android/gms/internal/zzcfp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfp;->zzlQ()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzzc()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iput-boolean v6, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsW:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzzg()V

    goto :goto_0

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxP()J

    move-result-wide v0

    sub-long v0, v8, v0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/internal/zzcgl;->zzg(Ljava/lang/String;J)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfw;->zzbrk:Lcom/google/android/gms/internal/zzcfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfz;->get()J

    move-result-wide v0

    cmp-long v2, v0, v10

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyC()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v5, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v0, v8, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->zzyc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-wide v10, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsS:J

    cmp-long v0, v10, v12

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcen;->zzyj()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsS:J

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsn:Lcom/google/android/gms/internal/zzcem;

    sget-object v2, Lcom/google/android/gms/internal/zzcfb;->zzbqb:Lcom/google/android/gms/internal/zzcfc;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcem;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzcfc;)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsn:Lcom/google/android/gms/internal/zzcem;

    const/4 v5, 0x0

    sget-object v7, Lcom/google/android/gms/internal/zzcfb;->zzbqc:Lcom/google/android/gms/internal/zzcfc;

    invoke-virtual {v2, v1, v7}, Lcom/google/android/gms/internal/zzcem;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzcfc;)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v5

    invoke-virtual {v5, v1, v0, v2}, Lcom/google/android/gms/internal/zzcen;->zzl(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzcjz;

    iget-object v7, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvR:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvR:Ljava/lang/String;

    move-object v7, v0

    :goto_2
    if-eqz v7, :cond_13

    move v5, v6

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_13

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzcjz;

    iget-object v10, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvR:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvR:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    invoke-interface {v2, v0, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    :goto_4
    new-instance v10, Lcom/google/android/gms/internal/zzcjy;

    invoke-direct {v10}, Lcom/google/android/gms/internal/zzcjy;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzcjz;

    iput-object v0, v10, Lcom/google/android/gms/internal/zzcjy;->zzbvB:[Lcom/google/android/gms/internal/zzcjz;

    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzyb()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsn:Lcom/google/android/gms/internal/zzcem;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcem;->zzdO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v4

    :goto_5
    move v5, v6

    :goto_6
    iget-object v0, v10, Lcom/google/android/gms/internal/zzcjy;->zzbvB:[Lcom/google/android/gms/internal/zzcjz;

    array-length v0, v0

    if-ge v5, v0, :cond_c

    iget-object v12, v10, Lcom/google/android/gms/internal/zzcjy;->zzbvB:[Lcom/google/android/gms/internal/zzcjz;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzcjz;

    aput-object v0, v12, v5

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v10, Lcom/google/android/gms/internal/zzcjy;->zzbvB:[Lcom/google/android/gms/internal/zzcjz;

    aget-object v0, v0, v5

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzwP()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvQ:Ljava/lang/Long;

    iget-object v0, v10, Lcom/google/android/gms/internal/zzcjy;->zzbvB:[Lcom/google/android/gms/internal/zzcjz;

    aget-object v0, v0, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvG:Ljava/lang/Long;

    iget-object v0, v10, Lcom/google/android/gms/internal/zzcjy;->zzbvB:[Lcom/google/android/gms/internal/zzcjz;

    aget-object v0, v0, v5

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxE()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iput-object v12, v0, Lcom/google/android/gms/internal/zzcjz;->zzbvW:Ljava/lang/Boolean;

    if-nez v2, :cond_9

    iget-object v0, v10, Lcom/google/android/gms/internal/zzcjy;->zzbvB:[Lcom/google/android/gms/internal/zzcjz;

    aget-object v0, v0, v5

    const/4 v12, 0x0

    iput-object v12, v0, Lcom/google/android/gms/internal/zzcjz;->zzbwd:Ljava/lang/String;

    :cond_9
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_6

    :cond_a
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_3

    :cond_b
    move v2, v6

    goto :goto_5

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcfl;->zzz(I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwA()Lcom/google/android/gms/internal/zzcfj;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/zzcfj;->zza(Lcom/google/android/gms/internal/zzcjy;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/zzcjl;->zzb(Lcom/google/android/gms/internal/zzcjy;)[B

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxO()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v7

    :try_start_6
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    :goto_8
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsO:Ljava/util/List;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v4, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwG()Lcom/google/android/gms/internal/zzcfw;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfw;->zzbrl:Lcom/google/android/gms/internal/zzcfz;

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/internal/zzcfz;->set(J)V

    const-string/jumbo v0, "?"

    iget-object v4, v10, Lcom/google/android/gms/internal/zzcjy;->zzbvB:[Lcom/google/android/gms/internal/zzcjz;

    array-length v4, v4

    if-lez v4, :cond_d

    iget-object v0, v10, Lcom/google/android/gms/internal/zzcjy;->zzbvB:[Lcom/google/android/gms/internal/zzcjz;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcjz;->zzaH:Ljava/lang/String;

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v4

    const-string/jumbo v8, "Uploading data. app, uncompressed size, data"

    array-length v9, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v0, v9, v5}, Lcom/google/android/gms/internal/zzcfn;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsV:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzyU()Lcom/google/android/gms/internal/zzcfp;

    move-result-object v0

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/gms/internal/zzcgo;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/zzcgo;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcfp;->zza(Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/internal/zzcfr;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_e
    :goto_a
    iput-boolean v6, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsW:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzzg()V

    goto/16 :goto_0

    :cond_f
    move v4, v6

    goto :goto_8

    :cond_10
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsO:Ljava/util/List;
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_9

    :catch_0
    move-exception v0

    :try_start_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v2, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v7}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v0

    iput-boolean v6, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsW:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzzg()V

    throw v0

    :cond_11
    const-wide/16 v0, -0x1

    :try_start_9
    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsS:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxP()J

    move-result-wide v2

    sub-long v2, v8, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzcen;->zzaa(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcen;->zzdQ(Ljava/lang/String;)Lcom/google/android/gms/internal/zzceg;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcgl;->zzb(Lcom/google/android/gms/internal/zzceg;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_a

    :cond_12
    move-object v5, v3

    goto/16 :goto_7

    :cond_13
    move-object v7, v2

    goto/16 :goto_4

    :cond_14
    move-object v7, v3

    goto/16 :goto_2
.end method

.method final zzzd()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsR:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsR:I

    return-void
.end method

.method final zzze()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzkD()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsJ:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyB()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "This instance being marked as an uploader"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzkD()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzzf()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzyX()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsN:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcgl;->zza(Ljava/nio/channels/FileChannel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwu()Lcom/google/android/gms/internal/zzcfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfg;->zzyv()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgg;->zzjC()V

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "Panic: can\'t downgrade version. Previous, current version"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsJ:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcgl;->zzzc()V

    :cond_1
    return-void

    :cond_2
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgl;->zzbsN:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/zzcgl;->zza(ILjava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "Storage version upgraded. Previous, current version"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string/jumbo v3, "Storage version upgrade failed. Previous, current version"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/zzcfn;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
