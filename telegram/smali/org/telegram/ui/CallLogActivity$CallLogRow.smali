.class Lorg/telegram/ui/CallLogActivity$CallLogRow;
.super Ljava/lang/Object;
.source "CallLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CallLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallLogRow"
.end annotation


# instance fields
.field public calls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/CallLogActivity;

.field public type:I

.field public user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/CallLogActivity;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$CallLogRow;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/ui/CallLogActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/ui/CallLogActivity;
    .param p2, "x1"    # Lorg/telegram/ui/CallLogActivity$1;

    .prologue
    .line 593
    invoke-direct {p0, p1}, Lorg/telegram/ui/CallLogActivity$CallLogRow;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    return-void
.end method
