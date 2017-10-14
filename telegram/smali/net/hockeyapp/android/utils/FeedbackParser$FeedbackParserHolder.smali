.class Lnet/hockeyapp/android/utils/FeedbackParser$FeedbackParserHolder;
.super Ljava/lang/Object;
.source "FeedbackParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/utils/FeedbackParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FeedbackParserHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/hockeyapp/android/utils/FeedbackParser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lnet/hockeyapp/android/utils/FeedbackParser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/hockeyapp/android/utils/FeedbackParser;-><init>(Lnet/hockeyapp/android/utils/FeedbackParser$1;)V

    sput-object v0, Lnet/hockeyapp/android/utils/FeedbackParser$FeedbackParserHolder;->INSTANCE:Lnet/hockeyapp/android/utils/FeedbackParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
