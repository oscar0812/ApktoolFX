.class public Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;
.super Lorg/aspectj/internal/lang/reflect/PerClauseImpl;
.source "PointcutBasedPerClauseImpl.java"

# interfaces
.implements Lorg/aspectj/lang/reflect/PointcutBasedPerClause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl$1;
    }
.end annotation


# instance fields
.field private final pointcutExpression:Lorg/aspectj/lang/reflect/PointcutExpression;


# direct methods
.method public constructor <init>(Lorg/aspectj/lang/reflect/PerClauseKind;Ljava/lang/String;)V
    .locals 1
    .param p1, "kind"    # Lorg/aspectj/lang/reflect/PerClauseKind;
    .param p2, "pointcutExpression"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/aspectj/internal/lang/reflect/PerClauseImpl;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;)V

    .line 30
    new-instance v0, Lorg/aspectj/internal/lang/reflect/PointcutExpressionImpl;

    invoke-direct {v0, p2}, Lorg/aspectj/internal/lang/reflect/PointcutExpressionImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;->pointcutExpression:Lorg/aspectj/lang/reflect/PointcutExpression;

    .line 31
    return-void
.end method


# virtual methods
.method public getPointcutExpression()Lorg/aspectj/lang/reflect/PointcutExpression;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;->pointcutExpression:Lorg/aspectj/lang/reflect/PointcutExpression;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 39
    .local v0, "sb":Ljava/lang/StringBuffer;
    sget-object v1, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl$1;->$SwitchMap$org$aspectj$lang$reflect$PerClauseKind:[I

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;->getKind()Lorg/aspectj/lang/reflect/PerClauseKind;

    move-result-object v2

    invoke-virtual {v2}, Lorg/aspectj/lang/reflect/PerClauseKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 45
    :goto_0
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;->pointcutExpression:Lorg/aspectj/lang/reflect/PointcutExpression;

    invoke-interface {v1}, Lorg/aspectj/lang/reflect/PointcutExpression;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 40
    :pswitch_0
    const-string/jumbo v1, "percflow("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 41
    :pswitch_1
    const-string/jumbo v1, "percflowbelow("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 42
    :pswitch_2
    const-string/jumbo v1, "pertarget("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 43
    :pswitch_3
    const-string/jumbo v1, "perthis("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
