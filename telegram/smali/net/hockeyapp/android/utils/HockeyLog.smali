.class public Lnet/hockeyapp/android/utils/HockeyLog;
.super Ljava/lang/Object;
.source "HockeyLog.java"


# static fields
.field public static final HOCKEY_TAG:Ljava/lang/String; = "HockeyApp"

.field private static sLogLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x6

    sput v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 103
    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 104
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 126
    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 127
    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 128
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 240
    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 241
    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 242
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 264
    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 265
    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 266
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    return v0
.end method

.method public static info(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 149
    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 150
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 172
    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 173
    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 174
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 161
    invoke-static {p0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    return-void
.end method

.method static sanitizeTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 278
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-le v0, v1, :cond_1

    .line 279
    :cond_0
    const-string/jumbo p0, "HockeyApp"

    .line 282
    :cond_1
    return-object p0
.end method

.method public static setLogLevel(I)V
    .locals 0
    .param p0, "hockeyLogLevel"    # I

    .prologue
    .line 36
    sput p0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    .line 37
    return-void
.end method

.method public static verbose(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 57
    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 58
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 80
    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 81
    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 82
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    :cond_0
    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 195
    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 196
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 218
    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->sanitizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 219
    sget v0, Lnet/hockeyapp/android/utils/HockeyLog;->sLogLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 220
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    return-void
.end method
