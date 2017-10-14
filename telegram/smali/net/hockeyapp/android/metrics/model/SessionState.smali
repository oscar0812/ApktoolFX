.class public final enum Lnet/hockeyapp/android/metrics/model/SessionState;
.super Ljava/lang/Enum;
.source "SessionState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/hockeyapp/android/metrics/model/SessionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/hockeyapp/android/metrics/model/SessionState;

.field public static final enum END:Lnet/hockeyapp/android/metrics/model/SessionState;

.field public static final enum START:Lnet/hockeyapp/android/metrics/model/SessionState;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lnet/hockeyapp/android/metrics/model/SessionState;

    const-string/jumbo v1, "START"

    invoke-direct {v0, v1, v2, v2}, Lnet/hockeyapp/android/metrics/model/SessionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/hockeyapp/android/metrics/model/SessionState;->START:Lnet/hockeyapp/android/metrics/model/SessionState;

    new-instance v0, Lnet/hockeyapp/android/metrics/model/SessionState;

    const-string/jumbo v1, "END"

    invoke-direct {v0, v1, v3, v3}, Lnet/hockeyapp/android/metrics/model/SessionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/hockeyapp/android/metrics/model/SessionState;->END:Lnet/hockeyapp/android/metrics/model/SessionState;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lnet/hockeyapp/android/metrics/model/SessionState;

    sget-object v1, Lnet/hockeyapp/android/metrics/model/SessionState;->START:Lnet/hockeyapp/android/metrics/model/SessionState;

    aput-object v1, v0, v2

    sget-object v1, Lnet/hockeyapp/android/metrics/model/SessionState;->END:Lnet/hockeyapp/android/metrics/model/SessionState;

    aput-object v1, v0, v3

    sput-object v0, Lnet/hockeyapp/android/metrics/model/SessionState;->$VALUES:[Lnet/hockeyapp/android/metrics/model/SessionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lnet/hockeyapp/android/metrics/model/SessionState;->value:I

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/hockeyapp/android/metrics/model/SessionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lnet/hockeyapp/android/metrics/model/SessionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/metrics/model/SessionState;

    return-object v0
.end method

.method public static values()[Lnet/hockeyapp/android/metrics/model/SessionState;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lnet/hockeyapp/android/metrics/model/SessionState;->$VALUES:[Lnet/hockeyapp/android/metrics/model/SessionState;

    invoke-virtual {v0}, [Lnet/hockeyapp/android/metrics/model/SessionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/hockeyapp/android/metrics/model/SessionState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lnet/hockeyapp/android/metrics/model/SessionState;->value:I

    return v0
.end method
