.class Lnet/hockeyapp/android/objects/FeedbackAttachment$1;
.super Ljava/lang/Object;
.source "FeedbackAttachment.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/objects/FeedbackAttachment;->isAvailableInCache()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/objects/FeedbackAttachment;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/objects/FeedbackAttachment;)V
    .locals 0
    .param p1, "this$0"    # Lnet/hockeyapp/android/objects/FeedbackAttachment;

    .prologue
    .line 91
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackAttachment$1;->this$0:Lnet/hockeyapp/android/objects/FeedbackAttachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackAttachment$1;->this$0:Lnet/hockeyapp/android/objects/FeedbackAttachment;

    invoke-virtual {v0}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->getCacheId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
