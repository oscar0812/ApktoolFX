.class Lcom/googlecode/mp4parser/util/IntHashMap$Entry;
.super Ljava/lang/Object;
.source "IntHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/util/IntHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field hash:I

.field key:I

.field next:Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

.field value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(IILjava/lang/Object;Lcom/googlecode/mp4parser/util/IntHashMap$Entry;)V
    .locals 0
    .param p1, "hash"    # I
    .param p2, "key"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "next"    # Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->hash:I

    .line 83
    iput p2, p0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->key:I

    .line 84
    iput-object p3, p0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 85
    iput-object p4, p0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->next:Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .line 86
    return-void
.end method
