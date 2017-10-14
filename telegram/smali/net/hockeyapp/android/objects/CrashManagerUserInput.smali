.class public final enum Lnet/hockeyapp/android/objects/CrashManagerUserInput;
.super Ljava/lang/Enum;
.source "CrashManagerUserInput.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/hockeyapp/android/objects/CrashManagerUserInput;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/hockeyapp/android/objects/CrashManagerUserInput;

.field public static final enum CrashManagerUserInputAlwaysSend:Lnet/hockeyapp/android/objects/CrashManagerUserInput;

.field public static final enum CrashManagerUserInputDontSend:Lnet/hockeyapp/android/objects/CrashManagerUserInput;

.field public static final enum CrashManagerUserInputSend:Lnet/hockeyapp/android/objects/CrashManagerUserInput;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lnet/hockeyapp/android/objects/CrashManagerUserInput;

    const-string/jumbo v1, "CrashManagerUserInputDontSend"

    invoke-direct {v0, v1, v2, v2}, Lnet/hockeyapp/android/objects/CrashManagerUserInput;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/hockeyapp/android/objects/CrashManagerUserInput;->CrashManagerUserInputDontSend:Lnet/hockeyapp/android/objects/CrashManagerUserInput;

    .line 15
    new-instance v0, Lnet/hockeyapp/android/objects/CrashManagerUserInput;

    const-string/jumbo v1, "CrashManagerUserInputSend"

    invoke-direct {v0, v1, v3, v3}, Lnet/hockeyapp/android/objects/CrashManagerUserInput;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/hockeyapp/android/objects/CrashManagerUserInput;->CrashManagerUserInputSend:Lnet/hockeyapp/android/objects/CrashManagerUserInput;

    .line 19
    new-instance v0, Lnet/hockeyapp/android/objects/CrashManagerUserInput;

    const-string/jumbo v1, "CrashManagerUserInputAlwaysSend"

    invoke-direct {v0, v1, v4, v4}, Lnet/hockeyapp/android/objects/CrashManagerUserInput;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/hockeyapp/android/objects/CrashManagerUserInput;->CrashManagerUserInputAlwaysSend:Lnet/hockeyapp/android/objects/CrashManagerUserInput;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lnet/hockeyapp/android/objects/CrashManagerUserInput;

    sget-object v1, Lnet/hockeyapp/android/objects/CrashManagerUserInput;->CrashManagerUserInputDontSend:Lnet/hockeyapp/android/objects/CrashManagerUserInput;

    aput-object v1, v0, v2

    sget-object v1, Lnet/hockeyapp/android/objects/CrashManagerUserInput;->CrashManagerUserInputSend:Lnet/hockeyapp/android/objects/CrashManagerUserInput;

    aput-object v1, v0, v3

    sget-object v1, Lnet/hockeyapp/android/objects/CrashManagerUserInput;->CrashManagerUserInputAlwaysSend:Lnet/hockeyapp/android/objects/CrashManagerUserInput;

    aput-object v1, v0, v4

    sput-object v0, Lnet/hockeyapp/android/objects/CrashManagerUserInput;->$VALUES:[Lnet/hockeyapp/android/objects/CrashManagerUserInput;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lnet/hockeyapp/android/objects/CrashManagerUserInput;->mValue:I

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/hockeyapp/android/objects/CrashManagerUserInput;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lnet/hockeyapp/android/objects/CrashManagerUserInput;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/objects/CrashManagerUserInput;

    return-object v0
.end method

.method public static values()[Lnet/hockeyapp/android/objects/CrashManagerUserInput;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lnet/hockeyapp/android/objects/CrashManagerUserInput;->$VALUES:[Lnet/hockeyapp/android/objects/CrashManagerUserInput;

    invoke-virtual {v0}, [Lnet/hockeyapp/android/objects/CrashManagerUserInput;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/hockeyapp/android/objects/CrashManagerUserInput;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lnet/hockeyapp/android/objects/CrashManagerUserInput;->mValue:I

    return v0
.end method
