.class Lorg/telegram/ui/DocumentSelectActivity$ListItem;
.super Ljava/lang/Object;
.source "DocumentSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DocumentSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItem"
.end annotation


# instance fields
.field date:J

.field ext:Ljava/lang/String;

.field file:Ljava/io/File;

.field icon:I

.field subtitle:Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/ui/DocumentSelectActivity;

.field thumb:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/DocumentSelectActivity;)V
    .locals 1

    .prologue
    .line 86
    iput-object p1, p0, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->ext:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;
    .param p2, "x1"    # Lorg/telegram/ui/DocumentSelectActivity$1;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lorg/telegram/ui/DocumentSelectActivity$ListItem;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    return-void
.end method
