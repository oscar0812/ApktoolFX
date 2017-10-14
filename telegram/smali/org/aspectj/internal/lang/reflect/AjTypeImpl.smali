.class public Lorg/aspectj/internal/lang/reflect/AjTypeImpl;
.super Ljava/lang/Object;
.source "AjTypeImpl.java"

# interfaces
.implements Lorg/aspectj/lang/reflect/AjType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/aspectj/lang/reflect/AjType",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final ajcMagic:Ljava/lang/String; = "ajc$"


# instance fields
.field private advice:[Lorg/aspectj/lang/reflect/Advice;

.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private declaredAdvice:[Lorg/aspectj/lang/reflect/Advice;

.field private declaredITDCons:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

.field private declaredITDFields:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

.field private declaredITDMethods:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

.field private declaredPointcuts:[Lorg/aspectj/lang/reflect/Pointcut;

.field private itdCons:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

.field private itdFields:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

.field private itdMethods:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

.field private pointcuts:[Lorg/aspectj/lang/reflect/Pointcut;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    .local p1, "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredPointcuts:[Lorg/aspectj/lang/reflect/Pointcut;

    .line 71
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->pointcuts:[Lorg/aspectj/lang/reflect/Pointcut;

    .line 72
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredAdvice:[Lorg/aspectj/lang/reflect/Advice;

    .line 73
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->advice:[Lorg/aspectj/lang/reflect/Advice;

    .line 74
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDMethods:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    .line 75
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdMethods:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    .line 76
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDFields:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    .line 77
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdFields:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    .line 78
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdCons:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    .line 79
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDCons:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    .line 82
    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    .line 83
    return-void
.end method

.method private addAnnotationStyleDeclareParents(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/aspectj/lang/reflect/DeclareParents;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 956
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    .local p1, "toList":Ljava/util/List;, "Ljava/util/List<Lorg/aspectj/lang/reflect/DeclareParents;>;"
    iget-object v7, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v3, v1, v4

    .line 957
    .local v3, "f":Ljava/lang/reflect/Field;
    const-class v7, Lorg/aspectj/lang/annotation/DeclareParents;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 958
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isInterface()Z

    move-result v7

    if-nez v7, :cond_1

    .line 956
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 959
    :cond_1
    const-class v7, Lorg/aspectj/lang/annotation/DeclareParents;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/DeclareParents;

    .line 960
    .local v0, "ann":Lorg/aspectj/lang/annotation/DeclareParents;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 961
    .local v6, "parentType":Ljava/lang/String;
    new-instance v2, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/DeclareParents;->value()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v2, v7, v6, v8, p0}, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/aspectj/lang/reflect/AjType;)V

    .line 967
    .local v2, "decp":Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 970
    .end local v0    # "ann":Lorg/aspectj/lang/annotation/DeclareParents;
    .end local v2    # "decp":Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v6    # "parentType":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private addAnnotationStyleITDFields(Ljava/util/List;Z)V
    .locals 0
    .param p2, "publicOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 685
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    .local p1, "toList":Ljava/util/List;, "Ljava/util/List<Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;>;"
    return-void
.end method

.method private addAnnotationStyleITDMethods(Ljava/util/List;Z)V
    .locals 13
    .param p2, "publicOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 662
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    .local p1, "toList":Ljava/util/List;, "Ljava/util/List<Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;>;"
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->isAspect()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 663
    iget-object v11, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v9, v0

    .local v9, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v6, v5

    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v5    # "i$":I
    .end local v9    # "len$":I
    .local v6, "i$":I
    :goto_0
    if-ge v6, v9, :cond_3

    aget-object v4, v0, v6

    .line 664
    .local v4, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->isInterface()Z

    move-result v11

    if-nez v11, :cond_1

    .line 663
    .end local v6    # "i$":I
    :cond_0
    add-int/lit8 v5, v6, 0x1

    .restart local v5    # "i$":I
    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_0

    .line 665
    :cond_1
    const-class v11, Lorg/aspectj/lang/annotation/DeclareParents;

    invoke-virtual {v4, v11}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 666
    const-class v3, Lorg/aspectj/lang/annotation/DeclareParents;

    .line 667
    .local v3, "decPAnnClass":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/aspectj/lang/annotation/DeclareParents;>;"
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lorg/aspectj/lang/annotation/DeclareParents;

    .line 668
    .local v2, "decPAnn":Lorg/aspectj/lang/annotation/DeclareParents;
    invoke-interface {v2}, Lorg/aspectj/lang/annotation/DeclareParents;->defaultImpl()Ljava/lang/Class;

    move-result-object v11

    if-eq v11, v3, :cond_0

    .line 669
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Method;
    array-length v10, v1

    .local v10, "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    :goto_1
    if-ge v5, v10, :cond_0

    aget-object v7, v1, v5

    .line 670
    .local v7, "itdM":Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v11

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v11

    if-nez v11, :cond_2

    if-eqz p2, :cond_2

    .line 669
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 671
    :cond_2
    new-instance v8, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v11}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct {v8, p0, v11, v7, v12}, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Lorg/aspectj/lang/reflect/AjType;Ljava/lang/reflect/Method;I)V

    .line 675
    .local v8, "itdm":Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 680
    .end local v1    # "arr$":[Ljava/lang/reflect/Method;
    .end local v2    # "decPAnn":Lorg/aspectj/lang/annotation/DeclareParents;
    .end local v3    # "decPAnnClass":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/aspectj/lang/annotation/DeclareParents;>;"
    .end local v4    # "f":Ljava/lang/reflect/Field;
    .end local v5    # "i$":I
    .end local v7    # "itdM":Ljava/lang/reflect/Method;
    .end local v8    # "itdm":Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    .end local v10    # "len$":I
    :cond_3
    return-void
.end method

.method private asAdvice(Ljava/lang/reflect/Method;)Lorg/aspectj/lang/reflect/Advice;
    .locals 9
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    const/4 v6, 0x0

    .line 533
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-object v6

    .line 534
    :cond_1
    const-class v7, Lorg/aspectj/lang/annotation/Before;

    invoke-virtual {p1, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lorg/aspectj/lang/annotation/Before;

    .line 535
    .local v4, "beforeAnn":Lorg/aspectj/lang/annotation/Before;
    if-eqz v4, :cond_2

    new-instance v6, Lorg/aspectj/internal/lang/reflect/AdviceImpl;

    invoke-interface {v4}, Lorg/aspectj/lang/annotation/Before;->value()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lorg/aspectj/lang/reflect/AdviceKind;->BEFORE:Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-direct {v6, p1, v7, v8}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;)V

    goto :goto_0

    .line 536
    :cond_2
    const-class v7, Lorg/aspectj/lang/annotation/After;

    invoke-virtual {p1, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/After;

    .line 537
    .local v0, "afterAnn":Lorg/aspectj/lang/annotation/After;
    if-eqz v0, :cond_3

    new-instance v6, Lorg/aspectj/internal/lang/reflect/AdviceImpl;

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/After;->value()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lorg/aspectj/lang/reflect/AdviceKind;->AFTER:Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-direct {v6, p1, v7, v8}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;)V

    goto :goto_0

    .line 538
    :cond_3
    const-class v7, Lorg/aspectj/lang/annotation/AfterReturning;

    invoke-virtual {p1, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/aspectj/lang/annotation/AfterReturning;

    .line 539
    .local v1, "afterReturningAnn":Lorg/aspectj/lang/annotation/AfterReturning;
    if-eqz v1, :cond_5

    .line 540
    invoke-interface {v1}, Lorg/aspectj/lang/annotation/AfterReturning;->pointcut()Ljava/lang/String;

    move-result-object v5

    .line 541
    .local v5, "pcExpr":Ljava/lang/String;
    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Lorg/aspectj/lang/annotation/AfterReturning;->value()Ljava/lang/String;

    move-result-object v5

    .line 542
    :cond_4
    new-instance v6, Lorg/aspectj/internal/lang/reflect/AdviceImpl;

    sget-object v7, Lorg/aspectj/lang/reflect/AdviceKind;->AFTER_RETURNING:Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-interface {v1}, Lorg/aspectj/lang/annotation/AfterReturning;->returning()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p1, v5, v7, v8}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;Ljava/lang/String;)V

    goto :goto_0

    .line 544
    .end local v5    # "pcExpr":Ljava/lang/String;
    :cond_5
    const-class v7, Lorg/aspectj/lang/annotation/AfterThrowing;

    invoke-virtual {p1, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lorg/aspectj/lang/annotation/AfterThrowing;

    .line 545
    .local v2, "afterThrowingAnn":Lorg/aspectj/lang/annotation/AfterThrowing;
    if-eqz v2, :cond_7

    .line 546
    invoke-interface {v2}, Lorg/aspectj/lang/annotation/AfterThrowing;->pointcut()Ljava/lang/String;

    move-result-object v5

    .line 547
    .restart local v5    # "pcExpr":Ljava/lang/String;
    if-nez v5, :cond_6

    invoke-interface {v2}, Lorg/aspectj/lang/annotation/AfterThrowing;->value()Ljava/lang/String;

    move-result-object v5

    .line 548
    :cond_6
    new-instance v6, Lorg/aspectj/internal/lang/reflect/AdviceImpl;

    sget-object v7, Lorg/aspectj/lang/reflect/AdviceKind;->AFTER_THROWING:Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-interface {v2}, Lorg/aspectj/lang/annotation/AfterThrowing;->throwing()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p1, v5, v7, v8}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;Ljava/lang/String;)V

    goto :goto_0

    .line 550
    .end local v5    # "pcExpr":Ljava/lang/String;
    :cond_7
    const-class v7, Lorg/aspectj/lang/annotation/Around;

    invoke-virtual {p1, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lorg/aspectj/lang/annotation/Around;

    .line 551
    .local v3, "aroundAnn":Lorg/aspectj/lang/annotation/Around;
    if-eqz v3, :cond_0

    new-instance v6, Lorg/aspectj/internal/lang/reflect/AdviceImpl;

    invoke-interface {v3}, Lorg/aspectj/lang/annotation/Around;->value()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lorg/aspectj/lang/reflect/AdviceKind;->AROUND:Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-direct {v6, p1, v7, v8}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;)V

    goto/16 :goto_0
.end method

.method private asPointcut(Ljava/lang/reflect/Method;)Lorg/aspectj/lang/reflect/Pointcut;
    .locals 9
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 424
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    const-class v0, Lorg/aspectj/lang/annotation/Pointcut;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lorg/aspectj/lang/annotation/Pointcut;

    .line 425
    .local v8, "pcAnn":Lorg/aspectj/lang/annotation/Pointcut;
    if-eqz v8, :cond_1

    .line 426
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v0, "ajc$"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    const-string/jumbo v0, "$$"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 430
    .local v6, "nameStart":I
    add-int/lit8 v0, v6, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 431
    const-string/jumbo v0, "$"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 432
    .local v7, "nextDollar":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 434
    .end local v6    # "nameStart":I
    .end local v7    # "nextDollar":I
    :cond_0
    new-instance v0, Lorg/aspectj/internal/lang/reflect/PointcutImpl;

    invoke-interface {v8}, Lorg/aspectj/lang/annotation/Pointcut;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v4

    invoke-interface {v8}, Lorg/aspectj/lang/annotation/Pointcut;->argNames()Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/aspectj/internal/lang/reflect/PointcutImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;)V

    .line 436
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAdvice(Ljava/util/Set;)[Lorg/aspectj/lang/reflect/Advice;
    .locals 7
    .param p1, "ofAdviceTypes"    # Ljava/util/Set;

    .prologue
    .line 492
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v6, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->advice:[Lorg/aspectj/lang/reflect/Advice;

    if-nez v6, :cond_0

    invoke-direct {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->initAdvice()V

    .line 493
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 494
    .local v1, "adviceList":Ljava/util/List;, "Ljava/util/List<Lorg/aspectj/lang/reflect/Advice;>;"
    iget-object v2, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->advice:[Lorg/aspectj/lang/reflect/Advice;

    .local v2, "arr$":[Lorg/aspectj/lang/reflect/Advice;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 495
    .local v0, "a":Lorg/aspectj/lang/reflect/Advice;
    invoke-interface {v0}, Lorg/aspectj/lang/reflect/Advice;->getKind()Lorg/aspectj/lang/reflect/AdviceKind;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 497
    .end local v0    # "a":Lorg/aspectj/lang/reflect/Advice;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [Lorg/aspectj/lang/reflect/Advice;

    .line 498
    .local v5, "ret":[Lorg/aspectj/lang/reflect/Advice;
    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 499
    return-object v5
.end method

.method private getDeclaredAdvice(Ljava/util/Set;)[Lorg/aspectj/lang/reflect/Advice;
    .locals 7
    .param p1, "ofAdviceTypes"    # Ljava/util/Set;

    .prologue
    .line 467
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v6, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredAdvice:[Lorg/aspectj/lang/reflect/Advice;

    if-nez v6, :cond_0

    invoke-direct {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->initDeclaredAdvice()V

    .line 468
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v1, "adviceList":Ljava/util/List;, "Ljava/util/List<Lorg/aspectj/lang/reflect/Advice;>;"
    iget-object v2, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredAdvice:[Lorg/aspectj/lang/reflect/Advice;

    .local v2, "arr$":[Lorg/aspectj/lang/reflect/Advice;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 470
    .local v0, "a":Lorg/aspectj/lang/reflect/Advice;
    invoke-interface {v0}, Lorg/aspectj/lang/reflect/Advice;->getKind()Lorg/aspectj/lang/reflect/AdviceKind;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 472
    .end local v0    # "a":Lorg/aspectj/lang/reflect/Advice;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [Lorg/aspectj/lang/reflect/Advice;

    .line 473
    .local v5, "ret":[Lorg/aspectj/lang/reflect/Advice;
    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 474
    return-object v5
.end method

.method private initAdvice()V
    .locals 8

    .prologue
    .line 503
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v7, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 504
    .local v6, "methods":[Ljava/lang/reflect/Method;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .local v1, "adviceList":Ljava/util/List;, "Ljava/util/List<Lorg/aspectj/lang/reflect/Advice;>;"
    move-object v2, v6

    .local v2, "arr$":[Ljava/lang/reflect/Method;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v2, v3

    .line 506
    .local v5, "method":Ljava/lang/reflect/Method;
    invoke-direct {p0, v5}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->asAdvice(Ljava/lang/reflect/Method;)Lorg/aspectj/lang/reflect/Advice;

    move-result-object v0

    .line 507
    .local v0, "advice":Lorg/aspectj/lang/reflect/Advice;
    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 509
    .end local v0    # "advice":Lorg/aspectj/lang/reflect/Advice;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lorg/aspectj/lang/reflect/Advice;

    iput-object v7, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->advice:[Lorg/aspectj/lang/reflect/Advice;

    .line 510
    iget-object v7, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->advice:[Lorg/aspectj/lang/reflect/Advice;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 511
    return-void
.end method

.method private initDeclaredAdvice()V
    .locals 8

    .prologue
    .line 478
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v7, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 479
    .local v6, "methods":[Ljava/lang/reflect/Method;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v1, "adviceList":Ljava/util/List;, "Ljava/util/List<Lorg/aspectj/lang/reflect/Advice;>;"
    move-object v2, v6

    .local v2, "arr$":[Ljava/lang/reflect/Method;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v2, v3

    .line 481
    .local v5, "method":Ljava/lang/reflect/Method;
    invoke-direct {p0, v5}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->asAdvice(Ljava/lang/reflect/Method;)Lorg/aspectj/lang/reflect/Advice;

    move-result-object v0

    .line 482
    .local v0, "advice":Lorg/aspectj/lang/reflect/Advice;
    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 484
    .end local v0    # "advice":Lorg/aspectj/lang/reflect/Advice;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lorg/aspectj/lang/reflect/Advice;

    iput-object v7, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredAdvice:[Lorg/aspectj/lang/reflect/Advice;

    .line 485
    iget-object v7, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredAdvice:[Lorg/aspectj/lang/reflect/Advice;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 486
    return-void
.end method

.method private isReallyAMethod(Ljava/lang/reflect/Method;)Z
    .locals 4
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 358
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ajc$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 366
    :cond_0
    :goto_0
    return v0

    .line 359
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 360
    :cond_2
    const-class v2, Lorg/aspectj/lang/annotation/Pointcut;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 361
    const-class v2, Lorg/aspectj/lang/annotation/Before;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 362
    const-class v2, Lorg/aspectj/lang/annotation/After;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 363
    const-class v2, Lorg/aspectj/lang/annotation/AfterReturning;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 364
    const-class v2, Lorg/aspectj/lang/annotation/AfterThrowing;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 365
    const-class v2, Lorg/aspectj/lang/annotation/Around;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 366
    goto :goto_0
.end method

.method private toAjTypeArray([Ljava/lang/Class;)[Lorg/aspectj/lang/reflect/AjType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1162
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, p1

    new-array v0, v2, [Lorg/aspectj/lang/reflect/AjType;

    .line 1163
    .local v0, "ajtypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1164
    aget-object v2, p1, v1

    invoke-static {v2}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1166
    :cond_0
    return-object v0
.end method

.method private toClassArray([Lorg/aspectj/lang/reflect/AjType;)[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1170
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    .local p1, "ajTypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    array-length v2, p1

    new-array v0, v2, [Ljava/lang/Class;

    .line 1171
    .local v0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1172
    aget-object v2, p1, v1

    invoke-interface {v2}, Lorg/aspectj/lang/reflect/AjType;->getJavaClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1174
    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1151
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    instance-of v1, p1, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1153
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 1152
    check-cast v0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;

    .line 1153
    .local v0, "other":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;
    iget-object v1, v0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    iget-object v2, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAdvice(Ljava/lang/String;)Lorg/aspectj/lang/reflect/Advice;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/aspectj/lang/reflect/NoSuchAdviceException;
        }
    .end annotation

    .prologue
    .line 515
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    const-string/jumbo v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "use getAdvice(AdviceType...) instead for un-named advice"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 516
    :cond_0
    iget-object v4, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->advice:[Lorg/aspectj/lang/reflect/Advice;

    if-nez v4, :cond_1

    invoke-direct {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->initAdvice()V

    .line 517
    :cond_1
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->advice:[Lorg/aspectj/lang/reflect/Advice;

    .local v1, "arr$":[Lorg/aspectj/lang/reflect/Advice;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .line 518
    .local v0, "a":Lorg/aspectj/lang/reflect/Advice;
    invoke-interface {v0}, Lorg/aspectj/lang/reflect/Advice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v0

    .line 517
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 520
    .end local v0    # "a":Lorg/aspectj/lang/reflect/Advice;
    :cond_3
    new-instance v4, Lorg/aspectj/lang/reflect/NoSuchAdviceException;

    invoke-direct {v4, p1}, Lorg/aspectj/lang/reflect/NoSuchAdviceException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public varargs getAdvice([Lorg/aspectj/lang/reflect/AdviceKind;)[Lorg/aspectj/lang/reflect/Advice;
    .locals 2
    .param p1, "ofType"    # [Lorg/aspectj/lang/reflect/AdviceKind;

    .prologue
    .line 454
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    array-length v1, p1

    if-nez v1, :cond_0

    .line 455
    const-class v1, Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 460
    .local v0, "types":Ljava/util/Set;, "Ljava/util/Set<Lorg/aspectj/lang/reflect/AdviceKind;>;"
    :goto_0
    invoke-direct {p0, v0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getAdvice(Ljava/util/Set;)[Lorg/aspectj/lang/reflect/Advice;

    move-result-object v1

    return-object v1

    .line 457
    .end local v0    # "types":Ljava/util/Set;, "Ljava/util/Set<Lorg/aspectj/lang/reflect/AdviceKind;>;"
    :cond_0
    const-class v1, Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 458
    .restart local v0    # "types":Ljava/util/Set;, "Ljava/util/Set<Lorg/aspectj/lang/reflect/AdviceKind;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getAjTypes()[Lorg/aspectj/lang/reflect/AjType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 220
    .local v0, "classes":[Ljava/lang/Class;
    invoke-direct {p0, v0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->toAjTypeArray([Ljava/lang/Class;)[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v1

    return-object v1
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 205
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public varargs getConstructor([Lorg/aspectj/lang/reflect/AjType;)Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Ljava/lang/reflect/Constructor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    .local p1, "parameterTypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-direct {p0, p1}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->toClassArray([Lorg/aspectj/lang/reflect/AjType;)[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getConstructors()[Ljava/lang/reflect/Constructor;
    .locals 1

    .prologue
    .line 242
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getDeclareAnnotations()[Lorg/aspectj/lang/reflect/DeclareAnnotation;
    .locals 19

    .prologue
    .line 1000
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1001
    .local v12, "decAs":Ljava/util/List;, "Ljava/util/List<Lorg/aspectj/lang/reflect/DeclareAnnotation;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    .local v9, "arr$":[Ljava/lang/reflect/Method;
    array-length v15, v9

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    move v14, v13

    .end local v9    # "arr$":[Ljava/lang/reflect/Method;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .local v14, "i$":I
    :goto_0
    if-ge v14, v15, :cond_3

    aget-object v17, v9, v14

    .line 1002
    .local v17, "method":Ljava/lang/reflect/Method;
    const-class v2, Lorg/aspectj/internal/lang/annotation/ajcDeclareAnnotation;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1003
    const-class v2, Lorg/aspectj/internal/lang/annotation/ajcDeclareAnnotation;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lorg/aspectj/internal/lang/annotation/ajcDeclareAnnotation;

    .line 1005
    .local v11, "decAnn":Lorg/aspectj/internal/lang/annotation/ajcDeclareAnnotation;
    const/4 v5, 0x0

    .line 1006
    .local v5, "targetAnnotation":Ljava/lang/annotation/Annotation;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v8

    .line 1007
    .local v8, "anns":[Ljava/lang/annotation/Annotation;
    move-object v10, v8

    .local v10, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v0, v10

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v13, 0x0

    .end local v14    # "i$":I
    .restart local v13    # "i$":I
    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_0

    aget-object v7, v10, v13

    .line 1008
    .local v7, "ann":Ljava/lang/annotation/Annotation;
    invoke-interface {v7}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/aspectj/internal/lang/annotation/ajcDeclareAnnotation;

    if-eq v2, v3, :cond_2

    .line 1010
    move-object v5, v7

    .line 1014
    .end local v7    # "ann":Ljava/lang/annotation/Annotation;
    :cond_0
    new-instance v1, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;

    invoke-interface {v11}, Lorg/aspectj/internal/lang/annotation/ajcDeclareAnnotation;->kind()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11}, Lorg/aspectj/internal/lang/annotation/ajcDeclareAnnotation;->pattern()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11}, Lorg/aspectj/internal/lang/annotation/ajcDeclareAnnotation;->annotation()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/annotation/Annotation;Ljava/lang/String;)V

    .line 1021
    .local v1, "da":Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    .end local v1    # "da":Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;
    .end local v5    # "targetAnnotation":Ljava/lang/annotation/Annotation;
    .end local v8    # "anns":[Ljava/lang/annotation/Annotation;
    .end local v10    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v11    # "decAnn":Lorg/aspectj/internal/lang/annotation/ajcDeclareAnnotation;
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    :cond_1
    add-int/lit8 v13, v14, 0x1

    .restart local v13    # "i$":I
    move v14, v13

    .end local v13    # "i$":I
    .restart local v14    # "i$":I
    goto :goto_0

    .line 1007
    .end local v14    # "i$":I
    .restart local v5    # "targetAnnotation":Ljava/lang/annotation/Annotation;
    .restart local v7    # "ann":Ljava/lang/annotation/Annotation;
    .restart local v8    # "anns":[Ljava/lang/annotation/Annotation;
    .restart local v10    # "arr$":[Ljava/lang/annotation/Annotation;
    .restart local v11    # "decAnn":Lorg/aspectj/internal/lang/annotation/ajcDeclareAnnotation;
    .restart local v13    # "i$":I
    .restart local v16    # "len$":I
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1024
    .end local v5    # "targetAnnotation":Ljava/lang/annotation/Annotation;
    .end local v7    # "ann":Ljava/lang/annotation/Annotation;
    .end local v8    # "anns":[Ljava/lang/annotation/Annotation;
    .end local v10    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v11    # "decAnn":Lorg/aspectj/internal/lang/annotation/ajcDeclareAnnotation;
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    .end local v17    # "method":Ljava/lang/reflect/Method;
    .restart local v14    # "i$":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v2

    invoke-interface {v2}, Lorg/aspectj/lang/reflect/AjType;->isAspect()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1025
    invoke-virtual/range {p0 .. p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v2

    invoke-interface {v2}, Lorg/aspectj/lang/reflect/AjType;->getDeclareAnnotations()[Lorg/aspectj/lang/reflect/DeclareAnnotation;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1027
    :cond_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Lorg/aspectj/lang/reflect/DeclareAnnotation;

    move-object/from16 v18, v0

    .line 1028
    .local v18, "ret":[Lorg/aspectj/lang/reflect/DeclareAnnotation;
    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1029
    return-object v18
.end method

.method public getDeclareErrorOrWarnings()[Lorg/aspectj/lang/reflect/DeclareErrorOrWarning;
    .locals 15

    .prologue
    .line 893
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 894
    .local v4, "deows":Ljava/util/List;, "Ljava/util/List<Lorg/aspectj/lang/reflect/DeclareErrorOrWarning;>;"
    iget-object v12, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v6, v0, v7

    .line 896
    .local v6, "field":Ljava/lang/reflect/Field;
    :try_start_0
    const-class v12, Lorg/aspectj/lang/annotation/DeclareWarning;

    invoke-virtual {v6, v12}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 897
    const-class v12, Lorg/aspectj/lang/annotation/DeclareWarning;

    invoke-virtual {v6, v12}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lorg/aspectj/lang/annotation/DeclareWarning;

    .line 898
    .local v5, "dw":Lorg/aspectj/lang/annotation/DeclareWarning;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 899
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 900
    .local v9, "message":Ljava/lang/String;
    new-instance v2, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;

    invoke-interface {v5}, Lorg/aspectj/lang/annotation/DeclareWarning;->value()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v2, v12, v9, v13, p0}, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/aspectj/lang/reflect/AjType;)V

    .line 901
    .local v2, "deow":Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    .end local v2    # "deow":Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;
    .end local v5    # "dw":Lorg/aspectj/lang/annotation/DeclareWarning;
    .end local v9    # "message":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 903
    :cond_1
    const-class v12, Lorg/aspectj/lang/annotation/DeclareError;

    invoke-virtual {v6, v12}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 904
    const-class v12, Lorg/aspectj/lang/annotation/DeclareError;

    invoke-virtual {v6, v12}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/aspectj/lang/annotation/DeclareError;

    .line 905
    .local v1, "de":Lorg/aspectj/lang/annotation/DeclareError;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 906
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 907
    .restart local v9    # "message":Ljava/lang/String;
    new-instance v2, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;

    invoke-interface {v1}, Lorg/aspectj/lang/annotation/DeclareError;->value()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-direct {v2, v12, v9, v13, p0}, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/aspectj/lang/reflect/AjType;)V

    .line 908
    .restart local v2    # "deow":Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 911
    .end local v1    # "de":Lorg/aspectj/lang/annotation/DeclareError;
    .end local v2    # "deow":Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;
    .end local v9    # "message":Ljava/lang/String;
    :catch_0
    move-exception v12

    goto :goto_1

    .line 917
    .end local v6    # "field":Ljava/lang/reflect/Field;
    :cond_2
    iget-object v12, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v8, v0

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v8, :cond_4

    aget-object v10, v0, v7

    .line 918
    .local v10, "method":Ljava/lang/reflect/Method;
    const-class v12, Lorg/aspectj/internal/lang/annotation/ajcDeclareEoW;

    invoke-virtual {v10, v12}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 919
    const-class v12, Lorg/aspectj/internal/lang/annotation/ajcDeclareEoW;

    invoke-virtual {v10, v12}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lorg/aspectj/internal/lang/annotation/ajcDeclareEoW;

    .line 920
    .local v3, "deowAnn":Lorg/aspectj/internal/lang/annotation/ajcDeclareEoW;
    new-instance v2, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;

    invoke-interface {v3}, Lorg/aspectj/internal/lang/annotation/ajcDeclareEoW;->pointcut()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3}, Lorg/aspectj/internal/lang/annotation/ajcDeclareEoW;->message()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3}, Lorg/aspectj/internal/lang/annotation/ajcDeclareEoW;->isError()Z

    move-result v14

    invoke-direct {v2, v12, v13, v14, p0}, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/aspectj/lang/reflect/AjType;)V

    .line 921
    .local v2, "deow":Lorg/aspectj/lang/reflect/DeclareErrorOrWarning;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    .end local v2    # "deow":Lorg/aspectj/lang/reflect/DeclareErrorOrWarning;
    .end local v3    # "deowAnn":Lorg/aspectj/internal/lang/annotation/ajcDeclareEoW;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 924
    .end local v10    # "method":Ljava/lang/reflect/Method;
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    new-array v11, v12, [Lorg/aspectj/lang/reflect/DeclareErrorOrWarning;

    .line 925
    .local v11, "ret":[Lorg/aspectj/lang/reflect/DeclareErrorOrWarning;
    invoke-interface {v4, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 926
    return-object v11

    .line 913
    .end local v11    # "ret":[Lorg/aspectj/lang/reflect/DeclareErrorOrWarning;
    .local v0, "arr$":[Ljava/lang/reflect/Field;
    .restart local v6    # "field":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v12

    goto :goto_1
.end method

.method public getDeclareParents()[Lorg/aspectj/lang/reflect/DeclareParents;
    .locals 11

    .prologue
    .line 933
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 934
    .local v3, "decps":Ljava/util/List;, "Ljava/util/List<Lorg/aspectj/lang/reflect/DeclareParents;>;"
    iget-object v8, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v0, v4

    .line 935
    .local v6, "method":Ljava/lang/reflect/Method;
    const-class v8, Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 936
    const-class v8, Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;

    .line 937
    .local v1, "decPAnn":Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;
    new-instance v2, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;->targetTypePattern()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;->parentTypes()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;->isExtends()Z

    move-result v10

    invoke-direct {v2, v8, v9, v10, p0}, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/aspectj/lang/reflect/AjType;)V

    .line 943
    .local v2, "decp":Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    .end local v1    # "decPAnn":Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;
    .end local v2    # "decp":Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 946
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :cond_1
    invoke-direct {p0, v3}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->addAnnotationStyleDeclareParents(Ljava/util/List;)V

    .line 947
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v8

    invoke-interface {v8}, Lorg/aspectj/lang/reflect/AjType;->isAspect()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 948
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v8

    invoke-interface {v8}, Lorg/aspectj/lang/reflect/AjType;->getDeclareParents()[Lorg/aspectj/lang/reflect/DeclareParents;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 950
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    new-array v7, v8, [Lorg/aspectj/lang/reflect/DeclareParents;

    .line 951
    .local v7, "ret":[Lorg/aspectj/lang/reflect/DeclareParents;
    invoke-interface {v3, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 952
    return-object v7
.end method

.method public getDeclarePrecedence()[Lorg/aspectj/lang/reflect/DeclarePrecedence;
    .locals 11

    .prologue
    .line 1036
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1039
    .local v4, "decps":Ljava/util/List;, "Ljava/util/List<Lorg/aspectj/lang/reflect/DeclarePrecedence;>;"
    iget-object v9, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    const-class v10, Lorg/aspectj/lang/annotation/DeclarePrecedence;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1040
    iget-object v9, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    const-class v10, Lorg/aspectj/lang/annotation/DeclarePrecedence;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/DeclarePrecedence;

    .line 1042
    .local v0, "ann":Lorg/aspectj/lang/annotation/DeclarePrecedence;
    new-instance v3, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/DeclarePrecedence;->value()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9, p0}, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;-><init>(Ljava/lang/String;Lorg/aspectj/lang/reflect/AjType;)V

    .line 1046
    .local v3, "decp":Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1050
    .end local v0    # "ann":Lorg/aspectj/lang/annotation/DeclarePrecedence;
    .end local v3    # "decp":Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;
    :cond_0
    iget-object v9, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Method;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v7, v1, v5

    .line 1051
    .local v7, "method":Ljava/lang/reflect/Method;
    const-class v9, Lorg/aspectj/internal/lang/annotation/ajcDeclarePrecedence;

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1052
    const-class v9, Lorg/aspectj/internal/lang/annotation/ajcDeclarePrecedence;

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lorg/aspectj/internal/lang/annotation/ajcDeclarePrecedence;

    .line 1053
    .local v2, "decPAnn":Lorg/aspectj/internal/lang/annotation/ajcDeclarePrecedence;
    new-instance v3, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;

    invoke-interface {v2}, Lorg/aspectj/internal/lang/annotation/ajcDeclarePrecedence;->value()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9, p0}, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;-><init>(Ljava/lang/String;Lorg/aspectj/lang/reflect/AjType;)V

    .line 1057
    .restart local v3    # "decp":Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1050
    .end local v2    # "decPAnn":Lorg/aspectj/internal/lang/annotation/ajcDeclarePrecedence;
    .end local v3    # "decp":Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1060
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :cond_2
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v9

    invoke-interface {v9}, Lorg/aspectj/lang/reflect/AjType;->isAspect()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1061
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v9

    invoke-interface {v9}, Lorg/aspectj/lang/reflect/AjType;->getDeclarePrecedence()[Lorg/aspectj/lang/reflect/DeclarePrecedence;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1063
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    new-array v8, v9, [Lorg/aspectj/lang/reflect/DeclarePrecedence;

    .line 1064
    .local v8, "ret":[Lorg/aspectj/lang/reflect/DeclarePrecedence;
    invoke-interface {v4, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1065
    return-object v8
.end method

.method public getDeclareSofts()[Lorg/aspectj/lang/reflect/DeclareSoft;
    .locals 10

    .prologue
    .line 976
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 977
    .local v2, "decs":Ljava/util/List;, "Ljava/util/List<Lorg/aspectj/lang/reflect/DeclareSoft;>;"
    iget-object v8, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v0, v4

    .line 978
    .local v6, "method":Ljava/lang/reflect/Method;
    const-class v8, Lorg/aspectj/internal/lang/annotation/ajcDeclareSoft;

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 979
    const-class v8, Lorg/aspectj/internal/lang/annotation/ajcDeclareSoft;

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/aspectj/internal/lang/annotation/ajcDeclareSoft;

    .line 980
    .local v1, "decSAnn":Lorg/aspectj/internal/lang/annotation/ajcDeclareSoft;
    new-instance v3, Lorg/aspectj/internal/lang/reflect/DeclareSoftImpl;

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcDeclareSoft;->pointcut()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcDeclareSoft;->exceptionType()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, p0, v8, v9}, Lorg/aspectj/internal/lang/reflect/DeclareSoftImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    .local v3, "ds":Lorg/aspectj/internal/lang/reflect/DeclareSoftImpl;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 977
    .end local v1    # "decSAnn":Lorg/aspectj/internal/lang/annotation/ajcDeclareSoft;
    .end local v3    # "ds":Lorg/aspectj/internal/lang/reflect/DeclareSoftImpl;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 988
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :cond_1
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v8

    invoke-interface {v8}, Lorg/aspectj/lang/reflect/AjType;->isAspect()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 989
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v8

    invoke-interface {v8}, Lorg/aspectj/lang/reflect/AjType;->getDeclareSofts()[Lorg/aspectj/lang/reflect/DeclareSoft;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 991
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    new-array v7, v8, [Lorg/aspectj/lang/reflect/DeclareSoft;

    .line 992
    .local v7, "ret":[Lorg/aspectj/lang/reflect/DeclareSoft;
    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 993
    return-object v7
.end method

.method public getDeclaredAdvice(Ljava/lang/String;)Lorg/aspectj/lang/reflect/Advice;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/aspectj/lang/reflect/NoSuchAdviceException;
        }
    .end annotation

    .prologue
    .line 524
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    const-string/jumbo v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "use getAdvice(AdviceType...) instead for un-named advice"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 525
    :cond_0
    iget-object v4, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredAdvice:[Lorg/aspectj/lang/reflect/Advice;

    if-nez v4, :cond_1

    invoke-direct {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->initDeclaredAdvice()V

    .line 526
    :cond_1
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredAdvice:[Lorg/aspectj/lang/reflect/Advice;

    .local v1, "arr$":[Lorg/aspectj/lang/reflect/Advice;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .line 527
    .local v0, "a":Lorg/aspectj/lang/reflect/Advice;
    invoke-interface {v0}, Lorg/aspectj/lang/reflect/Advice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v0

    .line 526
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 529
    .end local v0    # "a":Lorg/aspectj/lang/reflect/Advice;
    :cond_3
    new-instance v4, Lorg/aspectj/lang/reflect/NoSuchAdviceException;

    invoke-direct {v4, p1}, Lorg/aspectj/lang/reflect/NoSuchAdviceException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public varargs getDeclaredAdvice([Lorg/aspectj/lang/reflect/AdviceKind;)[Lorg/aspectj/lang/reflect/Advice;
    .locals 2
    .param p1, "ofType"    # [Lorg/aspectj/lang/reflect/AdviceKind;

    .prologue
    .line 443
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    array-length v1, p1

    if-nez v1, :cond_0

    .line 444
    const-class v1, Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 449
    .local v0, "types":Ljava/util/Set;, "Ljava/util/Set<Lorg/aspectj/lang/reflect/AdviceKind;>;"
    :goto_0
    invoke-direct {p0, v0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getDeclaredAdvice(Ljava/util/Set;)[Lorg/aspectj/lang/reflect/Advice;

    move-result-object v1

    return-object v1

    .line 446
    .end local v0    # "types":Ljava/util/Set;, "Ljava/util/Set<Lorg/aspectj/lang/reflect/AdviceKind;>;"
    :cond_0
    const-class v1, Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 447
    .restart local v0    # "types":Ljava/util/Set;, "Ljava/util/Set<Lorg/aspectj/lang/reflect/AdviceKind;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getDeclaredAjTypes()[Lorg/aspectj/lang/reflect/AjType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 228
    .local v0, "classes":[Ljava/lang/Class;
    invoke-direct {p0, v0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->toAjTypeArray([Ljava/lang/Class;)[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v1

    return-object v1
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 212
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public varargs getDeclaredConstructor([Lorg/aspectj/lang/reflect/AjType;)Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Ljava/lang/reflect/Constructor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    .local p1, "parameterTypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-direct {p0, p1}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->toClassArray([Lorg/aspectj/lang/reflect/AjType;)[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
    .locals 1

    .prologue
    .line 256
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 264
    .local v0, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ajc$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/NoSuchFieldException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 265
    :cond_0
    return-object v0
.end method

.method public getDeclaredFields()[Ljava/lang/reflect/Field;
    .locals 9

    .prologue
    .line 272
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v7, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 273
    .local v2, "fields":[Ljava/lang/reflect/Field;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v3, "filteredFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 275
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ajc$"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-class v7, Lorg/aspectj/lang/annotation/DeclareWarning;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_0

    const-class v7, Lorg/aspectj/lang/annotation/DeclareError;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 278
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 280
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/reflect/Field;

    .line 281
    .local v6, "ret":[Ljava/lang/reflect/Field;
    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 282
    return-object v6
.end method

.method public varargs getDeclaredITDConstructor(Lorg/aspectj/lang/reflect/AjType;[Lorg/aspectj/lang/reflect/AjType;)Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 693
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    .local p1, "target":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    .local p2, "parameterTypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getDeclaredITDConstructors()[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    move-result-object v5

    .line 694
    .local v5, "itdcs":[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    move-object v0, v5

    .local v0, "arr$":[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v6, :cond_2

    aget-object v4, v0, v2

    .line 696
    .local v4, "itdc":Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    :try_start_0
    invoke-interface {v4}, Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;->getTargetType()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v3

    .line 697
    .local v3, "itdTarget":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 698
    invoke-interface {v4}, Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;->getParameterTypes()[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v7

    .line 699
    .local v7, "ptypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    array-length v8, v7

    array-length v9, p2

    if-ne v8, v9, :cond_0

    .line 700
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v8, v7

    if-ge v1, v8, :cond_3

    .line 701
    aget-object v8, v7, v1

    aget-object v9, p2, v1

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_1

    .line 694
    .end local v1    # "i":I
    .end local v3    # "itdTarget":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    .end local v7    # "ptypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 700
    .restart local v1    # "i":I
    .restart local v3    # "itdTarget":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    .restart local v7    # "ptypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 711
    .end local v1    # "i":I
    .end local v3    # "itdTarget":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    .end local v4    # "itdc":Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    .end local v7    # "ptypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    :cond_2
    new-instance v8, Ljava/lang/NoSuchMethodException;

    invoke-direct {v8}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v8

    .line 704
    .restart local v1    # "i":I
    .restart local v3    # "itdTarget":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    .restart local v4    # "itdc":Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    .restart local v7    # "ptypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    :cond_3
    return-object v4

    .line 707
    .end local v1    # "i":I
    .end local v3    # "itdTarget":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    .end local v7    # "ptypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method public getDeclaredITDConstructors()[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    .locals 10

    .prologue
    .line 718
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v8, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDCons:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    if-nez v8, :cond_3

    .line 719
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 720
    .local v5, "itdcs":Ljava/util/List;, "Ljava/util/List<Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;>;"
    iget-object v8, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 721
    .local v2, "baseMethods":[Ljava/lang/reflect/Method;
    move-object v1, v2

    .local v1, "arr$":[Ljava/lang/reflect/Method;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v7, v1, v3

    .line 722
    .local v7, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "ajc$postInterConstructor"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 721
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 723
    :cond_1
    const-class v8, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 724
    const-class v8, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    .line 725
    .local v0, "ann":Lorg/aspectj/internal/lang/annotation/ajcITD;
    new-instance v4, Lorg/aspectj/internal/lang/reflect/InterTypeConstructorDeclarationImpl;

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcITD;->targetType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v9

    invoke-direct {v4, p0, v8, v9, v7}, Lorg/aspectj/internal/lang/reflect/InterTypeConstructorDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;ILjava/lang/reflect/Method;)V

    .line 727
    .local v4, "itdc":Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 730
    .end local v0    # "ann":Lorg/aspectj/internal/lang/annotation/ajcITD;
    .end local v4    # "itdc":Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    .end local v7    # "m":Ljava/lang/reflect/Method;
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    iput-object v8, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDCons:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    .line 731
    iget-object v8, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDCons:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    invoke-interface {v5, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 733
    .end local v1    # "arr$":[Ljava/lang/reflect/Method;
    .end local v2    # "baseMethods":[Ljava/lang/reflect/Method;
    .end local v3    # "i$":I
    .end local v5    # "itdcs":Ljava/util/List;, "Ljava/util/List<Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;>;"
    .end local v6    # "len$":I
    :cond_3
    iget-object v8, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDCons:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    return-object v8
.end method

.method public getDeclaredITDField(Ljava/lang/String;Lorg/aspectj/lang/reflect/AjType;)Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 789
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    .local p2, "target":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getDeclaredITDFields()[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    move-result-object v4

    .line 790
    .local v4, "itdfs":[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;
    move-object v0, v4

    .local v0, "arr$":[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v3, v0, v1

    .line 791
    .local v3, "itdf":Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;
    invoke-interface {v3}, Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 793
    :try_start_0
    invoke-interface {v3}, Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;->getTargetType()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v2

    .line 794
    .local v2, "itdTarget":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    return-object v3

    .line 795
    .end local v2    # "itdTarget":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    :catch_0
    move-exception v6

    .line 790
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 800
    .end local v3    # "itdf":Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;
    :cond_1
    new-instance v6, Ljava/lang/NoSuchFieldException;

    invoke-direct {v6, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getDeclaredITDFields()[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;
    .locals 19

    .prologue
    .line 807
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .local v15, "itdfs":Ljava/util/List;, "Ljava/util/List<Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDFields:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    if-nez v2, :cond_3

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    .line 810
    .local v10, "baseMethods":[Ljava/lang/reflect/Method;
    move-object v9, v10

    .local v9, "arr$":[Ljava/lang/reflect/Method;
    array-length v0, v9

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_2

    aget-object v17, v9, v12

    .line 811
    .local v17, "m":Ljava/lang/reflect/Method;
    const-class v2, Lorg/aspectj/internal/lang/annotation/ajcITD;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 812
    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ajc$interFieldInit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 810
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 813
    :cond_1
    const-class v2, Lorg/aspectj/internal/lang/annotation/ajcITD;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lorg/aspectj/internal/lang/annotation/ajcITD;

    .line 814
    .local v8, "ann":Lorg/aspectj/internal/lang/annotation/ajcITD;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    .line 815
    .local v14, "interFieldInitMethodName":Ljava/lang/String;
    const-string/jumbo v2, "FieldInit"

    const-string/jumbo v3, "FieldGetDispatch"

    invoke-virtual {v14, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 818
    .local v13, "interFieldGetDispatchMethodName":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v13, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 819
    .local v11, "dispatch":Ljava/lang/reflect/Method;
    new-instance v1, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;

    invoke-interface {v8}, Lorg/aspectj/internal/lang/annotation/ajcITD;->targetType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v4

    invoke-interface {v8}, Lorg/aspectj/internal/lang/annotation/ajcITD;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v6

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;ILjava/lang/String;Lorg/aspectj/lang/reflect/AjType;Ljava/lang/reflect/Type;)V

    .line 823
    .local v1, "itdf":Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 824
    .end local v1    # "itdf":Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;
    .end local v11    # "dispatch":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v18

    .line 825
    .local v18, "nsmEx":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t find field get dispatch method for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 829
    .end local v8    # "ann":Lorg/aspectj/internal/lang/annotation/ajcITD;
    .end local v13    # "interFieldGetDispatchMethodName":Ljava/lang/String;
    .end local v14    # "interFieldInitMethodName":Ljava/lang/String;
    .end local v17    # "m":Ljava/lang/reflect/Method;
    .end local v18    # "nsmEx":Ljava/lang/NoSuchMethodException;
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->addAnnotationStyleITDFields(Ljava/util/List;Z)V

    .line 830
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDFields:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDFields:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    invoke-interface {v15, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 833
    .end local v9    # "arr$":[Ljava/lang/reflect/Method;
    .end local v10    # "baseMethods":[Ljava/lang/reflect/Method;
    .end local v12    # "i$":I
    .end local v16    # "len$":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDFields:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    return-object v2
.end method

.method public varargs getDeclaredITDMethod(Ljava/lang/String;Lorg/aspectj/lang/reflect/AjType;[Lorg/aspectj/lang/reflect/AjType;)Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 560
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    .local p2, "target":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    .local p3, "parameterTypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getDeclaredITDMethods()[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    move-result-object v5

    .line 561
    .local v5, "itdms":[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    move-object v0, v5

    .local v0, "arr$":[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v6, :cond_2

    aget-object v4, v0, v2

    .line 563
    .local v4, "itdm":Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    :try_start_0
    invoke-interface {v4}, Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 561
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 564
    :cond_1
    invoke-interface {v4}, Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;->getTargetType()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v3

    .line 565
    .local v3, "itdTarget":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 566
    invoke-interface {v4}, Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;->getParameterTypes()[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v7

    .line 567
    .local v7, "ptypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    array-length v8, v7

    array-length v9, p3

    if-ne v8, v9, :cond_0

    .line 568
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v8, v7

    if-ge v1, v8, :cond_3

    .line 569
    aget-object v8, v7, v1

    aget-object v9, p3, v1

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_0

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 579
    .end local v1    # "i":I
    .end local v3    # "itdTarget":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    .end local v4    # "itdm":Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    .end local v7    # "ptypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    :cond_2
    new-instance v8, Ljava/lang/NoSuchMethodException;

    invoke-direct {v8, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 572
    .restart local v1    # "i":I
    .restart local v3    # "itdTarget":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    .restart local v4    # "itdm":Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    .restart local v7    # "ptypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    :cond_3
    return-object v4

    .line 575
    .end local v1    # "i":I
    .end local v3    # "itdTarget":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    .end local v7    # "ptypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public getDeclaredITDMethods()[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    .locals 12

    .prologue
    .line 586
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDMethods:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    if-nez v1, :cond_3

    .line 587
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v10, "itdms":Ljava/util/List;, "Ljava/util/List<Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;>;"
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    .line 589
    .local v8, "baseMethods":[Ljava/lang/reflect/Method;
    move-object v7, v8

    .local v7, "arr$":[Ljava/lang/reflect/Method;
    array-length v11, v7

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v11, :cond_2

    aget-object v5, v7, v9

    .line 590
    .local v5, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ajc$interMethodDispatch1$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 589
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 591
    :cond_1
    const-class v1, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 592
    const-class v1, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lorg/aspectj/internal/lang/annotation/ajcITD;

    .line 593
    .local v6, "ann":Lorg/aspectj/internal/lang/annotation/ajcITD;
    new-instance v0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;

    invoke-interface {v6}, Lorg/aspectj/internal/lang/annotation/ajcITD;->targetType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v3

    invoke-interface {v6}, Lorg/aspectj/internal/lang/annotation/ajcITD;->name()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/reflect/Method;)V

    .line 597
    .local v0, "itdm":Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 600
    .end local v0    # "itdm":Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    .end local v5    # "m":Ljava/lang/reflect/Method;
    .end local v6    # "ann":Lorg/aspectj/internal/lang/annotation/ajcITD;
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v10, v1}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->addAnnotationStyleITDMethods(Ljava/util/List;Z)V

    .line 601
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    iput-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDMethods:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    .line 602
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDMethods:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    invoke-interface {v10, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 604
    .end local v7    # "arr$":[Ljava/lang/reflect/Method;
    .end local v8    # "baseMethods":[Ljava/lang/reflect/Method;
    .end local v9    # "i$":I
    .end local v10    # "itdms":Ljava/util/List;, "Ljava/util/List<Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;>;"
    .end local v11    # "len$":I
    :cond_3
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDMethods:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    return-object v1
.end method

.method public varargs getDeclaredMethod(Ljava/lang/String;[Lorg/aspectj/lang/reflect/AjType;)Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 315
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    .local p2, "parameterTypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-direct {p0, p2}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->toClassArray([Lorg/aspectj/lang/reflect/AjType;)[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 316
    .local v0, "m":Ljava/lang/reflect/Method;
    invoke-direct {p0, v0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->isReallyAMethod(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    :cond_0
    return-object v0
.end method

.method public getDeclaredMethods()[Ljava/lang/reflect/Method;
    .locals 8

    .prologue
    .line 333
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v7, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 334
    .local v5, "methods":[Ljava/lang/reflect/Method;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v1, "filteredMethods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 336
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-direct {p0, v4}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->isReallyAMethod(Ljava/lang/reflect/Method;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/reflect/Method;

    .line 339
    .local v6, "ret":[Ljava/lang/reflect/Method;
    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 340
    return-object v6
.end method

.method public getDeclaredPointcut(Ljava/lang/String;)Lorg/aspectj/lang/reflect/Pointcut;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/aspectj/lang/reflect/NoSuchPointcutException;
        }
    .end annotation

    .prologue
    .line 373
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getDeclaredPointcuts()[Lorg/aspectj/lang/reflect/Pointcut;

    move-result-object v4

    .line 374
    .local v4, "pcs":[Lorg/aspectj/lang/reflect/Pointcut;
    move-object v0, v4

    .local v0, "arr$":[Lorg/aspectj/lang/reflect/Pointcut;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 375
    .local v3, "pc":Lorg/aspectj/lang/reflect/Pointcut;
    invoke-interface {v3}, Lorg/aspectj/lang/reflect/Pointcut;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v3

    .line 374
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    .end local v3    # "pc":Lorg/aspectj/lang/reflect/Pointcut;
    :cond_1
    new-instance v5, Lorg/aspectj/lang/reflect/NoSuchPointcutException;

    invoke-direct {v5, p1}, Lorg/aspectj/lang/reflect/NoSuchPointcutException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getDeclaredPointcuts()[Lorg/aspectj/lang/reflect/Pointcut;
    .locals 9

    .prologue
    .line 393
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v8, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredPointcuts:[Lorg/aspectj/lang/reflect/Pointcut;

    if-eqz v8, :cond_0

    iget-object v7, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredPointcuts:[Lorg/aspectj/lang/reflect/Pointcut;

    .line 403
    :goto_0
    return-object v7

    .line 394
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v6, "pointcuts":Ljava/util/List;, "Ljava/util/List<Lorg/aspectj/lang/reflect/Pointcut;>;"
    iget-object v8, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 396
    .local v4, "methods":[Ljava/lang/reflect/Method;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 397
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-direct {p0, v3}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->asPointcut(Ljava/lang/reflect/Method;)Lorg/aspectj/lang/reflect/Pointcut;

    move-result-object v5

    .line 398
    .local v5, "pc":Lorg/aspectj/lang/reflect/Pointcut;
    if-eqz v5, :cond_1

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 400
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "pc":Lorg/aspectj/lang/reflect/Pointcut;
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    new-array v7, v8, [Lorg/aspectj/lang/reflect/Pointcut;

    .line 401
    .local v7, "ret":[Lorg/aspectj/lang/reflect/Pointcut;
    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 402
    iput-object v7, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredPointcuts:[Lorg/aspectj/lang/reflect/Pointcut;

    goto :goto_0
.end method

.method public getDeclaringType()Lorg/aspectj/lang/reflect/AjType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 160
    .local v0, "dec":Ljava/lang/Class;
    if-eqz v0, :cond_0

    new-instance v1, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;

    invoke-direct {v1, v0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;-><init>(Ljava/lang/Class;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEnclosingConstructor()Ljava/lang/reflect/Constructor;
    .locals 1

    .prologue
    .line 144
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 137
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingType()Lorg/aspectj/lang/reflect/AjType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    .line 152
    .local v0, "enc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    new-instance v1, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;

    invoke-direct {v1, v0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;-><init>(Ljava/lang/Class;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEnumConstants()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 1072
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 290
    .local v0, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ajc$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/NoSuchFieldException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    :cond_0
    return-object v0
.end method

.method public getFields()[Ljava/lang/reflect/Field;
    .locals 9

    .prologue
    .line 298
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v7, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 299
    .local v2, "fields":[Ljava/lang/reflect/Field;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v3, "filteredFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 301
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ajc$"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-class v7, Lorg/aspectj/lang/annotation/DeclareWarning;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_0

    const-class v7, Lorg/aspectj/lang/annotation/DeclareError;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 304
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 306
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/reflect/Field;

    .line 307
    .local v6, "ret":[Ljava/lang/reflect/Field;
    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 308
    return-object v6
.end method

.method public getGenericSupertype()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 130
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public varargs getITDConstructor(Lorg/aspectj/lang/reflect/AjType;[Lorg/aspectj/lang/reflect/AjType;)Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 741
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    .local p1, "target":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    .local p2, "parameterTypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getITDConstructors()[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    move-result-object v5

    .line 742
    .local v5, "itdcs":[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    move-object v0, v5

    .local v0, "arr$":[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v6, :cond_2

    aget-object v4, v0, v2

    .line 744
    .local v4, "itdc":Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    :try_start_0
    invoke-interface {v4}, Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;->getTargetType()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v3

    .line 745
    .local v3, "itdTarget":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 746
    invoke-interface {v4}, Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;->getParameterTypes()[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v7

    .line 747
    .local v7, "ptypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    array-length v8, v7

    array-length v9, p2

    if-ne v8, v9, :cond_0

    .line 748
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v8, v7

    if-ge v1, v8, :cond_3

    .line 749
    aget-object v8, v7, v1

    aget-object v9, p2, v1

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_1

    .line 742
    .end local v1    # "i":I
    .end local v3    # "itdTarget":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    .end local v7    # "ptypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 748
    .restart local v1    # "i":I
    .restart local v3    # "itdTarget":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    .restart local v7    # "ptypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 759
    .end local v1    # "i":I
    .end local v3    # "itdTarget":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    .end local v4    # "itdc":Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    .end local v7    # "ptypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    :cond_2
    new-instance v8, Ljava/lang/NoSuchMethodException;

    invoke-direct {v8}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v8

    .line 752
    .restart local v1    # "i":I
    .restart local v3    # "itdTarget":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    .restart local v4    # "itdc":Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    .restart local v7    # "ptypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    :cond_3
    return-object v4

    .line 755
    .end local v1    # "i":I
    .end local v3    # "itdTarget":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    .end local v7    # "ptypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method public getITDConstructors()[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    .locals 10

    .prologue
    .line 766
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v8, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdCons:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    if-nez v8, :cond_3

    .line 767
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 768
    .local v5, "itdcs":Ljava/util/List;, "Ljava/util/List<Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;>;"
    iget-object v8, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 769
    .local v2, "baseMethods":[Ljava/lang/reflect/Method;
    move-object v1, v2

    .local v1, "arr$":[Ljava/lang/reflect/Method;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v7, v1, v3

    .line 770
    .local v7, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "ajc$postInterConstructor"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 769
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 771
    :cond_1
    const-class v8, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 772
    const-class v8, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    .line 773
    .local v0, "ann":Lorg/aspectj/internal/lang/annotation/ajcITD;
    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 774
    new-instance v4, Lorg/aspectj/internal/lang/reflect/InterTypeConstructorDeclarationImpl;

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcITD;->targetType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v9

    invoke-direct {v4, p0, v8, v9, v7}, Lorg/aspectj/internal/lang/reflect/InterTypeConstructorDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;ILjava/lang/reflect/Method;)V

    .line 776
    .local v4, "itdc":Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 779
    .end local v0    # "ann":Lorg/aspectj/internal/lang/annotation/ajcITD;
    .end local v4    # "itdc":Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    .end local v7    # "m":Ljava/lang/reflect/Method;
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    iput-object v8, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdCons:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    .line 780
    iget-object v8, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdCons:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    invoke-interface {v5, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 782
    .end local v1    # "arr$":[Ljava/lang/reflect/Method;
    .end local v2    # "baseMethods":[Ljava/lang/reflect/Method;
    .end local v3    # "i$":I
    .end local v5    # "itdcs":Ljava/util/List;, "Ljava/util/List<Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;>;"
    .end local v6    # "len$":I
    :cond_3
    iget-object v8, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdCons:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    return-object v8
.end method

.method public getITDField(Ljava/lang/String;Lorg/aspectj/lang/reflect/AjType;)Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 841
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    .local p2, "target":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getITDFields()[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    move-result-object v4

    .line 842
    .local v4, "itdfs":[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;
    move-object v0, v4

    .local v0, "arr$":[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v3, v0, v1

    .line 843
    .local v3, "itdf":Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;
    invoke-interface {v3}, Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 845
    :try_start_0
    invoke-interface {v3}, Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;->getTargetType()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v2

    .line 846
    .local v2, "itdTarget":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    return-object v3

    .line 847
    .end local v2    # "itdTarget":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    :catch_0
    move-exception v6

    .line 842
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 852
    .end local v3    # "itdf":Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;
    :cond_1
    new-instance v6, Ljava/lang/NoSuchFieldException;

    invoke-direct {v6, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getITDFields()[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;
    .locals 19

    .prologue
    .line 859
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 860
    .local v15, "itdfs":Ljava/util/List;, "Ljava/util/List<Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdFields:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    if-nez v2, :cond_3

    .line 861
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    .line 862
    .local v10, "baseMethods":[Ljava/lang/reflect/Method;
    move-object v9, v10

    .local v9, "arr$":[Ljava/lang/reflect/Method;
    array-length v0, v9

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_2

    aget-object v17, v9, v12

    .line 863
    .local v17, "m":Ljava/lang/reflect/Method;
    const-class v2, Lorg/aspectj/internal/lang/annotation/ajcITD;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 864
    const-class v2, Lorg/aspectj/internal/lang/annotation/ajcITD;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lorg/aspectj/internal/lang/annotation/ajcITD;

    .line 865
    .local v8, "ann":Lorg/aspectj/internal/lang/annotation/ajcITD;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ajc$interFieldInit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 862
    .end local v8    # "ann":Lorg/aspectj/internal/lang/annotation/ajcITD;
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 866
    .restart local v8    # "ann":Lorg/aspectj/internal/lang/annotation/ajcITD;
    :cond_1
    invoke-interface {v8}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 867
    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    .line 868
    .local v14, "interFieldInitMethodName":Ljava/lang/String;
    const-string/jumbo v2, "FieldInit"

    const-string/jumbo v3, "FieldGetDispatch"

    invoke-virtual {v14, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 871
    .local v13, "interFieldGetDispatchMethodName":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v13, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 872
    .local v11, "dispatch":Ljava/lang/reflect/Method;
    new-instance v1, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;

    invoke-interface {v8}, Lorg/aspectj/internal/lang/annotation/ajcITD;->targetType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v4

    invoke-interface {v8}, Lorg/aspectj/internal/lang/annotation/ajcITD;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v6

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;ILjava/lang/String;Lorg/aspectj/lang/reflect/AjType;Ljava/lang/reflect/Type;)V

    .line 876
    .local v1, "itdf":Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 877
    .end local v1    # "itdf":Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;
    .end local v11    # "dispatch":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v18

    .line 878
    .local v18, "nsmEx":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t find field get dispatch method for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 882
    .end local v8    # "ann":Lorg/aspectj/internal/lang/annotation/ajcITD;
    .end local v13    # "interFieldGetDispatchMethodName":Ljava/lang/String;
    .end local v14    # "interFieldInitMethodName":Ljava/lang/String;
    .end local v17    # "m":Ljava/lang/reflect/Method;
    .end local v18    # "nsmEx":Ljava/lang/NoSuchMethodException;
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->addAnnotationStyleITDFields(Ljava/util/List;Z)V

    .line 883
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdFields:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    .line 884
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdFields:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    invoke-interface {v15, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 886
    .end local v9    # "arr$":[Ljava/lang/reflect/Method;
    .end local v10    # "baseMethods":[Ljava/lang/reflect/Method;
    .end local v12    # "i$":I
    .end local v16    # "len$":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdFields:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    return-object v2
.end method

.method public varargs getITDMethod(Ljava/lang/String;Lorg/aspectj/lang/reflect/AjType;[Lorg/aspectj/lang/reflect/AjType;)Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 613
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    .local p2, "target":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    .local p3, "parameterTypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getITDMethods()[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    move-result-object v5

    .line 614
    .local v5, "itdms":[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    move-object v0, v5

    .local v0, "arr$":[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v6, :cond_2

    aget-object v4, v0, v2

    .line 616
    .local v4, "itdm":Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    :try_start_0
    invoke-interface {v4}, Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 614
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 617
    :cond_1
    invoke-interface {v4}, Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;->getTargetType()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v3

    .line 618
    .local v3, "itdTarget":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 619
    invoke-interface {v4}, Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;->getParameterTypes()[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v7

    .line 620
    .local v7, "ptypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    array-length v8, v7

    array-length v9, p3

    if-ne v8, v9, :cond_0

    .line 621
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v8, v7

    if-ge v1, v8, :cond_3

    .line 622
    aget-object v8, v7, v1

    aget-object v9, p3, v1

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_0

    .line 621
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 632
    .end local v1    # "i":I
    .end local v3    # "itdTarget":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    .end local v4    # "itdm":Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    .end local v7    # "ptypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    :cond_2
    new-instance v8, Ljava/lang/NoSuchMethodException;

    invoke-direct {v8, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 625
    .restart local v1    # "i":I
    .restart local v3    # "itdTarget":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    .restart local v4    # "itdm":Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    .restart local v7    # "ptypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    :cond_3
    return-object v4

    .line 628
    .end local v1    # "i":I
    .end local v3    # "itdTarget":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    .end local v7    # "ptypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public getITDMethods()[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    .locals 12

    .prologue
    .line 639
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdMethods:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    if-nez v1, :cond_3

    .line 640
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 641
    .local v10, "itdms":Ljava/util/List;, "Ljava/util/List<Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;>;"
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    .line 642
    .local v8, "baseMethods":[Ljava/lang/reflect/Method;
    move-object v7, v8

    .local v7, "arr$":[Ljava/lang/reflect/Method;
    array-length v11, v7

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v11, :cond_2

    aget-object v5, v7, v9

    .line 643
    .local v5, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ajc$interMethod$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 642
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 644
    :cond_1
    const-class v1, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 645
    const-class v1, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lorg/aspectj/internal/lang/annotation/ajcITD;

    .line 646
    .local v6, "ann":Lorg/aspectj/internal/lang/annotation/ajcITD;
    invoke-interface {v6}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    new-instance v0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;

    invoke-interface {v6}, Lorg/aspectj/internal/lang/annotation/ajcITD;->targetType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v3

    invoke-interface {v6}, Lorg/aspectj/internal/lang/annotation/ajcITD;->name()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/reflect/Method;)V

    .line 651
    .local v0, "itdm":Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 654
    .end local v0    # "itdm":Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    .end local v5    # "m":Ljava/lang/reflect/Method;
    .end local v6    # "ann":Lorg/aspectj/internal/lang/annotation/ajcITD;
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v10, v1}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->addAnnotationStyleITDMethods(Ljava/util/List;Z)V

    .line 655
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    iput-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdMethods:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    .line 656
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdMethods:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    invoke-interface {v10, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 658
    .end local v7    # "arr$":[Ljava/lang/reflect/Method;
    .end local v8    # "baseMethods":[Ljava/lang/reflect/Method;
    .end local v9    # "i$":I
    .end local v10    # "itdms":Ljava/util/List;, "Ljava/util/List<Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;>;"
    .end local v11    # "len$":I
    :cond_3
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdMethods:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    return-object v1
.end method

.method public getInterfaces()[Lorg/aspectj/lang/reflect/AjType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 104
    .local v0, "baseInterfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0, v0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->toAjTypeArray([Ljava/lang/Class;)[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v1

    return-object v1
.end method

.method public getJavaClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public varargs getMethod(Ljava/lang/String;[Lorg/aspectj/lang/reflect/AjType;)Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    .local p2, "parameterTypes":[Lorg/aspectj/lang/reflect/AjType;, "[Lorg/aspectj/lang/reflect/AjType<*>;"
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-direct {p0, p2}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->toClassArray([Lorg/aspectj/lang/reflect/AjType;)[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 325
    .local v0, "m":Ljava/lang/reflect/Method;
    invoke-direct {p0, v0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->isReallyAMethod(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    :cond_0
    return-object v0
.end method

.method public getMethods()[Ljava/lang/reflect/Method;
    .locals 8

    .prologue
    .line 347
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v7, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 348
    .local v5, "methods":[Ljava/lang/reflect/Method;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v1, "filteredMethods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 350
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-direct {p0, v4}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->isReallyAMethod(Ljava/lang/reflect/Method;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 352
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/reflect/Method;

    .line 353
    .local v6, "ret":[Ljava/lang/reflect/Method;
    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 354
    return-object v6
.end method

.method public getModifiers()I
    .locals 1

    .prologue
    .line 111
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/Package;
    .locals 1

    .prologue
    .line 96
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    return-object v0
.end method

.method public getPerClause()Lorg/aspectj/lang/reflect/PerClause;
    .locals 6

    .prologue
    .line 164
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->isAspect()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 165
    iget-object v2, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    const-class v3, Lorg/aspectj/lang/annotation/Aspect;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/Aspect;

    .line 166
    .local v0, "aspectAnn":Lorg/aspectj/lang/annotation/Aspect;
    invoke-interface {v0}, Lorg/aspectj/lang/annotation/Aspect;->value()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "perClause":Ljava/lang/String;
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v2

    invoke-interface {v2}, Lorg/aspectj/lang/reflect/AjType;->isAspect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v2

    invoke-interface {v2}, Lorg/aspectj/lang/reflect/AjType;->getPerClause()Lorg/aspectj/lang/reflect/PerClause;

    move-result-object v2

    .line 186
    .end local v0    # "aspectAnn":Lorg/aspectj/lang/annotation/Aspect;
    .end local v1    # "perClause":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 171
    .restart local v0    # "aspectAnn":Lorg/aspectj/lang/annotation/Aspect;
    .restart local v1    # "perClause":Ljava/lang/String;
    :cond_0
    new-instance v2, Lorg/aspectj/internal/lang/reflect/PerClauseImpl;

    sget-object v3, Lorg/aspectj/lang/reflect/PerClauseKind;->SINGLETON:Lorg/aspectj/lang/reflect/PerClauseKind;

    invoke-direct {v2, v3}, Lorg/aspectj/internal/lang/reflect/PerClauseImpl;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;)V

    goto :goto_0

    .line 172
    :cond_1
    const-string/jumbo v2, "perthis("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    new-instance v2, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;

    sget-object v3, Lorg/aspectj/lang/reflect/PerClauseKind;->PERTHIS:Lorg/aspectj/lang/reflect/PerClauseKind;

    const-string/jumbo v4, "perthis("

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_2
    const-string/jumbo v2, "pertarget("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 175
    new-instance v2, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;

    sget-object v3, Lorg/aspectj/lang/reflect/PerClauseKind;->PERTARGET:Lorg/aspectj/lang/reflect/PerClauseKind;

    const-string/jumbo v4, "pertarget("

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_3
    const-string/jumbo v2, "percflow("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 177
    new-instance v2, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;

    sget-object v3, Lorg/aspectj/lang/reflect/PerClauseKind;->PERCFLOW:Lorg/aspectj/lang/reflect/PerClauseKind;

    const-string/jumbo v4, "percflow("

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_4
    const-string/jumbo v2, "percflowbelow("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 179
    new-instance v2, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;

    sget-object v3, Lorg/aspectj/lang/reflect/PerClauseKind;->PERCFLOWBELOW:Lorg/aspectj/lang/reflect/PerClauseKind;

    const-string/jumbo v4, "percflowbelow("

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    :cond_5
    const-string/jumbo v2, "pertypewithin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 181
    new-instance v2, Lorg/aspectj/internal/lang/reflect/TypePatternBasedPerClauseImpl;

    sget-object v3, Lorg/aspectj/lang/reflect/PerClauseKind;->PERTYPEWITHIN:Lorg/aspectj/lang/reflect/PerClauseKind;

    const-string/jumbo v4, "pertypewithin("

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/aspectj/internal/lang/reflect/TypePatternBasedPerClauseImpl;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Per-clause not recognized: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    .end local v0    # "aspectAnn":Lorg/aspectj/lang/annotation/Aspect;
    .end local v1    # "perClause":Ljava/lang/String;
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public getPointcut(Ljava/lang/String;)Lorg/aspectj/lang/reflect/Pointcut;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/aspectj/lang/reflect/NoSuchPointcutException;
        }
    .end annotation

    .prologue
    .line 383
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getPointcuts()[Lorg/aspectj/lang/reflect/Pointcut;

    move-result-object v4

    .line 384
    .local v4, "pcs":[Lorg/aspectj/lang/reflect/Pointcut;
    move-object v0, v4

    .local v0, "arr$":[Lorg/aspectj/lang/reflect/Pointcut;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 385
    .local v3, "pc":Lorg/aspectj/lang/reflect/Pointcut;
    invoke-interface {v3}, Lorg/aspectj/lang/reflect/Pointcut;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v3

    .line 384
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 386
    .end local v3    # "pc":Lorg/aspectj/lang/reflect/Pointcut;
    :cond_1
    new-instance v5, Lorg/aspectj/lang/reflect/NoSuchPointcutException;

    invoke-direct {v5, p1}, Lorg/aspectj/lang/reflect/NoSuchPointcutException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getPointcuts()[Lorg/aspectj/lang/reflect/Pointcut;
    .locals 9

    .prologue
    .line 410
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v8, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->pointcuts:[Lorg/aspectj/lang/reflect/Pointcut;

    if-eqz v8, :cond_0

    iget-object v7, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->pointcuts:[Lorg/aspectj/lang/reflect/Pointcut;

    .line 420
    :goto_0
    return-object v7

    .line 411
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v6, "pcuts":Ljava/util/List;, "Ljava/util/List<Lorg/aspectj/lang/reflect/Pointcut;>;"
    iget-object v8, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 413
    .local v4, "methods":[Ljava/lang/reflect/Method;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 414
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-direct {p0, v3}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->asPointcut(Ljava/lang/reflect/Method;)Lorg/aspectj/lang/reflect/Pointcut;

    move-result-object v5

    .line 415
    .local v5, "pc":Lorg/aspectj/lang/reflect/Pointcut;
    if-eqz v5, :cond_1

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 417
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "pc":Lorg/aspectj/lang/reflect/Pointcut;
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    new-array v7, v8, [Lorg/aspectj/lang/reflect/Pointcut;

    .line 418
    .local v7, "ret":[Lorg/aspectj/lang/reflect/Pointcut;
    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 419
    iput-object v7, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->pointcuts:[Lorg/aspectj/lang/reflect/Pointcut;

    goto :goto_0
.end method

.method public getSupertype()Lorg/aspectj/lang/reflect/AjType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/aspectj/lang/reflect/AjType",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 123
    .local v0, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;

    invoke-direct {v1, v0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;-><init>(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/Class",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1079
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1158
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isArray()Z
    .locals 1

    .prologue
    .line 1121
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    return v0
.end method

.method public isAspect()Z
    .locals 2

    .prologue
    .line 1135
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    const-class v1, Lorg/aspectj/lang/annotation/Aspect;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnum()Z
    .locals 1

    .prologue
    .line 1086
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    return v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1093
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInterface()Z
    .locals 1

    .prologue
    .line 1100
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0
.end method

.method public isLocalClass()Z
    .locals 1

    .prologue
    .line 1107
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->isAspect()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMemberAspect()Z
    .locals 1

    .prologue
    .line 1142
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->isAspect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMemberClass()Z
    .locals 1

    .prologue
    .line 1114
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->isAspect()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimitive()Z
    .locals 1

    .prologue
    .line 1128
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public isPrivileged()Z
    .locals 2

    .prologue
    .line 1146
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->isAspect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    const-class v1, Lorg/aspectj/internal/lang/annotation/ajcPrivileged;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1177
    .local p0, "this":Lorg/aspectj/internal/lang/reflect/AjTypeImpl;, "Lorg/aspectj/internal/lang/reflect/AjTypeImpl<TT;>;"
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
