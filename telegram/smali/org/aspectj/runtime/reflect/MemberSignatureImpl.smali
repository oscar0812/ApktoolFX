.class abstract Lorg/aspectj/runtime/reflect/MemberSignatureImpl;
.super Lorg/aspectj/runtime/reflect/SignatureImpl;
.source "MemberSignatureImpl.java"

# interfaces
.implements Lorg/aspectj/lang/reflect/MemberSignature;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "modifiers"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "declaringType"    # Ljava/lang/Class;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lorg/aspectj/runtime/reflect/SignatureImpl;-><init>(ILjava/lang/String;Ljava/lang/Class;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "stringRep"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/aspectj/runtime/reflect/SignatureImpl;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method
