.class Lnet/hockeyapp/android/utils/VersionHelper$1;
.super Ljava/lang/Object;
.source "VersionHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/utils/VersionHelper;->sortVersions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/utils/VersionHelper;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/utils/VersionHelper;)V
    .locals 0
    .param p1, "this$0"    # Lnet/hockeyapp/android/utils/VersionHelper;

    .prologue
    .line 72
    iput-object p1, p0, Lnet/hockeyapp/android/utils/VersionHelper$1;->this$0:Lnet/hockeyapp/android/utils/VersionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 72
    check-cast p1, Lorg/json/JSONObject;

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lnet/hockeyapp/android/utils/VersionHelper$1;->compare(Lorg/json/JSONObject;Lorg/json/JSONObject;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/json/JSONObject;Lorg/json/JSONObject;)I
    .locals 3
    .param p1, "object1"    # Lorg/json/JSONObject;
    .param p2, "object2"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 75
    :try_start_0
    const-string/jumbo v0, "version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "version"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-le v0, v1, :cond_0

    .line 82
    :cond_0
    :goto_0
    return v2

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0

    .line 78
    :catch_1
    move-exception v0

    goto :goto_0
.end method
