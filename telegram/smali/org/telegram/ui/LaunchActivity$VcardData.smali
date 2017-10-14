.class Lorg/telegram/ui/LaunchActivity$VcardData;
.super Ljava/lang/Object;
.source "LaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VcardData"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field phones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/LaunchActivity;)V
    .locals 1

    .prologue
    .line 654
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$VcardData;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LaunchActivity$VcardData;->phones:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/LaunchActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p2, "x1"    # Lorg/telegram/ui/LaunchActivity$1;

    .prologue
    .line 654
    invoke-direct {p0, p1}, Lorg/telegram/ui/LaunchActivity$VcardData;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    return-void
.end method
