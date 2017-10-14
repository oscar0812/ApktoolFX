.class public Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;
.super Ljava/lang/Object;
.source "InterTypeDeclarationImpl.java"

# interfaces
.implements Lorg/aspectj/lang/reflect/InterTypeDeclaration;


# instance fields
.field private declaringType:Lorg/aspectj/lang/reflect/AjType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation
.end field

.field private modifiers:I

.field private targetType:Lorg/aspectj/lang/reflect/AjType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation
.end field

.field protected targetTypeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;I)V
    .locals 1
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "mods"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "decType":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;->declaringType:Lorg/aspectj/lang/reflect/AjType;

    .line 30
    iput-object p2, p0, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;->targetTypeName:Ljava/lang/String;

    .line 31
    iput p3, p0, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;->modifiers:I

    .line 33
    :try_start_0
    invoke-interface {p1}, Lorg/aspectj/lang/reflect/AjType;->getJavaClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/aspectj/internal/lang/reflect/StringToType;->stringToType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/reflect/AjType;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;->targetType:Lorg/aspectj/lang/reflect/AjType;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/aspectj/lang/reflect/AjType;Lorg/aspectj/lang/reflect/AjType;I)V
    .locals 1
    .param p3, "mods"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "decType":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    .local p2, "targetType":Lorg/aspectj/lang/reflect/AjType;, "Lorg/aspectj/lang/reflect/AjType<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;->declaringType:Lorg/aspectj/lang/reflect/AjType;

    .line 41
    iput-object p2, p0, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;->targetType:Lorg/aspectj/lang/reflect/AjType;

    .line 42
    invoke-interface {p2}, Lorg/aspectj/lang/reflect/AjType;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;->targetTypeName:Ljava/lang/String;

    .line 43
    iput p3, p0, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;->modifiers:I

    .line 44
    return-void
.end method


# virtual methods
.method public getDeclaringType()Lorg/aspectj/lang/reflect/AjType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;->declaringType:Lorg/aspectj/lang/reflect/AjType;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;->modifiers:I

    return v0
.end method

.method public getTargetType()Lorg/aspectj/lang/reflect/AjType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;->targetType:Lorg/aspectj/lang/reflect/AjType;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ClassNotFoundException;

    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;->targetTypeName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;->targetType:Lorg/aspectj/lang/reflect/AjType;

    return-object v0
.end method
